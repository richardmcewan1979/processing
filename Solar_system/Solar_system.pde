//Angle of rotation
//example shows nested push/pop matrices
//important concept look carefully
float theta = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  stroke(0);
  
  //Translate to centre of window to draw the sun.
  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 40, 40);
  
  //earth rotates around the sun
  pushMatrix();
  rotate(theta);
  translate(110,0);
  fill(50, 200, 255);
  ellipse(0, 0, 20, 20);
  
  //Moon #1 rotates around the earth
  pushMatrix();
  rotate(-theta*4);
  translate(28,0);
  fill(50, 255, 200);
  ellipse(0,0, 9, 9);
  popMatrix();
  
  //Moon #2 also rotates aroind the earth
  pushMatrix();
  rotate(theta*2);
  translate(47,0);
  fill(50, 255, 200);
  ellipse(0,0, 12, 12);
  popMatrix();
  
  popMatrix();
  
  theta +=0.01;
//end of draw function  
}
