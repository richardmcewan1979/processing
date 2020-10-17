// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
   float mass;

  Mover() {
    location = new PVector(random(width), random(height/2));
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(0.2,2);   
}
  
  void update() {
    /*defining accerlation is key:
    Recall: f=ma
    a=f/m
    when m=1
    a=f
    
    PVector mouse = new PVector(mouseX,mouseY);
    mouse.sub(location);
    mouse.setMag(0.02);
    acceleration = mouse; */
    
    velocity.add(acceleration);
    location.add(velocity);
   acceleration.mult(0.01);
    //if we want to cap the velocity
    //velocity.limit(5);
  }
  
  // Newton's 2nd law (the beginning). 
  void applyForce(PVector force){
      PVector f = PVector.div(force,mass);
     acceleration.add(f);
  
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48 * mass,48 * mass);
  }

  void checkEdges() {
    
    if (location.x > width-mass/2) {
      velocity.x *= -1;
      location.x = width-mass/2;
      
    } else if (location.x < mass/2) {
      velocity.x *= -1;
      location.x = mass/2;
    
    } else if (location.y > height-mass/2) {
      velocity.y *= -1;
      location.y = height-mass/2;
    
    } else if (location.y < mass/2) {
      velocity.y *= -1;
      location.y = 24;
    }

  }

}
