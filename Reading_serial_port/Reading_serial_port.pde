import processing.serial.*;

int val = 0;
Serial port;

void setup(){
  size(200,200);
  printArray(Serial.list());
  port = new Serial(this, Serial.list()[0], 9600);
}

void draw(){
  background(val);
}

void serialEvent(Serial port){
  val = port.read();
  
  println("Raw Input: " + val);
}
