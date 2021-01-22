 void setup(){
  size(600,600);
  smooth();
  frameRate(60);
}

void draw(){
  
  //rectangle-body
  rectMode(CENTER);
  fill(155);
  stroke(0);
    background(255);

  rect(mouseX,mouseY,60,200);

  
  //face-ellipse
  fill(255);
  stroke(0);
  
  ellipse(mouseX,mouseY-140,80,80);
  
  //eyes-3llipse
  fill(mouseX,0,mouseY);
  stroke(0);
  ellipse(mouseX-20,mouseY-140,30,60);
  
  
  ellipse(mouseX+20,mouseY-140,30,60);
  
  //legs-lines
  line(pmouseX-30,pmouseY+100,mouseX-65,mouseY+145);
  line(pmouseX+30,pmouseY+100,mouseX+65,mouseY+145);
  
  
}

void mousePressed(){
  println("hee hee ha ha");
  
}
