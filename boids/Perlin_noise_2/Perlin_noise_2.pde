float time=0.0;
float increment=0.01;
int advance = 1;

void setup(){
  size(400,400);
}

void draw(){
  //background(255);
  
  float n = noise(time) * width;
  
  fill(0);
  point(advance, height*noise(time));
  
  /*
  if(advance == width){
  advance = 0;
  }
  */
  
  time += increment;
  advance++;
}
