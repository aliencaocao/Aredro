<!-- PHP Script Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao
To connect to the database.
Action Performing: Login the user according submitted username and password.
-->
<?php
//Define the information received from the client.
$username = $_POST['username'];
$password = $_POST['password'];

//Define the location of server and connection to it.
$link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");

//Check if connection to server is okay.
if (mysqli_connect_errno()) {
	error_log("Connect failed: " . mysqli_connect_error());
}
else {
	//If connection okay, try to find matching records in the database for the user information received from client.
	$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
	$result = mysqli_query($link, $query);

	if (mysqli_num_rows($result) > 0) {
		//If there is matching record, send back text "1".
		echo 1;
	}
	else {
		//If there is no matching record, send back text "0".
		echo 0;
	}
}
?>