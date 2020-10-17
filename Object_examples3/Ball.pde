//Name
class Ball {

//Data
color c; 
float x;
float y;
float speed = 0;
float gravity; 


//Constructor
Ball(float tempX, float tempY, color tempColor,float tempgravity) {

   x = tempX;
   y = tempY;
   c = tempColor; 
   gravity = tempgravity;  
   
   
 
}


//Functionality

  //display
  void display(){
  
    fill(0,0,c);
    stroke(5);
    ellipse(x, y, 50, 50); 
  
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
