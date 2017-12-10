<?php

session_start();

if(isset($_POST["u"])){

  $u = $_POST['u'];
	$p = $_POST['p'];

  if($u == "" || $p == ""){
    echo "login_failed";
    exit();
  } else {
    include_once '../conn.php';

    //Check database for user
    $sql = "SELECT memberName, passWord FROM member WHERE memberName = '$u' AND passWord = '$p'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
        $userName = $row["memberName"];
        $passWord = $row["passWord"];
      }
      $_SESSION['userName'] = $userName;
      $_SESSION['passWord'] = $passWord;

      setcookie("user", $userName, strtotime( '+30 days' ), "/", "", "", TRUE);
			setcookie("pass", $passWord, strtotime( '+30 days' ), "/", "", "", TRUE);

      if(isset($_SESSION['login'])){
        unset($_SESSION['login']);
      }

      echo $userName;
      exit();

    }
    echo "login_failed";
    exit();
  }
}

?>
