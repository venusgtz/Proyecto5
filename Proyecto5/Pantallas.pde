void inicio(){
  fill(255);
  rectMode(CENTER);
  rect(width/2,height/2,width,height);
  ellipseMode(CENTER);
  fill(#39D3E3);
  noStroke();
  ellipse(width/2,height/2,350,350);
  fill(255);
  textSize(60);
  text("Paint",247,260);
  textSize(15);
  fill(#5100C4);
  text("Haz click con el mouse para continuar",185,470);
}

void instruccion(){
  fill(255);
  rectMode(CENTER);
  rect(width/2,height/2,width,height);
  ellipseMode(CENTER);
  fill(#39D3E3);
  ellipse(width/2,height/2,400,400);
  fill(255);
  textSize(30);
  text("Instrucciones",220,125);
  textSize(20);
  text("Muevete frente a la pantalla\npara pintar.\nMientras con las teclas A S y D\nseleccionas el grosor de tu pincel.\n Y el color con Z X y C.",155,200);
  textSize(15);
  fill(#5100C4);
  text("Presiona espacio para continuar",200,470);
}

class pincel{
  
  float gro;
  float R,G,B;
  
  pincel(){
    this.gro = 5;
    this.R = 255;
    this.G = 31;
    this.B = 255;
  }
  
  void fondo(){
    rectMode(CENTER);
    fill(0,10);
    rect(width/2,height/2,width,height);
  }
  
  void grosor(){
    switch(key){
      case 'a':
      gro = 10;
      break;
      
      case 's':
      gro = 25;
      break;
      
      case 'd':
      gro = 50;
      break;
    }
  }
  
  void col(){
    switch(key){
      case 'z':
      this.R = 255;
      this.G = 31;
      this.B = 255;
      break;
      
      case 'x':
      this.R = 31;
      this.G = 255;
      this.B = 255;
      break;
      
      case 'c':
      this.R = 255;
      this.G = 255;
      this.B = 31;
      break;
    }
  }
  
  void pincel(){
    detect.loadImage(cam);
    detect.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
    faces = detect.detect();
    for (int i = 0; i < faces.length; i++) {
      if(faces[i].x < width && faces[i].y < height){
          cam.read();
          cam.loadPixels();
          pushMatrix();
          scale(0.8);
          rectMode(CENTER);
          noStroke();
          fill(this.R,this.G,this.B);
          rect(faces[i].x, faces[i].y,gro,gro);
          popMatrix();
        }
      }
  }
}
