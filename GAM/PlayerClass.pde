Player play;
void setup(){
  size(1000,1000);
  play = new Player();
}
void draw(){
  background(255);
  play.display();
  play.move();
}
class Player{
  float x;
  float y;
  float d;
  Player() {
    x=0;
    y=0;
    d=100;
  }
  void display() {
    noStroke();
    fill(0);
    ellipse(x, y, d, d);
  }
 void move() {
    if(keyPressed){
      if(key=='6'){
        x+=5;
      }
      if(key=='4'){
        x-=5;
      }
      if(key=='2'){
        y+=5;
      }
      if(key=='8'){
        y-=5;
      }
      if(key == '1'){
        x-=5;
        y+=5;
      }
      if(key == '3'){
        x+=5;
        y+=5;
      }
      if(key == '7'){
        x-=5;
        y-=5;
      }
      if(key == '9'){
        x+=5;
        y-=5;
      }
    }
  }
}
