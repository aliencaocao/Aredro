<!-- PHP Script by Billy Cao
To connect to the database.
Action Performing: Check and report the status of the ordering system (AOS)
 -->
<?php
    $serverDown = false;
    $fixingError = false;
    $errorMessage = "Aredro Ordering System (AOS) Status Check: AOS servers have been detected a possible issue. We are investigating it. Please retry later.";
    $positiveMessage = "Aredro Ordering System (AOS) Status Check: AOS server is up. Enjoy!";
    $fixingErrorMessage = "Aredro Ordering System (AOS) Status Check: We are fixing a problem affecting AOS. Please retry later."
    if ($serverDown == true) {
    echo $errorMessage;}
    else if ($fixingError == true) {
        echo $fixingErrorMessage;}
    else if ($serverDown == false) {
    echo $positiveMessage;}
?>