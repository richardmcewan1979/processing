Car myCar;

void setup(){
  size(400,400);
  //Initiatlise Car Object
  myCar = new Car();

}


void draw() {

  background(255);
  //Operate Car Object.
  myCar.move();
  myCar.display();
  
}
