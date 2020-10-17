

int advance = 1;
float r = 75;
float theta = 0;

void setup(){
  background(255);
  size(800,800);
}

void draw(){  
  
  //turn on for dots not continous wave
  //background(255);
 
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  //Red sine wave
  stroke(255, 0, 0);
  fill(255, 0, 0); 
  //point(advance, height/2 + y*3);
  ellipse(advance, height/2 + y*2.5, 8, 8);

  stroke(0, 0, 255);
  fill(0,0,255); 
  //fill(10);
  //point(advance, height/2 + x);
  ellipse(advance, height/2 + x*2.5, 8, 8);
  
  //increment the angle
  theta +=0.05;
  advance+=2;
  
  if(advance > width){
  advance = 0;
  clear();
  }

  

}
