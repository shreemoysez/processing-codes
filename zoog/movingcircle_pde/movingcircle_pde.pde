int circleSizex = 0;  
int circleSizey = 0; 
int circleX = 100; 
int circleY = 100;
 
    void setup()  {           
      size(200,200); 
      frameRate(30);
      smooth();

      }   
   void draw()  {          
     background(0); 
          stroke(255); 
          fill(175); 
          ellipse(circleX,circleY,30,30);
          circleX=circleX+1;
          rect(180,mouseY,20,40);
          
          
          if(circleX==width-15 ){
              println("game over");
              circleX=300;
              circleY=300;
            }
           
 
 
 
   }
