Catcher catcher;  //One catcher object
Timer timer;      //One timer object
Drop[] drops;     //An array of drop objects

int totalDrops = 0;    //totalDrops
void setup(){
  size(400,400);
  
  //Create the catcher with a radius of 32
  catcher = new Catcher(32);
  //Create 1000 spots in the array
  drops = new Drop[1000];
  //Create and start a timer that goes off every 300 milliseconds
  timer = new Timer(300);
  timer.start();
}


void draw(){
  background(255);
  catcher.setLocation(mouseX, mouseY);  //Set cacther location
  catcher.display();                    //Display the catcher
  
  //Check the timer
  if (timer.isFinished()){
    //Initialise one drop
    drops[totalDrops] = new Drop();
    //Increment totalDrops
    totalDrops++;
    //if totalDrops hit the end of array
    if (totalDrops >= drops.length){
      totalDrops = 0; //Start over
    }
    timer.start();
  }
  
  //Move and display all drops
  for (int i = 0; i < totalDrops; i++){
    drops[i].move();
    drops[i].display();
    if (catcher.intersect(drops[i])){
      drops[i].caught();
    }
  }
  
}
