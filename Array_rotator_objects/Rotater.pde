//A Rotater class

class Rotater{
  float x, y; // x, y location
  float theta; //angle of rotation
  float speed; //speed of rotation
  float w; //size of rectangle
  
//constructor

Rotater(float tempX, float tempY, float tempSpeed, float tempW){
  x = tempX;
  y = tempY;
  theta = 0;
  speed = tempSpeed;
  w = tempW;
}

//increment angle
void spin(){
  theta += speed; 
}

//Display rectangle method
void display(){
  rectMode(CENTER);
  stroke(0);
  fill(0, 100);
  pushMatrix();
  translate(x, y);
  rotate(theta);
  rect(0, 0, w, w);
  popMatrix();
}

//end of class bracket  
}
