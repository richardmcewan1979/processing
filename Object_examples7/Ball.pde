//Name
class Ball {

//Data
float x;
float y;
float speed;
float w; 


//Constructor
Ball(float tempX, float tempY, float tempW) {

   x = tempX;
   y = tempY;
   w = tempW; 
   speed = 0; 
   
}


//Functionality

  //gravity
  void gravity(){
    speed = speed + gravity;
  }

  //display
  void display(){
  
    fill(255);
    noStroke();
    ellipse(x, y, w, w); 
  
  }
  
  //move
  void move(){
    
    //vertical motion
    y = y + speed;
    //gravity effect
    speed = speed + gravity;
    
      //bouncing
      if (y > height) {
        speed = speed * -0.95;
        y = height;
      }
    
  
  }  
    //flip on edges


//end of class
}
