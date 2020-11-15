<?php
    include("connect.php");
    include("functions.php");

    if(isset($_GET["ID"])) {
        $targetID = $_GET["ID"];
        $result = getSingleUser($pdo, $targetID);

        return $result;
    } else {
        $allUsers = getAllUsers($pdo);

        return $allUsers;
    }
