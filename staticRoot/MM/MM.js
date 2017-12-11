// Another drag and drop mechanism
/*var selectedElement = 0;
var currentX = 0;
var currentY = 0;
var currentMatrix = 0;

function selectedElement(evt) {
  selectedElement = evt.target;
  currentX = evt.clientX;
  currentY = evt.clientY;
  currentMatrix = selectedElement.getAttributeNS(null, "transform").slice(7,-1).split(' ');

  for (var i = 0; i < currentMatrix.length; i++) {
    currentMatrix[i] = parseFloat(currentMatrix[i]);
  }
  selectedElement.setAttributeNS(null, "onmousemove", "moveElement(evt)");
}

function moveElement(evt) {
  dx = evt.clientX - currentX;
  dy = evt.clientY - currentY;
  currentMatrix[4] += dx;
  currentMatrix[5] += dy;
  newMatrix = "matrix(" + currentMatrix.join(' ') + ")";

  selectedElement.setAttributeNS(null, "transform", newMatrix);
  currentX = evt.clientX;
  currentY = evt.clientY;
}

function deselectElement(evt) {
  if (selectedElement != 0) {
    selectedElement.removeAttributesNS(null, "onmousemove");
    selectedElement.removeAttributesNS(null, "onmouseout");
    selectedElement.removeAttributesNS(null, "onmouseup");
    selectedElement = 0;
  }
}

selectedElement.setAttributeNS(null, "onmouseout", "deselectElement(evt)");
selectedElement.setAttributeNS(null, "onmouseup", "deselectElement(evt)");*/

// This better work

var click=false; // flag to indicate when shape has been clicked
    var clickX, clickY; // stores cursor location upon first click
    var moveX=0, moveY=0; // keeps track of overall transformation
    var lastMoveX=0, lastMoveY=0; // stores previous transformation (move)
    function mouseDown(evt){
        evt.preventDefault(); // Needed for Firefox to allow dragging correctly
        click=true;
        clickX = evt.clientX;
        clickY = evt.clientY;
        evt.target.setAttribute("fill","green");
    }

    function move(evt){
        evt.preventDefault();
        if(click){
            moveX = lastMoveX + ( evt.clientX – clickX );
            moveY = lastMoveY + ( evt.clientY – clickY );

            evt.target.setAttribute("transform", "translate(" + moveX + "," + moveY + ")");
        }
    }

    function endMove(evt){
        click=false;
        lastMoveX = moveX;
        lastMoveY = moveY;
        evt.target.setAttribute("fill","gray");
    }
