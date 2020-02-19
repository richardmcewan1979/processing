Car[] cars = new Car[100];

void setup(){
  size(400,400);
  //Initiatlise Car Objects
  for (int i = 0; i < cars.length; i++){
    cars[i] = new Car(color(i*2), 0, i*2, i/20.0);
  }
}


void draw() {

  background(255);
  //Operate Car Objects
  for (int i = 0; i < cars.length; i++){
  cars[i].move();
  cars[i].display();
  }
}
