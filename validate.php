<?php 
require_once 'app/start.php';


if(empty($_GET) === false){
	if(empty($_GET['code']) === false){
		$urlCode = $_GET['code'];

			$checkUserExist = $db->prepare("
	 		SELECT * FROM users
	 		WHERE salt = :salt
			");
		 	$checkUserExist->execute(['salt' => $urlCode]);
		 	$user = $checkUserExist->fetchObject();


		
				$query = $db->prepare("
					UPDATE users
					SET validated = 1
					WHERE salt = :salt
					");
				$query->execute([
					'salt' => $urlCode,
					]);				


			 	$success = $db->prepare("
			 		SELECT * FROM users
			 		WHERE id = :id 
					");
			 	$success->execute(['id' => $user->id]);
			 	$checkSuccess = $success->fetchObject();

			 	if($checkSuccess->validated != 0){
			 		echo '<div id="content-text">
					<h3>Thank you. Your email address has been validated.</h3>
					<br><br>';
					if(!empty($_SESSION['login'])){						
						echo '<a href="'.$siteUrl.'myAccount.php">
						<button class="button">Proceed to Your Account</button>
						</a>';
					}else{
					echo '<a href="'.$siteUrl.'login.php">
					<button class="button">PROCEED TO LOGIN</button>
					</a>';
					}
					echo '</div>';
			 		
			 	}
			 	else{
			 		echo '<div id="content-text">
					<h3>
					Sorry. Something went wrong with youre email validation.
					</h3>
					<br><br>';
					if(!empty($_SESSION['login'])){						
						echo '<a href="'.$siteUrl.'myAccount.php">
						<button class="button">Proceed to Your Account</button>
						</a>';
					}else{
					echo '<a href="'.$siteUrl.'login.php">
					<button class="button">PROCEED TO LOGIN</button></a>';
					}
					echo '</div>';
			 		
			 	}



			
	}else echo "<div id=\"invalid\">Url not working!</div>";
}else echo "<div id=\"invalid\">Url not working!</div>";

 ?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Kilroy</title>
 	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
 	<link rel="stylesheet" href="register-form.css" >
	<link rel="stylesheet" href="style.css" >
 </head>
 <body>
 	
 </body>
 </html>