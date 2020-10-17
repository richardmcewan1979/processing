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

public class client_1 extends PApplet {

//Import net libraries


//Declare a clinet
Client client;

//The data to be read from the server
int data;

public void setup(){
  
  //Create client
  client = new Client(this, "192.168.1.65", 5204);
}

public void clientEvent(Client client){
  data = client.read();
}

public void draw(){
  background(data);
}
  public void settings() {  size(200,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "client_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
