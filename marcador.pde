float xmarcador = 250;
float ymarcador = 20;
int vidas = 5;

void displayMarcador(){
  vidas = comprobarVidas();
  text("vidas: " + vidas,xmarcador,ymarcador);
}

int comprobarVidas(){
    if(ypelota > height && vidas > 0){
      vidas--;
      sonidoVidas.trigger();
    }else if(vidas == 0){
      escena2 = false;
      escena3 = true;
    }
    return vidas;
}