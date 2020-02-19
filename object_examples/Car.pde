// A class

class Car {

color c;
float xpos;
float ypos;
float xspeed;

Car(color tempColor, float tempXpos, float tempYpos, float tempXspeed) {

  c = tempColor;
  xpos = tempXpos;
  ypos = tempYpos; 
  xspeed = tempXspeed;
}

void display() {
  
  //The car is just a square
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(xpos, ypos, 20, 10);
}

void move() {
  
  xpos = xpos + xspeed;
  if (xpos > width) {
    xpos = 0;
  }
}
//end class
}
