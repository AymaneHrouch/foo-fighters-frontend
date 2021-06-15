<?php
    $document_title = "";
    if(!isset($_GET["id"])) {
        echo "ERROR 400 - Bad Request<br/>ID not provided.";
        $document_title = "Foo Fighters - ERROR 400";
        exit;
    }
    else {
        include 'mod/config.php';
        $result = $pdo->query('SELECT n.id, u.name, n.title, n.article, date_format(n.created_at,\'[%d/%m/%Y/%H:%i:%s]\') AS date FROM news n, users u WHERE n.author = u.id AND n.id = ' . $_GET["id"]);
        $data = $result->fetch();
        if(!$data) {
            echo "ERROR 400 - Bad Request<br/>Invalide ID.";
            $document_title = "Foo Fighters - ERROR 400";
            exit;
        }
        else {
            $document_title = "Foo Fighters - " . $data["title"];
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/libs/css/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/common/css/style.css"/>
    <link
      rel="shortcut icon"
      type="image/jpg"
      href="assets/common/img/logo.svg"
    />
    <title>Fans Zone</title>
  </head>
  <body>
    <?php include("navbar.php"); ?>
    <section style="padding-top:5rem" id="messages">
      <div class="message">
        <span class="article-title"><?php echo htmlspecialchars($data['title']) ?></span>
        <p>
            <?php echo $data['article'] ?>
        </p>
        <span class="date"><?php echo $data['date'] ?></span>
      </div>
    </section>
    <?php include("footer.php") ?>
  </body>
</html>
