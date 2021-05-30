<?php

// Connect to DB
try { 
    $db = new PDO('mysql:host=localhost;dbname=id16585148_foofighters;charset=utf8', 'aymane', '%wMlI*}40jC]v]ud', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
} 
catch (Exeption $e){ 
    die('Erreur : ' .$e->getMessage()); 
} 


// Vérification si l'utilisateur a entré quelque chose
if (strlen($_POST['user']) >= 2 and strlen($_POST['msg']) >= 1 ) {
	
// Insert values to DB 

$que = $db->prepare('INSERT INTO comments(user, msg) VALUES(:user, :msg)');

$que->execute(array(
	'user' => $_POST['user'],
	'msg' => $_POST['msg'],
	));
}

 header('Location: fans.php');
?>
