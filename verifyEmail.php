<?php 
	require 'app/start.php';

	if(!empty($_SESSION['login'])){
		validateEmail($user->email, $siteUrl, $user->salt);
		$_SESSION['emailSent'] = true;
		header("Location: $siteUrl");
	}

 ?>