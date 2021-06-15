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
    <title>Fans Zone</title>
  </head>
  <body>
    <nav id="main-navbar">
      <a class="logo" href="index.html">
        <img src="assets/common/img/logo.svg" alt="" />
      </a>
      <a href="#members">Members</a>
      <a href="#tour-dates">Tour Dates</a>
      <a href="gallery.html">Gallery</a>
      <a href="albums.html">Albums</a>
      <a href="fans.php">Fans Zone</a>
    </nav>
    <header id="fz-presentation" class="presentation">
      <h1>News</h1>
    </header>
    <section id="messages">
        <?php 
        include_once 'mod/config.php';

        $answer = $pdo->query('SELECT id, author, title, article, date_format(created_at,\'[%d/%m/%Y/%H:%i:%s]\') AS date FROM news ORDER BY created_at DESC LIMIT 0, 10');
        while ($data = $answer->fetch()) {
        ?>
      <div class="message">
        <span class="article-title"><?php echo htmlspecialchars($data['title']) ?></span>
        <p>
            <?php echo substr($data['article'], 0, 250) . "<a class='read-more' href=\"article.php?id=" . $data["id"] . "\">...Read More</a>" ?>
        </p>
        <span class="date"><?php echo $data['date'] ?></span>
      </div>
        <?php
        } 
        ?>
    </section>
  </body>
</html>
