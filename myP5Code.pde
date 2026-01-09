//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var UFOX=26
var BeamBottom=74
var BeamMove=2
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  //ufo
 fill(180, 181, 179) 
ellipse(UFOX,67,50,20);
//beam
fill(141, 245, 66);
quad(291,73,309,73,371,BeamBottom,238,BeamBottom);

textSize(40);
text("🐄",270,360);

UFOX+=2
if(UFOX > 300){
UFOX = 300;
BeamBottom+=BeamMove
};
if(BeamBottom > 400){
    BeamMove-=-2
    BeamBottom+=BeamMove
};
  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
