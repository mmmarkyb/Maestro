<?php

session_start();

include_once("conn.php");

$user_ok = false;
$log_id = "";
$log_username = "";
$log_password = "";

function evalLoggedUser($u,$p) {
	$sql = "SELECT memberName FROM member WHERE memberName='$u' AND passWord='$p' LIMIT 1";
	$result = $conn->query($sql);
	$numrows = $result->num_rows;
	if($numrows > 0){
		return true;
	}

if(isset($_SESSION["userName"]) && isset($_SESSION["passWord"])) {

	$log_username = preg_replace('#[^a-z0-9]#i', '', $_SESSION['userName']);
	$log_password = $_SESSION['passWord'];

	$user_ok = evalLoggedUser($log_username,$log_password);

} else if(isset($_COOKIE["user"]) && isset($_COOKIE["pass"])) {
	$_SESSION['userName'] = preg_replace('#[^a-z0-9]#i', '', $_COOKIE['user']);
	$_SESSION['passWord'] = $_COOKIE['pass'];

	$log_username = $_SESSION['userName'];
	$log_password = $_SESSION['passWord'];

	$user_ok = evalLoggedUser($log_username,$log_password);

}

if($user_ok != true){
	header("location: ../home.php");
	exit();
}
}

?>
