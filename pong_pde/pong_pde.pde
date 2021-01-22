Bubble b;
Paddle p;

void setup(){
  
 size(200,200); 
 b= new Bubble();
 p= new Paddle();
}


void draw(){
 background(255);
 b.display();
 b.move();
 b.top();
 
 
 p.display();
 
 float d= dist(b.diameter,b.diameter,p.x,p.y);
 if(d<=(b.diameter+p.y)){
   background(127);
 
  
}
 
}
