<?php
// Start the browser session
session_start();
// If the posted varible from ajax of 'u' is set then:
if(isset($_POST["u"])){

  // username and password varibles
  $u = $_POST['u'];
	$p = $_POST['p'];

  // if they are empty return fail
  if($u == "" || $p == ""){
    echo "login_failed";
    exit();
  } else {
    //If not include the db connect script
    include_once '../conn.php';

    //Check database for user
    $sql = "SELECT memberName, passWord FROM member WHERE memberName = '$u' AND passWord = '$p'";
    $result = $conn->query($sql);

    // if the query returned data
    if ($result->num_rows > 0) {
      // for each of the returned rows of data
      while($row = $result->fetch_assoc()) {
        // get the db username and password
        $userName = $row["memberName"];
        $passWord = $row["passWord"];
      }
      // store in session vairbles
      $_SESSION['userName'] = $userName;
      $_SESSION['passWord'] = $passWord;

      // set cookies for later logins
      setcookie("user", $userName, strtotime( '+30 days' ), "/", "", "", TRUE);
			setcookie("pass", $passWord, strtotime( '+30 days' ), "/", "", "", TRUE);

      // unset any previous session varibles
      if(isset($_SESSION['login'])){
        unset($_SESSION['login']);
      }

      // return username
      echo $userName;
      exit();

    }
    echo "login_failed";
    exit();
  }
}
// i am aware this is not a very good way of dealing with user data but for this purpose it is just to retrive data.
?>
