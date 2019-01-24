<?php 
require_once 'app/start.php';
if ($user->admin === "1"){
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
 	<link rel="icon" href="img/kilroy-logo.jpg" type="image/x-icon"/>
	<link rel="stylesheet" href="admin.css" >
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
<div class="transactionContent">
	<form action="" method="post" class="hide">
		<label for="">Select amount for transaction:</label><br>
		<select name="selectTransactions" required>
			<option value="0">All transactions</option>
			<option value="10">$10-$20</option>
			<option value="20">$20-$150</option>
			<option value="150">$150-$250</option>
			<option value="250">$250+</option>
			<option value="42">All non-paying users</option>
		</select> <br><br>
		<label for="">Sort by: </label><br>
		  <input type="radio" name="sort" value="email"><label for="">Email</label> <br>
		  <input type="radio" name="sort" value="name"><label for="">Name</label> <br>
		  <input type="radio" name="sort" value="pledgeLevel"><label for="">Pledge Level</label> <br>
		  <input type="radio" name="sort" value="amount"><label for="">Amount</label> <br>
		  <input type="radio" name="sort" value="transactionDate"><label for="">Transaction Date</label> <br> <br>
		  <input type="checkbox" name="direction" value="descending"><label for="">Descending</label> <br>
		<input type="submit" name="getTransactions">
	</form>
</div>


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


$lowerValue = 10;
$higherValue = 25;
$amount = 10;
	$transactions = $db->prepare("
	SELECT * FROM transactions_paypal
	");
$transactions->execute();

$trans = $transactions->fetchAll(PDO::FETCH_ASSOC);


$user = $db->prepare("
SELECT * FROM users
");
$user->execute();
$user = $user->fetchAll(PDO::FETCH_ASSOC);
	
	// declare $displayTransaction array with user emails
	$displayTransaction = array();
	$transactionName = array();
	$totalDonated = array();
foreach ($user as $key => $value) {
	$email = $value['email'];
	$displayTransaction += array("$email" => 0);
}
// fill $displayTransaction array with the amounts users donated
foreach ($trans as $key => $tValue) {
	foreach ($user as $key => $userValue) {
		if($userValue['id'] == $tValue['user_id']){

			if($displayTransaction[$userValue['email']]["amount"] > 0){
				$total = $displayTransaction[$userValue['email']]["amount"] + 
				$tValue['amount'];
				$displayTransaction[$userValue['email']] = array(
					"email" => $userValue['email'], 
					"name" => $userValue['name'], 
					"pledgeLevel" => $userValue['member_level'], 
					"amount" => $total, 
					"transactionDate" => $tValue['created_at']);
			}
			else
				$displayTransaction[$userValue['email']] = array(
					"email" => $userValue['email'], 
					"name" => $userValue['name'], 
					"pledgeLevel" => $userValue['member_level'], 
					"amount" => $tValue['amount'], 
					"transactionDate" => $tValue['created_at']);
		}
	}
}
$sort = array();
if(isset($_POST['getTransactions'])){
	foreach ($displayTransaction as $key => $row)
		{
			if(isset($_POST['sort'])){
				if($_POST['sort'] == 'email')
				    $sort[$key] = $row['email'];
		   		if($_POST['sort'] == 'name')
				    $sort[$key] = $row['name'];
				if($_POST['sort'] == 'pledgeLevel')
				    $sort[$key] = $row['pledgeLevel'];
				if($_POST['sort'] == 'amount')
				    $sort[$key] = $row['amount'];
				if($_POST['sort'] == 'transactionDate')
				    $sort[$key] = $row['transactionDate'];
			}
		}	
		if(isset($_POST['direction']) && isset($_POST['sort']))
			array_multisort($sort, SORT_DESC, $displayTransaction);
		elseif(isset($_POST['sort']))
			array_multisort($sort, SORT_ASC, $displayTransaction);
	echo "<div class='transactionTable'>";
	echo "<table>";
	echo "<tr>";
	echo "<th>";
	echo "";
	echo "</th>";
	echo "<th>";
	echo "User Email";
	echo "</th>";
	echo "<th>";
	echo "User Name";
	echo "</th>";
	echo "<th>";
	echo "Pledge Level";
	echo "</th>";
	echo "<th>";
	echo "Amount payed";
	echo "</th>";
	echo "<th>";
	echo "Transaction Date";
	echo "</th>";
	echo "</tr>";



	$i = 0;
	foreach ($displayTransaction as $key => $value) {

		if($_POST['selectTransactions'] == 0)
			if($value['amount'] > 0){		
				$i++;			
				echo "<tr>";
				echo "<td>";
				echo $i;
				echo "</td>";
				echo "<td>";
				echo $value['email'];
				echo "</td>";
				echo "<td>";
				echo $value['name'];
				echo "</td>";
				echo "<td>";
				echo $value['pledgeLevel'];
				echo "</td>";
				echo "<td>";
				echo $value['amount'];
				echo "</td>";
				echo "<td>";
				echo $value['transactionDate'];
				echo "</td>";
				echo "</tr>";
			}
		if($_POST['selectTransactions'] == 10)
			if($value['amount'] >= 10 && $value['amount'] < 20){
				$i++;			
				echo "<tr>";
				echo "<td>";
				echo $i;
				echo "</td>";
				echo "<td>";
				echo $value['email'];
				echo "</td>";
				echo "<td>";
				echo $value['name'];
				echo "</td>";
				echo "<td>";
				echo $value['pledgeLevel'];
				echo "</td>";
				echo "<td>";
				echo $value['amount'];
				echo "</td>";
				echo "<td>";
				echo $value['transactionDate'];
				echo "</td>";
				echo "</tr>";
			}
		if($_POST['selectTransactions'] == 20)
			if($value['amount'] >= 20 && $value['amount'] < 150){
				$i++;			
				echo "<tr>";
				echo "<td>";
				echo $i;
				echo "</td>";
				echo "<td>";
				echo $value['email'];
				echo "</td>";
				echo "<td>";
				echo $value['name'];
				echo "</td>";
				echo "<td>";
				echo $value['pledgeLevel'];
				echo "</td>";
				echo "<td>";
				echo $value['amount'];
				echo "</td>";
				echo "<td>";
				echo $value['transactionDate'];
				echo "</td>";
				echo "</tr>";
			}
		if($_POST['selectTransactions'] == 150)
			if($value['amount'] >= 150 && $value['amount'] < 250){
				$i++;			
				echo "<tr>";
				echo "<td>";
				echo $i;
				echo "</td>";
				echo "<td>";
				echo $value['email'];
				echo "</td>";
				echo "<td>";
				echo $value['name'];
				echo "</td>";
				echo "<td>";
				echo $value['pledgeLevel'];
				echo "</td>";
				echo "<td>";
				echo $value['amount'];
				echo "</td>";
				echo "<td>";
				echo $value['transactionDate'];
				echo "</td>";
				echo "</tr>";
			}
		if($_POST['selectTransactions'] == 250)
			if($value['amount'] >= 250){
				$i++;			
				echo "<tr>";
				echo "<td>";
				echo $i;
				echo "</td>";
				echo "<td>";
				echo $value['email'];
				echo "</td>";
				echo "<td>";
				echo $value['name'];
				echo "</td>";
				echo "<td>";
				echo $value['pledgeLevel'];
				echo "</td>";
				echo "<td>";
				echo $value['amount'];
				echo "</td>";
				echo "<td>";
				echo $value['transactionDate'];
				echo "</td>";
				echo "</tr>";
			}
		if($_POST['selectTransactions'] == 42)
			if($value['amount'] == 0){
				$i++;			
				echo "<tr>";
				echo "<td>";
				echo $i;
				echo "</td>";
				echo "<td>";
				echo $value['email'];
				echo "</td>";
				echo "<td>";
				echo $value['name'];
				echo "</td>";
				echo "<td>";
				echo $value['pledgeLevel'];
				echo "</td>";
				echo "<td>";
				echo $value['amount'];
				echo "</td>";
				echo "<td>";
				echo $value['transactionDate'];
				echo "</td>";
				echo "</tr>";
			}
		}

	echo "<table>";
	echo "</div>";


}

 ?>


</body>
</html>
	
<?php
}
 ?>