<?php

  $tip = array();
  $answerCode = "var answer = {";
  $question = "var question = {";
  $answer = "var answerText = {";
  $questionsHTML = "";

  // get the url encoded variable of num and set as num of questions
  if(isset($_GET['num'])){
    $numQuestions = $_GET['num'];
  } else {
    //if there is no url variable set default to 5
    $numQuestions = 5;
  }

  // get difficulty from url
  $difficulty = $_GET['diff'];

  include_once 'php/conn.php';
  //Populate the levels section
  $sql = "SELECT * FROM soundStudyQuestion WHERE difficulty = '$difficulty' ORDER BY RAND() LIMIT $numQuestions";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      // output data of each row
      $Qno = 1;
      while($row = $result->fetch_assoc()) {
      //Store the question vars
      $Qname = $row["question"];
      $Qid = $row["questionID"];
      $answerID = $row["answerID"];
      //append to tip array
      array_push($tip, $row["tip"]);

      $sqlAnswer = "SELECT * FROM choiceRead INNER JOIN soundStudyQuestion ON choiceRead.choiceID = soundStudyQuestion.answerID
WHERE soundStudyQuestion.questionID = '$Qid'";
      $resultAnswer = $conn ->query($sqlAnswer);
      if($resultAnswer->num_rows > 0){
        while($row = $resultAnswer->fetch_assoc()){
          $answer .= $Qid . ": \"" . $row["choice"] . "\", ";
        }
      }

      $answerCode .= $Qid . ": \"" . $answerID . "\", ";
      $question .= $Qid . ": \"" . $Qname . "\", ";

      $sqlAnswer = "SELECT * FROM choiceRead INNER JOIN soundStudyQuestion ON choiceRead.choiceID = soundStudyQuestion.answerID
WHERE soundStudyQuestion.questionID = '$Qid'";

      //Select the answers/choices
      $sqlChoice = "SELECT choiceID, choice FROM choiceRead WHERE relatedQuestion = '$Qid' ORDER BY RAND() LIMIT 4";
      $resultChoice = $conn->query($sqlChoice);

      if($resultChoice->num_rows > 0) {
        $choiceNo = 0;
        $choiceHTML ="";
        while($row = $resultChoice->fetch_assoc()){
          $choiceHTML .= "<li id=\"" . $row["choiceID"] ."\" onClick=\"checkResponse(". $Qid . ", '" . $row["choiceID"] . "', '" . $row["choiceID"] . "')\"><p id=\"" . $row["choiceID"] . "\"><span>" . ++$choiceNo . ": </span>" . $row["choice"] . "</p></li>";
        }
      }
      //Complie HTML
      $questionsHTML .= "<section class=\"quizText\" id=\"" . $Qno++ . "\"><h1>" . $Qname . "</h1><ul>"  . $choiceHTML . "</ul></section>";
    }

    $conn->close();

    $answer = substr_replace($answer, "};", -2, 2);
    $answerCode = substr_replace($answerCode, "};", -2, 2);
    $question = substr_replace($question, "};", -2, 2);
  }

?>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Maestro - Sound Study Level 1</title>
  <meta name="description" content="Maestro">
  <meta name="author" content="Maestro">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/css/main.css">
