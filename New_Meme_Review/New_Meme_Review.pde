// Global Variables
int ballX, ballStartX;
int ballY, ballStartY;
int ballDiameter;
int score [] = new int [2];
float ballMoveX = 1.0;
float ballMoveY = 1.0;

void setup() {
  size(500, 500);
  ballStartX = width/2;
  ballX = ballStartX;
  ballStartY = height/2;
  ballY = ballStartY;
  ballDiameter = width/9;
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

//this here be the score stuff

if (ballX == 0) {
score[1] += 1;
println ("Score Board is: " + score[0] + " Player 1" + "    " + score[1] + " Player 2");
}
if (ballX == width) {
score[0] += 1;
println ("Score Board is: " + score[0] + " Player 1" + "    " + score[1] + " Player 2");
}
 
  //ellipse(250, 250, 25, 25);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  print ("ballX: " + ballX);
  println (", ballY: " + ballY);
  
  
  rect(10, 220, 20, 50);
  rect(470, 220, 20, 50);
}
