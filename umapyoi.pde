import processing.sound.*;
SoundFile umaMusic;

int i=0;

PImage [] umapyoi = new PImage[4142];

void setup() {
  size(1280,720);
  frameRate(30);
  background(0);
  for (i=0; i<umapyoi.length; i++) {
    umapyoi[i] = loadImage("うまぴょい伝説/"+(i+1)+".jpg");
    println(i);
  }
  i=0;
  umaMusic = new SoundFile(this, "うまぴょい伝説.mp3");
  umaMusic.play();
}

void draw() {
  image(umapyoi[i], 0, 0);
  println(i);
  i++;
  if (i==4142) {
    noLoop();// i=0; とするとまた1枚めから
  }
}
