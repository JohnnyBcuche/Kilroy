<?php 
 	require_once 'app/start.php';
	if(empty($_POST) === false){
		if(empty($_POST['g-recaptcha-response']) === false){

			trim($_POST['email']);

			$checkEmailExist = $db->prepare("
		 		SELECT * FROM users
		 		WHERE email = :email 
				");
		 	$checkEmailExist->execute(['email' => $_POST['email']]);
		 	$user = $checkEmailExist->fetchObject();
		 	if($user != false){
		 		$email = $_POST['email'];
		 		$code = $user->salt;

		 			$text = "
						Please click on the following link to reset your password (within 24 hours):
						".$siteUrl."resetpass.php?code=$code&time=".time()."

						If you did not request to reset your password or remember your existing password,you may disregard this email.
						
						Thank you,
						-The Kilroy Team

						----
						NOTE: This email was sent as part of the subscription to kilroyevent.com. If you feel this email is being sent abusively, please contact: abuse@kilroyevent.com";

						$data = array( "to" => array($email=>""),
									"from" => array("no-reply@kilroyevent.com","Kilroy event"),
									"subject" => "Reset your password",
									"text" => $text
						);
						if($mailin->send_email($data)){
							$_SESSION['emailSent'] = true;
							header("Location: ".$siteUrl);	
						}
		 	}
	 	}else $errorMsg = "You must confirm you are not a robot.";

	 }

 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Forgotten Password</title>
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
 	<link rel="stylesheet" href="login-reset.css" >
	<!-- <script src='https://www.google.com/recaptcha/api.js'></script> -->
 </head>
 <body>


	<div id="login-page">
 	<div class="form">
	<div class="return-link">
		<label>Link for password reset will be sent to youre email.</label>
		<br><br>
		
		<a href="<?php echo $siteUrl; ?>">Return to home page.</a>
	</div><br><br>
	<form action="forgotpass.php" method="post" autocomplete="off">
		<input type="email" name="email" placeholder="Email" required>
		<!-- <div class="g-recaptcha" data-sitekey="6LdyfywUAAAAABDf7ASeD-QGJW9vft3EbWV1w96W"></div> -->
		<br>
		<button>Send</button>
	</form>	<div class="invalid">
 		<?php 
 			if(!empty($errorMsg)){
 				echo $errorMsg; 
 			} 
 		?>
 	</div>
	</div>
	</div>
 	
 </body>
 </html>