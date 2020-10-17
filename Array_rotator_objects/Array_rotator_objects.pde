//An array of rotator objects

Rotater[] rotaters;

void setup(){
  size(400,400);
  rotaters = new Rotater[20];
  
  //Rotaters are made randomly
  for (int i = 0; i < rotaters.length; i++){
    rotaters[i] = new Rotater(random(width), random(height), random(-0.01, 0.1), random(48)); 
  }  
}


void draw(){
  background(255);
  //All rotaters spin and are displayed
  for (int i=0; i < rotaters.length; i++){
    rotaters[i].spin();
    rotaters[i].display();
  }
} 
