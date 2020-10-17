
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover[] movers;

void setup() {
  size(640,360);
  movers = new Mover[3];
  for (int i = 0; i < movers.length; i++){
    movers[i] = new Mover();
  }
}

void draw() {
  background(255);
  
  for (Mover m : movers) {
  /*put forces here*/
  
  PVector gravity = new PVector(0, 0.2);
  gravity.mult(m.mass);
  m.applyForce(gravity);
  if (mousePressed){
    PVector wind = new PVector(0.2,0 );
  m.applyForce(wind);
  }
  //let's apply friction.
 
 if (keyPressed){
  PVector friction = m.velocity.get();
  friction.normalize();
  float c = -0.09;
  friction.mult(c);
  m.applyForce(friction);
 }
  
  
  m.update();
  m.display();
  m.checkEdges();
  }
}
