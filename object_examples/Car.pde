// A class

class Car {

color c;
float xpos;
float ypos;
float xspeed;

Car() {

  c = color(0,0,255);
  xpos = width/2;
  ypos = height/2; 
  xspeed = 1;
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
