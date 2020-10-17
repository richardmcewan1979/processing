int boxes = 100; 
int spacing = 25;

//fullScreen();
size(500,350);
background(0);
strokeWeight(2);
stroke(255);
fill(127);



/*
for(int y = 0; y < height; y = y + height/boxes) {
  for(int x = 0; x < width; x = x + width/boxes) {
    rect(x, y, width/boxes, height/boxes);
  }
}
*/

for(int y = 0; y < height; y = y + spacing) {
  for(int x = 0; x < width; x = x + spacing) {
    //fill(random(255));
    //fill(random(255), random(255), random(255));
    rect(x, y, spacing, spacing);
  }
  
}
