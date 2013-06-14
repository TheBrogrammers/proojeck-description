class Title {

  boolean twoplay = false;
  boolean threeplay = false;
  boolean fourplay = false;
  boolean title = true;
  boolean game = false;
  int stxt;
  int mtxt;
  int ltxt;


  Title() {
    stxt = 20;
    mtxt = 25;
    ltxt = 60;
  }

  public void display() {

    if (game) {
      play.display();
      play.move();
      play.endgame();  
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

      fill(random(255), 0, random(255));
      textSize(ltxt);
      text("Lee Sport vs. The World", 200, 100);

      fill(245, 25, 209);
      textSize(mtxt);
      text("How many Players?:", 390, 300);

      textSize(stxt);
      fill(230, 8, 250);
      text("2 for the show", 435, 350);
      noFill();


      fill(149, 5, 160);
      text("3 to get ready", 435, 400);
      noFill();


      fill(88, 2, 98);
      text("4 to go", 460, 450);
      noFill();


      textSize(ltxt);
      fill(random(20), random(173), random(252));
      stroke(240, 108, 255);
      strokeWeight(3);
      text("PLAY", 435, 525);
    }
  }

  void buttons () {
    if ((mouseX >= 430) && (mouseX <= 571) && (mouseY >= 334) && (mouseY <= 351) && mousePressed) {
      twoplay=true;
      threeplay=false;
      fourplay=false;
    }
    if ((mouseX >= 430) && (mouseX <= 566) && (mouseY >= 383) && (mouseY <= 401) && mousePressed) {
      twoplay=true;
      threeplay=true;
      fourplay=false;
    }
    if ((mouseX >= 457) && (mouseX <= 532) && (mouseY >= 434) && (mouseY <= 448) && mousePressed) {
      twoplay=true;
      threeplay=true;
      fourplay=true;
    }
    if ((mouseX >= 437) && (mouseX <= 554) && (mouseY >= 486) && (mouseY <= 529) && mousePressed) {
      game=true;
    }
  }
}

