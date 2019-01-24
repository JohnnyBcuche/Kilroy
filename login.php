<?php 
require_once 'app/start.php';

 	if(empty($_POST) === false){

		trim($_POST['email']);
		trim($_POST['password']);
		
	 	$email = $_POST['email'];

		$getUser = $db->prepare("
			SELECT * FROM users
			WHERE email = :email
			");
		$getUser->execute(['email' => $email]);
		$user = $getUser->fetchObject();

		$hashed = hash("sha256", $_POST['password']);
		$salt = $user->salt;
		$password = $salt.$hashed;
	 	if(empty($email) || empty($password)){
	 		$_SESSION['Messages'] = "You must fill in all the fields!";
			if(empty($_GET['donate']) === false)
		 		header("Location: ".$siteUrl."donate.php
		 			?donate=".$_GET['donate']."&price=".$_GET['price']);
			else
		 		header("Location: ".$siteUrl);
	 	}elseif ($user === false) {
	 		$_SESSION['Messages'] = "No such user in the database!";
			if(empty($_GET['donate']) === false)
		 		header("Location: ".$siteUrl."donate.php
		 			?donate=".$_GET['donate']."&price=".$_GET['price']);
			else
		 		header("Location: ".$siteUrl);
	 	}elseif($email === $user->email && $password === $user->password){

	 		session_start();
	 		$_SESSION['user_id'] = $user->id;
	 		$_SESSION['login'] = true;
			if(empty($_GET['donate']) === false)
		 		header("Location: ".$siteUrl."donate.php
		 			?donate=".$_GET['donate']."&price=".$_GET['price']);
			else
		 		header("Location: ".$siteUrl);
	 	}
	 	else{
	 		$_SESSION['Messages'] = "Wrong email or password!";
			if(empty($_GET['donate']) === false)
		 		header("Location: ".$siteUrl."donate.php
		 			?donate=".$_GET['donate']."&price=".$_GET['price']);
			else
		 		header("Location: ".$siteUrl);
	 	}
 	}

 ?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Kilroy</title>
 	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="login-reset.css">
 </head>
 <body> 	
 	<div id="login-page">
 	<div class="form">
 	<form action="login.php" method="post">
 	<div class="return-link">
		<a href="<?php echo $siteUrl; ?>">Return to home page.</a>
	</div><br><br>
	 		<input type="email" name="email" placeholder="Email" required>
	 		<input type="password" name="password" placeholder="Password" required>
 			<button>login</button>
 			<p class="message"><a href="forgotpass.php">Forgot password?</a></p>
 	</form>
 	</div>
 	</div>

 </body>
 </html>