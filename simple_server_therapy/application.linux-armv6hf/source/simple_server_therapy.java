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

public class simple_server_therapy extends PApplet {

//Import the net libraries


//Declare a server
Server server;

/*
Notes: 

Open terminal 
download homebrew
or if already have homebrew:
install telnet,
or if above satisfied:
type command:
telnet local host 5204

*/

//Used to indicate a new message has arrived
float newMessageColor = 255;

String incomingMessage = "";

public void setup(){
  
  //Create the server on port 5204
  server = new Server(this, 5204);
}

public void draw(){
  background(newMessageColor);
  
  //newMessageColor fades to white over time
  newMessageColor = constrain(newMessageColor + 0.3f, 0, 255);
  textAlign(CENTER);
  fill(255);
  textSize(20);
  text(incomingMessage, width/2, height/2);
  
  //if there is no client, clinet will be null
  Client client = server.available();
  
  //The sketch shouyld only proceed if the client is not null
  if (client != null){
    //Recive the message
    incomingMessage = client.readString();
    incomingMessage = incomingMessage.trim();
    
    //Print to Processing message window
    println("Client says: " + incomingMessage);
    
    //Write message back out (note this goes to ALL clients)
    server.write("How does " + incomingMessage + " make you feel?\n");
    
    //Reset newMessageColor to black
    newMessageColor =0;
  }
}


//The serverEvent function is called whenever a new client connects
public void serverEvent(Server server, Client client){
  incomingMessage = "A new client has connected: " + client.ip();
  println(incomingMessage);
  //Reset newMessageColor to black
  newMessageColor =0;
}
  public void settings() {  size(450,450); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "simple_server_therapy" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
