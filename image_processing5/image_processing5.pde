PImage source; //Source image
PImage destination; //Destination image


color[] colors = new color [16];
int option=0; //this is index for array


void setup(){
  size(560, 840);
  source = loadImage("smallnoplace.jpg");
  destination = createImage(source.width, source.height, RGB); 

}

void draw(){
  source.loadPixels();
  destination.loadPixels();
  
  for(int x=0; x < source.width; x++){
    for(int y=0; y < source.height; y++){
     int loc = x+y* source.width;
     float r = red(source.pixels[loc]);
     float g = green(source.pixels[loc]);
     float b = blue(source.pixels[loc]); 
     
    
    
    colors[0] = color(g,r,b);
    colors[6] = color(r, r, g);
    colors[2] = color(r,g,g);
    colors[8] = color(r,b,b);
    colors[10] = color(b,g,b);
    colors[3] = color(b,g,g);
    colors[11] = color(b,g,r);
    colors[15] = color(b,r,b);
    colors[14] = color(b,r,g);
    colors[4] = color(b,r,r);
    colors[1] = color(g,g,b);
    colors[5] = color(g,g,r);
    colors[12] = color(g,r,g);
    colors[13] = color(g,b,g);
    colors[9] = color(g,b,b);
    colors[7]= color(g,b,r);
    //colors[0] = color(r, r, g); 
    //image processing 
    //e.g. changing RGB values
    
   
    destination.pixels[loc] = colors[option];
     //set the display pixel
     //pixels[loc] = colors[option];
     
     
   
     


 
    }
    
  }
  
destination.updatePixels();
destination.save("dorothy"+option+".jpg");
 if (option < 15){
   option +=1; 
 }
 else if (option == 16){
 exit();
 }
 
}
