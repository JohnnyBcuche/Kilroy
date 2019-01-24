<?php
 require_once 'app/start.php';


unset($_SESSION['anonymous']);
/*====================================================================
=            Removing the limit older than specified time            =
====================================================================*/
if ($level3Amount < 295) {
	$before = strtotime('-4 hours');
}
$removeOldLimit = $db->prepare("
	DELETE FROM rewards 
	WHERE created_at < :dateBefore AND limit_check > 0
	");

$removeOldLimit->execute(['dateBefore' => date('Y-m-d h:i:s', $before)]);


/*=====  End of Removing the limit older than specified time  ======*/

  ?> 

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Kilroy Event</title>
 	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="style.css" >
	<script src="https://use.fontawesome.com/1be6332b27.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- <script src='https://www.google.com/recaptcha/api.js'></script> -->

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

 	<!-- Messages about registration -->
	<div id="invalid">
	 		<?php 
	 			if(!empty($_SESSION['Messages'])){
	 				echo $_SESSION['Messages']; 
	 				unset($_SESSION['Messages']);
	 			}
	 		?>
	 </div>
 	<div class="default">
	<?php 
	//Checking if registering was successful
	if(!empty($_SESSION['register']))
	confirm(
		$_SESSION['register'], 
		'Successfully registered! ', 
		'Registration unsuccessful! ');
	unset($_SESSION['register']);


	//Checking if email was sent
	if(!empty($_SESSION['emailSent']))
	confirm(
		$_SESSION['emailSent'], 
		'Email sent! ', 
		'Sending email failed! ');
	unset($_SESSION['emailSent']);


	//Checking if password reset was successful
	if(!empty($_SESSION['passReset']))
	confirm(
		$_SESSION['passReset'], 
		'Password successfuly reset! ', 
		'Password reset failed! ');
	unset($_SESSION['passReset']);


	//Checking if email reset was successful
	if(!empty($_SESSION['emailReset']))
	confirm(
		$_SESSION['emailReset'], 
		'Email successfuly reset! ', 
		'Email reset failed! ');
	unset($_SESSION['emailReset']);


	//Checking if payment reset was successful
	if(!empty($_SESSION['payed']))
	confirm(
		$_SESSION['payed'], 
		'Payment successful! ', 
		'Payment not successful! ');
	unset($_SESSION['payed']);

	/*=======================================
	=            Setting up goal            =
	=======================================*/
	?>
	</div>
	

	<div class="page-content">
		<header>
			<img class="logo-img" src="img/kilroy-logo.jpg" alt="kilroy" width="100%" height="auto">
			<div class="progress-bar">
				<p class="date">April 21.-22. 2018</p>
				<h2 align="center">Kilroy Event Fundraiser</h2>
				<div class="goal">
			    <?php
			    $goal[0] = "$ 8,000  Convention centre deposit ";
			    $goal[1] = "$ 39,000  Convention centre ";
			    $goal[2] = "$ 38,000  Security / Admin / Incidentals ";
			    $checkmark = "<i class='fa fa-check' aria-hidden='true'></i>";
			    $total = 85000;
			    if($collected>=8000 && $collected<39000){
			        $goal[0] = $goal[0].$checkmark;
			    }
			    elseif($collected>=39000 && $collected<85000){
			        $goal[0] = $goal[0].$checkmark;
			        $goal[1] = $goal[1].$checkmark;
			    }
			    elseif($collected>=85000){
			        $goal[0] = $goal[0].$checkmark;
			        $goal[1] = $goal[1].$checkmark;
			        $goal[2] = $goal[2].$checkmark;
			    }

			    /*=====  End of Setting up goal  ======*/
			    if($collected < 85000)
			        $percent = round(($collected/$total) * 100, 1);
			    else
			        $percent = 100;


			    ?>
				
				<div class="collected">
				<div align="left">
					<?php 
						$formatCurrency = number_format($collected);
						echo "<h3>Funds raised: $".$formatCurrency."</h3>";
					 ?>
				</div>
				<div align="right"><h3>Overall goal: $85,000</h3><br></div>
				</div>
			    <div class="outter">
			        <div class="inner" style="width: <?php echo $percent ?>%;">
			        	<?php echo $percent ?>%
			        </div>

			    </div><br>
			    </div>
			    <div>
			    <?php 
			    foreach ($goal as $key => $value) {
			        echo "<h2>".$value."</h2><br>";
			    }

			     ?></div>
			</div>
		</header>
		
	<div class="content-text">
		<p class="main-text"><b><span>Kilroy Free Speech Conference: A Safe Space for Free Speech</span><br><br>This event is taking place at <a target="_blank" href="https://www.starwoodmeeting.com/events/start.action?id=1710128038&key=12E4D946" class="hotel-link">Sheraton Grand Phoenix hotel</a> in Phoenix, Arizona on the 21st & 22nd of April 2018. The Kilroy Event is <i>raising funds to support our first annual free speech conference!</i></b><br><br>
		<b>WHAT IS KILROY?</b><br>
		The Kilroy Event is an international free-speech advocacy conference.<br><br> 
		Kilroy is focused on exploring the social, academic, political and legal intersections of free speech and censorship, with an emphasis on protecting constitutionally enshrined rights.<br><br> 
		We invite you to join us in a celebration of free speech, free inquiry and the freedom to disagree and argue, both at our conference and in our lives, every day.<br><br></p>
		<div class="radio-check-pledge">
			<form action="donate.php" method="post" autocomplete="off">
 			<label for="item">
 				<h3>What would you like to pledge?</h3> <br>

  				<input type="radio" name="price" 
  				value="10" id="radio-button-1">
  				<label class="pledge-label" for="radio-button-1">
  				$10 Reward Level 1: “You Were Here”</label>
  				<br><br>

				<?php echo '<p>'.$level[1].'</p>' ?>
  				<br>
  				<input type="radio" name="price" 
  				value="20" id="radio-button-2">
  				<label class="pledge-label" for="radio-button-2">
  				$20 Reward Level 2: “You Were Here”</label>
  				<br><br>

				<?php echo '<p>'.$level[2].'</p>' ?>
  				
  				<br>
  				<input type="radio" name="price" 
  				value="150" id="radio-button-3">
  				<label class="pledge-label" for="radio-button-3">
  				$150 Reward Level 3: Pre-order ticket and special gift at event <br>(Limited to first 300 pledges)
  				<?php if($level3Amount>=295 && $level3Amount < 300) 
  						echo "<b>
  						<font style='color: red'>
  						[LIMITED QUANTITY REMAINING]
  						</font></b>"; 
  				if($level3Amount>=300) 
  					echo "<b>
  						<font style='color: red'>
  						[SORRY, THIS REWARD LEVEL IS FULL]
  						</font></b>";  ?></label>
  				<br><br>
				
				<?php echo '<p>'.$level[3].'</p>' ?>
  				<br>
  				<input type="radio" name="price" 
  				value="250" id="radio-button-4">

  				<label class="pledge-label" for="radio-button-4">
  				$250 Reward Level 4: VIP Placement & Private Party Invitation <br>(Limited to first 100 pledges)
  				<?php if($level4Amount>=95 && $level4Amount < 100) 
  						echo "<b>
  						<font style='color: red'>
  						[LIMITED QUANTITY REMAINING]
  						</font></b>"; 
  				if($level4Amount>=100) 
	  				echo "<b>
	  				<font style='color: red'>
	  				[SORRY, THIS REWARD LEVEL IS FULL]
	  				</font></b>";  ?></label>
  				<br><br>
  				
				<?php echo '<p>'.$level[4].'</p>' ?>
  				<br>
 			</label>
 			<button class="button">Pledge now</button>
 		</form>
 		<form action="donate.php" method="post">
 			<input type="hidden" name="price" value="0" id="radio-button-1">
 			<?php if(empty($_SESSION['login'])){?>
 			<input type="submit" value="Donate Anonymously" name="anonymous" class="button"><?php } ?>
 		</form>
		</div>
 		
	 </div>
	</div>


 	<footer>
 	<div class="footer">
 		<a href="https://www.facebook.com/Kilroy-Event-295510197521318/" target="_blank"><img src="img/facebook.png" alt="fb"></a>
 		<a href="https://www.instagram.com/kilroyevent/" target="_blank"><img src="img/instagram.png" alt="instagram"></a>
 		<a href="https://www.youtube.com/channel/UCEhhLcJ_6umJUnvCw5FaqJg" target="_blank"><img src="img/youtube.png" alt="yt"></a>
 		<a href="https://twitter.com/EventKilroy" target="_blank"><img src="img/twitter.png" alt="twitter"></a>
 	</div>
 	</footer>

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