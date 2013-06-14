//minim
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;


boolean mainmusic = false;
boolean twoplay = false;
boolean threeplay = false;
boolean fourplay = false;
boolean title = true;
boolean titlemusic;
boolean game = false;
boolean gamemusic=false;


Player play;
Enemy1 chase1;
Enemy2 chase2;
Enemy3 chase3;

void setup() {
  size(1000, 800);
  play = new Player();
  chase1 = new Enemy1();
  chase2 = new Enemy2();
  chase3 = new Enemy3();
  BlackBox.init(this);
  minim= new Minim (this);

  music= minim.loadFile("maintheme.mp3");

  music = minim.loadFile("titlemusic.mp3");
}
Minim minim;
AudioPlayer music;

void draw() {
  background(59, 156, 193);



  music.play();


  if (game) {
    play.display();
    play.move();
    play.endgame();  
    gamemusic=true;
    titlemusic=false;
    //mainmusic=true;
    title=false;
  }





  if (threeplay) { 
    chase1.display();
    chase1.move();
    play.checkenemy1(chase1);
  } 

  if (fourplay) { 
    chase2.display();
    chase2.move();
    play.checkenemy2(chase2);
  }

  if (twoplay) {
    chase3.display();
    chase3.move();
    play.checkenemy3(chase3);
  }





  if (title) {

    gamemusic=false;
    titlemusic=true;


    fill(random(255), 0, random(255));
    textSize(60);
    text("Lee Sport vs. The World", 200, 100);

    fill(245, 25, 209);
    textSize(25);
    text("How many Players?:", 390, 300);

    textSize(20);
    fill(230, 8, 250);
    text("2 for the show", 435, 350);
    noFill();


    fill(149, 5, 160);
    text("3 to get ready", 435, 400);
    noFill();


    fill(88, 2, 98);
    text("4 to go", 460, 450);
    noFill();


    textSize(50);
    fill(random(20), random(173), random(252));
    stroke(240, 108, 255);
    strokeWeight(3);
    text("PLAY", 435, 525);
  }


  

 println(mouseX);
  println(mouseY);
}

void stop() {
  music.close();
  minim.stop();
  super.stop();
}

void mousePressed() {
  if ((mouseX >= 430) && (mouseX <= 571) && (mouseY >= 334) && (mouseY <= 351)) {
    twoplay=true;
    threeplay=false;
    fourplay=false;
  }
  if ((mouseX >= 430) && (mouseX <= 566) && (mouseY >= 383) && (mouseY <= 401)) {
    twoplay=true;
    threeplay=true;
    fourplay=false;
  }
  if ((mouseX >= 457) && (mouseX <= 532) && (mouseY >= 434) && (mouseY <= 448)) {
    twoplay=true;
    threeplay=true;
    fourplay=true;
  }
  if ((mouseX >= 437) && (mouseX <= 554) && (mouseY >= 486) && (mouseY <= 529)) {
    game=true;
  }
 
}

