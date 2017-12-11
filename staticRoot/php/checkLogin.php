<?php

session_start();

include_once("conn.php");

// init variables
$user_ok = false;
$log_id = "";
$log_username = "";
$log_password = "";

// check to see if user is logged in > if so return true
function evalLoggedUser($u,$p) {
	$sql = "SELECT memberName FROM member WHERE memberName='$u' AND passWord='$p' LIMIT 1";
	$result = $conn->query($sql);
	$numrows = $result->num_rows;
	if($numrows > 0){
		return true;
	}

// check to see if there are session varibles set
if(isset($_SESSION["userName"]) && isset($_SESSION["passWord"])) {

	$log_username = preg_replace('#[^a-z0-9]#i', '', $_SESSION['userName']);
	$log_password = $_SESSION['passWord'];

	$user_ok = evalLoggedUser($log_username,$log_password);

} else if(isset($_COOKIE["user"]) && isset($_COOKIE["pass"])) {
	// else check to see if there are cookies set for returning users
	$_SESSION['userName'] = preg_replace('#[^a-z0-9]#i', '', $_COOKIE['user']);
	$_SESSION['passWord'] = $_COOKIE['pass'];

	$log_username = $_SESSION['userName'];
	$log_password = $_SESSION['passWord'];

	$user_ok = evalLoggedUser($log_username,$log_password);

}

// if the return is true take them home
if($user_ok != true){
	header("location: ../home.php");
	exit();
}
}

?>
