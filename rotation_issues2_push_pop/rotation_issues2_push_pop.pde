//this relates to a problem I was
//considering for Boids project

float theta1 = 0;
float theta2 = 0;

void setup(){
  size(400,400, P3D);
}

void draw(){
  background(255);
  stroke(0);
  fill(175);
  rectMode(CENTER);
  
  pushMatrix();
  
  translate(200,200);
  rotateZ(theta1);
  rect(0,0,60,60);
  
  //every object has it's own
  //push/pop roate/translate
  popMatrix();
  
  pushMatrix();
  translate(100,100);
  rotateY(theta2);
  rect(0,0,60,60);
  popMatrix();
  
  theta1 += 0.02;
  theta2 +=0.02;
}
