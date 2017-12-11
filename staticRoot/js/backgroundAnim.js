var circles = [],
    canvas = document.getElementById("backAnimation"),
    context = canvas.getContext("2d"),

    opacity = 0.5,
    colours = ['rgba(255,89,94,' + opacity + ')', 'rgba(27,152,224,' + opacity + ')', 'rgba(138,201,38,' + opacity + ')'],
    minSize = 1,
    maxSize = 10,
    numCircles = 150,
    minSpeed = -4,
    maxSpeed = 2,
    expandState = true;

function buildCircleArray() {
  //Generate circles based on numCircles
  for (var i = 0; i < numCircles; i++){
    var colour = Math.floor(Math.random() * (colours.length - 1 + 1)) + 1,
        left = Math.floor(Math.random() * (canvas.width - 0 + 1)) + 0,
        top = Math.floor(Math.random() * (canvas.height - 0 + 1)) + 0,
        size = Math.floor(Math.random() * (maxSize - minSize + 1)) + minSize,
        leftSpeed = (Math.floor(Math.random() * (maxSize - minSize + 1)) + minSpeed)/10,
        topSpeed = (Math.floor(Math.random() * (maxSize - minSize + 1)) + minSpeed)/10,
        expandState = expandState;

    while(leftSpeed == 0 || topSpeed == 0){
      leftSpeed = (Math.floor(Math.random() * (maxSize - minSize + 1)) + minSpeed)/10,
      topSpeed = (Math.floor(Math.random() * (maxSize - minSize + 1)) + minSpeed)/10;
    }
    // Draw the circle
    var circle = { color:colour, left:left, top:top, size:size, leftSpeed:leftSpeed, topSpeed:topSpeed, expandState:expandState };
    // Add the circle to the array
    circles.push(circle);
  }
}

function build() {
  // For each circle do the following
  for(var h = 0; h < circles.length; h++){
    var currentCircle = circles[h];
    // Randomise colour
    context.fillStyle = colours[currentCircle.color-1];
    context.beginPath();

    //Calculate Left Pos
    if(currentCircle.left > canvas.width + currentCircle.size){
      //Outside Canvas Right
      currentCircle.left = 0-currentCircle.size;
      context.arc(currentCircle.left, currentCircle.top, currentCircle.size, 0, 2 * Math.PI, false);
    } else if(currentCircle.left < 0-currentCircle.size){
      //Outside Canvas Left
      currentCircle.left = canvas.width+currentCircle.size;
      context.arc(currentCircle.left, currentCircle.top, currentCircle.size, 0, 2 * Math.PI, false);
    } else {
      //Inside Canvas
      currentCircle.left = currentCircle.left+currentCircle.leftSpeed;
      context.arc(currentCircle.left, currentCircle.top, currentCircle.size, 0, 2 * Math.PI, false);
    }

    //Calculate Top pos
    if(currentCircle.top > canvas.height + currentCircle.size){
      //Outside Canvas Bottom
      currentCircle.top = 0-currentCircle.size;
      context.arc(currentCircle.left, currentCircle.top, currentCircle.size, 0, 2 * Math.PI, false);
    } else if (currentCircle.top < 0-currentCircle.size){
      //Outside Canvas Top
      currentCircle.top = canvas.height+currentCircle.size;
      context.arc(currentCircle.left, currentCircle.top, currentCircle.size, 0, 2 * Math.PI, false);
    } else {
      currentCircle.top = currentCircle.top+currentCircle.topSpeed;
      if(currentCircle.size != maxSize && currentCircle.size != minSize && currentCircle.expandState == false){
        currentCircle.size = currentCirclesize+0.1;
      } else if(currentCircle.size != maxSize && currentCircle.size != minSize && currentCircle.expandState == true){
        currentCircle.size = currentCirclesize-0.1;
      } else if(currentCircle.size == maxSize && currentCircle.expandState == true){
        currentCircle.expandState = false;
        currentCircle.size = currentCircle.size-0.1
      } else if(currentCircle.size == maxSize && currentCircle.expandState == false){
        currentCircle.expandState = true;
        currentCircle.size = currentCircle.size+0.1
      }
      // Draw the arc based on prior statements
      context.arc(currentCircle.left, currentCircle.top, currentCircle.size, 0, 2 * Math.PI, false);
    }
    // Close the path and set fill
    context.closePath();
    context.fill();
    context.ellipse;
  }
}

var xVal = 0;

// Calling animation at 60 frames a second
window.requestAnimFrame = (function (callback) {
  return window.requestAnimationFrame ||
        window.webkitRequestAnimationFrame ||
        window.mozRequestAnimationFrame ||
        window.oRequestAnimationFrame ||
        window.msRequestAnimationFrame ||
        function (callback) {
          window.setTimeout(callback, 1000/60);
        };
})();

// set context and animate the screen
function animate(){
  var canvas = document.getElementById("backAnimation"),
      context = canvas.getContext("2d");

  context.clearRect(0, 0, canvas.width, canvas.height);

  xVal++;
  build();

  requestAnimFrame(function (){
    animate();
  })
}

// onLoad set the canvas dimensions
window.onload = function() {
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;

  buildCircleArray();
  animate();
}

// In case the user resizes the window adjust the canvas parameters
window.onresize = function() {
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;

  animate();
}
