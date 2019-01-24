<?php 
	require_once 'app/start.php';
	?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
	<title>Schedule</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
 	<link rel="stylesheet" href="menuBanner.css">
 	<link rel="stylesheet" href="style.css">
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
	
	<div class="banner-page-content">
		<div class="banner-subcontent">
			<p class="temporary-text">Coming soon!</p>
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