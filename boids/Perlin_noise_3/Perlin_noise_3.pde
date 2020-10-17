//Noise 'time' variables

float xtime = 0.0;
float ytime = 100.0;

float increment = 0.01;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  
  float x = noise(xtime)*width;
  float y = noise(ytime)*height;
  xtime += increment;
  ytime += increment;
  
  //draw the ellipse with location determined by Perlin noise 
  fill(0,0,255);
  ellipse(x, y, 20,20);
  
}
