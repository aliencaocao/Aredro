<!DOCTYPE html>
<!-- NOTES
HTML Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao, Aredro Development Team, Hwa Chong Institution 1A1 (2017)
To connect to the database.
Action Performing: Get the list of orders from the database. Listdown received orders as a table and display as a webpage.-->
<html>
    <head>
        <title>Check Submitted Orders</title>
        <link rel="stylesheet" href="vieworder.css">
    </head>

    <body>
        <table class="striped" class="highlight" class="centered" id="title">
	        <tr>
		        <th>No.</th>
		        <th>Name</th>
                <th>Class</th>
                <th>Index Number</th>
		        <th>Item</th>
                <th>Quantity</th>
                <th>Time (UTC)</th>
	        </tr>

        <?php
        $link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");

        if (mysqli_connect_errno()) {

            echo mysqli_connect_error($link);

        }
        else {
            $query = "SELECT * FROM orders";
            $result = mysqli_query($link, $query);

            while ($row = mysqli_fetch_row($result)) {
                list($id, $name, $class, $indexnumber, $item, $quatity, $date) = $row;
                ?>

            <tr>
                <td><?php print $id; ?></td>
                <td><?php print $name; ?></td>
                <td><?php print $class; ?></td>
                <td><?php print $indexnumber; ?></td>
                <td><?php print $item; ?></td>
                <td><?php print $quatity; ?></td>
                <td><?php print $date;
            }
            }
            ?>
                </td>
            </tr>
        </table>
    </body>
</html>