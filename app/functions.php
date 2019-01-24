<?php session_start();

//Base URL
define("SITE_URL", 'http://localhost:8380/Kilroy/');
$siteUrl = "http://localhost:8380/Kilroy/";

 // define("SITE_URL", 'https://www.kilroyevent.xyz/');
 // $siteUrl = "https://www.kilroyevent.xyz/";


 // define("SITE_URL", 'https://www.kilroyevent.com/');
 // $siteUrl = "https://www.kilroyevent.com/";
 // $fromEmail = "no-reply@kilroyevent.com";


function selectReward($membershipLevel){
	require 'app/db.php';
	require 'app/start.php';

?>


	<?php
	switch ($membershipLevel) {
		case 0:
			echo $level[0];
			break;
		case 1:
			?>
			<select name="selectedLevel" id="selectedLevel">
				<option type="radio" value="0" id="option-0" >
				I do not want a reward.</option>
				<option type="radio" value="1" id="option-1" >
				Level 1: "You were Here"</option>
			</select>
			<?php
			break;
		case 2:
			?>
			<select name="selectedLevel" id="selectedLevel">
				<option type="radio" value="0" id="option-0" >
				I do not want a reward.</option>
				<option type="radio" value="1" id="option-1" >
				Level 1: "You were Here"</option>
				<option type="radio" value="2" id="option-2" >
				Level 2: "You were Here"</option>
			</select>
			<?php			
			break;
		case 3:
			?>
			<select name="selectedLevel" id="selectedLevel">
				<option type="radio" value="0" id="option-0" >
				I do not want a reward.</option>
				<option type="radio" value="1" id="option-1" >
				Level 1: "You were Here"</option>
				<option type="radio" value="2" id="option-2" >
				Level 2: "You were Here"</option>
				<option type="radio" value="3" id="option-3" >
				Level 3: Pre-order ticket and special gift at event (Limited to first 300 pledges)</option>
			</select>
			<?php			
			break;
		case 4:
			?>
			<select name="selectedLevel" id="selectedLevel">
				<option type="radio" value="0" id="option-0" >
				I do not want a reward.</option>
				<option type="radio" value="1" id="option-1" >
				Level 1: "You were Here"</option>
				<option type="radio" value="2" id="option-2" >
				Level 2: "You were Here"</option>
				<option type="radio" value="3" id="option-3" >
				Level 3: Pre-order ticket and special gift at event (Limited to first 300 pledges)</option>
				<option type="radio" value="4" id="option-4" >
				Level 4: VIP Placement & Private Party Invitation (Limited to first 100 pledges)</option>
			</select>
			<?php			
			break;
		default:
			break;
	}
} 


function confirm($validation, $messageSuccess, $messageFail){
	require 'app/start.php';
	if($validation === true){
		echo "<div class=\"valid\">$messageSuccess</div><br><br>";
	}
	else {
		echo "<div class=\"invalid\">$messageFail</div><br><br>";
	} 
}

function validateEmail($email, $url, $code){
	require 'app/start.php';
	 	$text = "
		In order to receive future update emails, you must validate your email account by clicking the link below:
		".$url."validate.php?code=$code

		----
		NOTE: This email was sent as part of the subscription to kilroyevent.com. If you feel this email is being sent abusively, please contact: abuse@kilroyevent.com";
			

		$data = array( "to" => array($email=>""),
					"from" => array("no-reply@kilroyevent.com","Kilroy event"),
					"subject" => "Validate your email for kilroyevent.com",
					"text" => $text
		);
		$mailin->send_email($data);
}
	?>
