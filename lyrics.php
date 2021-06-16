<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/libs/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/common/css/style.css" />
    <link rel="stylesheet" href="assets/libs/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="shortcut icon" type="image/jpg" href="assets/common/img/logo.svg" />
    <title>Medicine at Midnight Lyrics</title>
  </head>
  <body>
    <?php include("navbar.php"); ?>
    <section id="lyrics-section">
      <form id="songs"></form>
      <pre id="lyrics">
        <h1 id="song-title"></h1>
      </pre>
    </section>
    <?php include("footer.php"); ?>
    <div id="modal" class="modal">
    </div>
    <!-- JQuery -->
    <script type="text/javascript" src="./assets/libs/jquery/jquery.min.js"></script>
    <!-- jQuery Modal -->
    <script src="./assets/libs/jquery/plugins/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="./assets/libs/jquery/plugins/jquery.modal.min.css" />
    <!-- Mon script -->
    <script src="assets/common/js/lyrics.js"></script>
  </body>
</html>
