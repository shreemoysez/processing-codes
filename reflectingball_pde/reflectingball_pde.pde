float x=0.0;
float y=0.0;
float xspeed=1.3;
float yspeed=2.4;
void setup(){
  size(200,200);
 
  
  
}

void draw(){
   background(255);
  
  ellipse(x,y,20,20);
  
  x=x+xspeed;
  y=y+yspeed;
  
  
  if(x>=width|| x<0){
    xspeed=xspeed * -1;
    background(157);
  }
  if(y>=height|| y<0){
    yspeed=yspeed * -1;
    background(127);
  }
  
  
  
  
}

