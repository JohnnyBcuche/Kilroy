<?php
require_once 'app/start.php';
if(!isset($_POST['price'])){
	$_SESSION['Messages'] = "Please chose an amount.";
	header("Location: ".$siteUrl);
}
else{
	?>
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Pledge</title>
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
		<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
		<link rel="stylesheet" href="register-form.css" >
		<link rel="stylesheet" href="style.css" >
		<script src="https://use.fontawesome.com/1be6332b27.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src='https://www.google.com/recaptcha/api.js'></script>
	</head>
	<body>
		
	<?php 
 	//Checking if user loged in - header
 		if(!empty($_SESSION['login'])):
 	 ?>
 	 <div class="menu-bar-content">
 		<div class="kilroy-event">
 			<a href="<?php echo $siteUrl; ?>" class="kilroy">Kilroy Event</a>
 		</div>
 		<div class="header-links">
	 		<a href="<?php echo $siteUrl."tickets.php"; ?>">Tickets</a>
			<a href="<?php echo $siteUrl."schedule.php"; ?>">Schedule</a>
			<a href="<?php echo $siteUrl."featuredSpeakers.php"; ?>">Guests</a>
			<a href="<?php echo $siteUrl."venue.php"; ?>">Venue</a>
			<a href="<?php echo $siteUrl."philanthropy.php"; ?>">Philanthropy</a>
			<a href="<?php echo $siteUrl."store.php"; ?>">Store</a>
			<a href="<?php echo $siteUrl."contact.php"; ?>">Contact</a>
 			<a href="#" class="toggle">Account</a>
				<article class="account-links">
					<nav class="sidebar">
						<ul>
							<li><p><?php echo 'Logged in as: '.$user->email ?></p></li>
							<?php if((int)$user->admin === 1){
							echo "<li><a href=".$siteUrl."admin.php>Admin</a></li>";
							echo "<li><a href=".$siteUrl."admin_tranasctions.php>Transactions</a></li>";
							}
							 ?>
					 		<li><a href="<?php echo $siteUrl."myAccount.php"; ?>">My Account</a>
							<li><a href="logout.php">Log Out</a></li>
						</ul>
					</nav>
				</article>
	 	</div>
 	</div>

 	<?php else: ?>
	<div class="menu-bar-content">
 		<div class="kilroy-event">
 			<a href="<?php echo $siteUrl; ?>" class="kilroy">Kilroy Event</a>
 		</div>
 		<div class="header-links">
	 		<a href="<?php echo $siteUrl."tickets.php"; ?>">Tickets</a>
			<a href="<?php echo $siteUrl."schedule.php"; ?>">Schedule</a>
			<a href="<?php echo $siteUrl."featuredSpeakers.php"; ?>">Guests</a>
			<a href="<?php echo $siteUrl."venue.php"; ?>">Venue</a>
			<a href="<?php echo $siteUrl."philanthropy.php"; ?>">Philanthropy</a>
			<a href="<?php echo $siteUrl."store.php"; ?>">Store</a>
			<a href="<?php echo $siteUrl."contact.php"; ?>">Contact</a>
			<a href="<?php echo $siteUrl."login.php" ?>">Log In</a>
	 	</div>
 	</div>

	<?php 
 	endif  
 	 ?>

	<div class="register-content">
	<?php
	if(isset($_POST['price']))
		$price = $_POST['price'];

	if(!empty($_SESSION['login'])){
		$currentMoney = $donated + $price;
	}else
		$currentMoney = $price;

		if($currentMoney>=10)
			$memberLevel = 1;
		if($currentMoney>=20)
			$memberLevel = 2;
		if($currentMoney>=150)
			$memberLevel = 3;
		if($currentMoney>=250)
			$memberLevel = 4;


	?>
	<div class="pledges">
	<?php
	if(!empty($_SESSION['login'])){ 

		if(isset($_POST['anonymous']) != true){

		if($donated > 0)
			echo "Currently pledged: $".$donated."<br><br>";
			echo "Your new pledge: $".$price."<br><br>";
		if($donated > 0){
			$total = $price+$donated;
			echo "Total pledge: $".$total."<br><br>";
		}
	}
		?></div>
		<form action="checkout.php" method="post">
		
		<div  id="nonAnon">

		<h3>Your name: </h3>
		<input type="text" name="name" placeholder="<?php echo $user->name;?>">
		<div class="nameField">(as seen on the Kilroy Wall)</div>
		</br>

		<h3>Your email: </h3>
		<input type="text" name="email" placeholder="<?php echo $user->email;?>" disabled>
		<div class="nameField">(used as your account login)</div>
		<br></br>

		<div class="nameField">Select reward:</div>
			<?php
			selectReward($memberLevel);	
			 ?>
			<p class="pledges" id="limitReward"></p><br>
			<p class="pledges" id="fullReward"></p>
			<br>

			<input type="hidden" name="price" value="
			<?php echo $price; ?>" id="radio-button-1" checked>

			<br><br>

		</div><?php 
		if(isset($_POST['anonymous'])){
 		?>
		<input class="radioCheck" type="hidden" name="anonymous" id="anonymous" onclick="anonymously()" checked disabled>
		<label for="anonymous" value="true">I would prefer to donate anonymously (and not receive any reward)</label><br><br>
	 	<p id="anonText">Amount to pledge:</p>
	 	<div class="input-icon">
 		 <i id="dollar">$</i><input type="text" name="price" id="anonValue" required>
		</div>
 		<?php
 		}?>
			<div class="g-recaptcha" data-sitekey="6LdyfywUAAAAABDf7ASeD-QGJW9vft3EbWV1w96W"></div>
			<br>
			<button class="button">Continue</button>
		</form>
		<br>
	 	<?php 
	}
	else{
		if(isset($_POST['anonymous']) == false){
			echo "Your new pledge: $".$price."<br>";
	}
	?>
	<br>
 	

	<form action="register.php" method="post" id="accountForm">
	<input type="hidden" name="price" 
	value="<?php echo $price; ?>" id="radio-button-1" checked><br>

	<?php 
 	if(isset($_POST['anonymous']) != true){
 	 ?>
		<input class="radioCheck" type="checkbox" name="anonymous" id="anonymous" onclick="anonymously()">
		<label for="anonymous" value="true">I would prefer to donate anonymously (and not receive any reward)</label><br><br>
	 	<p id="anonText">Amount to pledge:</p>

	 	<div class="input-icon">
 		 <i id="dollar">$</i><input type="text" name="price" id="anonValue" value="<?php echo $price; ?>" required>
		</div>
		<?php } ?>
 	
 	<div id="nonAnon">
	<?php 
	selectReward($memberLevel); ?>

	<p id="limitReward"></p><br>
	<p id="fullReward"></p>
		<br>
		<input type="text" name="name" placeholder="Your name" required>
		<br>
		<div class="nameField">(as seen on the Kilroy Wall)</div>
		<br>

		<label for="country">Country:</label>
		<br>
		<select name="country" required>
		<option></option>
		<?php
		foreach($countries as $key => $value) {
		?>
		<option value="<?= $key ?>" title="<?= htmlspecialchars($value) ?>">
		<?= htmlspecialchars($value) ?></option>
		<?php
		}
		?>
		</select><br>
		<input type="email" name="email" placeholder="Email" required>
		<br>
		<div class="nameField">(used as your account login)</div>

		<input class="passField" type="password" id="pwd" 
		name="password" placeholder="Password" class="pass" required>
		<div id="pwd_strength_wrap">
                <div id="passwordDescription">Password not entered</div>
                <div id="passwordStrength" class="strength0"></div>
        </div>

		<input class="passField" type="password" name="repeatPassword" 
		placeholder="Repeat password" class="pass" required>

	</div>
		<?php if(isset($_POST['anonymous'])){
 		?>
		<input class="radioCheck" type="hidden" name="anonymous" id="anonymous" onclick="anonymously()" value="true" checked>
		<label for="anonymous" value="true">I would prefer to donate anonymously (and not receive any reward)</label><br><br>
	 	<p id="anonText">Amount to pledge:</p>
	 	<div class="input-icon">
 		 <i id="dollar">$</i><input type="text" name="price" id="anonValue" required>
		</div>

 		<?php
 	} ?>
		<div class="g-recaptcha" data-sitekey="6LdyfywUAAAAABDf7ASeD-QGJW9vft3EbWV1w96W"></div>
		<br>

		<button class="button">Pledge Now (via PayPal)</button>
	</form></div>

	<script>
		document.getElementById("option-0").innerHTML = "Create an account only. I do not want a reward."

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
	
	<?php 
	}
	?>
	
	<script>
	anonymously();
	function anonymously(){
		var checkAnon = document.getElementById('anonymous');
		if(checkAnon.checked){
			document.getElementById('nonAnon').style.display = 'none';
			document.getElementById('anonValue').style.display = 'initial';
			document.getElementById('anonText').style.display = 'initial';
			document.getElementById('dollar').style.display = 'initial';
			document.getElementsByName('name')[0].required = false;
			document.getElementsByName('country')[0].required = false;
			document.getElementsByName('email')[0].required = false;
			document.getElementsByName('password')[0].required = false;
			document.getElementsByName('repeatPassword')[0].required = false;
		}else{			
			document.getElementById('nonAnon').style.display = 'initial';
			document.getElementById('anonText').style.display = 'none';
			document.getElementById('anonValue').style.display = 'none';
			document.getElementById('dollar').style.display = 'none';
			document.getElementById('anonValue').required = false;
		}
	}

	
		$.getJSON('http://www.freegeoip.net/json/', function(data) {
			var country = data.country_name;
			console.log(country);


			var autoSelectedCountry = document.getElementsByName('country')[0].options;

			for(var i = 0; i < autoSelectedCountry.length; i++) {
			    if(autoSelectedCountry[i].title === country) {
			        autoSelectedCountry[i].selected = true;
			        break;
			    }
			}
		});
	</script>
			<script>
				var selectedLevel = document.getElementById("selectedLevel");
				var displayRemaning = document.getElementById("limitReward");

				var rewardLvl = [
					<?php echo "\"$level[0]\""; ?>, 
					<?php echo "\"$level[1]\""; ?>, 
					<?php echo "\"$level[2]\""; ?>, 
					<?php echo "\"$level[3]\""; ?>, 
					<?php echo "\"$level[4]\""; ?>, 
					]

				selectedLevel.addEventListener("click", getFullReward); 
				function getFullReward(){

					var selectedRewardLevel 
						= selectedLevel.options[selectedLevel.selectedIndex].value;

					document.getElementById("fullReward").innerHTML 
						= rewardLvl[selectedRewardLevel];

					if(selectedRewardLevel<3){
						displayRemaning.innerHTML = "";
					}
					else if(selectedRewardLevel==3){
						var remaning3 = <?php echo 300-$level3Amount; ?>;
						if(remaning3<3){
							displayRemaning.style.color = 'red';
						}
						displayRemaning.innerHTML 
							= "Remaining available: "+remaning3;
					}
					else if(selectedRewardLevel==4){
						var remaning4 = <?php echo 100-$level4Amount; ?>;
						if(remaning4<4){
							displayRemaning.style.color = 'red';
						}
							displayRemaning.innerHTML 
								= "Remaining available: "+remaning4;
					} 
				}
				function autoSelectValue(){
					if(selectedLevel.value<5)
						selectedLevel.value = 4; 
					if(selectedLevel.value<4)
						selectedLevel.value = 3;
					if(selectedLevel.value<3)
						selectedLevel.value = 2;
					if(selectedLevel.value<2)
						selectedLevel.value = 1;
				}
				autoSelectValue();
				getFullReward();
			</script>

			<script>
				(function() {
				  var article = $('article');
				  $('.toggle').bind('click', function() {
				    article.toggleClass('menu-open');
				    return false;
				  });
				})();
			</script>
	<?php
}
 ?>


 </body>