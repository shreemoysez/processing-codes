class Bubble{
 float x=100;
 float y=100;
 float diameter=40;
 float xspeed=1.3;
 float yspeed=2.4;
 
 void display(){
   
   ellipse(x,y,diameter,diameter);
   } 

 void move(){
   x=x+xspeed;
   y=y+yspeed;
   }

 void top(){
    if(x>=width || x<0){
     xspeed= xspeed * -1;
     
     }
     if(y>=height || y<0){
     yspeed= yspeed * -1;
     
   }
   }
  
  
  
}
