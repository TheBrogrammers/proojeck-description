PImage Josh;
class Enemy3 {
  float x;
  float y;
  float d;
  Enemy3() {
    Josh=loadImage ("JoshCircle.png");
    x=450;
    y=height-100;
    d=75;
  }
  void display() {
    noStroke();
    //fill(0,0,255);
    // scale(.6);
    image(Josh, x, y);
  }
  void move() {
    if (BlackBox.isKeyDown(BlackBox.VK_J)) {
      x-=2.6;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_I)) {
      y-=2.6;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_K)) {
      y+=2.6;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_L)) {
      x+=2.6;
    }
  }
}

