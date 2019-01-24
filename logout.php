<?php 
session_start();
require 'app/start.php';
unset($_SESSION['user_id']);
unset($_SESSION['login']);
unset($_SESSION['register']);
session_destroy();
header("Location: ".$siteUrl);
 ?>