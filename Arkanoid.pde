import ddf.minim.*;

boolean escena1 = true;
boolean escena2 = false;
boolean escena3 = false;
boolean escena4 = false;
PImage imagen;
Minim soundengine;
AudioSample sonidoVidas;
AudioSample sonidoChoque;
AudioSample sonidoParedes;
PImage bg;

void setup(){
  size(300,300);
  smooth();
  soundengine = new Minim(this);
  sonidoVidas = soundengine.loadSample("loseLife.wav", 1024);
  sonidoChoque = soundengine.loadSample("beep1.wav", 1024);
  sonidoParedes = soundengine.loadSample("beep2.wav", 1024);
  bg = loadImage("fondo.png");
}

void draw(){
  background(255);
  mouseMoved();
  if(escena1){
    displayBienvenida();
  }else if(escena2){
    background(bg);
    displayPala();
    displayPelota();
    displayMarcador();
    displayMarcadorPuntos();
  }else if(escena3){
    displayFin();  
  }else if(escena4){
    displayWin();
  }
}
void displayBienvenida(){
  fill(0,0,0);
  imagen = loadImage("arkanoid.png");
  image(imagen, 70, 100);
  text("(haga click para continuar)",70,180);
}
void displayFin(){
  fill(0,0,0);
  imagen = loadImage("gameover.png");
  image(imagen, 30, 100);
  text("(haga click para continuar)",70,180);
}
void displayWin(){
  fill(0,0,0);
  imagen = loadImage("win.png");
  image(imagen, 75, 100);
  text("(haga click para continuar)",70,180);
}
void mouseClicked(){
    if(escena1){
      escena1 = false;
      escena2 = true;
    }else if(escena3){
      escena3 = false;
      escena1 = true;
      xSpeed = 1;
      ySpeed = 3;
      vidas = 5;
      puntos = 0;
      radio = 16;
    }else if(escena4){
      escena4 = false;
      escena1 = true;
      xSpeed = 1;
      ySpeed = 3;
      vidas = 5;
      puntos = 0;
      radio = 16;
    }else{
      loop(); 
    }
 
}