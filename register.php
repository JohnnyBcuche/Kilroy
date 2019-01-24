<?php
 	require_once 'app/start.php';
 	?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Register</title>
 	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
 	<link rel="stylesheet" href="register-form.css">
	<script src="https://use.fontawesome.com/1be6332b27.js"></script>

 </head>
 <body> 
 <?php
 // if(empty($_POST['g-recaptcha-response']) == true) {
 // 	die("You must confirm you are not a robot.");
 // }
	if($_POST['anonymous'] == true){
		?>
		<form action="checkout.php" id="autoPayAnon" method="post">
			<input type="hidden" name="anonymous" value="true">

			<input type="hidden" name="price" value="
			<?php echo $_POST['price']; ?>" checked>

			<input type="hidden" name="g-recaptcha-response" value="
			<?php echo $_POST['g-recaptcha-response']; ?>" checked>

		</form>

			<script type="text/javascript">
			    document.getElementById('autoPayAnon').submit(); // SUBMIT FORM
			</script>

		<?php
	}
	if(empty($_POST['name']) === false
		&& empty($_POST['email']) === false 
		&& empty($_POST['country']) === false 
		&& (
			(
				empty($_POST['password']) === false 
				&& empty($_POST['repeatPassword']) === false
			) || $_GET['accountfree'] == true
			)
		){

		trim($_POST['name']);
		trim($_POST['email']);
		if(isset($_GET['accountfree']) == false){
			trim($_POST['password']);
			trim($_POST['repeatPassword']);
		}
		$salt = uniqid(mt_rand(), true);

		/*============================================
		=            Setting up password            =
		============================================*/
		if(isset($_GET['accountfree']) != false)
			$password = null;
		else
		if($_POST['password'] === $_POST['repeatPassword']){
			if(strlen($_POST['password']) < 6 || strlen($_POST['password']) > 32)
				$errors[] = "Password must have between 6 and 32 caracters.";
			else{
				$hashed = hash("sha256", $_POST['password']);
				$password = $salt.$hashed;
			}
		}
		else{
			$errors[] = "Passwords did not match.";
		}	
		
		/*=====  End of Setting up password  ======*/
		
		/*========================================
		=            Setting up email            =
		========================================*/

		if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
			$email = $_POST['email'];
		} else {
		   $errors[] = "Please enter a valid email adress!";
		   $email = '';
		}
				
		/*=====  End of Setting up email  ======*/
		
		$name = $_POST['name'];
		$country = $_POST['country'];
	
	 	if(empty($_POST['name']) || empty($_POST['email']) 
	 		|| (empty($_POST['password']) && $_GET['accountfree'] != true))
	 	{
	 		$errors[] = "All fields must be filled in!";
		}


	 	$checkEmailExist = $db->prepare("
	 		SELECT * FROM users
	 		WHERE email = :email 
			");
	 	$checkEmailExist->execute(['email' => $email]);
	 	$checkEmailExist = $checkEmailExist->fetchObject();

	 	if($checkEmailExist != false)
	 		$errors[] = "That email is already being used.";

	 	if(!empty($errors)){
	 		foreach ($errors as $key => $value) {
	 			echo $value."<br>";
	 		}
	 		die();
	 	}


		$query = $db->prepare("
			INSERT INTO users (name, country, email, password, salt, member_level, created_at)
			VALUES (:name, :country, :email, :password, :salt, null, :currentDate)
			");
		$query->execute([
			'name' => $name,
			'country' => $country,
			'email' => $email,
			'password' => $password,
			'salt' => $salt,
			'currentDate' => date('Y-m-d h:m:s')
			]);


	 	$success = $db->prepare("
	 		SELECT * FROM users
	 		WHERE email = :email 
			");
	 	$success->execute(['email' => $email]);
	 	$user = $success->fetchObject();
	 	

		
		validateEmail($email, $siteUrl, $salt);
	 	


	 	if($user != false){
	 		$_SESSION['register'] = true;
			if(isset($_POST['price'])){


		 		$_SESSION['user_id'] = $user->id;
				?>

				<form action="checkout.php" id="autoPay" method="post">
					<input type="hidden" name="g-recaptcha-response" 
					value="<?php echo $_POST['g-recaptcha-response']; ?>" checked>

					<input type="hidden" name="selectedLevel" 
					value="<?php echo $_POST['selectedLevel']; ?>" checked>

					<input type="hidden" name="price" 
					value="<?php echo $_POST['price']; ?>" id="radio-button-1" checked>

					Procceding to paypal 
					<i class="fa fa-spinner fa-spin" aria-hidden="true"></i><br>
					
				</form>
				<script type="text/javascript">
				    document.getElementById('autoPay').submit(); // SUBMIT FORM
				</script>

			<?php 
				}
				else
					die("Error! Amount not chosen.");
		}
		else{
	 		$_SESSION['register'] = "failed";
			header("Location: ".$siteUrl);			
		}
 	}
 ?>
 	
 </body>
 </html>
