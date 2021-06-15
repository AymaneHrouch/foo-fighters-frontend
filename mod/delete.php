<?php

session_start();


// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

require_once 'config.php';

if(isset($_GET["id"])) {
    $sql = "DELETE FROM news WHERE id=" . $_GET["id"];
    $pdo->query($sql);
}

header("location: index.php")

?>