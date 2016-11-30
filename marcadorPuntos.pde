float xmarcadorPuntos = 10;
float ymarcadorPuntos = 20;
int puntos = 0;

void displayMarcadorPuntos(){
  puntos = comprobarPuntos();
  text("puntos: " + puntos,xmarcadorPuntos,ymarcadorPuntos);
}

int comprobarPuntos(){
    if(ypelota < 0 && puntos < 10){
      puntos++;
    }else if(puntos == 10){
      escena2 = false;
      escena4 = true;
    }
    return puntos;
}