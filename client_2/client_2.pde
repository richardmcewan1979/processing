//Import net libraries
import processing.net.*;

//Declare a clinet
Client client;

//The data to be read from the server
int data;

void setup(){
  size(200,200);
  //Create client
  client = new Client(this, "192.168.1.65", 5204);
}

void clientEvent(Client client){
  data = client.read();
}

void draw(){
  background(0);
  stroke(255);
  fill(255);
  translate(20,20);
  //not sure what speed this is working on
  rotate(frameCount*100);
  for (int i=0; i < 10; i++){
    rotate(radians(data));
    rect(0, 0, 40,40); 
  }
}
