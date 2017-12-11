<?php

  include_once '../checkLogin.php';
  include_once '../conn.php';

  if(isset($_POST['score']) && isset($_SESSION["userName"])){
    $u = $_SESSION['userName'];
    $sqlSelect = "SELECT score FROM member WHERE memberName = '$u' LIMIT 1";
    $resultSelect = $conn->query($sqlSelect);

    if ($resultSelect->num_rows > 0) {
      while($row = $resultSelect->fetch_assoc()) {
        $dbScore = $row['score'];
        $newScore = $dbScore + $_POST['score'];

        $sqlUpdate = "UPDATE member SET score = $newScore WHERE memberName = '$u' LIMIT 1";
        $resultUpdate = $conn->query($sqlUpdate);

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
