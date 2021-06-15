<?php 
if(isset($_POST["username"])) {
    echo "the name is " . $_POST["username"];
} else echo "hi there";
session_start();
echo var_dump($_SESSION);
echo "hhh";

header("location: welcome.php");

?>