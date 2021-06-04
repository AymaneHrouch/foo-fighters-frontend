<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/common/css/style.css" />
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
      <h1>Fans Zone</h1>
    </header>
    <section id="messages">
        <?php 
        try { 
            $db = new PDO('mysql:host=localhost;dbname=foofighters;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        } 
        catch (Exception $e){ 
            die('Erreur : ' .$e->getMessage()); 
        }

        $answer = $db->query('SELECT id, user, msg, date_format(date,\'[%d/%m/%Y/%H:%i:%s]\') AS date FROM comments ORDER BY id DESC LIMIT 0, 10');
        while ($infos = $answer->fetch()) {
        ?>
      <div class="message">
        <span class="user"><?php echo htmlspecialchars($infos['user']) ?></span>
        <p>
            <?php echo $infos['msg'] ?>
        </p>
        <span class="date"><?php echo $infos['date'] ?></span>
      </div>
        <?php
        } 
        ?>
    </section>
    <section id="comment">
      <h1>Send Your Comment!</h1>
      <h3>You too can send a comment that will be displayed in this page.</h3>
      <form action="post.php" method="post">
        <label for="user">Username:</label>
        <input type="text" name="user" id="user" />
        <textarea name="msg" id="msg" cols="30" rows="10"></textarea>
        <input type="submit" />
      </form>
    </section>
    <script>
      let userField = document.getElementById("user");
      if (localStorage.user) {
        userField.value = localStorage.user;
      }

      userField.addEventListener("input", () => {
        localStorage.user = userField.value;
      });
    </script>
  </body>
</html>
