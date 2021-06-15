<?php 

    session_start();
    // Check if the user is logged in, if not redirect him to login page
    if(!isset($_SESSION["loggedin"])){
        header("location: login.php");
        exit;
    }

    $document_title = "";
    $success = "";
    if(!isset($_GET["id"])) {
        echo "ERROR 400 - Bad Request<br/>ID not provided.";
        $document_title = "Edit - ERROR 400";
        exit;
    }
    else {
        include_once 'config.php';
        if($_SERVER["REQUEST_METHOD"] === "POST") {
            // Initialize $title_err and $article_err
            $title_err = "";
            $article_err = "";

            // Check if title is long enough
            if(strlen(trim($_POST["title"])) <= 5){
                $title_err = "Title must be at least 5 characters long. it's now: " .  strlen(trim($_POST["title"]));
            } else {
                $username = trim($_POST["title"]);
            }
            
            // Check if article is long enough
            if(strlen(trim($_POST["article"])) <= 5){
                $article_err = "Article must be at least 5 characters long.";
            } else{
                $username = trim($_POST["article"]);
            }

            if(empty($title_err) && empty($article_err)) {
                $query = $pdo->prepare("UPDATE news SET title = :title, article = :article WHERE id=" . $_GET["id"]);
                $query->execute(array(
                    'title' => $_POST["title"],
                    'article' => $_POST["article"]
                ));
                $success = "edited!";
            }
        }

        $result = $pdo->query('SELECT n.title, n.article FROM news n, users u WHERE n.author = u.id AND n.id = ' . $_GET["id"]);
        $data = $result->fetch();
        if(!$data) {
            echo "ERROR 400 - Bad Request<br/>Invalide ID.";
            $document_title = "Edit - ERROR 400";
            exit;
        }
        else {
            $document_title = "Edit - " . $data["title"];
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/jpg" href="../assets/common/img/logo.svg" />
    <link rel="stylesheet" href="../assets/libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <title>FooFighters - New Article</title>
</head>
<body>
    <?php include("header.php"); ?>
    <div class="container">
        <a  class="btn btn-primary my-4" href="index.php"> &lt;	Home</a><br />
        <form class="form-group" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]). "?id=" . $_GET["id"]?>" method="POST">
            <label for="title">Title</label>
            <input class="form-control" id="title" type="text" name="title" value="<?php echo $data["title"]?>">
            <span style="color:red"><?php if(isset($title_err)) echo htmlspecialchars($title_err); ?></span>
            <label for="article"></label>
            <textarea class="form-control" name="article" id="articel" cols="30" rows="10"><?php echo htmlspecialchars($data["article"])?></textarea>
            <span style="color:red"><?php if(isset($article_err)) echo $article_err?></span><br />
            <input type="submit" value="Edit" class="btn btn-primary"> 
            <span class="text-success"><?php if(isset($success)) echo $success ?></span>
        </form>
    </div>
</body>
</html>