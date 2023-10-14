<!DOCTYPE html>
<html lang="en">

<?php
require 'app/conf/config.php';
require 'app/views/sdgs.php';
?>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/styles.css" />
  <script src="js/LanguageHandler.js" defer></script>
  <link rel="icon" href="src/Randiko_Logo.svg" type="image/x-icon" />
  <title>Home</title>
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
  <main class="index--page">

    <section class="slider--section">
      <h2 id="SDG_Overview">SDG Overview</h2>
      <figure>
        <?php
        $i = 1;
        foreach ($sdgs as $sdg) {
        ?>
          <a href="sdg.php?id=<?php echo $i ?>" style="background: <?php echo $sdg["color"] ?> ;">
            <img src=<?php echo $sdg["icon"] ?> alt=<?php echo $sdg["title"] ?> />
          </a>

        <?php
          $i++;
        } ?>
      </figure>
    </section>
    <section class="cta--section">
      <h2 id="play_SDG">Speel de SDG Game!</h2>
      <a href="https://sdggame.nl/" target="_blank">Go!</a>
    </section>
    <section class="sdgs--section">
      <h2 id="our_SDGs">Onze SDGs</h2>
      <figure>
        <?php
        $i = 1;
        foreach ($sdgs as $sdg) {
        ?>
          <a href="sdg.php?id=<?php echo $i ?>" target="_blank">
            <h3><?php echo $sdg["title"] ?></h3>
            <div style="background: <?php echo $sdg["color"] ?> ;">
              <img src=<?php echo $sdg["icon"] ?> alt=<?php echo $sdg["title"] ?> />
            </div>
          </a>

        <?php
          $i++;
        } ?>

      </figure>
    </section>
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