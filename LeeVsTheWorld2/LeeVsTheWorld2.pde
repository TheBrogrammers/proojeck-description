//minim
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Player play;
Enemy1 chase1;
Enemy2 chase2;
Enemy3 chase3;
Title tscreen;

boolean reset;

void setup() {
  size(1000, 800);
  play = new Player();
  chase1 = new Enemy1();
  chase2 = new Enemy2();
  chase3 = new Enemy3();
  tscreen = new Title();
  BlackBox.init(this);
  minim= new Minim (this);

  music = minim.loadFile("titlemusic.mp3");
}
Minim minim;
AudioPlayer music;

void draw() {
  background(59, 156, 193);

  if(reset){
    play.reset();
  }
  
  if(key == 'r'){
    reset=!reset;
  }

  music.play();
  tscreen.display();
  tscreen.buttons();
  println(mouseX);
  println(mouseY);
}

void stop() {
  music.close();
  minim.stop();
  super.stop();
}

