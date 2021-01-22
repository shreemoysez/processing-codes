import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class zoog extends PApplet {
  public void setup() {
size(400,600);    background(255); 
   smooth(); 
     ellipseMode(CENTER);    rectMode(CENTER); 
       stroke(0);    fill(150);    rect(100,100,20,100); 
    fill(255);    ellipse(100,70,60,60); 
     fill(0);    ellipse(81,70,16,32);    ellipse(119,70,16,32); 
      stroke(0);    line(90,150,80,160);    line(110,150,120,160); 
  noLoop();
} 
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "zoog" });
  }
}
