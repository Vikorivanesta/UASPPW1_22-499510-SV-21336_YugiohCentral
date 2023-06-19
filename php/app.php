<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "Yugioh";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    //Fetch article
    $articles = mysqli_query($conn, "SELECT * FROM article, web_user WHERE article.user_id = web_user.user_id ORDER BY date_published DESC");

    //Fetch card and it's component
    $cards = mysqli_query($conn, "SELECT * FROM card");
    $category = mysqli_query($conn, "SELECT DISTINCT category FROM card ORDER BY category");
    $subcategory = mysqli_query($conn, "SELECT * FROM subcategory ORDER BY name");
    $attribute = mysqli_query($conn, "SELECT DISTINCT attribute FROM card WHERE category = 'Monster' ORDER BY attribute");
    $type = mysqli_query($conn, "SELECT DISTINCT type FROM card ORDER BY type");
    $archetype = mysqli_query($conn, "SELECT * FROM archetype ORDER BY name");
    $rarity = mysqli_query($conn, "SELECT DISTINCT rarity FROM card");

    // Card Filtering and Sorting
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

    $cardQuery = "SELECT DISTINCT card.card_id FROM card LEFT JOIN card_subcategory ON card.card_id = card_subcategory.card_id LEFT JOIN archetype_detail ON card.card_id = archetype_detail.card_id WHERE  name LIKE '%$filterText%'";

    if ($sortBy != "") {
        if ($sortBy != "name"){
            $filterCategory = "Monster";
        }
    }
    if ($filterCategory != "") {
        $cardQuery = $cardQuery . " AND category = " . "'" . $filterCategory . "'";
    }
    if ($filterSubcategory != "") {
        $cardQuery = $cardQuery . " AND subcategory_id = " . $filterSubcategory;
    }
    if ($filterAttribute != "") {
        $cardQuery = $cardQuery . " AND attribute = " . "'" . $filterAttribute . "'";
    }
    if ($filterType != "") {
        $cardQuery = $cardQuery . " AND type = " . "'" . $filterType . "'";
    }
    if ($filterArchetype != "") {
        $cardQuery = $cardQuery . " AND archetype_id = " . $filterArchetype;
    }
    if ($filterRarity != "") {
        $cardQuery = $cardQuery . " AND rarity = " . "'" . $filterRarity . "'";
    }

    $cardQuery = $cardQuery . " AND atk >= " . $filterAtk;
    $cardQuery = $cardQuery . " AND def >= " . $filterDef;
    $cardQuery = $cardQuery . " AND lvl >= " . $filterLvl;

    if ($sortBy != "") {
        $cardQuery = $cardQuery . " ORDER BY " . $sortBy;
        $cardQuery = $cardQuery . " " . $sortDir;
    }

    $cards = mysqli_query($conn, $cardQuery);

?>

<script>
  // Prevent form to reset after submit  
  document.addEventListener('DOMContentLoaded', function() {
    var form = document.querySelector('form');

    // Intercept form submission
    form.addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent default form submission

      // Serialize form data and store in local storage
      var formData = serializeForm(form);
      localStorage.setItem('formValues', JSON.stringify(formData));

      // Submit the form programmatically
      form.submit();
    });

    // Check if there are stored form values and populate the form
    var storedValues = localStorage.getItem('formValues');
    if (storedValues) {
      storedValues = JSON.parse(storedValues);
      populateForm(form, storedValues);
      localStorage.removeItem('formValues'); // Clear stored form values
    }
  });

  // Serialize form data into an object
  function serializeForm(form) {
    var formData = {};
    var inputs = form.querySelectorAll('input, select, textarea');
    for (var i = 0; i < inputs.length; i++) {
      var input = inputs[i];
      if (input.name) {
        if (input.type === 'checkbox' || input.type === 'radio') {
          formData[input.name] = input.checked;
        } else {
          formData[input.name] = input.value;
        }
      }
    }
    return formData;
  }

  // Populate form fields with values
  function populateForm(form, data) {
    var inputs = form.querySelectorAll('input, select, textarea');
    for (var i = 0; i < inputs.length; i++) {
      var input = inputs[i];
      if (input.name && data.hasOwnProperty(input.name)) {
        if (input.type === 'checkbox' || input.type === 'radio') {
          input.checked = data[input.name];
        } else {
          input.value = data[input.name];
        }
      }
    }
  }
</script>
