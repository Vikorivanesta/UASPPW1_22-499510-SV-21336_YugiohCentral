<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "Yugioh";

    //-----Create connection-----
    $conn = mysqli_connect($servername, $username, $password, $database);

    //-----Check connection-----
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    //-----Fetch User-----
    $userslist = mysqli_query($conn, "SELECT * FROM web_user");

    //-----Fetch article-----
    $articles = mysqli_query($conn, "SELECT * FROM article, web_user WHERE article.user_id = web_user.user_id ORDER BY date_published DESC LIMIT 4");

    //-----Fetch Card's attributes-----
    $category = mysqli_query($conn, "SELECT DISTINCT category FROM card ORDER BY category");
    $subcategory = mysqli_query($conn, "SELECT * FROM subcategory ORDER BY name");
    $attribute = mysqli_query($conn, "SELECT DISTINCT attribute FROM card WHERE category = 'Monster' ORDER BY attribute");
    $type = mysqli_query($conn, "SELECT DISTINCT type FROM card ORDER BY type");
    $archetype = mysqli_query($conn, "SELECT * FROM archetype ORDER BY name");
    $rarity = mysqli_query($conn, "SELECT DISTINCT rarity FROM card");

    //-----Card Database Filtering and Sorting-----
    $filterText = $_GET["card_name"] ?? '';
    $filterCategory = $_GET["category"] ?? '';
    $filterSubcategory = $_GET["subcategory_id"] ?? '';
    $filterAttribute = $_GET["attribute"] ?? '';
    $filterType = $_GET["type"] ?? '';
    $filterArchetype = $_GET["archetype_id"] ?? '';
    $filterRarity = $_GET["rarity"] ?? '';
    $filterAtk = $_GET["atkLabel"] ?? 0;
    $filterDef = $_GET["defLabel"] ?? 0;
    $filterLvl = $_GET["levelLabel"] ?? 0;
    $sortBy = $_GET["sortBy"] ?? '';
    $sortDir = $_GET["sortDir"] ?? '';

    $cardQuery = "SELECT DISTINCT card.card_id FROM card LEFT JOIN card_subcategory ON card.card_id = card_subcategory.card_id LEFT JOIN archetype_detail ON card.card_id = archetype_detail.card_id";
    $cardFilter = " WHERE  name LIKE '%$filterText%'";

    if ($sortBy != "") {
        if ($sortBy != "name"){
            $filterCategory = "Monster";
        }
    }
    if ($filterCategory != "") {
        $cardFilter = $cardFilter . " AND category = " . "'" . $filterCategory . "'";
    }
    if ($filterSubcategory != "") {
        $cardFilter = $cardFilter . " AND subcategory_id = " . $filterSubcategory;
    }
    if ($filterAttribute != "") {
        $cardFilter = $cardFilter . " AND attribute = " . "'" . $filterAttribute . "'";
    }
    if ($filterType != "") {
        $cardFilter = $cardFilter . " AND type = " . "'" . $filterType . "'";
    }
    if ($filterArchetype != "") {
        $cardFilter = $cardFilter . " AND archetype_id = " . $filterArchetype;
    }
    if ($filterRarity != "") {
        $cardFilter = $cardFilter . " AND rarity = " . "'" . $filterRarity . "'";
    }

    $cardFilter = $cardFilter . " AND atk >= " . $filterAtk;
    $cardFilter = $cardFilter . " AND def >= " . $filterDef;
    $cardFilter = $cardFilter . " AND lvl >= " . $filterLvl;

    if ($sortBy != "") {
        $cardFilter = $cardFilter . " ORDER BY " . $sortBy;
        $cardFilter = $cardFilter . " " . $sortDir;
    }

    //-----Page System for Card Database-----
    $itemsPerPage = 24;
    $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
    $totalItems = mysqli_query($conn, "SELECT COUNT(DISTINCT(card.card_id)) as count FROM card LEFT JOIN card_subcategory ON card.card_id = card_subcategory.card_id LEFT JOIN archetype_detail ON card.card_id = archetype_detail.card_id" . $cardFilter);
    $totalItems = $totalItems->fetch_assoc();
    $totalPages = ceil($totalItems['count'] / $itemsPerPage);
    $offset = ($currentPage - 1) * $itemsPerPage;

    $cardFilter  = $cardFilter . " LIMIT ". $offset . ", " . $itemsPerPage;
    $cardQuery = $cardQuery . $cardFilter;

    //-----Fetch Cards-----
    $cards = mysqli_query($conn, $cardQuery);

?>
