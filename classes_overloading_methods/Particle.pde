class Particle {

  float x, y;
  float r;
  float q, t;
  
  //3 args
  Particle(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
  }
  
  //no args
  Particle() {
    x = random(width);
    y = random(height);
    r = random(20, 40); 
  }
  
  //two args
  Particle(float tempT, float tempQ) {
  x = random(width);
  y = random(height);
  t = tempT;
  q = tempQ;
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, r*2, r*2);
  }
  
  void display2() {
    stroke(2);
    fill(125);
    ellipse(x, y, q, t);
  
  }
}
