// Global Variables
int ballX, ballPositionX;
int ballY, ballPositionY;

void setup() {
  size(500, 500);
  ballPositionX = width/2;
}

void draw() {
  background(#070000);
  if (ballPositionX < 250) { 
    ballX = ballX +1;
  }
  
  
  //ellipse(250, 250, 25, 25);
  ellipse(ballPositionX, height/2+ballX, width/30, width/60);
  rect(10, 220, 20, 50);
  rect(470, 220, 20, 50);
}
