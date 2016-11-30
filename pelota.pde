float xpelota = 100;
float ypelota = 100;
float xSpeed = 1;
float ySpeed = 3;
float radio = 16;

void displayPelota(){
   noStroke();
   fill(255,10);
   rect(0,0,width,height);
  
   // Add the current speed to the location.
   xpelota = xpelota + xSpeed;
   ypelota = ypelota + ySpeed;
  
   if ((xpelota > width) || (xpelota < 0)) {
     sonidoParedes.trigger();
     xSpeed = xSpeed * -1;
   }
   if (ypelota < 0) {
     sonidoParedes.trigger();
     ySpeed = ySpeed * -1;
   }
   if (ypelota == 0){
     comprobarPuntos();
   }
   if ((ypelota + radio > ypala - altoPala/2) && (ypelota + radio < ypala + altoPala/2) && (xpelota >= xpala - anchoPala/2) && (xpelota <= xpala + anchoPala/2) && ySpeed > 0) {
     sonidoChoque.trigger();
     xSpeed = xSpeed * -1.15;
     ySpeed = ySpeed * -1.15;
   }
   if ((ypelota + radio > ypala - altoPala/2) && (ypelota + radio < ypala + altoPala/2) && (xpelota >= xpala - anchoPala) && (xpelota <= xpala + anchoPala) && ySpeed > 0) {
     sonidoChoque.trigger();
     xSpeed = xSpeed * -1.15;
     ySpeed = ySpeed * -1.15;
   }
   if(ypelota > height){
     comprobarVidas();
     xpelota = random(0, 200);
     ypelota = random(0, 200);
     xSpeed = xSpeed * -1;
     radio = radio - 2;
   }
  
   // Display at x,y location
   stroke(0);
   fill(175);
   ellipse(xpelota,ypelota,radio,radio);
   
}