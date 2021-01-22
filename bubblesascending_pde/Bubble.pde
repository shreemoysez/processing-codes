class Bubble{
  float x=random(0,200);
   float y=240;
   float diameter;
  float xspeed=1.3;
  float yspeed=random(0.4,1);
  
  Bubble(float tempD){
    diameter = tempD; 
    
  }
  
  
 void display()
{
  ellipse(x,y,diameter,diameter);
 
} 
void ascend(){
  y=y-yspeed;
  }
void top(){
  if(y<=0){
     y=240;
   x=random(0,200);
    display();
      }
  }  
}
