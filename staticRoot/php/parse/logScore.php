<?php

  // this script logs all the user progress and updates the database.
  include_once '../checkLogin.php';
  include_once '../conn.php';

  // if the score is posted from sound study and the user is logged in
  if(isset($_POST['score']) && isset($_SESSION["userName"])){
    // get the current score
    $u = $_SESSION['userName'];
    $sqlSelect = "SELECT score FROM member WHERE memberName = '$u' LIMIT 1";
    $resultSelect = $conn->query($sqlSelect);

    if ($resultSelect->num_rows > 0) {
      while($row = $resultSelect->fetch_assoc()) {
        // update the score
        $dbScore = $row['score'];
        $newScore = $dbScore + $_POST['score'];

        //add the new calculation to the database
        $sqlUpdate = "UPDATE member SET score = $newScore WHERE memberName = '$u' LIMIT 1";
        $resultUpdate = $conn->query($sqlUpdate);

        //if sucsessful
        if($resultUpdate){
          echo "score_updated";
        } else {
          echo "fail";
        }
      }
    } else {
      echo "fail";
    }
  } else {
    echo "fail";
  }
?>
