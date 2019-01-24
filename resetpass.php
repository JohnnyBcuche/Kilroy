<?php 
require_once 'app/start.php';

if(empty($_GET) === false){
	if(empty($_GET['code']) === false || empty($_GET['time']) === false ){
		$urlCode = $_GET['code'];
		$urlTime = $_GET['time'];

		if(time() - $urlTime < 86400){
			$checkUserExist = $db->prepare("
	 		SELECT * FROM users
	 		WHERE salt = :salt
			");
		 	$checkUserExist->execute(['salt' => $urlCode]);
		 	$user = $checkUserExist->fetchObject();


			if(empty($_POST) === false){
				if($_POST['password'] === $_POST['repeatPassword'])
				{
					if(strlen($_POST['password']) < 6 
						|| strlen($_POST['password']) > 32)
					{
						$errorMsg = "Password must have between 6 and 32 caracters.";
					}
					else{
						$hashed = hash("sha256", $_POST['password']);
						$salt = uniqid(mt_rand(), true);
						$password = $salt.$hashed;
					}
				}
				else{
					$errorMsg = "Passwords did not match.";
				}

				$query = $db->prepare("
					UPDATE users
					SET password = :password, salt = :salt
					WHERE id = :id
					");
				$query->execute([
					'password' => $password,
					'salt' => $salt,
					'id' => $user->id
					]);				


			 	$success = $db->prepare("
			 		SELECT * FROM users
			 		WHERE id = :id 
					");
			 	$success->execute(['id' => $user->id]);
			 	$checkSuccess = $success->fetchObject();

			 	if($checkSuccess != false){
			 		$_SESSION['passReset'] = true;
			 		header("Location: ".$siteUrl);
			 	}
			 	else{
			 		$_SESSION['passReset'] = "failed";
			 		header("Location: ".$siteUrl);
			 	}



			}
		}else echo "<div class=\"valid\">Link works only 24 hours.</div>";
	}else echo "<div id=\"invalid\">Url not working!</div>";
}else echo "<div id=\"invalid\">Url not working!</div>";


?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Reset Password</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="login-reset.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	
	<div id="login-page">
 	<div class="form">
 	<label>Enter youre new password.</label> <br><br>
	<div class="return-link">
		<a href="<?php echo $siteUrl; ?>">Return to home page.</a>
	</div><br><br>

	<form method="post" autocomplete="off" 
	<?php "action="."resetpass.php?code=$urlCode&time=$urlTime"; ?> >

		<input type="password" id="pwd" name="password" 
		placeholder="New password" required>

		<div id="pwd_strength_wrap">
                <div id="passwordDescription">Password not entered</div>
                <div id="passwordStrength" class="strength0"></div>
        </div>

		<input type="password" name="repeatPassword" 
		placeholder="Repeat password" required>
		
		<button>Send</button>
	</form>
	<div id="invalid">
 		<?php 
 			if(!empty($errorMsg)){
 				echo $errorMsg; 
 			} 
 		?>
 	</div>
	</div>
	</div>

	<script>
		$("input#pwd").on("focus keyup", function () {
        var score = 0;
        var a = $(this).val();
        var desc = new Array();
 
        desc[0] = "Password must have between 6 and 32 caracters.";
        desc[1] = "Weak (Hint: recommend a minimal 3 uppercase, lowercase, numbers, and symbols)";
        desc[2] = "Moderate (Hint: recommend a minimal 3 uppercase, lowercase, numbers, and symbols)";
        desc[3] = "Good (Hint: recommend a minimal 3 uppercase, lowercase, numbers, and symbols)";
        desc[4] = "Strong (Hint: recommend a minimal 3 uppercase, lowercase, numbers, and symbols)";
 
        $("#pwd_strength_wrap").fadeIn(400);
         
        if (a.length >= 6 && a.length <= 32) {
            score++;
        }
 
        if (a.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z\W]{8,}$/)) {
           score++;
        } 
 
        if (a.match(/^(?=(.*\d){2,})(?=(.*[a-z]){2,})(?=(.*[A-Z]){2,})(?=.*[\W])[0-9a-zA-Z\W]{12,}$/)) {
            score++;
        } 
 
        if (a.match(/^(?=(.*\d){3,})(?=(.*[a-z]){3,})(?=(.*[A-Z]){3,})(?=(.*[\W]){3,})[0-9a-zA-Z\W]{20,}$/)) {
            score++;
        } 
        
        if (a.length > 32){
            score=0;
        }


 
        if(a.length > 0) {
                $("#passwordDescription").text(desc[score]);
                $("#passwordStrength").removeClass().addClass("strength"+score);
        } else {
                $("#passwordDescription").text("Password not entered");
                $("#passwordStrength").removeClass().addClass("strength"+score);
        }
});
 
$("input#pwd").blur(function () {
        $("#pwd_strength_wrap").fadeOut(400);
});
</script>

</body>
</html>