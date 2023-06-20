# Identitas
Nama  : Viko Rivanesta

NIM   : 22/499510/SV/21336

# Tentang Website
Yugioh Central merupakan sebuah website yang dirancang untuk menjadi resource utama bagi para pemain game _Yugioh: Master Duel_. Website ini bertujuan untuk memenuhi berbagai kebutuhan klien terkait game tersebut. 

Beberapa kebutuhan klien yang dapat dipenuhi melalui Yugioh Central meliputi:

1. Database Kartu : Database yang lengkap mengenai kartu-kartu yang tersedia dalam game _Yugioh: Master Duel_.

2. Database Deck : Database yang berisi deck-deck yang telah sibuat oleh pemain lain.

4. Fitur Deck Builder : Fitur yang dapat digunakan pengguna untuk membuat, menyimpan, dan membagikan deck mereka sendiri dengan memilih kartu-kartu yang tersedia dalam database.

4. Artikel : Website ini menawarkan berbagai artikel seperti news, guide, event, tournament, dll.

Melalui Yugioh Central, pemain _Yugioh: Master Duel_ dapat memperoleh akses ke resource yang lengkap dengan mudah dan cepat. Dengan demikian, website ini menjadi pusat informasi dan komunitas yang membantu pemain dalam menjelajahi dan menikmati permainan _Yugioh: Master Duel_.
# Kriteria Penilaian
## Prinsip Desain
### Color Palette
- Black       (#000000)
- White       (#FFFFFF)
- Dark Grey   (#212529)
- Red         (#DC3545)
### Font
- Font family = sofia sans
- Font size   = default bootstrap
- Font shadow = black jika warna text menyatu dengan background
### Spacing
- Section ditaruh di dalam bootstrap container
- margin m-5 antar section
- margin m-3 atau m-2 antar komponen
- padding p-2 atau p-3 sesuai konten
### Clickable component
- Borderless
- Rounded-4
- On hover: transform(1.02), lighten up background (except card component)

![image](https://github.com/Vikorivanesta/UASPPW1_22-499510-SV-21336_YugiohCentral/assets/109974561/f60b7e05-5d64-421b-86c2-5c8fcb44afe1)
![image](https://github.com/Vikorivanesta/UASPPW1_22-499510-SV-21336_YugiohCentral/assets/109974561/6a2c62a5-cb5d-4e25-b51b-815f1d9db54a)



## Responsiveness
### Homepage
- Pada navbar, navigation link akan collapse menjadi hamburger icon saat ukuran layar < 768px
- pada main section, saat ukuran layar >= 768px akan terdiri dari 2 kolom dan berubah menjadi 1 kolom saat ukuran layar < 768px
- pada main section, saat ukuran layar >= 768px akan menampilkan gambar dan akan hilang saat ukuran layar < 768px
- Pada article section, saat ukuran layar >= 992px akan terdiri dari 2 kolvbar:om dan berubah menjadi 1 kolom saat ukuran layar < 992px

navbar:
```
<nav class="navbar navbar-expand-md navbar-dark sticky-top shadow bg-dark">
```
main section column:
```
<div class="col-md-6">
```
main section's image:
```
<div class="col d-none d-md-block">
```
article:
```
<div class='col-lg-6'>
```
![image](https://github.com/Vikorivanesta/UASPPW1_22-499510-SV-21336_YugiohCentral/assets/109974561/88151618-fa45-4b58-93b2-55733636455e)

### Card Database page
- Pada navbar, navigation link akan collapse menjadi hamburger icon saat ukuran layar < 768px
- Pada filter form, input akan di-wrap ke line baru jika layar mengecil
- Pada card list, akan menampilkan 6 card per row jika ukuran layar >= 992px, menampilkan 4 card per row jika 768px <= ukuran layar < 992px, menampilkan 3 card per row jika 576px <= ukuran layar < 768px, dan menampilkan 2 card per row jika ukuran layar <576px

card:
```
<a class='col-6 col-sm-4 col-md-3 col-lg-2 my-2 ygo-card' href='img/card/$card[card_id].webp'>
```

## Direct Feedback
Pada login page, website akan menampilkan alert-success jika username dan password ada di dalam database, dan menampilkan alert-warning jika tidak ditemukan.

```
//-----Fetch User-----
    $userslist = mysqli_query($conn, "SELECT * FROM web_user");
```

```
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
```

failed login:
![image](https://github.com/Vikorivanesta/UASPPW1_22-499510-SV-21336_YugiohCentral/assets/109974561/6a346170-d539-4b1a-889b-1c91aab39a5a)
success login:
![image](https://github.com/Vikorivanesta/UASPPW1_22-499510-SV-21336_YugiohCentral/assets/109974561/ba196de8-ae10-4881-b7c1-90ec6900f30c)


## Dynamic Content
### Homepage
Pada homepage, section 'article' akan menampilkan 4 artikel terbaru yang diambil dari database

```
//-----Fetch article-----
    $articles = mysqli_query($conn, "SELECT * FROM article, web_user WHERE article.user_id = web_user.user_id ORDER BY date_published DESC LIMIT 4");
```

```
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
```
### Card Database Page
Pada page 'Card Database' (cardList.php), akan menampilkan database kartu secara dinamis dengan fitur filtering.

code untuk filtering:

```
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
```
Code untuk page navigation:
```
//-----Page System for Card Database-----
    $itemsPerPage = 24;
    $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
    $totalItems = mysqli_query($conn, "SELECT COUNT(DISTINCT(card.card_id)) as count FROM card LEFT JOIN card_subcategory ON card.card_id = card_subcategory.card_id LEFT JOIN archetype_detail ON card.card_id = archetype_detail.card_id" . $cardFilter);
    $totalItems = $totalItems->fetch_assoc();
    $totalPages = ceil($totalItems['count'] / $itemsPerPage);
    $offset = ($currentPage - 1) * $itemsPerPage;

    $cardFilter  = $cardFilter . " LIMIT ". $offset . ", " . $itemsPerPage;
    $cardQuery = $cardQuery . $cardFilter;
```
Menampilkan kartu:
```
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
```
Menampilkan page navigation:
```
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
```
