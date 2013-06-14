PImage Kevin;
class Enemy2 {
  float x;
  float y;
  float d;
  Enemy2() {
    Kevin=loadImage("KevinCircle.png");
    x=925;
    y=0;
    d=75;
  }
  void display() {
    noStroke();
    //fill(0,255,0);
    image(Kevin,x,y);
  }
  void move() {
    if (BlackBox.isKeyDown(BlackBox.VK_F)) {
      x-=2.6;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_T)) {
      y-=2.6;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_G)) {
      y+=2.6;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_H)) {
      x+=2.6;
    }
  }
}

