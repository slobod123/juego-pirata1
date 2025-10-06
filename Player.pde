class Player {
float x , y;
float vel;
float minX, maxX;
float radius;
float ancho, alto;
Player(float startX, float startY) {
    x = startX;
    y = startY;
   
  
    
    minX = 400;
    maxX = 800;
    ancho = 80;
    alto = 80;
    x = width / 2 - ancho / 2;
    y = height - alto - 50;
  }
  
    void mover() {
    // Seguir el mouse horizontalmente, con límites
    x = constrain(mouseX - ancho / 2, 150, width - ancho - 150);
  }
 
PImage spritesheet;
PImage movement[];
void setupSprites(){
movement = new PImage[3];
spritesheet = loadImage("3jugadores-removebg-preview.png");

for(int i = 0; i< 3;i++){
  
  movement[i] = spritesheet.get(37 * i, 0, 37, 40);
  movement[i].resize(120, 120);
}


}
void drawPlayer(){
  
   int currentFrame = (frameCount / 10) % 3;
    image(movement[currentFrame], x, 500);
}

}
