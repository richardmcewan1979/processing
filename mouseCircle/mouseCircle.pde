//circle follows the mouse

void setup() {
size(400,400);
}

void draw(){
background(218);
stroke(2);
fill(49,128, 49);
//circle follows the cursor
ellipse(mouseX,mouseY, 50, 50);
}
