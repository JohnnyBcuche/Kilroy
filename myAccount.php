<?php 
	require_once 'app/start.php';
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Kilroy</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="register-form.css" >
	<link rel="stylesheet" href="style.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

<?php echo '<div class="content-register">'; ?>

	<div id="content-text">
		<div class="account-details">
			<ul>
				<li>Your Name: <?php echo '<b>'.$user->name.'</b>'; ?>
				<a class="popup" onclick="showNameChange()">
				<img src="img/edit.png" alt="edit">
				<span class="popup-text">edit name</span></a></li>

				<li>Your email: <?php echo '<b>'.$user->email.'</b>'; ?>
				<?php if($user->validated == 0){ ?>
				<a class="popup" href="<?php echo $siteUrl."verifyEmail.php"; ?>">
				<img src="img/validate.png" alt="validate">
				<span class="popup-text">verify email</span></a> | <?php } ?>
				<a class="popup" href="resetEmail.php">
				<img src="img/edit.png" alt="edit"><span class="popup-text">edit email</span></a></li>

				<li>Current password: <b>**********</b>
				<a class="popup" href="forgotpass.php">
				<img src="img/edit.png" alt="edit">
				<span class="popup-text">edit password</span></a></li>

			</ul>
		</div>
	

				<div id="changeName" style="display: none;">
				<form action="" method="post">
					<input type="text" name="fullName" 
					placeholder="Your name" required><br>

					<button class="button-save" type="submit">Save</button>

					<button class="button-save" type='reset' 
					onclick="hideNameChange()">Cancel</button>

				</form>
				</div>
	</div>
	<script>
		var nameForm = document.getElementById("changeName");
		function showNameChange(){
			nameForm.style.display = 'initial';
		}
		function hideNameChange(){			
			nameForm.style.display = 'none';
		}
	</script>

	<?php
	/*=====  End of Setting up goal  ======*/

	//Checking if user loged in
	if(!empty($_SESSION['login'])):

		if(empty($_POST['fullName']) === false){

			trim($_POST['fullName']);

			$query = $db->prepare("
			UPDATE users 
			SET name = :fullName
			WHERE id = :userId
			");
			$query->execute([
				'fullName' => $_POST['fullName'],
				'userId' => $user->id
				]);
    		echo '<meta http-equiv="refresh" content="0.01" />';
		}
	 
 	//Checking if user is a member (if he donated)
 	if($user->member_level != (string)null):

 	/*===========================================================
 	=            Getting the amount of all donations            =
 	===========================================================*/
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
 	/*=====  End of Getting the amount of all donations  ======*/
 	
	
 	 ?>
 	 <?php 



 	  ?>
 	<div id="content-text"><?php 
 	if($donated){
 		echo "Total pledge: $".$donated."<br>";
 	}

 	echo "<br>Your chosen reward:</b><br><br>"; 
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
 	}
 	/*=====================================================================
	=            Setting up user level based on amount donated            =
	=====================================================================*/
	
	$memberLevel=$user->member_level;
	if($donated>=10)
		$memberLevel = 1;
	if($donated>=20)
		$memberLevel = 2;
	if($donated>=150)
		$memberLevel = 3;
	if($donated>=250)
		$memberLevel = 4;
	?><br>
	<script>
		function choseReward(){
			document.getElementById("selectReward").style.display = 'initial';
			document.getElementById("rewardButton").style.display = 'none';
		}
	</script>
	<button class="button" id="rewardButton" 
	onclick="choseReward()">Change reward</button><br>

	<div id="selectReward">
	<form action="" method="post" onsubmit="return confirm('Are you sure you want to change yore reward?\nIt may not be possible to revert to youre previous reward.');">
	<?php selectReward($memberLevel); 
	?>
	<p id="limitReward"></p><br>
	<p id="fullReward"></p>
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
				if(remaning3<4){
					displayRemaning.style.color = 'red';
				}
				displayRemaning.innerHTML = "Remaining available: "+remaning3;
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
	<?php 
	if($memberLevel>1)
	?>
	<button class="button">Select</button>
	</form></div><?php
	if(isset($_POST['selectedLevel']) != false){
	// Adding selected reward to user and tracking the limit
		if($_POST['selectedLevel'] != $user->member_level){
			//remove 1 to level 3 limit if user changed reward form level3
			if($user->member_level == 3){
				$removelevel3 = $db->prepare("
					INSERT INTO rewards (
						user_id,
						level3_limit,
						level4_limit,
						limit_check,
						created_at)

					VALUES (:userID, :level3, 0, 0, :created)
					");
				$removelevel3->execute([
					'userID' => $user->id, 
					'level3' => -1, 
					'created' => date('Y-m-d h:i:s')]);
			}

			//remove 1 to level 4 limit if user changed reward form level4
			if($user->member_level == 4){
				$removelevel4 = $db->prepare("
					INSERT INTO rewards (
						user_id,
						level3_limit,
						level4_limit,
						limit_check,
						created_at)

					VALUES (:userID, 0, :level4, 0, :created)
					");
				$removelevel4->execute([
					'userID' => $user->id, 
					'level4' => -1, 
					'created' => date('Y-m-d h:i:s')]);
			}

			//add a limit of 300 to a level3 reward and add 1 reward if user selected level3
			if($_POST['selectedLevel'] == 3 && $level3Amount < 300){
				$addlevel3 = $db->prepare("
					INSERT INTO rewards (
						user_id,
						level3_limit,
						level4_limit,
						limit_check,
						created_at)

					VALUES (:userID, :level3, 0, :limitCheck, :created)
					");
				$addlevel3->execute([
					'userID' => $user->id, 
					'level3' => 1, 
					'limitCheck' => 0, 
					'created' => date('Y-m-d h:i:s')]);

				$setMember = $db->prepare("
					UPDATE users 
					SET member_level = :member_level
					WHERE id = :user_id
					");

				$setMember->execute([
					'member_level' => $_POST['selectedLevel'],
					'user_id' => $user->id
					]);
			}elseif($_POST['selectedLevel'] == 3 && $level3Amount >= 300)
				die("<p style='color: red;'>There is no more level 3 rewards left</p>");

			//add a limit of 100 to a level4 reward and add 1 reward if user selected level4
			if($_POST['selectedLevel'] == 4 && $level4Amount < 100){
				$addlevel4 = $db->prepare("
					INSERT INTO rewards (
						user_id,
						level3_limit,
						level4_limit,
						limit_check,
						created_at)

					VALUES (:userID, 0, :level4, :limitCheck, :created)
					");
				$addlevel4->execute([
					'userID' => $user->id, 
					'level4' => 1, 
					'limitCheck' => 0, 
					'created' => date('Y-m-d h:i:s')]);

				$setMember = $db->prepare("
					UPDATE users 
					SET member_level = :member_level
					WHERE id = :user_id
					");

				$setMember->execute([
					'member_level' => $_POST['selectedLevel'],
					'user_id' => $user->id
					]);
			} elseif($_POST['selectedLevel'] == 4 && $level4Amount >= 100)
				die("<p style='color: red;'>There is no more level 4 rewards left</p>");
			if($_POST['selectedLevel'] < 4 && $_POST['selectedLevel'] >= 0){
				$setMember = $db->prepare("
					UPDATE users 
					SET member_level = :member_level
					WHERE id = :user_id
					");

				$setMember->execute([
					'member_level' => $_POST['selectedLevel'],
					'user_id' => $user->id
					]);
			}
		}
    echo '<meta http-equiv="refresh" content="0.01" />';
	}

	/*=====  End of Setting up user level based on amount donated  ======*/


 	?>
 <?php else: ?>
 	<div id="content-text">You are not a member yet, please donate to become a member.<br>
	<script>
		function choseReward1(){
			document.getElementById("selectReward1").style.display = 'initial';
			document.getElementById("rewardButton1").style.display = 'none';
		}
	</script>
	<button class="button" id="rewardButton1" onclick="choseReward1()">Change reward</button><br>
	<div id="selectReward1" style="display: none">
	<form action="" method="post">
	<?php

		$memberLevel = 0;
		if($donated>=10)
			$memberLevel = 1;
		if($donated>=20)
			$memberLevel = 2;
		if($donated>=150)
			$memberLevel = 3;
		if($donated>=250)
			$memberLevel = 4;

		selectReward($memberLevel); 
	if($memberLevel>1)
	?>
	<button class="button">Select</button>
	</form></div></div>
 <?php
	if(isset($_POST['selectedLevel']) != false){
	// Adding selected reward to user and tracking the limit
		//remove 1 to level 4 limit if user changed reward form level3
		if($user->member_level == 4){
			$removelevel3 = $db->prepare("
				INSERT INTO rewards (level3_limit,level4_limit)
				VALUES (:level3, 0)
				");
			$removelevel3->execute(['level3' => -1]);
		}

		//remove 1 to level 5 limit if user changed reward form level4
		if($user->member_level == 5){
			$removelevel4 = $db->prepare("
				INSERT INTO rewards (level3_limit,level4_limit)
				VALUES (0, :level4)
				");
			$removelevel4->execute(['level4' => -1]);
		}

		//add a limit of 300 to a level3 reward and add 1 reward if user selected level3
		if($_POST['selectedLevel'] == 4 && $level3Amount <= 300){
			$addlevel3 = $db->prepare("
				INSERT INTO rewards (level3_limit,level4_limit)
				VALUES (:level3, 0)
				");
			$addlevel3->execute(['level3' => 1]);

			$setMember = $db->prepare("
				UPDATE users 
				SET member_level = :member_level
				WHERE id = :user_id
				");

			$setMember->execute([
				'member_level' => $_POST['selectedLevel'],
				'user_id' => $user->id
				]);
		}elseif($level3Amount > 300)
			die("there is no more level3 rewards left");

		//add a limit of 100 to a level4 reward and add 1 reward if user selected level4
		if($_POST['selectedLevel'] == 5 && $level4Amount <= 100){
			$addlevel4 = $db->prepare("
				INSERT INTO rewards (level3_limit,level4_limit)
				VALUES (0, :level4)
				");
			$addlevel4->execute(['level4' => 1]);

			$setMember = $db->prepare("
				UPDATE users 
				SET member_level = :member_level
				WHERE id = :user_id
				");

			$setMember->execute([
				'member_level' => $_POST['selectedLevel'],
				'user_id' => $user->id
				]);
		} elseif($level4Amount > 100)
			die("there is no more level4 rewards left");
		if($_POST['selectedLevel'] < 4 && $_POST['selectedLevel'] >= 0){
			$setMember = $db->prepare("
				UPDATE users 
				SET member_level = :member_level
				WHERE id = :user_id
				");

			$setMember->execute([
				'member_level' => $_POST['selectedLevel'],
				'user_id' => $user->id
				]);
		}
    echo '<meta http-equiv="refresh" content="0.01" />';
	}
 endif; ?>
 
<?php 
	echo '</div>'; 
 ?>
 	
 <?php 
 else:
 	header("Location: $siteUrl");
 	endif;
 ?>

	<script>
		(function() {
		  var article = $('article');
		  $('.toggle').bind('click', function() {
		    article.toggleClass('menu-open');
		    return false;
		  });
		})();
	</script>
	
</body>
</html>