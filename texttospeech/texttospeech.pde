import guru.ttslib.*;
 
TTS tts;
 
void setup() {
  size(100,100);
  smooth();
  tts = new TTS();
}
 
void draw() {
  background(255);
  fill(255);
  ellipse( 35, 30, 25, 35 );
  ellipse( 65, 30, 25, 35 );
  fill(0);
  ellipse( 40, 35, 10, 10 );
  ellipse( 60, 35, 10, 10 );
  noFill();
  arc(50,50,50,50,0,PI);
 
}
 
void mousePressed() {
  tts.speak("Hi!  y y y I am a speaking Processing hello sketch");
  //tts.speak("Oi! Eu sou um esboço Processing falando");
}
