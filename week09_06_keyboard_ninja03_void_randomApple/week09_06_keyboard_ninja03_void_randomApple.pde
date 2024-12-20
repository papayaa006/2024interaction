//week09_06_keyboard_ninja03_void_randomApple
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
}
float appleX = 100, appleY = 500, appleVX = 5, appleVY = -30;
char appleKey;
void randomApple(){
  appleX = random(100,500);
  appleY = 500;
  if(appleX<300)  appleVX = random(0,8);
  else appleVX = random(-8,0);
  appleVY = random(-30, -25);
}
void draw() {
  background(board);
  fill(255, 0, 0);
  ellipse(appleX, appleY, 80, 80);
  appleX += appleVX;
  appleY += appleVY;
  appleVY += 0.98;
  if (appleX>600 || appleX<0 || appleY>550) {
    randomApple();
  }
}
