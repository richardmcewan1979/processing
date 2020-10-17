float a = 0;
float b = 0;
float r = 40;
float theta = 0;

//perlin elements
float xtime = 0.0;
float ytime = 100.0;

float increment = 0.01;


void setup(){
  size(400,400);

}


void draw(){
  
  //perlin elements
  float x = noise(xtime)*width;
  float y = noise(ytime)*height;
  xtime += increment;
  ytime += increment;
  
  //dimensions of craft
float nose = 23;
float aperture = 21;
float wingspan = r+-61;
  
  background(255);
translate(x, y);
stroke(5);


//central header
beginShape();
noFill();
//centre p4
vertex(a,b);
//tip p1
vertex((r-nose) * cos(theta), (r-nose) * sin(theta));
println(r-20);
endShape(CLOSE);
  
//wing1
beginShape();
noFill();
//centre p4
vertex(a,b);
//right p3
vertex((r+wingspan) * cos(theta+aperture), (r+wingspan) * sin(theta+aperture));
endShape(CLOSE);

beginShape();
//tip p1
vertex((r-nose) * cos(theta), (r-nose) * sin(theta));
//right p3
vertex((r+wingspan) * cos(theta+aperture), (r+wingspan) * sin(theta+aperture));
endShape(CLOSE);

//wing2
beginShape();
noFill();
stroke(255,0,0);
//centre p4
vertex(a,b);
//left p2
vertex((r+wingspan) * cos(theta-aperture), (r+wingspan) * sin(theta-aperture));
endShape(CLOSE);

beginShape();
//tip p1
vertex((r-nose) * cos(theta), (r-nose) * sin(theta));
//left p2
vertex((r+wingspan) * cos(theta-aperture), (r+wingspan) * sin(theta-aperture));
endShape(CLOSE);

//not sure this is pointing as I wish
theta = x/r;
 
}
