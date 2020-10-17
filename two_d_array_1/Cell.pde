class Cell{
  float x;
  float y;
  float w;
  float h;
  
  float angle;
  
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  }
  
  void oscillate(){
    angle += 0.02;
  }
  
  
  void display(){
    stroke(255);
    
    float bright = map(sin(angle), -1, 1, 0, 255);
    float bright2 = map(cos(angle), -1, 1, 0, 255);
    float bright3 = map(sin(angle), -1, 1, 0, 255);
    fill(bright, bright2, bright3);
    rect(x, y, w, h);
  }
}
