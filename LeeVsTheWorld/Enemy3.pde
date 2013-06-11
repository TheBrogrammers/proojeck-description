class Enemy3 {
  float x;
  float y;
  float d;
  Enemy3() {
    x=width/2;
    y=height-50;
    d=100;
  }
  void display() {
    noStroke();
    fill(0,0,255);
    ellipse(x, y, d, d);
  }
  void move() {
    if (BlackBox.isKeyDown(BlackBox.VK_J)) {
      x-=2;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_I)) {
      y-=2;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_K)) {
      y+=2;
    }
    if (BlackBox.isKeyDown(BlackBox.VK_L)) {
      x+=2;
    }
  }
}

