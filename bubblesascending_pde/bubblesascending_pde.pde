
Bubble[] bubbles=new Bubble[20];

void setup(){
  size(200,200);
  for(int i=0;i<bubbles.length;i++){
    bubbles[i]= new Bubble(random(20,40));
   
    
  }
   
}

void draw(){
   background(255); 
   
   for(int i=0;i<bubbles.length;i++){
   
   bubbles[i].display(); 
   bubbles[i].ascend();
  bubbles[i].top();
     
   }
   
 
  
  
  
}
