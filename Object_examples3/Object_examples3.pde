//initialise class
Ball myBall;
Ball myBall2;


//void setup and screen size
void setup(){
  size(400,400);
  myBall = new Ball(width/4, height*0.15, 100, 0.1);
  myBall2 = new Ball(width/2, height*0.25, 20, 0.2);
}

//void draw
void draw(){
  background(255);
  myBall.display();
  myBall.move();
    myBall2.display();
  myBall2.move();

}    //background
