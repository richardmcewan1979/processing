float theta;

void setup(){
  size(200,200);
}

void draw(){
  background(255);
  
  float x = map(sin(theta), -1, 1, 0, 200);
  
  //with each cycle.
  //increment theta
  theta += 0.05;
  
  //Draw the ellipse at the
  //value produced by sine
  fill(0);
  stroke(0);
  line(width/2, 0, x, height/2);
  ellipse(x, height/2, 16, 16);
}
