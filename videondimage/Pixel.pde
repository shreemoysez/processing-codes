class Pixel{
      
           void pixelcountofimg()
            {
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
}
