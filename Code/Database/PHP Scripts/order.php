<!-- PHP Script Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao
To connect to the database.
Action Performing: Place the order according to the submitted information via the client.
-->
<?php
//Define the information received from the client.
$name = $_POST['name'];
$class = $_POST['class'];
$indexnumber = $_POST['indexnumber'];
$item = $_POST['item'];
$quatity = $_POST['quatity'];

//Define the location of server and connection to it.
$link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");

//Check if server is connected.
if (mysqli_connect_errno()) {
	error_log("Connect failed: " . mysqli_connect_error());
}
else {
	//If connection okay, insert the information submitted into the "orders" table.
	$query = "INSERT INTO `orders` (`id`, `name`, `class`, `indexnumber`, `item`, `quatity`, `date`) VALUES (NULL, '$name', '$class', '$indexnumber', '$item', '$quatity', CURRENT_TIMESTAMP);";
	$result = mysqli_query($link, $query);

	if ($result) {
		//If submission successful, send back the message defined.
		echo "Your submission is successful! You have ordered $quatity $item for $name.";
	}
	else {
		//If the submission is unsuccessful, send back text "0".
		echo 0;
	}
}
?>