//week14_08_big_cursor_imageMode_image_imageMode
PImage imgBigCute, imgBigKitty, imgCursor;
void setup(){
  size(500,500);
  imgBigCute = loadImage("bigcute.png");
  imgBigKitty = loadImage("bigkitty.png");
  imgCursor = imgBigKitty;
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER);
  image(imgCursor, mouseX, mouseY);
  imageMode(CENTER);
  if(frameCount%120==0)  imgCursor = imgBigCute;
  if(frameCount%120==60)  imgCursor = imgBigKitty;  
}
