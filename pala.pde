color c = color(0,255,0);
float xpala = 0;
float ypala = 250;
float anchoPala = 30;
float altoPala = 10;

void mouseMoved(){
  xpala =  mouseX - anchoPala/2;
  if(xpala > width/2 && xpala + anchoPala >= width ){
    xpala = width-anchoPala;
  }
}

void displayPala(){
  fill(c);
  rect(xpala,ypala,anchoPala,altoPala);
}