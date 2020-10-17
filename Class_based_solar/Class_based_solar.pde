//An array of 8 planet objects

Planet[] planets = new Planet[8];

void setup(){
  size(400,400);
  
  //planets initialised
  for (int i =0; i < planets.length; i++){
    planets[i] = new Planet(20 + i*10, i +8);
  }
}

void draw(){

    background(255);
    
    //Drawing the sun
    pushMatrix();
    translate(width/2, height/2);
    stroke(0);
    //fill(255);
    ellipse(0,0, 20, 20); 
    
    //Drawing all planets
    for(int i=0; i < planets.length; i++){
      planets[i].update();
      planets[i].display();
    }
    
    popMatrix();
}
