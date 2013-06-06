PImage bg;
color c;
void setup() {
  bg = loadImage("Pacman.jpeg");
  size(bg.width, bg.height);
}
void draw() {
  background(0);
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x+y*bg.width;
      if (hue(bg.pixels[loc])>120 && hue(bg.pixels[loc])<200 && brightness(bg.pixels[loc])>50) {
        pixels[loc] = bg.pixels[loc];
      }
    }
  }
  updatePixels();
  if (checkPixel(mouseX, mouseY)) {
    c=color(255, 0, 0);
  }
  else {
    c=color(0, 0, 255);
  }
  fill(c);
  ellipse(mouseX, mouseY, 20, 20);
}

boolean checkPixel(int mx, int my) {
  loadPixels();

  int loc = mx+my*bg.width;
  if (hue(bg.pixels[loc])>120 && hue(bg.pixels[loc])<200 && brightness(bg.pixels[loc])>50) {
    updatePixels();   
    return true;
  } else {
    updatePixels();
    return false;
  }
}

