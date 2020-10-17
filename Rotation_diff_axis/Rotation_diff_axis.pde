float theta = 0.0;
float big = 1.0; 

void setup(){
  size(400,400, P3D);
}

void draw(){
background(255);
stroke(0);
fill(175);

translate(200,200);
rotateX(theta);
rotateY(theta);
rotateZ(theta);
rectMode(CENTER);
scale(big);
rect(0,0,175,175);

theta +=0.02;
}
