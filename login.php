<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>card list</title>
    <?php include "app.php";?>
</head>
<body>
    
    <!-- navbar -->
    <nav class="navbar navbar-expand-md navbar-dark sticky-top shadow bg-dark">
        <div class="container">
          <a class="navbar-brand" href="/YgoCentral"><img src="img/logo_white_3.png" alt="Yugioh Central" width="100"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="/YgoCentral">Home</a>
                <a class="nav-link" href="cardDatabase">Card Database</a>
                <a class="nav-link" href="#decks">Decks</a>
                <a class="nav-link" href="#article">Articles</a>
                <a class="nav-link" href="#secretPack">Secret Packs</a>
                <a class="nav-link" href="#deckBuilder">Deck Builder</a>
                <a class="btn btn-danger" href="Login">Login</a>
            </div>
          </div>
        </div>
    </nav>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Get the submitted username and password
            $web_username = $_POST["username"] ?? '';
            $web_password = $_POST["password"] ?? '';
            $userFound = false;

            foreach ($userslist as $web_user) {
                if ($web_username == $web_user['username'] && $web_password == $web_user['password']) {
                    // Authentication successful, alert-success
                    echo "<div class='container'>
                    <div class='alert alert-success alert-dismissible fade show top-10 start-50 translate-middle-x text-center' role='alert'>
                        Logged in as <strong>". $web_username . "</strong>!
                        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                    </div>
                    </div>";
                    $userFound = true;
                }
            }
        
            // Perform basic authentication
            if ($userFound == false) {
            // Authentication failed, display an error message
            echo "<div class='container'>
                    <div class='alert alert-warning alert-dismissible fade show top-10 start-50 translate-middle-x text-center' role='alert'>
                        <strong>User not Found!</strong>
                        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
                    </div>
                    </div>";
            }
        }
    ?>

    <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 mt-5">
        <h2 class="display-5 fw-semibold text-center">Login</h2>
        <form method='POST' action=''>
          <div class="form-group">
            <label for="username">Username</label>
            <input name='username' type="text" class="form-control" id="username" placeholder="Enter your username" required>
          </div>
          <div class="form-group mt-3">
            <label for="password">Password</label>
            <input name='password' type="password" class="form-control" id="password" placeholder="Enter your password" required>
          </div>
          <button type="submit" class="btn btn-primary btn-block mt-3">Sign In</button>
        </form>
      </div>
    </div>
  </div>

    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>