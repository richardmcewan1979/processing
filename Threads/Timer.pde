class Timer {
 int savedTime; //when timer starts
 int totalTime; //How long timer should last
 
 Timer(int tempTotalTime){
   totalTime = tempTotalTime;
 }

  //starting the timer
  void start(){
    savedTime = millis();
  }
  
  boolean isFinished(){
    //check how much time has passed
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime){
      return true;
    } else {
      return false;
    }
  }

}
