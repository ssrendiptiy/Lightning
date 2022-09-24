int startX = 90;
int startY = 205;
int endX = 90;
int endY = 205;

void setup(){
  background(#000000);
  strokeWeight(5);
  size(600,400);
}

void draw(){
  //night screen
  fill(#000000);
  rect(-100,0,1000,700);
  //wand
  stroke(#4D2500);
  fill(#964B00); 
  rect(5,200,70,10);
  //lightning
  stroke(#FFFFFF);
  while(endX <= 600){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19)-9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    //flash
    stroke(#EFF798);
    fill(#FFFFFF);
    ellipse(80,205,40,40);
  }
}

void mousePressed(){
  startX = 90;
  startY = 205;
  endX = 90;
  endY = 205;
}
