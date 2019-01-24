<?php 
require_once 'functions.php';
require 'vendor/autoload.php';
require 'db.php';
require_once 'countries.php';
use Sendinblue\Mailin;
/*
 * This will initiate the API with the endpoint and your access key.
 *
 */
ob_start();
$before = strtotime("-3 seconds");

$mailin = new Mailin('https://api.sendinblue.com/v2.0','893vVOs2MFgBdx0t');



if(empty($_SESSION['user_id']))
$_SESSION['user_id'] = 0;
$user = $db->prepare("
	SELECT * FROM users 
	WHERE id = :user_id
	");

$user->execute(['user_id' => $_SESSION['user_id']]);
$user = $user->fetchObject();

if(!empty($_SESSION['login'])){
 	$transactions = $db->prepare("
		SELECT amount FROM transactions_paypal
		WHERE user_id = :userId
		");
	$transactions->execute(['userId' => $user->id]);

	$trans = $transactions->fetchAll(PDO::FETCH_ASSOC);

	$donated = 0;
	foreach ($trans as $key => $value) {
		$donated += $value['amount'];
	}
}


/*=============================================
=            Summ of all donations            =
=============================================*/

$result = $db->prepare("SELECT amount FROM transactions_paypal");
$result->execute();

$collected = 0;
while ($row = $result->fetch(PDO::FETCH_ASSOC))
{
	$collected += $row['amount'];
}

/*=====  End of Summ of all donations  ======*/




$paypal = new \PayPal\Rest\ApiContext(
	new \PayPal\Auth\OAuthTokenCredential(
		//Client ID
		'AYPeqet2kUffTRbJf2bPHVCii22v_Vcwp1Sssk0M4Xnc0k6tktJXWw6enDr53aRlLRpwLsOsFMa750Vj',
		//Client Secret
		'EFnHyBWpJnIvHXmZtUQksz0BK5pfAzQJH0K6VNp8zR9-NVQeGOmlMUmC4tgq9NmMZMwLwtxOSHYgxC9v'
		)
	);

//Paypal Config
$paypal->setConfig(
  array(
    'log.LogEnabled' => true,
    'log.FileName' => 'PayPal.log',
    'mode' => 'sandbox',
    'log.LogLevel' => 'DEBUG'
  )
);

/*====================================
=            Reward level            =
====================================*/

$reward4 = $db->prepare("SELECT level3_limit FROM rewards");
$reward4->execute();

$level3Amount = 0;
while ($row = $reward4->fetch(PDO::FETCH_ASSOC))
{
	$level3Amount += $row['level3_limit'];
}

$reward5 = $db->prepare("SELECT level4_limit FROM rewards");
$reward5->execute();

$level4Amount = 0;
while ($row = $reward5->fetch(PDO::FETCH_ASSOC))
{
	$level4Amount += $row['level4_limit'];
}
$level[0] = "<b>No reward.<br></b>";//ask for text
$level[1] = "Your name will appear on our “Kilroy Was Here” Wall, prominently featured at our event to show your support of free speech.<br>";
$level[2] = "Your name and a picture will be featured on our '“Kilroy Was Here” wall! You choose the photo and we will feature your photo and name as a sign of our gratitude for your support!<br>";
$level[3] = "You will pre-order your Kilroy Event ticket! In addition to your name and photo appearing in a VIP section on the “Kilroy Was Here” event wall, a pledge of $150 will also reserve your ticket to attend the event and you will receive a special gift at the event!<br>";
$level[4] = "You will receive a VIP placement on our “Kilroy Was Here” photo or name wall, reserve your VIP Kilroy Event ticket and an invitation to a private party for guests, speakers and panelists!! We rely on donations to fund our event and we are dedicated to building a foundation of support for free speech, worldwide!<br>";

/*=====  End of Reward level  ======*/


 ?>