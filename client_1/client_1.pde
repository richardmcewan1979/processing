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
  background(data);
}
