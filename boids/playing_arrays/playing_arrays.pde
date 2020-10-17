//snake trail of mouse

//x and y positions
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup(){
  size(400,400);
  
  //Initialize
  for (int i = 0; i < xpos.length; i++){
    xpos[i] = 0;
    ypos[i] = 0;
    }  
}


void draw(){
   background(255);
   
   //shift array values
     for (int i = 0; i < xpos.length - 1; i++){
       xpos[i] = xpos[i + 1];
       ypos[i] = ypos[i + 1];
    }  
    
   //New location 
   xpos[xpos.length - 1] = mouseX;
   ypos[ypos.length - 1] = mouseY;
    
    //Draw everything
    
    /*
    for (int i=0; i < xpos.length; i++){
       stroke(0);
       fill(175);
       ellipse(xpos[i], ypos[i], 32, 32);
    }
    */
    
    
    for (int i = 0; i < xpos.length; i++){
       noStroke();
       fill(i, 255 - i*5,i);
       ellipse(xpos[i], ypos[i], i, i);
       
    }
       
       
    

}
