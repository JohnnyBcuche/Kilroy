<?php 
require_once 'app/start.php';

if(isset($_SESSION['price']))
	$price = $_SESSION['price'];
echo "<div id=\"content-text\">";
echo "Thank you for your pledge of $".$price."<br><br>";

if(!empty($_SESSION['login'])){
	if($donated > 0){
			$total = $donated;
			echo "Your combined pledge total is now $".$total."<br><br>";
		}
	
	echo "<br>Your chosen reward is"; 
	
 	switch ($user->member_level) {
 		case 0:
 			echo $level[0];
 			break;
 		case 1:
 			echo $level[1];
 			break;
 		case 2:
 			echo $level[2];
 			break;
 		case 3:
 			echo $level[3];
 			break;
 		case 4:
 			echo $level[4];
 			break;
 		case 5:
 			echo $level[5];
 			break;
 	}
	 	echo '<br><br>';

	echo '<a href="myAccount.php" style="text-decoration: none;">
	<button class="button">PROCEED TO YOUR ACCOUNT</button>
	</a>';
}else{
	echo '<a href='.$siteUrl.' style="text-decoration: none;">
	<button class="button">PROCEED TO HOME PAGE</button>
	</a><br>';
	echo '<a href="'.$siteUrl.'login.php" style="text-decoration: none;">
	<button class="button">PROCEED TO LOGIN</button>
	</a>';
}

echo '</div>';
unset($_SESSION['anonymous']);
unset($_SESSION['price']);
unset($_SESSION['payed']);

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Thank You Page</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="register-form.css" >
	<link rel="stylesheet" href="style.css" >
</head>
<body>
	
</body>
</html>