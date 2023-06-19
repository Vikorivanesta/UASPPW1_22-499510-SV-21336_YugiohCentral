<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>card list</title>
    <?php 
        include "app.php";

        $itemsPerPage = 24;
        $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
        $totalItems = mysqli_query($conn, "SELECT COUNT(DISTINCT(card.card_id)) as count FROM card LEFT JOIN card_subcategory ON card.card_id = card_subcategory.card_id LEFT JOIN archetype_detail ON card.card_id = archetype_detail.card_id" . $cardFilter);
        $totalItems = $totalItems->fetch_assoc();
        $totalPages = ceil($totalItems['count'] / $itemsPerPage);
        $offset = ($currentPage - 1) * $itemsPerPage;

        $cardFilter  = $cardFilter . " LIMIT ". $offset . ", " . $itemsPerPage;
        $cardQuery = $cardQuery . $cardFilter;
        $cards = mysqli_query($conn, $cardQuery);
    ?>
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
              <a class="nav-link" href="">Card Database</a>
              <a class="nav-link" href="#decks">Decks</a>
              <a class="nav-link" href="#article">Articles</a>
              <a class="nav-link" href="#secretPack">Secret Packs</a>
              <a class="nav-link" href="#deckBuilder">Deck Builder</a>
            </div>
          </div>
        </div>
    </nav>

    <!-- Head -->
    <div class="container">
        <section class="pt-3 px-3 align-items-center mb-3" id="content">
            <div class="col-md-8 mx-auto pt-3 px-2 text-center">
                <img src="Img/Title/title_card_database.png" height="40" width="auto" alt="Yugioh Central" class="mx-auto mb-3">
            </div>
        </section>
    </div>

    <!-- Filter -->
    <div class="container mb-5">
        <form id="filter-form" class="p-3 m-3 rounded-4" method="GET" action="">
            <div class="row justify-content-center mb-3">
                <div class="form-group col-lg-8 mb-2">
                    <input type="search" name="card_name" id="filter-text "class="form-control bg-dark text-white border-0" placeholder="Search">
                </div>
                <div class="form-group col mb-1">
                    <select name="sortBy" class="form-select bg-dark text-white border-0" id="filter-sort">
                        <option value="">Sort</option>
                        <option value="atk">ATK</option>
                        <option value="def">DEF</option>
                        <option value="lvl">Level</option>
                        <option value="name">Name</option>
                    </select>
                </div>
                <div class="form-group col">
                    <select name="sortDir" class="form-select bg-dark text-white border-0" id="filter-sort-direction">
                        <option value="">Sort Direction</option>
                        <option value="asc">ASC</option>
                        <option value="desc">DESC</option>
                    </select>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-6 col-lg-3 mb-2">
                    <select name="category" class="form-select bg-dark text-white border-0" id="filter-subcategory">
                        <option value="">Select category</option>
                        <?php foreach($category as $category) {
                            echo "<option value='$category[category]'>$category[category]</option>";} ?>
                    </select>
                </div>
                <div class="form-group col-6 col-lg-3 mb-2">
                    <select name="subcategory_id" class="form-select bg-dark text-white border-0" id="filter-subcategory">
                        <option value="">Select subcategory</option>
                        <?php foreach($subcategory as $subcategory) {
                            echo "<option value='$subcategory[subcategory_id]'>$subcategory[name]</option>";} ?>
                    </select>
                </div>
                <div class="form-group col-6 col-lg-3 mb-2">
                    <select name="attribute" class="form-select bg-dark text-white border-0" id="filter-attribute">
                        <option value="">Select Attribute</option>
                        <?php foreach($attribute as $attribute) {
                            echo "<option value='$attribute[attribute]'>$attribute[attribute]</option>";} ?>
                    </select>
                </div>
                <div class="form-group col-6 col-lg-3 mb-2">
                    <select name="type" class="form-select bg-dark text-white border-0" id="filter-type">
                        <option value="">Select Type</option>
                        <?php foreach($type as $type) {
                            echo "<option value='$type[type]'>$type[type]</option>";} ?>
                    </select>
                </div>
                <div class="form-group col-6 col-lg-3 mb-2">
                    <select name="archetype_id" class="form-select bg-dark text-white border-0" id="filter-archetype">
                        <option value="">Select Archetype</option>
                        <?php foreach($archetype as $archetype) {
                            echo "<option value='$archetype[archetype_id]'>$archetype[name]</option>";} ?>
                    </select>
                </div>
                <div class="form-group col-6 col-lg-3 mb-2">
                    <select name="rarity" class="form-select bg-dark text-white border-0" id="filter-rarity">
                        <option value="">Select Rarity</option>
                        <?php foreach($rarity as $rarity) {
                            echo "<option value='$rarity[rarity]'>$rarity[rarity]</option>";} ?>
                    </select>
                </div>
            </div>
            <br>
    
            <div class="row justify-content-md-center">
                <div class="form-group col-md-3 mb-2">
                    <input type="range" id="cardatk" name="cardatk" min="0" max="5000" value="0" step="50" oninput="this.nextElementSibling.value = this.value">
                    <input class="bg-dark text-white col-2 col-md-5 col-lg-3" type="number" id="atkLabel" name="atkLabel" min="0" max="5000" value="0">
                    <label for="cardatk">ATK</label>
                </div>
                <div class="form-group col-md-3 mb-2">
                    <input type="range" id="carddef" name="carddef" min="0" max="5000" value="0" step="50" oninput="this.nextElementSibling.value = this.value">
                    <input class="bg-dark text-white col-2 col-md-5  col-lg-3" type="number" id="defLabel" name="defLabel" min="0" max="5000" value="0">
                    <label for="carddef">DEF</label>
                </div>
                <div class="form-group col-md-3 mb-2">
                    <input type="range" id="cardlevel" name="cardlevel" min="0" max="12" value="0" step="1" oninput="this.nextElementSibling.value = this.value">
                    <input class="bg-dark text-white col-2 col-md-5 col-lg-3" type="number" id="levelLabel" name="levelLabel" min="0" max="12" value="0">
                    <label for="cardlevel">LVL</label>
                </div>
            </div>
            <br>
    
            <div class="row justify-content-center text-center">
                <div class="form-group col">
                    <button type="reset" id="resetFilters" onclick="resetFilters()" class="btn btn-danger btn-block box-shadow-red"> Reset Filters </button>
                </div>
                <div class="form-group col">
                    <button type="submit" id="submitFilters" class="btn btn-danger btn-inline px-4 box-shadow-red"> Filter </button>
                </div>
            </div>
        </form>
    </div>

    <!-- Card List -->
    <div class="container">
        <div id='card-result' class="row justify-content-center">
            <?php
                foreach ($cards as $card) {
                    echo "
                        <a class='col-6 col-sm-4 col-md-3 col-lg-2 my-2 ygo-card' href='img/card/$card[card_id].webp'>
                            <img src='img/card/$card[card_id].webp' alt='' class='img-fluid'>
                        </a>
                    ";
                }
            ?>
        </div>
    </div>

    <nav aria-label="Page navigation" class="mt-3">
        <ul class='pagination d-flex justify-content-center'>
            <?php
                if (!empty($_SERVER['QUERY_STRING'])) {
                    $url = "&page=";
                } else {
                    $url = "?page=";
                }

                for ($i = 1; $i <= $totalPages; $i++) {
                    $activeClass = ($i == $currentPage) ? "active' aria current='page" : '';
                    echo "<li class='page-item " . $activeClass . "'><a class='page-link' href='" . $_SERVER['REQUEST_URI'] . $url . $i . "'>" . $i . "</a></li>";
                }
            ?>
        </ul>
    </nav>


    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="app.js"></script>
</body>
</html>