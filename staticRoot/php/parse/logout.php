<?php
	session_start();

	$_SESSION = array();

	if(isset($_COOKIE["user"]) && isset($_COOKIE["pass"])) {
		setcookie("user",'', strtotime( '-5 days' ), '/');
		setcookie("pass",'', strtotime( '-5 days' ), '/');
	}

	session_destroy();

	if(isset($_SESSION['userName'])){
		header("location: ../../home.php");
	} else {
		header("location: ../../index.php");
		exit();
	}
?>
