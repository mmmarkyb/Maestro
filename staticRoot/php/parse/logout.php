<?php
	session_start();

	// empty the session array
	$_SESSION = array();

	// if there are cookies set then unset them
	if(isset($_COOKIE["user"]) && isset($_COOKIE["pass"])) {
		setcookie("user",'', strtotime( '-5 days' ), '/');
		setcookie("pass",'', strtotime( '-5 days' ), '/');
	}

	// destroy the session and all its variables
	session_destroy();

	//if the logout was sucsessful retun the user to the home page (login) if not retun to the menu view.
	if(isset($_SESSION['userName'])){
		header("location: ../../home.php");
	} else {
		header("location: ../../index.php");
		exit();
	}
?>
