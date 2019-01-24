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
if(isset($_SESSION['errMsg'])){
	?><script>alert("User with that email doesn't exist.");</script><?php
	unset($_SESSION['errMsg']);
}

if(isset($_SESSION['linkedErr'])){
	?><script>alert("That combination is already exist.");</script><?php
	unset($_SESSION['linkedErr']);
}
	 ?>
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
	
	<?php  
/*=====  Add and remove admin priviliges  ======*/

if(empty($_POST['admin']) === false){
	$asignAdmin = trim($_POST['admin']);

	$checkEmailExist = $db->prepare("
		SELECT * FROM users
		WHERE email = :email 
	");
 	$checkEmailExist->execute(['email' => $asignAdmin]);
 	$checkEmailExist = $checkEmailExist->fetchObject();

 	if($checkEmailExist != false){
 		$query = $db->prepare("
		UPDATE users 
		SET admin = 1
		WHERE email = :email
		");
		$query->execute([
			'email' => $asignAdmin
			]);
 	}else{
 		$_SESSION['errMsg'] = true;
 	}
 	header("Location: admin.php");

}
// delete admin //
if(isset($_POST['delete']) == true){
		$query = $db->prepare("
	UPDATE users 
	SET admin = 0
	WHERE email = :email
	");
	$query->execute([
		'email' => $_POST['delete']
		]);
	}

/*=====  Add speakers and upload image ======*/

if(isset($_POST['upload'])){
	move_uploaded_file($_FILES['image']['tmp_name'],"img/speakers/".$_FILES['image']['name']);
	$image = "img/speakers/".$_FILES['image']['name'];
	$name = $_POST['name'];
	$link = $_POST['socialMedia'];
	$displayLink = $_POST['displayAs'];

	$query = $db->prepare("
 		INSERT INTO speaker (img, name, link, displayLink, visibility, honoured)
 		VALUES (:image, :name, :link , :displayLink, null, null)
 	");
	$query->execute([
		'image' => $image,
		'name' => $name,
		'link' => $link,
		'displayLink' => $displayLink
	]);
}
// delete speaker //
if(isset($_POST['deleteSpeaker']) == true){
	unlink($_POST['deleteImg']);
		$query = $db->prepare("
	DELETE FROM speaker 
	WHERE id = :id
	");
	$query->execute([
		'id' => $_POST['deleteSpeaker']
		]);
	}
// edit speaker //
if(isset($_POST['updateSpeaker']) == true){
	$speaker = $db->prepare("
	SELECT * FROM speaker
	WHERE id = :id
	");
	$speaker->execute(['id' => $_POST['speakerId']]);
	$speaker = $speaker->fetch();

	if($_FILES['image']['name'] != ""){
		echo "string";
		move_uploaded_file($_FILES['image']['tmp_name'],"img/speakers/".
			$_FILES['image']['name']);		
		$image = "img/speakers/".$_FILES['image']['name'];
	}
	else
		$image = $speaker['img'];
		$name = $_POST['name'];
		$socialMedia = $_POST['socialMedia'];
		$displayAs = $_POST['displayAs'];
		$visibility = $_POST['visibility'];
		if(isset($_POST['honoured']))
			$honoured = 1;
		else
			$honoured = null;
		$query = $db->prepare("
		UPDATE speaker 
		SET img = :image,
			name = :name,
			link = :socialMedia,
			displayLink = :displayAs,
			visibility = :visibility,
			honoured = :honoured
		WHERE id = :speakerId
		");
	$query->execute([
		'image' => $image,
		'name' => $name,
		'socialMedia' => $socialMedia,
		'displayAs' => $displayAs,
		'visibility' => $visibility,
		'honoured' => $honoured,
		'speakerId' => $speaker['id']
		]);
}

/*=====  Add schedule on admin page ======*/

if(isset($_POST['uploadSch'])){
	$title = $_POST['eventTitle'];
	$info = $_POST['description'];
	$date = $_POST['date'];
	$time = $_POST['time'];
	$room = $_POST['track'];

	$query = $db->prepare("
 		INSERT INTO schedule (title, info, event_date, event_time, track)
 		VALUES (:title, :informations, :Edate, :Etime, :track)
 	");
	$query->execute([
		'title' => $title,
		'informations' => $info,
		'Edate' => $date,
		'Etime' => $time,
		'track' => $room
	]);
}
// delete schedule //
if(isset($_POST['deleteSchedule']) == true){
		$query = $db->prepare("
	DELETE FROM schedule 
	WHERE id = :id
	");
	$query->execute([
		'id' => $_POST['deleteSchedule']
		]);
	}
// edit schedule //
if(isset($_POST['updateSchedule']) == true){
	$schedule = $db->prepare("
	SELECT * FROM schedule
	WHERE id = :id
	");
	$schedule->execute(['id' => $_POST['scheduleId']]);
	$schedule = $schedule->fetch();

	$title = $_POST['eventTitle'];
	$info = $_POST['description'];
	$date = $_POST['date'];
	$time = $_POST['time'];
	$room = $_POST['track'];
	$query = $db->prepare("
	UPDATE schedule 
	SET title = :title,
		info = :informations,
		event_date = :Edate,
		event_time = :Etime,
		track = :roomLocation
	WHERE id = :scheduleId
	");
	$query->execute([
		'title' => $title,
		'informations' => $info,
		'Edate' => $date,
		'Etime' => $time,
		'roomLocation' => $room,
		'scheduleId' => $schedule['id']
		]);
}

/*=====  Merge speakers to schedule on admin page ======*/

// if(isset($_POST['linkSchSpk'])){
// 	$scheduleId = $_POST['scheduleLink'];
// 	$speakerId = $_POST['speakerLink'];

// 	$query = $db->prepare("
//  		INSERT INTO sc_sp (sc_id, sp_id)
//  		VALUES (:scheduleId, :speakerId)
//  	");
// 	$query->execute([
// 		'scheduleId' => $scheduleId,
// 		'speakerId' => $speakerId
// 	]);
// }

if(isset($_POST['linkSchSpk'])){
	$scheduleId = $_POST['scheduleLink'];
	$speakerId = $_POST['speakerLink'];
	$checkCombinationExist = $db->prepare("
		SELECT * FROM sc_sp 
		WHERE sc_id = :sc_id
		AND sp_id = :sp_id
		");
	$checkCombinationExist->execute([
		'sc_id' => $scheduleId,
		'sp_id' => $speakerId
	]);
	$checkCombinationExist = $checkCombinationExist->fetchObject();
	if($checkCombinationExist === false){
		$query = $db->prepare("
	 		INSERT INTO sc_sp (sc_id, sp_id)
	 		VALUES (:scheduleId, :speakerId)
	 	");
		$query->execute([
			'scheduleId' => $scheduleId,
			'speakerId' => $speakerId
		]);
 	}else{
 		$_SESSION['linkedErr'] = true;
 		}
 	header("Location: admin.php");
}

// delete linked table //
if(isset($_POST['deleteLinkedTable']) == true){
	$deleteIds = explode("-", $_POST['deleteLinkedTable']); 
		$query = $db->prepare("
	DELETE FROM sc_sp 
	WHERE sc_id = :sc_id
	AND sp_id = :sp_id
	");
	$query->execute([
		'sc_id' => $deleteIds[0],
		'sp_id' => $deleteIds[1]
		]);
	}

 ?>

<div class="admin-list">
	<h1>Admin list:</h1>
	<?php 
	$adminList = $db->prepare("
		SELECT * FROM users
 		WHERE admin = 1
	");
	$adminList->execute();
	$adminList=$adminList->fetchAll();
	foreach($adminList as $key => $value){
	    echo '<form action="" method="post"><li><b>Name:</b> '.$value['name']." </br>".$value['email'].'<input name="delete" value='.$value["email"].' type="hidden"><button type="submit" class="button-remove-admin"><img src="img/delete.png" alt="delete"></button></li></br></form>'; 
	}
	 ?>
</div>

<div class="content-admin">
	<input type="radio" name="check-form" value="add-admin" id="giveAdmin"><label for="giveAdmin">Give admin priviliges</label>
	<input type="radio" name="check-form" value="add-speakers" id="addSpeakers"><label for="addSpeakers">Add speakers</label>
	<input type="radio" name="check-form" value="add-schedule" id="addSchedule"><label for="addSchedule">Add schedule</label>
	<input type="radio" name="check-form" value="link-speakers-schedule" id="link"><label for="link">Link schedule and speakers</label>

	<form action="" method="post" id="add-admin" class="hide">
		<input type="email" name="admin" placeholder="Enter email" required>
		<input type="submit" value="Submit">
	</form>
	<form action="" method="post" id="add-speakers" class="hide" enctype="multipart/form-data">
		<input type="file" name="image" id="image">
		<input type="text" name="name" placeholder="Enter name">
		<input type="text" name="socialMedia" placeholder="Enter link">
		<input type="text" name="displayAs" placeholder="Display link as">
		<input type="submit" name="upload" value="Upload">
	</form>
	<form action="" method="post" id="add-schedule" class="hide">
		<input type="text" name="eventTitle" placeholder="Enter title">
		<textarea name="description" id="" cols="30" rows="10" placeholder="Enter event information"></textarea><br>
		<label for="" id="dateLabel">Choose date and time:</label>
		<input type="radio" name="date" value="21" id="saturday"><label for="saturday">21st</label>
		<input type="radio" name="date" value="22" id="sunday"><label for="sunday">22nd</label>
		<input type="time" id="" name="time">
		<input type="text" name="track" placeholder="Enter room location">
		<input type="submit" name="uploadSch" value="Submit">
	</form>
	<form action="" method="post" id="link-speakers-schedule" class="hide">
		<?php 
			$schedule = $db->prepare("
				SELECT * FROM schedule
				ORDER BY title
			");
			$schedule->execute();
			$schedule=$schedule->fetchAll();
				echo "<select name='scheduleLink' id=''>";
				echo "<option>--Select schedule--</option>";
			foreach($schedule as $key => $value){
						echo "<option value='".$value['id']."'>".$value['title']."</option>";
			}
			echo "</select>";

			$speaker = $db->prepare("
				SELECT * FROM speaker
				ORDER BY name
			");
			$speaker->execute();
			$speaker=$speaker->fetchAll();
				echo "<select name='speakerLink' id=''>";
				echo "<option>--Select speaker--</option>";
			foreach($speaker as $key => $value){
						echo "<option value='".$value['id']."'>".$value['name']."</option>";
			}
			echo "</select>";
		 ?>
		<input type="submit" name="linkSchSpk" value="Submit">
	</form>
</div>

<h1>- Linked schedule with speakers -</h1>
<div class="displayLinkedTable">
	<?php 
	/*=====  Display linked schedule and speaker on admin page ======*/
		$displayLinkedTable = $db->prepare("
			SELECT * FROM schedule
			INNER JOIN sc_sp ON sc_sp.sc_id = schedule.id
			INNER JOIN speaker ON speaker.id = sc_sp.sp_id
		");
		$displayLinkedTable->execute();
		$displayLinkedTable = $displayLinkedTable->fetchAll();

		echo "<div class='linkedTable'>
		<table>
		<tr>
		<th>Schedule</th>
		<th>Speaker</th>
		</tr>";
		foreach($displayLinkedTable as $key => $value){
			echo '<tr><form action="" method="post"><td>'.$value['title']."</td><td>".$value['name'].'</td></form>
			<td>
			<form action="" method="post" class="speakerButton">
	    	<input type="hidden" name="deleteLinkedTable" value='.$value["sc_id"]."-".$value["sp_id"].'>
	    	<button type="submit" class="button-remove-admin"><img src="img/delete.png" alt="delete"></button>
	    	</form>	
		    </td>
		    </tr>';
		}
		echo "</table></div>";
	 ?>
</div>

<h1>Editable schedule info:</h1>
<div class="displaySchedule">
<?php 
/*=====  Display schedule data from table ======*/

	$displaySchedule = $db->prepare("
		SELECT * FROM schedule
	");
	$displaySchedule->execute();
	$displaySchedule = $displaySchedule->fetchAll();
		echo "<div class='scheduleTable'>
		<table>
		<tr>
		<th>Title</th>
		<th>Informations</th>
		<th>Date</th>
		<th>Time</th>
		<th>Track</th>
		</tr>";
	foreach ($displaySchedule as $key => $value) {
		echo"<tr>
		<form action='' method='post' class='editSchedule' enctype='multipart/form-data'>
	    <input type='hidden' name='scheduleId' value=".$value['id'].">	
		<td><input type='text' name='eventTitle' value='".$value['title']."'></td>
		<td><textarea name='description' cols='30' rows='5'>".$value['info']."</textarea></td>
		<td>";
		if($value['event_date'] == 21)
			echo "<input type='radio' name='date'  value='21'  checked><label for=''> 21st  </label>";
		else
			echo "<input type='radio' name='date'  value='21' ><label for=''> 21st  </label>";
		if($value['event_date'] == 22)
			echo "<input type='radio' name='date'  value='22'  checked><label for=''> 22nd  </label>";
		else
			echo "<input type='radio' name='date'  value='22' ><label for=''> 22nd  </label>";
		echo"</td>
		<td><input type='time' name='time' value='".$value['event_time']."'></td>
		<td><input type='text' name='track' value='".$value['track']."'></td>
		<td><button class='button-save' type='submit' name='updateSchedule'>Update</button></td>
	    </form>
		<td>
		<form action='' method='post' class='speakerButton'>
    	<input type='hidden' name='deleteSchedule' value=".$value['id'].">
    	<button type='submit' class='button-remove-admin'><img src='img/delete.png' alt='delete'></button>
    	</form>	
	    </td>
		</tr>";
	}
		echo"</table>
		</div>";
	
 ?>
</div>

<h1>Editable speakers info:</h1>
<div class="displaySpeakers">
<?php 
/*=====  Display data from table ======*/

	$displayData = $db->prepare("
		SELECT * FROM speaker
		ORDER BY name
	");
	$displayData->execute();
	$displayData=$displayData->fetchAll();
	foreach($displayData as $key => $value){
	    if($value['visibility'] == 1) $visibility = "Visible"; 
	    else $visibility = "Invisible";

	    echo " </br><div class='subSpeakers'>".'<img class="speakerImg" src="'.$value['img'].'">'."</br><div class='speakerText'><p>".$value['name']."</p></br>"."<a href=".$value['link']. " target='_blank'>".$value['displayLink']."</a></div></br>".'
	    <form action="" method="post" class="speakerButton">
	    	<input type="hidden" name="deleteSpeaker" value='.$value['id'].'>
	    	<input type="hidden" value="'.$value['img'].'" name="deleteImg" />
	    	<button type="submit" class="button-remove-admin"><img src="img/delete.png" alt="delete"></button></br>'.$visibility.'
	    	</form><br><br>
			<form action="" method="post" class="editSpeaker" enctype="multipart/form-data">
			<fieldset>
				<legend>Edit Speaker </legend>
				<input type="hidden" name="speakerId" value='.$value['id'].'>
				<label for="">Image:</label><br>
				<input type="file" name="image" id="image">
				<label for="">Name:</label><br>
				<input type="text" name="name" value="'.$value['name'].'">
				<label for="">Link:</label><br>
				<input type="text" name="socialMedia" value="'.$value['link'].'">
				<label for="">Link displayed as:</label><br>
				<input type="text" name="displayAs" value="'.$value['displayLink'].'">
				<input type="radio" name="visibility" value="0" checked>
				<label for="">Invisible</label>
				<input type="radio" name="visibility" value="1">
				<label for="">Visible</label><br>
				<label for="">Honoured guest</label><input type="checkbox" name="honoured">
				<br>
				<button class="button-save" type="submit" name="updateSpeaker">Update</button>
			</fieldset>
			</form>'."</div></br>";
	}
 ?>
</div>

<script>
	$(document).ready(function() {
    $("form.hide").hide();
    $("input[name$='check-form']").click(function() {
        var test = $(this).val();
        $("form.hide").hide();
        $("#" + test).show();
	    });
	});
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

</body>
</html>
	
<?php
}
?>