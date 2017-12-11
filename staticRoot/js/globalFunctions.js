var timer;
var scoreBar = document.getElementById("progressBarTop");

function countUpTo(from, to, elem){

  document.getElementById(elem).innerHTML = from + '%';
  scoreBar.style.width = 'calc('+ from + '% - 132px)';

  if (from >= to){
    clearTimeout(timer);
  } else {
    from++;
    timer = setTimeout('countUpTo('+from+', '+to+', "'+elem+'")', 15);
  }
}
