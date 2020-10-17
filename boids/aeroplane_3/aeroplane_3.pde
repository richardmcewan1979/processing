//use keys to move the ship
//ship does not rotate yet

float a = 0;
float b = 0;
float r = 40;
float theta = 0;

float x=width/2;
float y=height/2;



int count = 0;


void setup(){
  size(400,400);

}


void draw(){



  
  //dimensions of craft
float nose = 15;
float aperture = 21;
float wingspan = r-61;
  
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







 
 
}

 void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -= 5; 
      println("up");
    } else if (keyCode == DOWN){
      y += 5;
    }
    
    else if (keyCode == RIGHT){
      //x += 5;
      //rich you are waffling you fool
      //this will turn right
            theta +=0.25;
    }
    
    else if (keyCode == LEFT){
      x -= 5;
    }
    
  }
 }
    
 
 
  
  
