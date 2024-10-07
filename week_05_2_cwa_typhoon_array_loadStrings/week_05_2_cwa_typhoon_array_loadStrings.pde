//week_05_2_cwa_typhoon_array_loadStrings
int N = 299;//有299張圖
PImage [] imgs = new PImage[299];
void setup() {
  size(800, 800);
  String [] filenames = loadStrings("list.txt");
  for (int i=0; i<N; i++) {//把每一張圖都讀進來
    imgs[i] = loadImage(filenames[i]);
  }
}
void draw() {
  int i = frameCount%N;
  background(imgs[i]);
}
