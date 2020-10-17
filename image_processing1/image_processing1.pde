PImage img;

void setup(){
  size(350,525);
  img = loadImage("noplace2.jpg");
}

void draw(){
  background(0);
  tint(0,150,255);
  image(img, 0,0);
}
