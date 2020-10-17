class Planet{
  
  //initialise variables
  
  float theta; 
  float diameter;
  float distance;
  float orbitspeed; 
  
  Planet(float distance_, float diameter_){
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01, 0.03); 
  }

  void update(){
    //increment the angle to rotate
    theta += orbitspeed; 
  }
  
  void display(){
    pushMatrix();
    //rotate orbit
    rotate(theta);
    translate(distance, 0);
    stroke(0);
    fill(175);
    ellipse(0,0,diameter, diameter);
    popMatrix(); 
  }


}
