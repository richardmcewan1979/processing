void setup(){
  size(400,400);
}

void draw(){
  background(255);
  stroke(0);
  noFill();
  drawCircle(width/2, height/2, 300);
}

void drawCircle(float x, float y, float radius){
  ellipse(x, y, radius, radius);
  if (radius > 8){
    println(radius);
    drawCircle(x+radius/2, y, radius/2);
    drawCircle(x-radius/2, y, radius/2);
    drawCircle(x, y+radius/2, radius/2);
    drawCircle(x, y-radius/2, radius/2);
}
}
