float circleX;
float circleY;
float speed = 5;
float xspeed = speed;
float Yspeed = speed;
void setup() {
  size(640, 360);
  circleX=0;
  circleY=0;
}


void draw() {
  //draw
  background(51);
  fill(102);
  stroke(255);
  ellipse(circleX, circleY, 32, 32);

  //logic
  circleX = circleX + xspeed;
  circleY = circleY + Yspeed;
  
  if ((circleX > width-16) || (circleX < 0)) {
    xspeed = -1*(xspeed);
  }
  
  if ((circleY > height-16) || (circleY < 0)) {
    Yspeed = -1*(Yspeed);
  }
}
