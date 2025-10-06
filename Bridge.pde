class Bridge{
PImage img;
  float y;
  float escala;
  float speed;
  float resetY;
  float scaleSpeed;
  
  Bridge(PImage imagen) {
    img = imagen;
    y = height / 2;
    velocidad = 2;
    escala = 1.0;
  }
  void actualizar() {
    y += velocidad;
    escala += 0.0002;
    if (y > height + 300) {
      y = height / 2;
      escala = 1.0;
    }

    // Reiniciar cuando pase la pantalla
    
  }

  

  void mostrar() {
    pushMatrix();
    translate(width / 2, y);
    scale(escala);
    imageMode(CENTER);
    image(img, 0, 0);
    popMatrix();
  }
}
