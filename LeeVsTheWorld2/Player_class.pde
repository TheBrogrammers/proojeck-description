PImage Lee;
class Player {
  boolean gameover = false;
  boolean check1 = false;

  int gamemode = 0;
  float x;
  float y;
  float d;
  Player() {
    Lee=loadImage("LeeSportAsPacman.png");
    x=width/4;
    y=height/4;
    d=80;
  }
  void display() {
    noStroke();
    // fill(0);
    image(Lee, x, y);
  }
  void move() {
    if (BlackBox.isKeyDown(BlackBox.VK_NUMPAD4)) {
      x-=5;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_NUMPAD8)) {
      y-=5;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_NUMPAD5)) {
      y+=5;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_NUMPAD6)) {
      x+=5;
    }
  }
  void checkenemy1(Enemy1 e) {
    if (check1) {
      gamemode = 1;
    }
    if (dist(x, y, e.x-205, e.y-50)<(d/2+e.d/2)) {
      gameover = true;
    }
  }

  void checkenemy2 (Enemy2 e) {
    if (check1) {
      gamemode = 1;
    }
    if (dist(x, y, e.x-200, e.y-60)<(d/2+e.d/2)) {
      gameover = true;
    }
  }

  void checkenemy3 (Enemy3 e) {
    if (check1) {
      gamemode = 1;
    }
    if (dist(x, y, e.x-210, e.y-65)<(d/2+e.d/2)) {
      gameover = true;
    }
  }


  void endgame() {

    if (gameover) {
      fill(random(255), random(255), random(255));
      text("YOU GOT LEE!", 300, 250);
      x=250;
      y=250;
    }
  }
  
  void reset() {
   gameover = false;
    }
}

