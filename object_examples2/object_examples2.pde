Car myCar1;
Car myCar2;

void setup(){
  size(400,400);
  //Initiatlise Car Object
  myCar1 = new Car(color(255,0,0), 0, 100, 2);
  myCar2 = new Car(color(0,0,255), 0, 10, 1);
}


void draw() {

  background(255);
  //Operate Car Object.
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
}
