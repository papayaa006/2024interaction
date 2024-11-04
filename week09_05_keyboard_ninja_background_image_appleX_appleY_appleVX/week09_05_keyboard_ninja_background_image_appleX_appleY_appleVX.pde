//week09_05_keyboard_ninja_background_image_appleX_appleY_appleVX_appleVY
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
}
float appleX = 100, appleY = 500, appleVX = 5, appleVY = -30;
void draw() {
  background(board);
  fill(255, 0, 0);
  ellipse(appleX, appleY, 80, 80);
  appleX += appleVX;
  appleY += appleVY;
  appleVY += 0.98;
  if (appleX>600) {
    appleX = 100;
    appleY = 500;
    appleVX = 5;
    appleVY = -30;
  }
}
