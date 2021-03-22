<!-- PHP Script Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao
To connect to the database.
Action Performing: Check if there existing account before registering the user.
-->
<?php
//Define the information received from the client.
$username = $_POST['username'];
$password = $_POST['password'];

$link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");
//Check if the server is connected.
if (mysqli_connect_errno()) {
	error_log("Connect failed: " . mysqli_connect_error());
}
else {
	//Check if there is a existing account and returns the result.
	$checkQuery = "SELECT * FROM `users` WHERE `username` = '$username'";
	$checkResult = mysqli_query($link, $checkQuery);
	//Define the query for inserting the user information first.
	$query = "INSERT INTO `users` (`username`, `password`) VALUES ('$username', '$password');";
}

if (mysqli_num_rows($checkResult) > 0) {
	// If there is a record with the same username submitted, send back text "-1".
	echo -1;
}
else {
	//If there is no existing account, insert the information into the table.
	$result = mysqli_query($link, $query);
	if ($result) {
		//If registration success, send back text "1".
		echo 1;
	}
	else {
		//If registeration failed, send back text "0".
		echo 0;
	}
}
?>