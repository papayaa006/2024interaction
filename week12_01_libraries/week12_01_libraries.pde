//week12_01_libraries
import  processing.sound.*; 
SoundFile sound1, sound2;
int playing = 1;
void setup(){
  size(640,360);
  background(255);
  sound1 = new SoundFile(this, "Intro Song_Final.mp3");
  sound2 = new SoundFile(this, "In Game Music.mp3");
}
void draw(){
  if(sound1.isPlaying()){//音樂1有沒有在撥放
    playing = 1;
  }else if(sound2.isPlaying()){//音樂2有沒有在撥放
    playing = 2;
  }else{
    if(playing==1)  sound2.play();//換另外一首
    else sound1.play();
  }
}
