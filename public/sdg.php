<!DOCTYPE html>
<html lang="en">

<?php
require 'app/conf/config.php';
require 'app/views/sdg.php';
?>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/styles.css" />
  <script src="js/LanguageHandler.js" defer></script>
  <script src="https://kit.fontawesome.com/31ba87c7ce.js" crossorigin="anonymous"></script>
  <link rel="icon" href="src/Randiko_Logo.svg" type="image/x-icon" />
  <title><?php echo $sdg['title'];  ?></title>
</head>

<body>
  <header>
    <a href="index.php">
      <img src="src/Nvvn_Logo.png" alt="/" />
    </a>
    <figure>
      <a href="index.php">Home</a>
      <a href="contact.html" class="header--contact">Contact</a>
      <div>
        <div id="dutch--b" class="lang--button" onclick="setLanguage('dutch')"></div>
        <div id="english--b" class="lang--button" onclick="setLanguage('english')"></div>
      </div>
    </figure>
  </header>
  <main class="sdg--page">
    <section>
      <figure>
        <h1><?php echo $sdg["title"] ?></h1>
        <div style="background: <?php echo $sdg["color"] ?> ;">
          <img src=<?php echo $sdg["icon"] ?> alt=<?php echo $sdg["title"] ?>>
        </div>

      </figure>
      <article>
        <h2 id="sdg_title">Wat houdt deze SDG in?</h2>
        <p><?php echo $sdg["description"] ?>
        </p>
      </article>
    </section>
    <a href=<?php echo $sdg["link"] ?> target="_blank" id="sdg_button">Check it out in the game!</a>
  </main>
  <footer>
    <a href="index.php">
      <img src="src/Randiko_Logo.svg" alt="/" />
    </a>
    <figure>
      <a href="tel: +31612345678">tel: +31 6 12345678</a>
      <a href="mailto: info@unric.org">E-mail: info@unric.org</a>
      <a href="/">© 2023 Copyright</a>
    </figure>
  </footer>
</body>

</html>