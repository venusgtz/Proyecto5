int p;

void pantallas(){
  switch(p){
    case 0:
    inicio();
    if(mousePressed){
      p = 1;
    }
    break;
    
    case 1:
    instruccion();
    if(key == ' '){
      p = 2;
    }
    break;
    
    case 2:
    P.fondo();
    P.pincel();
    P.col();
    P.grosor();
    break;
  }
}
