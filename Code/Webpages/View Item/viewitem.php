<!DOCTYPE html>
<!-- NOTES
HTML Snippets orginally by student trainers of "Andriod app development with database integration" sabbtical, Hwa Chong Institution (2017)
Modified by Billy Cao, Aredro Development Team, Hwa Chong Institution 1A1 (2017)
To connect to the database.
Action Performing: Get the list of items from the database. Listdown added items as a table and display as a webpage.
-->
<html>
    <head>
        <title>Check avilable items for ordering</title>
        <link rel="stylesheet" href="viewitem.css">
    </head>

    <body>
        <table class="striped" class="centered" id="title">
	        <tr>
		        <th>ID</th>
		        <th>Item</th>
                <th>Price</th>
                <th>Choices (Flavours)</th>
		        <th>Collection Venue</th>
                <th>Time (UTC)</th>
	        </tr>

        <?php
        $link = mysqli_connect("localhost", "id1713642_aliencaocao", "88991724", "id1713642_hcifoodordering");

        if (mysqli_connect_errno()) {
            echo mysqli_connect_error($link);
        }
        else {
            $query = "SELECT * FROM items";
            $result = mysqli_query($link, $query);

            while ($row = mysqli_fetch_row($result)) {
                list($id, $name, $price, $choices, $collectionvenue, $date) = $row;
        ?>

            <tr>
                <td><?php print $id; ?></td>
                <td><?php print $name; ?></td>
                <!-- Add a "$" in front of the displayed price -->
                <td><?php print '$' . $price; ?></td>
                <td><?php print $choices; ?></td>
                <td><?php print $collectionvenue; ?></td>
                <td><?php print $date;
                }
        }
                    ?>
                </td>
            </tr>
        </table>
    </body>
</html>