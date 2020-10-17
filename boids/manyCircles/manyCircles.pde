float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup() {
size(500,500);
background(255);
}

void draw(){
r = random(255);
g = random(255);
b = random(255);
a = random(255);
diam = random(350);
x = random(width);
y = random(height);

noStroke();
fill(r,g,b,a);
ellipse(x,y,diam,diam);
delay(100);

r = random(255);
g = random(255);
b = random(255);
a = random(255);
diam = random(350);
x = random(width);
y = random(height);

noStroke();
fill(r,g,b,a);
ellipse(x,y,diam-200,diam-200);
delay(100);

//adapted from D.Shiffman:learning prcoessing. 
}
