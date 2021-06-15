<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/common/css/style.css" />
    <link rel="shortcut icon" type="image/jpg" href="assets/common/img/logo.svg" />
    <style>
      body {
        background-color: #222;
      }
    </style>
    <title>Foo Fighters - Gallery</title>
  </head>
  <body>
    <?php include("navbar.php"); ?>
    <div id="modal" class="modal">
    </div>
    <main id="gallery">
      <!-- Slideshow container -->
      <div class="slideshow-container"></div>
      <br />
    </main>
    <!-- JQuery -->
    <script type="text/javascript" src="./assets/libs/jquery/jquery.min.js"></script>
    <!-- jQuery Modal -->
    <script src="./assets/libs/jquery/plugins/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="./assets/libs/jquery/plugins/jquery.modal.min.css" />
    <!-- Mon script -->
    <script src="assets/common/js/gallery.js"></script>
  </body>
</html>
