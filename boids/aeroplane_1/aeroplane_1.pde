float x = 0;
float y = 0;
float r = 40;
float theta = 0;



void setup(){
  size(400,400);

}


void draw(){
  //dimensions of craft
float nose = 23;
float aperture = 21;
float wingspan = r+-61;
  
  background(255);
translate(width/2, height/2);
stroke(5);


//central header
beginShape();
noFill();
//centre p4
vertex(x,y);
//tip p1
vertex((r-nose) * cos(theta), (r-nose) * sin(theta));
println(r-20);
endShape(CLOSE);
  
//wing1
beginShape();
noFill();
//centre p4
vertex(x,y);
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
vertex(x,y);
//left p2
vertex((r+wingspan) * cos(theta-aperture), (r+wingspan) * sin(theta-aperture));
endShape(CLOSE);

beginShape();
//tip p1
vertex((r-nose) * cos(theta), (r-nose) * sin(theta));
//left p2
vertex((r+wingspan) * cos(theta-aperture), (r+wingspan) * sin(theta-aperture));
endShape(CLOSE);

theta +=0.01;
 
}
