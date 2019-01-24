<?php 
require 'app/start.php';

use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Payment</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="register-form.css" >
	<link rel="stylesheet" href="style.css" >
</head>
</html>
<?php


if(!isset($_GET['success'], $_GET['paymentId'], $_GET['PayerID'])){
	$_SESSION['payed'] = false;
	header("Location: ".$siteUrl);
}

if((bool)$_GET['success'] == false){
	$_SESSION['payed'] = false;
	header("Location: ".$siteUrl);
}

// Getting payment id from DB
$transaction = $db->prepare("
	SELECT payment_id, user_id, created_at
	FROM transactions_paypal
	WHERE hash = :hash
	");
$transaction->execute([
	'hash' => $_SESSION['paypal_hash']
	]);
$transaction = $transaction->fetchObject();
$paymentId = $transaction->payment_id;
$userId = $transaction->user_id;
$PayerID = $_GET['PayerID'];

$payment = Payment::get($paymentId, $paypal);


/*====================================================================
=            Removing the limit older than specified time            =
====================================================================*/
if ($level3Amount < 295) {
	$before = strtotime('-4 hours');
}
$removeOldLimit = $db->prepare("
	DELETE FROM rewards 
	WHERE created_at < :dateBefore AND limit_check > 0
	");

$removeOldLimit->execute(['dateBefore' => date('Y-m-d h:i:s', $before)]);



/*=====  End of Removing the limit older than specified time  ======*/

$checkIfAllocated = $db->prepare("
	SELECT * FROM rewards
	WHERE user_id = :user_id AND limit_check > 0	");
$checkIfAllocated->execute([
	'user_id' => $user->id]);
$checkIfAllocated = $checkIfAllocated->fetchObject();
//cancel the payment if reward delocated
if($checkIfAllocated == false && (int)$_SESSION['rewardLimit'] > 2){
	echo "Sorry, <br>You took too long to complete the payment. <br>Payment has been canceled! <br>";
	echo '<a href='.$siteUrl.' style="text-decoration: none;">
	<button class="button">BACK TO HOME PAGE</button>
	</a><br>';
	unset($_SESSION['transactionStartTime']);
	die();
}

$execute = new PaymentExecution();
$execute->setPayerId($PayerID);

try{
	$result = $payment->execute($execute, $paypal);
} catch (Exeption $e){
	die($e);
}
// Updating transaction
$updateTransaction = $db->prepare("
	UPDATE transactions_paypal
	SET completed = 1, amount = :amount
	WHERE payment_id = :payment_id
	");
$updateTransaction->execute([
	'amount' => $_SESSION['price'],
	'payment_id' => $paymentId
	]);

$time = date('Y-m-d h:i:s');
//setting up user reward level
if(!empty($_SESSION['rewardLimit'])){
	$setMember = $db->prepare("
		UPDATE users 
		SET member_level = :member_level
		WHERE id = :user_id
		");

	$setMember->execute([
		'member_level' => $_SESSION['rewardLimit'],
		'user_id' => $userId
		]);
	$updateReward = $db->prepare("
		UPDATE rewards
		SET limit_check = 0
		WHERE user_id = :user_id AND created_at > :dateBefore
		");

	$updateReward->execute([
		'user_id' => $userId,
		'dateBefore' => date('Y-m-d h:i:s', $before)
		]);
	if($_SESSION['changeLimitedMemberLevel'] == 4){
		$removelevel3 = $db->prepare("
			INSERT INTO rewards (
				user_id,
				level3_limit,
				level4_limit,
				limit_check,
				created_at)

			VALUES (:userID, :level3, 0, 0, :created)
			");
		$removelevel3->execute([
			'userID' => $user->id, 
			'level3' => -1, 
			'created' => $time]);
	}
	if($_SESSION['changeLimitedMemberLevel'] == 5){
		$removelevel4 = $db->prepare("
			INSERT INTO rewards (
			user_id,
			level3_limit,
			level4_limit,
			limit_check,
			created_at)

			VALUES (:userID, 0, :level4, 0, :created)
			");
		$removelevel4->execute([
			'userID' => $user->id, 
			'level4' => -1, 
			'created' => $time]);
	}
}

	$email = $user->email;

	$text = "
			Thank you for your donation to the Kilroy Event crowdfunding campaign.

			Upon completion of the Kilroy Event crowdfunder, we will email you with details as to how you can redeem your reward.

			Follow this link to book your hotel room and take advantage of the special Kilroy discounted rate for the event: https://www.starwoodmeeting.com/events/start.action?id=1710128038&key=12E4D946

			We will do our utmost to keep you up-to-date with the Kilroy Event.

			-The Kilroy Team

			----
			NOTE: This email was sent as part of the subscription to kilroyevent.com. If you feel this email is being sent abusively, please contact: abuse@kilroyevent.com";
				

			$data = array( "to" => array($email=>""),
						"from" => array("no-reply@kilroyevent.com","Kilroy event"),
						"subject" => "Thank you for your $".$_SESSION['price']." pledge!",
						"text" => $text
			);
			$mailin->send_email($data);
		

// Unset PayPal hash
unset($_SESSION['paypal_hash']);
unset($_SESSION['amount']);
unset($_SESSION['rewardLimit']);
unset($_SESSION['transactionStartTime']);
//unset($_SESSION['price']);
$_SESSION['payed'] = true;


//redirect here
header("Location: ".$siteUrl."thankYou.php");



 ?>