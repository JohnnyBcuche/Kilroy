<?php 
	require_once 'app/start.php';

	$currentEmail = $user->email;
	if(empty($_POST['newEmail']) === false 
		&& empty($_POST['password']) === false)
	{
		$newEmail = $_POST['newEmail'];

		$checkEmailExist = $db->prepare("
	 		SELECT * FROM users
	 		WHERE email = :email 
			");
	 	$checkEmailExist->execute(['email' => $newEmail]);
	 	$checkEmailExist = $checkEmailExist->fetchObject();
	 	if($checkEmailExist != false){
	 		$_SESSION['Messages'] = "That email is already being used.";
	 	}else{

			if(strlen($_POST['password']) < 6 
				|| strlen($_POST['password']) > 32)
			{
				$errorMsg = "Password must have between 6 and 32 caracters.";
			}
			else{
				$hashed = hash("sha256", $_POST['password']);
				$salt = $user->salt;
				$password = $salt.$hashed;
			}

			$query = $db->prepare("
				UPDATE users
				SET email = :newEmail, validated = 0
				WHERE email = :currentEmail AND password = :password
				");
			$query->execute([
				'currentEmail' => $currentEmail,
				'password' => $password,
				'newEmail' => $newEmail
				]);				


		 	$success = $db->prepare("
		 		SELECT * FROM users
		 		WHERE email = :newEmail 
				");
		 	$success->execute(['newEmail' => $newEmail]);
		 	$checkSuccess = $success->fetchObject();

		 	if($checkSuccess != false){

		 		/*================================================
			 	=            Sending validation email            =
			 	================================================*/
			 	
				validateEmail($newEmail, $siteUrl, $salt);
			 	
			 	/*=====  End of Sending validation email  ======*/


		 		$_SESSION['emailReset'] = true;
		 		header("Location: ".$siteUrl);
		 	}
		 	else{
		 		$_SESSION['emailReset'] = "failed";
		 		header("Location: ".$siteUrl);
		 	}
	 	}


				
	}


 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Kilroy event</title>
 	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
 	<link rel="stylesheet" href="login-reset.css" >
 </head>
 <body>
 	<div id="login-page">
 	<div class="form">
 	<div class="return-link">
		<a href="<?php echo $siteUrl; ?>">Return to home page.</a>
	</div><br><br>
	<form action="resetEmail.php" method="post" autocomplete="off">

		<input type="email" name="currentEmail" 
		value="<?php echo $currentEmail; ?>" required disabled>

		<input type="email" name="newEmail" placeholder="New Email" required>

		<input type="password" id="status" 
		name="password" placeholder="Password" required>
		
		<button>Send</button>
	</form>
	<div id="invalid">
	 		<?php 
	 			if(!empty($_SESSION['Messages'])){
	 				echo $_SESSION['Messages']; 
	 				unset($_SESSION['Messages']);
	 			}
	 		?>
	 </div>
	</div>
	</div>	
 </body>
 </html>