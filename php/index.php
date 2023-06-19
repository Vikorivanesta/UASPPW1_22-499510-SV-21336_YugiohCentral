<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Ygo Central</title>
    <?php 
        include 'app.php'; ?>
</head>
<body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-md navbar-dark sticky-top shadow bg-dark">
        <div class="container">
          <a class="navbar-brand" href="#"><img src="img/logo_white_3.png" alt="Yugioh Central" width="100"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto">
              <a class="nav-link" href="index.php">Home</a>
              <a class="nav-link" href="cardDatabase">Card Database</a>
              <a class="nav-link" href="#decks">Decks</a>
              <a class="nav-link" href="#article">Articles</a>
              <a class="nav-link" href="#secretPack">Secret Packs</a>
              <a class="nav-link" href="#deckBuilder">Deck Builder</a>
            </div>
          </div>
        </div>
    </nav>

    <!-- Header -->
    <section class="py-3 align-items-center mb-5" id="content">
      <div class="container-md bd-gutter">
        <div class="col-md-8 mx-auto pt-3 text-center">
          <img src="Img/logo_white_3.png" width="300" height="auto" alt="Yugioh Central" class="d-none d-sm-block mx-auto mb-3">
          <h2 class="mb-3 lh-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h2>
        </div>
      </div>
    </section>

    <!-- main content -->
    <div class="container">
        <section class="pb-md-5">
            <div class="row mb-2">
                <div class="col-md-6">
                    <div id="card-database" class="row g-0 rounded-4 overflow-hidden flex-md-row justify-content-center mb-4 shadow-sm h-md-250 position-relative">
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0">CARD DATABASE</h3>
                            <p class="card-text mb-auto">Browse through our card database.</p>
                            <a href="cardList.php" class="stretched-link"></a>
                        </div>
                        <div class="col d-none d-md-block">
                            <img src="img/index/kurikara2.webp" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="top-deck" class="row g-0 rounded-4 overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                        <div class="col d-none d-md-block">
                            <img src="img/index/ghoti.webp" alt="" class="img-fluid">
                        </div>
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0">TOP DECK</h3>
                            <p class="mb-auto">Explore our collection of Yugioh Deck.</p>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
            </div>   

            <div class="row mb-2">
                <div class="col-md-6">
                    <div id="secret-pack" class="row g-0 rounded-4 overflow-hidden flex-md-row justify-content-around mb-4 shadow-sm h-md-250 position-relative">
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0">SECRET PACK</h3>
                            <p class="card-text mb-auto">Discover rare and powerful cards.</p>
                            <a href="#" class="stretched-link"></a>
                        </div>
                        <div class="col d-none d-md-block">
                            <img src="img/index/psy.webp" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="deck-builder" class="row g-0 rounded-4 overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                        <div class="col d-none d-md-block">
                            <img src="img/index/dark_magician.webp" alt="" class="img-fluid">
                        </div>
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0">DECK BUILDER</h3>
                            <p class="card-text mb-auto">Create customized Yugioh decks.</p>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- article section -->
    <div class="container">
        <div class="row justify-content-center text-center">
            <h2 class="display-5 fw-semibold mb-3">Latest Article</h2>
            <?php
                foreach ($articles as $article) {
                    echo "
                    <div class='col-md-6'>
                    <div class='row min-height-150 g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative' style='background-image: url(img/article_thumb/$article[article_id].webp); background-size: cover; background-position-y: -60px;'>
                        <div class='bg-overlay col px-2 d-flex flex-column justify-content-between position-static text-start'>
                            <div>
                                <strong class='d-inline-block mb-2'>$article[category]</strong>
                            </div>
                            <div>
                                <h3 class='shadow-text mb-0'>$article[title]</h3>
                                <span class='shadow-text'>Published <b>$article[date_published]</b> by <b>$article[username]</b></span>
                                <a href='#' class='icon-link gap-1 icon-link-hover stretched-link'></a>
                            </div>
                        </div>
                    </div>
                </div>
                    ";
                }
            ?>
        </div>
    </div>

    <!-- footer -->
    <footer class="py-3 bg-dark">
      <div class="container d-flex justify-content-between">
        <p class="col-md-4 mb-0 text-light">
          <a class="navbar-brand" href="#"><img src="img/logo_white_3.png" alt="Ocean Logo" width="100"></a>
        </p>
        <ul class="nav col-md-4">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-light">Newsletters</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-light">Privacy Policy</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-light">FAQs</a></li>
        </ul>
      </div>
    </footer>

    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>