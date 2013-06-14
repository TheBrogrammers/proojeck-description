PImage Francis;
class Enemy1{
  float x;
  float y;
  float d;
  Enemy1() {
    Francis=loadImage("FrancisCircle.png");
    x=-0;
    y=0;
    d=60;
  }
  void display() {
    noStroke();
    //fill(255,0,0);
    image(Francis,x,y);
  }
  void move() {
   
      if(BlackBox.isKeyDown(BlackBox.VK_A)){
        x-=2.6;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_W)){
       y-=2.6;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_S)){
      y+=2.6;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_D)){
      x+=2.6;
      }
    }
  }

