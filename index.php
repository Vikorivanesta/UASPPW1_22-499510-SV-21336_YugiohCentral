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
          <a class="navbar-brand" href="/YgoCentral"><img src="img/logo_white_3.png" alt="Yugioh Central" width="100"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto">
              <a class="nav-link" href="">Home</a>
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
      <div class="container-md">
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
                    <div id="card-database" class="row g-0 rounded-4 overflow-hidden flex-md-row justify-content-center mb-4 h-md-250 position-relative">
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0 fw-semibold">CARD DATABASE</h3>
                            <p class="card-text mb-auto shadow-text">Browse through our card database.</p>
                            <a href="cardDatabase" class="stretched-link"></a>
                        </div>
                        <div class="col d-none d-md-block">
                            <img src="img/index/kurikara2.webp" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="top-deck" class="row g-0 rounded-4 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">
                        <div class="col d-none d-md-block">
                            <img src="img/index/ghoti.webp" alt="" class="img-fluid">
                        </div>
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0 fw-semibold">TOP DECK</h3>
                            <p class="mb-auto shadow-text">Explore our collection of Yugioh Deck.</p>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
            </div>   

            <div class="row mb-2">
                <div class="col-md-6">
                    <div id="secret-pack" class="row g-0 rounded-4 overflow-hidden flex-md-row justify-content-around mb-4 h-md-250 position-relative">
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0 fw-semibold">SECRET PACK</h3>
                            <p class="card-text mb-auto shadow-text">Discover rare and powerful cards.</p>
                            <a href="#" class="stretched-link"></a>
                        </div>
                        <div class="col d-none d-md-block">
                            <img src="img/index/psy.webp" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="deck-builder" class="row g-0 rounded-4 overflow-hidden flex-md-row mb-4 h-md-250 position-relative">
                        <div class="col d-none d-md-block">
                            <img src="img/index/dark_magician.webp" alt="" class="img-fluid">
                        </div>
                        <div class="col-lg-6 p-4 d-flex flex-column align-self-center text-center position-static">
                            <h3 class="mb-0 fw-semibold">DECK BUILDER</h3>
                            <p class="card-text mb-auto shadow-text">Create customized Yugioh decks.</p>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- article section -->
    <div class="container d-flex justify-content-center">
        <div class="row justify-content-center text-center max-width-80">
            <h2 class="display-5 fw-semibold mb-3">Latest Article</h2>
            <?php
                foreach ($articles as $article) {
                    echo "
                    <div class='col-lg-6'>
                        <div class='article row min-height-150 g-0 rounded-4 overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative' style='background-image: url(img/article_thumb/$article[article_id].webp); background-size: cover; background-position-y: -60px;'>
                            <div class=' article col d-flex flex-column justify-content-end position-static text-start'>
                                <div class='bg-overlay px-2'>
                                    <h3 class='shadow-text lh-1 mb-0'>$article[title]</h3>
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
    <footer class="py-3 mt-3">
        <div class="container d-flex flex-column align-items-center">
            <span class="fw-semibold letter-spacing-1">Our Socials</span>
            <ul class="nav">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                        <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
                    </svg></a>
                </li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-discord" viewBox="0 0 16 16">
                        <path d="M13.545 2.907a13.227 13.227 0 0 0-3.257-1.011.05.05 0 0 0-.052.025c-.141.25-.297.577-.406.833a12.19 12.19 0 0 0-3.658 0 8.258 8.258 0 0 0-.412-.833.051.051 0 0 0-.052-.025c-1.125.194-2.22.534-3.257 1.011a.041.041 0 0 0-.021.018C.356 6.024-.213 9.047.066 12.032c.001.014.01.028.021.037a13.276 13.276 0 0 0 3.995 2.02.05.05 0 0 0 .056-.019c.308-.42.582-.863.818-1.329a.05.05 0 0 0-.01-.059.051.051 0 0 0-.018-.011 8.875 8.875 0 0 1-1.248-.595.05.05 0 0 1-.02-.066.051.051 0 0 1 .015-.019c.084-.063.168-.129.248-.195a.05.05 0 0 1 .051-.007c2.619 1.196 5.454 1.196 8.041 0a.052.052 0 0 1 .053.007c.08.066.164.132.248.195a.051.051 0 0 1-.004.085 8.254 8.254 0 0 1-1.249.594.05.05 0 0 0-.03.03.052.052 0 0 0 .003.041c.24.465.515.909.817 1.329a.05.05 0 0 0 .056.019 13.235 13.235 0 0 0 4.001-2.02.049.049 0 0 0 .021-.037c.334-3.451-.559-6.449-2.366-9.106a.034.034 0 0 0-.02-.019Zm-8.198 7.307c-.789 0-1.438-.724-1.438-1.612 0-.889.637-1.613 1.438-1.613.807 0 1.45.73 1.438 1.613 0 .888-.637 1.612-1.438 1.612Zm5.316 0c-.788 0-1.438-.724-1.438-1.612 0-.889.637-1.613 1.438-1.613.807 0 1.451.73 1.438 1.613 0 .888-.631 1.612-1.438 1.612Z"/>
                    </svg></a>
                </li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg></a>
                </li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                    </svg></a>
                </li>
            </ul>
            <ul class="nav">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">| Terms of Service</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">| Contact</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-light">| Server Status</a></li>
            </ul>
        <div class="row justify-content-center">
        </div>
      </div>
    </footer>

    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>