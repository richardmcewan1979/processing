int circleX = 0;

void setup() {
size(400,400);
}

void draw(){
background(218);
stroke(2);
fill(49,128, 49);
//circle follows the cursor
ellipse(circleX, 50, 50, 50);

circleX = circleX+1;
}
