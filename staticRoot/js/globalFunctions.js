//init variables
var timer;
var scoreBar = document.getElementById("progressBarTop");

// Function progressivly counts up to a number and animates this onto the progress bar.
function countUpTo(from, to, elem){

  document.getElementById(elem).innerHTML = from + '%';
  scoreBar.style.width = 'calc('+ from + '% - 132px)';

  // if number has reached the destination clear the timeout and stop the animation
  if (from >= to){
    clearTimeout(timer);
  } else {
    //else continue
    from++;
    timer = setTimeout('countUpTo('+from+', '+to+', "'+elem+'")', 15);
  }
}
