<?php
	include_once("php/checkLogin.php");
	// check user login and if they are logged in then take them home
	if(isset($_SESSION["userName"])){
		header("location: home.php");
		exit();
	}
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
  <div id="pageWrap">
    <div id="mainWindow">
      <header id="logRegHead">
        <div>
          <h1>Maestro</h1>
          <p>Where learning is fun.</p>
        </div>
      </header>
      <main>
        <section id="logRegForm">
          <form>
            <input type="text" placeholder="Username" style="margin: 0" id="userName">
            <input type="email" placeholder="E-Mail Address" id="email" style="height: 0px; opacity: 0">
            <input type="password" placeholder="Password" id="passWord">
            <a id="loginBtn" style="display: block;" onClick="login()" href="#">Login</a>
            <a id="registerBtn" style="display: none;">Start Now</a>
            <label id="registerLabel" onclick="toggleLogReg()" style="display: block;">New to Maestro? Join now!</label>
            <label id="loginLabel" onclick="toggleLogReg()" style="display: none;">Login to Maestro</label>
          </form>
        </section>
        <p id="status"></p>
      </main>
    </div>
  </div>
  <script src="js/ajax.js"></script>
  <script type="text/javascript">

    var form = document.getElementById("logRegForm");
    var logBtn = document.getElementById('loginBtn');
    var regBtn = document.getElementById('registerBtn');
    var email = document.getElementById("email");
    var userName = document.getElementById("userName");
    var regLabel = document.getElementById("registerLabel");
    var logLabel = document.getElementById("loginLabel");

    var toggle = "yes";

		//function to toggle the register input feild
    function toggleLogReg(){
      if (email.style.height == "0px"){
        email.style.height = "39px";
        email.style.opacity = "1";
        userName.style.margin = " 0 0 16px 0";
        logLabel.style.display = "block";
        regLabel.style.display = "none";
        logBtn.style.display = "none";
        regBtn.style.display = "block";
        email.style.padding = "8px";
      } else {
        email.style.height = "0";
        email.style.opacity = "0";
        userName.style.margin = "0";
        logLabel.style.display = "none";
        regLabel.style.display = "block";
        logBtn.style.display = "block";
        regBtn.style.display = "none";

        setTimeout(function(){
          email.style.padding = "0";
        }, 100);
      }
    }
		//function for login
    function login(){
      var u = document.getElementById("userName").value;
    	var p = document.getElementById("passWord").value;

			//if u or p are not set the shake the box
    	if(u == "" || p == "" ) {
    		form.style.animation = 'shakeWhatYaGot 0.82s cubic-bezier(.36,.07,.19,.97) both';
    	} else {
				// else change btn state and POST to ajax
    		logBtn.innerHTML = 'Please Wait';
    		var ajax = ajaxObj("POST", "php/parse/login.php");
    		ajax.onreadystatechange = function() {
    			if(ajaxReturn(ajax) == true) {
    				if(ajax.responseText == "login_failed"){
							// if login fails then shake and change the btn state back
    					logBtn.innerHTML = "Login"
              form.style.animation = 'shakeWhatYaGot 0.5s';
      			}else {
							// if login sucsess then redirect
      				window.location = "home.php";
      			}
    		  }
    	  }
    	//send ajax values of u + p to login parse
    	ajax.send("u="+u+"&p="+p);
    	}
    }
  </script>
</body>
</html>
