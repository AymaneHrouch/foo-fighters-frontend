<?php 
session_start();

// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // Initialize $title_err and $article_err
    $title_err = "";
    $article_err = "";
    $success = "";

    // Connect to Database.  
    require_once 'config.php';
    
    // Check if title is long enough
    if(strlen(trim($_POST["title"])) <= 5){
        $title_err = "Title must be at least 5 characters long.";
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
        $sql = "INSERT INTO news(author, title, article) VALUES(:author, :title, :article)";
        $que = $pdo->prepare($sql);
        $que->execute(array(
            'author' => $_SESSION["id"],
            'title' => $_POST["title"],
            'article' => $_POST["article"]
        ));
        $_POST["title"] = $_POST["article"] = "";
        $success = "posted!";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image/jpg" href="../assets/common/img/logo.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <title>FooFighters - New Article</title>
</head>
<body>
    <?php include("header.php") ?>
    <div class="container">
        <a  class="btn btn-primary my-4" href="index.php"> &lt;	Home</a><br />
        <form class="form-group" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
            <label for="title">Title</label>
            <input class="form-control" id="title" type="text" name="title" value="<?php if(isset($_POST["title"])) echo $_POST["title"]?>">
            <span style="color:red"><?php if(isset($title_err)) echo $title_err; ?></span>
            <label for="article"></label>
            <textarea class="form-control" name="article" id="articel" cols="30" rows="10"><?php if(isset($_POST["article"])) echo $_POST["article"] ?></textarea>
            <span style="color:red"><?php if(isset($article_err)) echo $article_err?></span><br />
            <input type="submit" value="Post" class="btn btn-primary"> 
            <span class="text-success"><?php if(isset($success)) echo $success ?></span>
        </form>
    </div>
</body>
</html>