import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.net.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Server_broadcasting_number extends PApplet {

//Import the net libraries


//Declare a server;
Server server;

int data = 0;

public void setup(){
  
  //Create the Server on port 5204
  server = new Server(this, 5204);
}

public void draw(){
  background(255);
  
  //Display data
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text(data, width/2, height/2);
  
  //Arbitrarily changing the value of the data randomly
  data = (data + PApplet.parseInt(random(-2, 4))) % 256;
  
  server.write(data);
}

//the serverEvent function is called whener a new client connects
public void serverEvent(Server server, Client client){
  println("A new client has connected: " + client.ip());
}


  public void settings() {  size(200,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Server_broadcasting_number" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
