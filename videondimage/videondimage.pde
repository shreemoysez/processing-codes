import processing.video.*;
Pixel p;


Capture video;

color trackColor; 
float threshold = 25;
float distThreshold = 50;

PImage img;  
int pixelcount=0;
int x=0;
int y=0;
int countofpi=0;

ArrayList<Blob> blobs = new ArrayList<Blob>();

void setup() {
  size(640, 360);
  
  p=new Pixel();
  
  img=loadImage("image.jpg") ; 
 
  
  String[] cameras = Capture.list();
  
  tts = new TTS();
  printArray(cameras);
  video = new Capture(this, cameras[5]);
  video.start();
  trackColor = color(255, 0, 0);
}

void captureEvent(Capture video) {
  video.read();
}

void keyPressed() {
  if (key == 'a') {
    distThreshold+=5;
  } else if (key == 'z') {
    distThreshold-=5;
  }
  if (key == 's') {
    threshold+=5;
  } else if (key == 'x') {
    threshold-=5;
  }


  println(distThreshold);
}

void draw() {
  video.loadPixels();
    image(img,0,0); 
    p.pixelcountofimg();
    
    
  
    
    
    
    
    
    
  image(video, 0, 0);
 

  blobs.clear();


  // Begin loop to walk through every pixel
  for (x = 0; x < video.width; x++ ) {
    for ( y = 0; y < video.height; y++ ) {
      int loc = x + y * video.width;
      // What is current color
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      float d = distSq(r1,g1,r2,g2); 

      if (d < threshold) {

        boolean found = false;
        for (Blob b : blobs) {
          if (b.isNear(x, y)) {
            b.add(x, y);
            found = true;
            break;
          }
        }

        if (!found) {
          Blob b = new Blob(x, y);
          blobs.add(b);
        }
      }
    }
  }

  for (Blob b : blobs) {
    if (b.size() > 500) {
      b.show();
    }
  }

  textAlign(RIGHT);
  fill(0);
  text("distance threshold: " + distThreshold, width-10, 25);
  text("color threshold: " + threshold, width-10, 50);
}


// Custom distance functions w/ no square root for optimization
float distSq(float x1, float y1, float x2, float y2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1);
  return d;
}


float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}

void detectObject() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY*video.width;
  trackColor = video.pixels[loc];
}
