// Global Variables
int ballX, ballStartX;
int ballY, ballStartY;
int ballDiameter;
float ballMoveX = 1.0;
float ballMoveY = 1.0;

void setup() {
  size(500, 500);
  ballStartX = width/2;
  ballX = ballStartX;
  ballStartY = height/2;
  ballY = ballStartY;
  ballDiameter = width/40;
}

void draw() {
  background(#070000);
  if (ballX ==width | ballX == 0 | ballY == height | ballY == 0) {
    if (ballX == width | ballX == 0) {
      ballMoveX = ballMoveY * (-1);
    }
    if (ballY == height - ballDiameter/2 | ballY == 0 + ballDiameter/2) {
      ballMoveY = ballMoveY * (-1);
    }
  }
  if (ballX <= width && ballX >= 0) { 
    ballX += ballMoveY;
  }
  if  (ballY <= height && ballY >= 0){
    ballY += ballMoveY;
}
 
  //ellipse(250, 250, 25, 25);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  print ("ballX: " + ballX);
  println (", ballY: " + ballY);
  
  
  rect(10, 220, 20, 50);
  rect(470, 220, 20, 50);
}
