int maxImages = 4;
int imageIndex = 0;
PImage[] images = new PImage[maxImages];

void setup(){
  size(622,1280);
  for(int i =0; i < images.length; i++){
    images[i] = loadImage("pic"+i+".jpg");
  }
}


void draw(){
  background(0);
  image(images[imageIndex],0,0,width, height);
}

void mousePressed(){
imageIndex = (imageIndex + 1) % images.length;
}
