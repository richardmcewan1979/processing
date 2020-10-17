

void setup(){
size(400,400);
}

void draw(){
stroke(0);
for(int i = 0; i<10; i++){
beginShape();
fill(175);
vertex(i*20, 10-i);
vertex(i*20+15, 1-+i);
vertex(i*20+15, 180+1);
vertex(i*20, 180-i);
endShape(CLOSE);

}

}
