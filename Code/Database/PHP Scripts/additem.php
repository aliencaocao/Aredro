<!-- PHP Script Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao
To connect to the database.
Action Performing: Add items to database for ordering according to information collected.
-->
<?php
//Define the information received from the client.
$name = $_POST['name'];
$price = $_POST['price'];
$choices = $_POST['choices'];
$collectionvenue = $_POST['collectionvenue'];

//Define the location of server and connection to it.
$link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");

//Check if server is connected.
if (mysqli_connect_errno()) {
	error_log("Connect failed: " . mysqli_connect_error());
}
else {
	//If connection okay, insert the information submitted into the "items" table.
	$query = "INSERT INTO `items` (`id`, `name`, `price`, `choices`, `collectionvenue`, `date`) VALUES (NULL, '$name', '$price', '$choices', '$collectionvenue', CURRENT_TIMESTAMP);";
	$result = mysqli_query($link, $query);

	//If submission successful, send back the message defined.
	if ($result) {
		//Insert name and price to the success message.
		echo "Your submission is successful! You have added $name "."$"."$price for sale.";
	}
	else {
		//If the submission is unsuccessful, send back text "0".
		echo 0;
	}
}
?>