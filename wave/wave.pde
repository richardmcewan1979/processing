//starting angle

float theta = 0.0;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  
  //Increment theta
  //try different values for 'angular velocity'
  theta +=0.02;
  
  noStroke();
  fill(0, 0, 255);
  
  float x = theta;
  //A simple way to draw a wave
  
  for (int i=0; i<=width; i++){
    //calc y from sin function and map
    float y = map(sin(x), -1, 1, 0, height);
    //draw ellipse
    ellipse(i*10, y, 16, 16);
    //Move along x-axis
    x +=0.2;
  }
}
