Timer timer = new Timer(1000);
String time = "";

void setup(){
  size(200,200);
  thread("retrieveData");
  timer.start();
}

void draw(){
  background(255);
  if (timer.isFinished()){
    retrieveData();
    
    timer.start();
  }
  
  fill(0);
  text(time, 40, 100);
  
  translate(20,100);
  stroke(0);
  rotate(frameCount*0.04);
  for (int i = 0; i < 10; i++){
    rotate(radians(36));
    line(5,0,10,0);
    }
}

//get data
void retrieveData(){
  //link not working
  JSONObject json = loadJSONObject("http://time.jsontest.com/");
  time = json.getString("time");
}
