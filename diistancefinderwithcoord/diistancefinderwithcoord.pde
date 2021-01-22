import guru.ttslib.*;

int count=0;
int inputcount=0;
import controlP5.*;
int initcount=0;
double d;
int distcount=0;
int fd;
 
ControlP5 cp5;
 
String latf, lonf;
float lat,lon;
float latfin,lonfin;

float latfinal;
float lonfinal;
TTS tts;
 
void setup() {
  size(700, 400);
  tts=new TTS();
  cp5 = new ControlP5(this);
  cp5.addTextfield("textInput_1").setPosition(20, 100).setSize(200, 40).setAutoClear(false);
  cp5.addTextfield("textInput_2").setPosition(20, 170).setSize(200, 40).setAutoClear(false);
  cp5.addBang("Submit").setPosition(240, 170).setSize(80, 40);    
 
}
 
 
void draw () {
  
background(0);

 
  String [] s=loadStrings("file.txt");
  
 
 for (int i = 0 ; i<s.length-1; i++) {

  lat=parseFloat(s[i]);
  println(lat);
}



  for (int i = s.length-1 ; i<s.length; i++) {

  lon=parseFloat(s[i]);
  println(lon);
  
}

if(inputcount==1)
{
  delay(20000);
 calculatedistance();

}

}
void Submit() {
  if(inputcount==0){
  print("the following text was submitted :");
  latf = cp5.get(Textfield.class,"textInput_1").getText();
  lonf = cp5.get(Textfield.class,"textInput_2").getText();
   count=1;
  latfin=parseFloat(latf);
  lonfin=parseFloat(lonf);
  print(" textInput 1 = " + latfin);
  print(" textInput 2 = " + lonfin);
  println();
  latfinal=latfin;
  lonfinal=lonfin;
  calculatedistance();
  inputcount=1;
 
  }
}

void calculatedistance(){
  int R=6373; 
double k = radians(lat);
double l = radians(latfinal);
double m = radians(latfinal-lat);
double n = radians(lonfinal-lon);

double a = Math.sin(m/2) * Math.sin(m/2) +
        Math.cos(k) * Math.cos(l) *
        Math.sin(n/2) * Math.sin(n/2);
double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));

d = R * c;
if(distcount==0)
{
  fd=d;
  distcount=1;
}

println(d);
 tts.speak("the distance you have to travel is" +d + "kilo meters");
 
 if(d==fd/2){
   tts.speak("you need to travel half of the total distance now");
 }

}