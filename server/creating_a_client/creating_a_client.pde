//Import the net libraries
import processing.net.*;

//Declare a client
Client client;

//Use to indicate a new message
float newMessageColor = 0;

//A string to hold whatever the server says
String messageFromServer = "";

//A string to hold what the user types
String typing = "";

void setup(){
  size(400,200);
  //Create the client
  client = new Client(this, "192.168.1.65", 5204);
}

void draw(){
  background(255);
  
  //display message from server
  fill(newMessageColor);
  textAlign(CENTER);
  text(messageFromServer, width/2, 140);
  //Fade message from server to white
  newMessageColor = constrain(newMessageColor + 1, 0, 255);
  
  //Display Instructions
  fill(0);
  text("Type text and press Enter to send to server.", width/2, 60);
  fill(0);
  text(typing, width/2, 80);
}

void clientEvent(Client client){
  
  String msg = client.readStringUntil('\n');
  
  if (msg != null){
    messageFromServer = msg;
    //Set brightness to 0
    newMessageColor = 0;
  }
}

//Simple keyboard input
void keyPressed(){
  //If the return key is pressed, save the string and clear it
  if (key=='\n'){
    client.write(typing);
    typing = "";
  } else {
    typing = typing + key;
  }
}