</head>
<body onload="init()">
  <input type="checkbox" id="menuToggle">
  <div id="pageWrap">
    <label for="menuToggle" id="menu"><h3>☰</h3></label>
    <div id="mainWindow">
      <header>
        <div id="blockElement"></div>
        <h1 id="qNum">Question 1</h1>
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
      <main id="main">
        <?php echo $questionsHTML; ?>
      </main>
      <footer>
        <img src="asset/mrMaestro/staticIdle.gif" id="maestroImage" alt="Mr Maestro"/>
        <h3>100%</h3>
        <div class="progressBarBack"></div>
        <div class="progressBarTop" id="progressBarTop" style="width = 0;"><p id="progressCounter">0%</p></div>
      </footer>
    </div>
    <nav id="navContent">
      <ul>
        <li><h3>Menu</h3></li>
        <li><h3>Settings</h3></li>
        <li><h3>About</h3></li>
        <li><a href="#" onclick="location.reload();" title="Restart"><h3>Restart</h3></a></li>
        <li><a href="home.php" title="Quit"><h3>Quit</h3></a></li>
        <li><a href="php/parse/logout.php" title="Logout"><h3>Quit & Logout</h3></a></li>
      </ul>
      <p class="infoText">Maestro Version 1 Build 0.01</p>
    </nav>
  </div>
  <script type="text/javascript" src="js/ajax.js"></script>
  <script type="text/javascript" src="js/globalFunctions.js"></script>
  <script type="text/javascript">

    // init all variables
    var sessionScore;
    var currentQuestion = 1;
    var playerID;
    var timer;
    var resultTimer;
    var numQuestions = <?php echo $numQuestions; ?>;
    var resultHTMLItem = '';

    // print php calcualted varibles
    <?php echo $question; ?>
    <?php echo $answer;  ?>
    <?php echo $answerCode;  ?>

    // count up function for results is diffrent for changing colour based on value
    function resultCountup(from, to, elem) {
      document.getElementById(elem).innerHTML = from + '%';
      document.getElementById("resultBar").style.width = from + '%';

      if(from >= 70){
        document.getElementById("resultBar").style.background = '#8AC926';
      } else if (from < 70 && from > 40){
        document.getElementById("resultBar").style.background = '#1B98E0';
      } else {
        document.getElementById("resultBar").style.background = '#FF595E';
      }
      // otherwise works the same as other countUpTo func
      if (from >= to){
        clearTimeout(resultTimer);
      } else {
        from++;
        resutTimer = setTimeout('resultCountup('+from+', '+to+', "'+elem+'")', 15);
      }
    }

    //change and display the q & a on the answer screen based on qid
    function displayQandA(qid){
      document.getElementById("questionAnswerText").innerHTML = "Q: " + question[qid] + "<br>A: " + answerText[qid] + "";
    }

    //toggle question that is displayed would like to have animated this
    function displayQuestion(n) {
      for (var i = 1; i <= numQuestions; i++) {
        if (i == n){
          document.getElementById(i).style.display = "block";
          document.getElementById("qNum").innerHTML = "Question " + i;
          console.log(i);
        } else{
          document.getElementById(i).style.display = "none";
          console.log(i);
        }
      }
    }

    // this returns the results screen
    function displayResult(){
      document.getElementById(numQuestions).style.display = "none";
      document.getElementById("qNum").innerHTML = "Results";
      var displayScore = sessionScore/100;
      var resultHTML = '';
      resultHTML = "<section id=\"quizResult\"><h1>How did you do?</h1><div id=\"resultContainer\"><div id=\"resultCont\"><p id=\"result\">You Scored:<br><span>" + displayScore + "/" + numQuestions +"</span></p></div><div id=\"questionSelector\"><ul>" + resultHTMLItem + "</ul></div></div><div id=\"questionDisplay\"><p id=\"questionAnswerText\">Select one of the above questions to see the correct answer<br></p></div></section><div id=\"resultBottomContainer\"><div id=\"progressCont\"><div class=\"progressBarBack\"></div><div style=\"width: 0%; transition: background 1s ease;\" class=\"progressBarTop\" id=\"resultBar\"><p id=\"resultBarCounter\">0%</p></div></div><a href=\"#\" onClick=\"storeResult()\" title=\"Exit\"><button id=\"exitBtn\">Finish</button></a></div>";

      var from = 0;
      var to = displayScore*10;

      document.getElementById("main").innerHTML = resultHTML;

      resultCountup(from, to, "resultBarCounter");
    }

    // this sets the animation of a card to flash
    function flashCard(type, elem){
      element = document.getElementById(elem);
      element.style.animation = 'flashCard'+type+' 4s 1 forwards step-start';
    }

    // initlaise all of the following, create all object for win and loose sounds
    function init() {
      sessionScore = 0;
      scoreBar.style.width = "calc(0% - 132px)";
      displayQuestion(currentQuestion);

      win = new Audio();
      loose = new Audio();

      win.src = "asset/theme/win.wav";
      loose.src = "asset/theme/loose.wav";

      win.loop = false;
      loop.loop = false;

    }

    // check the user selection
    function checkResponse(questionID, answerCode, Qno){
        if(answerCode == answer[questionID]){
          // if correct
          flashCard("Win", Qno);
          win.play();
          resultHTMLItem = resultHTMLItem + "<li style=\"background: #8AC926;\" id=\"result" + currentQuestion + "\" onClick=\"displayQandA(" + questionID +")\">" + currentQuestion + "</li>";
          sessionScore = sessionScore + 100;
        } else {
          // if incorrect
          flashCard("Loose", Qno);
          loose.play();
          resultHTMLItem = resultHTMLItem + "<li style=\"background: #FF595E;\" id=\"result" + currentQuestion + "\" onClick=\"displayQandA(" + questionID + ")\">" + currentQuestion + "</li>";

        }

        // set the to and from values for countUpTo
        var to = (currentQuestion*10);
        var from = (100/numQuestions)*(currentQuestion - 1);

        setTimeout(function(){
          if(currentQuestion != numQuestions){
            // are there more questions?
            countUpTo(from, to, "progressCounter");
            displayQuestion(++currentQuestion);
          } else {
            // answered all questions
            countUpTo(from, to, "progressCounter");
            displayResult();
          }
        }, 1500);
    }

    // function stores the result of the current games session
    function storeResult(){
      exitBtn = document.getElementById('exitBtn');
      if(sessionScore == "") {
    		location.reload();
    	} else {
    		var ajax = ajaxObj("POST", "php/parse/logScore.php");
    		ajax.onreadystatechange = function() {
    			if(ajaxReturn(ajax) == true) {
    				if(ajax.responseText != "score_updated"){
              exitBtn.innerHTML = ajax.responseText;
      			} else {
              window.location = "home.php";
      			}
    		  }
    	  }
    	//send ajax value of score
    	ajax.send("score="+sessionScore);
    	}
    }
    /*
    this was the basis that i worked on when creating the series of events and functions that
    would run and make this game logic work

    Initalise game()
      set score to 0
      set progress to 0
      displayQuestion(n)

    Check response(questionID, choiceID)
      compare selection with stored answer code
      if correct
        flash card green
        increase score
        wasLastQuestion()
        displayQuestion(n)
      if wrong
        flash card red
        wasLastQuestion()
        displayQuestion(n)

      displayQuestion(n)
        set top value to 100*n%
        set progress = (100/numOfQuestions)*n

      gameEnd()
        show total score
        if (score > 50% < 70%)
          maestroTalk(Win)
        else if (score > 70% < 100%)
          maestroTalk(bigWin)
        else if (score == 100%)
          maestroTalk(biggestWin)
        else
          maestroTalk(loose)
        store results in db with Ajax
    */
  </script>
</body>
</html>
