<?php 
require_once 'app/start.php';

use PayPal\Api\Payer;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Details;
use PayPal\Api\Amount;
use PayPal\Api\Transaction;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Payment;


if(empty($_POST['g-recaptcha-response']) == true) {
	$_SESSION['Messages'] = "Please confirm you are not a robot.";
	header("Location: ".$siteUrl);
	die();
}


if(!isset($_POST['price'])){
	$_SESSION['Messages'] = "Please chose an amount.";
	header("Location: ".$siteUrl);
}

if(empty($_POST['name']) === false){
	$changeName = $db->prepare("
		UPDATE users 
		SET name = :fullName
		WHERE id = :userId
		");
	$changeName->execute([
		'fullName' => $_POST['name'],
		'userId' => $user->id
		]);
}

$checkIfAllocated = $db->prepare("
	SELECT * FROM rewards
	WHERE user_id = :user_id AND limit_check > 0	");
$checkIfAllocated->execute([
	'user_id' => $user->id]);
$checkIfAllocated = $checkIfAllocated->fetchObject();

	if(isset($_POST['selectedLevel']) != false && $_POST['anonymous'] != true){
		// Alocating the selected reward and sending it trough session to be added to user if payment was successful
		//add a limit of 300 to a level3 reward and add 1 reward if user selected level3
		if($_POST['selectedLevel'] != $user->member_level){
			if($_POST['selectedLevel'] == 3 && $level3Amount < 300){
				if($checkIfAllocated != false){
					$updateLevel3 = $db->prepare("
						UPDATE rewards 
						SET	level3_limit = :level3, 
							level4_limit = 0,
							limit_check = 3,
							created_at = :created
						WHERE user_id = :userID AND limit_check > 0
							");
					$updateLevel3->execute([
						'userID' => $user->id, 
						'level3' => 1, 
						'created' => date('Y-m-d h:i:s')]);

				}else{
					$addlevel3 = $db->prepare("
						INSERT INTO rewards (
							user_id,
							level3_limit,
							level4_limit,
							limit_check,
							created_at)

						VALUES (
							:userID, 
							:level3, 
							0, 
							:limitCheck, 
							:created)
							");
					$addlevel3->execute([
						'userID' => $user->id, 
						'level3' => 1, 
						'limitCheck' => $_POST['selectedLevel'], 
						'created' => date('Y-m-d h:i:s')]);
				}

				if($user->member_level == 4){
					$_SESSION['changeLimitedMemberLevel'] = 4;
				}

				$_SESSION['rewardLimit'] = 3;
			}elseif($_POST['selectedLevel'] == 4 && $level3Amount >= 300)
				die("<p style='color: red;'>There is no more level 3 rewards left</p>");

			//add a limit of 100 to a level4 reward and add 1 reward if user selected level4
			if($_POST['selectedLevel'] == 4 && $level4Amount < 100){
				if($checkIfAllocated != false){
					$updateLevel4 = $db->prepare("
						UPDATE rewards 
						SET	level4_limit = :level3, 
							level3_limit = 0,
							limit_check = 4,
							created_at = :created
						WHERE user_id = :userID AND limit_check > 0
							");
					$updateLevel4->execute([
						'userID' => $user->id, 
						'level3' => 1, 
						'created' => date('Y-m-d h:i:s')]);

				}else{
					$addlevel4 = $db->prepare("
						INSERT INTO rewards (
							user_id,
							level3_limit,
							level4_limit,
							limit_check,
							created_at)

						VALUES (
							:userID, 
							0, 
							:level4, 
							:limitCheck, 
							:created)

						");
					$addlevel4->execute([
						'userID' => $user->id, 
						'level4' => 1, 
						'limitCheck' => $_POST['selectedLevel'], 
						'created' => date('Y-m-d h:i:s')]);
				}

				if($user->member_level == 3){
					$_SESSION['changeLimitedMemberLevel'] = 3;
				}

				$_SESSION['rewardLimit'] = 4;
			} elseif($_POST['selectedLevel'] == 4 && $level4Amount >= 100)
				die("<p style='color: red;'>There is no more level 4 rewards left</p>");

			if($_POST['selectedLevel'] < 3 && $_POST['selectedLevel'] >= 0){
				$_SESSION['rewardLimit'] = $_POST['selectedLevel'];
			}
		}
	}

$price = (int)$_POST['price'];
$_SESSION['price'] = $price;
$_SESSION['transactionStartTime'] = time();

$payer = new Payer();
$payer->setPaymentMethod('paypal');

$item = new Item();
$item->setName("Reward")
	->setCurrency('USD')
	->setQuantity(1)
	->setPrice($price);

$itemList = new itemList();
$itemList->setItems([$item]);


$amount = new Amount();
$amount->setCurrency('USD')
	->setTotal($price);

$transaction = new Transaction();
$transaction->setAmount($amount)
	->setItemList($itemList)
	->setDescription("Reward")
	->setInvoiceNumber(uniqid());

$redirectUrls = new RedirectUrls();
$redirectUrls->setReturnUrl(SITE_URL . 'pay.php?success=true')
	->setCancelUrl(SITE_URL . 'pay.php?success=false');

$payment = new Payment();
$payment->setIntent('sale')
	->setPayer($payer)
	->setRedirectUrls($redirectUrls)
	->setTransactions([$transaction]);

try{
	$payment->create($paypal);

	$hash = md5($payment->getId());
	$_SESSION['paypal_hash'] = $hash;

	// Preparing to store transaction into DB
	$store = $db->prepare("
		INSERT INTO transactions_paypal (
			user_id, 
			payment_id, 
			hash, 
			completed, 
			amount, 
			created_at)
			
		VALUES (:user_id, :payment_id, :hash, 0, 0, :created)
		");



	// Storing transaction into DB
	if($_POST['anonymous'] == true){
		$_SESSION['anonymous'] = true;
		$store->execute([
			'user_id' => 1,
			'payment_id' => $payment->getId(),
			'hash' => $hash,
			'created' => date('Y-m-d h:i:s')
			]);
	}
	else
		$store->execute([
			'user_id' => $_SESSION['user_id'],
			'payment_id' => $payment->getId(),
			'hash' => $hash,
			'created' => date('Y-m-d h:i:s')
			]);
} catch(Exeption $e){
	die($e);
}

$aprovalURL = $payment->getApprovalLink();

//Sending user to confirm payment
header("Location: {$aprovalURL}");




 ?>