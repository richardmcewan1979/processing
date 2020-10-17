import processing.sound.*;

SoundFile song;

FFT fft;
int bands = 512;
int n = 0;
void setup(){
  size(512,360);
  
  //play the sound
  song = new SoundFile(this,"Neworder.wav");
  song.loop();
  
  fft = new FFT(this, bands);
  fft.input(song);
}

void draw(){
  background(255);
  
  fft.analyze();
  for(int i=0; i < bands; i++){
    stroke(255,0,0);
    float y = map(fft.spectrum[i],0,1,height*0.75,1);
    line(i, height*0.75, i, y);
    
    if(fft.spectrum[i]*1000000 > 550000){
      
     
    }
}
  
}
