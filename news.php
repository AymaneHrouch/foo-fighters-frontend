<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/common/css/style.css"/>
    <link
      rel="shortcut icon"
      type="image/jpg"
      href="assets/common/img/logo.svg"
    />
    <title>FooFighters - News</title>
  </head>
  <body>
    <?php include("navbar.php") ?>
    <header id="fz-presentation" class="presentation">
      <h1>News</h1>
    </header>
    <section id="messages">
        <?php 
        include_once 'mod/config.php';

        $result = $pdo->query('SELECT n.id, u.name as author, n.title, n.article, date_format(n.created_at,\'%d/%m/%Y %H:%i\') AS date FROM news n, users u WHERE n.author = u.id ORDER BY n.created_at DESC LIMIT 0, 10');
        while ($data = $result->fetch()) {
        ?>
      <div class="message">
        <a href="<?php echo "article.php?id=". $data["id"] ?>" class="article-title"><?php echo htmlspecialchars($data['title']) ?></a>
        <p>
            <?php echo substr(htmlspecialchars($data['article']), 0, 250) . "<a class='read-more' href=\"article.php?id=" . $data["id"] . "\">...Read More</a>" ?>
        </p>
        <span class="date"><?php echo $data["author"] . " - " . $data['date'] ?></span>
      </div>
        <?php
        } 
        ?>
    </section>
  </body>
</html>
