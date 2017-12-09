<?php

$allItems = '';

  include_once 'php/conn.php';

  //Populate the levels section
  $sql = "SELECT A.* FROM (SELECT gameID, playType, description, maxScore, minScore, reqScore FROM game) as A ORDER BY RAND()";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        if($row["playType"] == "S"){
          $playType = "Sound Study";
          $color = "#1B98E0";
        } else {
          $playType = "Rhythm Rush";
          $color = "#FF595E";
        }
        //Score Calculator
        if(isset($row["minScore"])){
          $scoreLevel = ceil($row["maxScore"]/4);
          for($i = 0; $i < 4; $i++){
            $score[$i] = $scoreLevel * ($i + 1);
          }
        }

        $gameItem =
        "<li class=\"levelItem\" style=\" background: ". $color ."\"><h2>" . $playType . "<span>Level " . substr($row["gameID"], -2) . "</span></h2>
          <p>" . $row["description"] . "</p>
          <p class=\"smallText\">Your sessions targets are:</p>
          <ul class=\"trophieSquare\">
            <li><img src=\"asset/icon/trophieGold.png\" alt=\"Gold Trophie\"/><p>" . $score[3] . "pts</p></li>
            <li><img src=\"asset/icon/trophieSilver.png\" alt=\"Silver Trophie\"/><p>" . $score[2] . "pts</p></li>
            <li><img src=\"asset/icon/trophieBronze.png\" alt=\"Bronze Trophie\"/><p>" . $score[1] . "pts</p></li>
            <li><img src=\"asset/icon/trophieStone.png\" alt=\"Stone Trophie\"/><p>" . $score[0] . "pts</p></li>
          </ul>
          <a href=\"" . substr($row["gameID"], 0, 2) . ".php\" title=\"Play " . $playType . "\"><button>Play</button></a>
        </li>";

          $allItems .= $gameItem;
      }
  } else {
      echo "0 results";
  }
  $conn->close();
?>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Maestro</title>
  <meta name="description" content="Maestro">
  <meta name="author" content="Maestro">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/css/main.css">
</head>
<body>
  <input type="checkbox" id="menuToggle">
  <div id="pageWrap">
    <label for="menuToggle" id="menu"><h3>☰</h3></label>
    <div id="mainWindow">
      <header>
        <div id="blockElement"></div>
        <h1>Maestro</h1>
        <div id="profile">
          <svg width="50px" height="50px" viewBox="0 0 50 50" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <g id="Profile_red" transform="translate(-5.000000, -5.000000)">
              <g id="Page-1">
                <path d="M29.9999982,4.9999997 C16.1999991,4.9999997 4.9999997,16.1999991 4.9999997,29.9999982 C4.9999997,43.7999984 16.1999991,54.9999967 29.9999982,54.9999967 C43.7999984,54.9999967 54.9999967,43.7999984 54.9999967,29.9999982 C54.9999967,16.1999979 43.7999984,4.9999997 29.9999982,4.9999997 Z M29.9999982,12.4999993 C34.1499975,12.4999993 37.4999977,15.8499994 37.4999977,19.9999988 C37.4999977,24.1499982 34.1499975,27.4999983 29.9999982,27.4999983 C25.8499987,27.4999983 22.4999986,24.1499982 22.4999986,19.9999988 C22.4999986,15.8499994 25.8499987,12.4999993 29.9999982,12.4999993 Z M29.9999982,47.9999989 C23.7499986,47.9999989 18.2249988,44.7999973 14.9999991,39.9499986 C15.0749996,34.9749997 24.9999985,32.2499993 29.9999982,32.2499993 C34.9749972,32.2499993 44.9250003,34.9749997 44.9999973,39.9499986 C41.774995,44.7999973 36.2499978,47.9999989 29.9999982,47.9999989 Z" id="Fill-2" fill="#FE6367"></path>
              </g>
            </g>
          </svg>
      </div>
      </header>
      <main>
        <section id="levelSlider">
          <ul id="sliderContain">
            <?php echo $allItems; ?>
          </ul>
        </section>
      </main>
      <footer>
        <img src="asset/mrMaestro/staticIdle.gif" id="maestroImage" alt="Mr Maestro"/>
        <h3>Level 1</h3>
        <div id="progressBarBack"></div>
        <div id="progressBarTop"><p>100pts</p></div>
      </footer>
    </div>
    <nav id="navContent">
      <ul>
        <li><h3>Menu</h3></li>
        <li><h3>Settings</h3></li>
        <li><h3>About</h3></li>
        <li><a href="login-register.php" title="Logout"><h3>Logout</h3></a></li>
      </ul>
      <p class="infoText">Maestro Version 1 Build 0.01</p>
    </nav>
  </div>
  <script type="text/javascript">
  var audio;
  function init(){
    audio = new Audio();
    audio.src = "asset/theme/theme.wav";
    audio.loop = true;
    audio.play();
  }
  window.addEventListener("load", init);
  </script>
</body>
</html>
