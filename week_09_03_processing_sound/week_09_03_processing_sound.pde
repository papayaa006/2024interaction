//week_09_03_processing_sound
//Sketch-Library-Manager 找sound可以找到相關函式庫
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound = new SoundFile(this, "In Game Music.mp3");
  //sound.play();
  sound.loop();
}
void draw(){

}
