<?php
    session_start();







?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <style>
        small {
            position: absolute;
            bottom: 0;
            left: 15px;
        }
    </style>
    <title>Articles</title>
</head>
<body>
    <h1 class="text-center mb-4">Hello <span style="color:red"><?php echo $_SESSION["name"]; ?></span></h1>
    <div class="container">
        <?php
        include 'config.php';
        $result = $pdo->query('SELECT n.id, u.name, n.title FROM news n, users u WHERE n.author = u.id ORDER BY n.created_at;');
        while($data = $result->fetch()) {
            ?>
            <div class="card mb-2">
                <div class="card-body">
                    <a href="<?php echo "article?id=" . $data["id"]?>"><?php echo $data["title"] ?></a>
                    <small><?php echo "author: " . $data["name"]?></small>
                    <a class="btn btn-danger float-right" href="#">Delete</a>
                </div>
            </div>
            <?php
        }
            ?>
    </div>
</body>
</html>