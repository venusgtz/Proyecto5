import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;

OpenCV detect;
Rectangle[] faces;
Capture cam;
pincel P;
int PX, PY, P1=10;
color C[];

void setup(){
  size(640,480);
  cam = new Capture(this, 640, 480);
  cam.start();
  detect = new OpenCV(this, cam);
  detect.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = detect.detect();
  P = new pincel();
  PX = width/P1;
  PY = height/P1;
  C = new color[PX * PY];
}

void draw(){
  pantallas();
}

void captureEvent(Capture c) {
  c.read();
}
