// A class

class Car {

color c;
float xpos;
float ypos;
float xspeed;

Car(tempColor, tempXpos, tempYpos, tempXspeed) {

  c = tempColor;
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
