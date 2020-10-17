class Timer{
  
  int savedTime;   //When Timer started
  int totalTime;   //How long Timer should last
  
  Timer(int tempTotalTime){
    totalTime = tempTotalTime;
  }
  
  //Starting the timer
  void start(){
    savedTime = millis();
  }
  
  boolean isFinished(){
    //Check out much time has passed
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime){
      return true;
    } else {
      return false;    
    }
  }
  
  //end of class right bracket
}
