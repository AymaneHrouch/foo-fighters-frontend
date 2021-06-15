<?php
    session_start();
    // Check if the user is logged in, if not redirect him to login page
    if(!isset($_SESSION["loggedin"])){
        header("location: login.php");
        exit;
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/libs/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="shortcut icon" type="image/jpg" href="../assets/common/img/logo.svg" />
    <style>
        small {
            position: absolute;
            bottom: 0;
            left: 30px;
        }
    </style>
    <title>Articles</title>
</head>
<body>
    <a href="logout.php" class="link-secondary px-3">Logout</a>
    <a href="reset-password.php" class="link-secondary float-right px-3">Reset Password</a>
    <h1 class="text-center mb-4">Hello <span style="color:red"><?php echo $_SESSION["name"]; ?></span></h1>
    <div class="container">
        <a class="btn btn-primary mb-3" href="new.php">New</a>
        <?php
        include 'config.php';
        $result = $pdo->query('SELECT n.id, u.name, n.title FROM news n, users u WHERE n.author = u.id ORDER BY n.created_at DESC;');
        while($data = $result->fetch()) {
            ?>
            <div class="card mb-2">
                <div class="card-body">
                    <a href="<?php echo "edit?id=" . $data["id"]?>"><?php echo htmlspecialchars($data["title"]); ?></a>
                    <small><?php echo "Author: " . $data["name"]?></small>
                    <a onclick="return confirm(`Are you sure? this can NOT be undone.`)" class="btn btn-danger float-right" href="delete.php?id=<?php echo $data["id"] ?>">Delete</a>
                </div>
            </div>
            <?php
        }
            ?>
    </div>
    <script>

    </script>
</body>
</html>