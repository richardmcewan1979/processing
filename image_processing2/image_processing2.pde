PImage img;

void setup(){
  size(350,525);
  img = loadImage("noplace2.jpg");
}

void draw(){
  loadPixels();
  img.loadPixels();
  
  for(int y=0; y < height; y++){
    for(int x=0; x < width; x++){
     int loc = x+y* width;
     float r = red(img.pixels[loc]);
     float g = green(img.pixels[loc]);
     float b = blue(img.pixels[loc]);    
    
    //image processing 
    //e.g. changing RGB values
    
    color d = color(r,g,b);
    color e = color(r,r,r);
    color f = color(r,g,g);
    color u = color(r,b,b);
    color h = color(b,g,b);
    color i = color(b,g,g);
    color j = color(b,g,r);
    color k = color(b,r,b);
    color l = color(b,r,g);
    color m = color(b,r,r);
    color n = color(g,g,b);
    color o = color(g,g,r);
    color p = color(g,r,g);
    color q = color(g,b,g);
    color v = color(g,b,b);
    color s = color(g,b,r);
    color t = color(g,r,b);
    
    
    
     //set the display pixel
     pixels[loc] = e;
     
     
     
    }
  }
  
 updatePixels();
}
