class Player{
  boolean gameover = false;
  boolean check1 = false;
  boolean check2 = false;
  boolean check3 = false;
  int gamemode = 0;
  float x;
  float y;
  float d;
  Player() {
    x=width/2;
    y=height/2;
    d=100;
  }
  void display() {
    noStroke();
    fill(0);
    ellipse(x, y, d, d);
  }
  void move() {
        if(BlackBox.isKeyDown(BlackBox.VK_NUMPAD4)){
        x-=5;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_NUMPAD8)){
       y-=5;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_NUMPAD5)){
      y+=5;
      }
      if(BlackBox.isKeyDown(BlackBox.VK_NUMPAD6)){
      x+=5;
      }
    }
  void checkenemy1(Enemy1 e){
    if(check1){
      gamemode = 1;
    }
    if(dist(x,y,e.x,e.y)<(d/2+e.d/2)){
      check1 = true;
    }
  }
  
  void checkenemy2 (Enemy2 e){
    if(check1){
      gamemode = 1;
    }
     if(dist(x,y,e.x,e.y)<(d/2+e.d/2)){
      check1 = true;
    }
  }
  
  void checkenemy3 (Enemy3 e){
    if(check1){
      gamemode = 1;
    }
     if(dist(x,y,e.x,e.y)<(d/2+e.d/2)){
      check1 = true;
    }
  }

  
  void endgame() {
      if(gamemode == 1){
        text("YOU GOT LEE!" , width/2, height/2);
      }
  }
  }

