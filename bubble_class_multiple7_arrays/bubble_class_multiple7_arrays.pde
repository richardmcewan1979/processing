//goes with video 8.4
//Code train

Bubble[] bubbles = new Bubble[100];

//Bubble(size, fill, speed)
void setup() {
  size(640, 360);  
    for(int i=0; i<bubbles.length; i++){
  bubbles[i] = new Bubble(30,random(0,255),random(0.5, 1.5));
  }

}

void draw() {
  background(255);
  
  
    for(int i=0; i< bubbles.length; i++){
    bubbles[i].display();
  bubbles[i].ascend();
  bubbles[i].top();
  }

}
