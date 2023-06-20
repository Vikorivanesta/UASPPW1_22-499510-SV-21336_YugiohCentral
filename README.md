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
## Responsiveness
## Direct Feedback
Pada login page, website akan menampilkan alert-success jika username dan password ada di dalam database, dan menampilkan alert-warning jika tidak ditemukan.

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
## Dynamic Content
