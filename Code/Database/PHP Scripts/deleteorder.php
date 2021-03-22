<!-- PHP Script Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao
To connect to the database.
Action Performing: Delete orders from 'orders' table in the database.
-->
<?php
//Define the location of server and connection to it.
$link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");

//Check if server is connected.
if (mysqli_connect_errno()) {
	error_log("Connect failed: " . mysqli_connect_error());
}
else {
	//If connection okay, delete all rows from "orders" table.
	//Usage of "TRUNCATE“: to delete the table and recreate another one with the same information which is faster.
	$query = "TRUNCATE `orders`";
	$result = mysqli_query($link, $query);

	//If deletion successful, send back text "1".
	if ($result) {
		echo 1;
	}
	else {
		//If deletion failed, send back text "0".
		echo 0;
	}
}
?>