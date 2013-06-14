PImage Francis;
class Enemy1{
  float x;
  float y;
  float d;
  Enemy1() {
    Francis=loadImage("Francis.png");
    x=-175;
    y=0-50;
    d=100;
  }
  void display() {
    noStroke();
    //fill(255,0,0);
    image(Francis,x,y);
  }
  void move() {
   
      if(BlackBox.isKeyDown(BlackBox.VK_A)){
        x-=2;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_W)){
       y-=2;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_S)){
      y+=2;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_D)){
      x+=2;
      }
    }
  }

