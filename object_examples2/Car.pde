// A class

class Car {

color c;
float xpos;
float ypos;
float xspeed;

Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {

  c = tempC;
  xpos = tempXpos;
  ypos = tempYpos; 
  xspeed = tempXspeed;
}

void display() {
  
  //The car is just a square
  rectMode(CENTER);
  fill(c);
  rect(xpos, ypos, 30, 15);
}

void move() {
  
  xpos = xpos + xspeed;
  if (xpos > width) {
    xpos = 0;
  }
}
//end class
}
