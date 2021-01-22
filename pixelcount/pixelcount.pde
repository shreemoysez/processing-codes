PImage img;  
int pixelcount=0;
int x=0;
int y=0;
int countofpi=0;


void setup() {
  size(640, 360);
  
  
  
  img=loadImage("image.jpg") ; 
}
 
void draw(){
if(countofpi==0)
                {
              for( x=0;x<img.width;x++)
                 {
                 for(y=0;y<img.height;y++)
                   {
                     int loc=x+y*img.width;
                     float r=red(img.pixels[loc]);
                     if(r>230)
                       {
                        pixelcount++;
                       }
                     }
                   }
           if(x==img.width && y==img.height)
           {
            countofpi=1; 
           }
           if(countofpi==1)
          {
            println(pixelcount);
            
          }
 }
}        
