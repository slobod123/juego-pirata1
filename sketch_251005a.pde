int x=250;
int y=250;

PImage puente;
float puenteY = 0;
float puenteScale = 1;
float puenteY1 = 0;
float puenteY2;
float velocidad = 5;
PImage img3;
PImage imgPuente;
Bridge bridge;
Player player;

void setup(){
size(1200,597);
player = new Player(width/2, height - 100);
imgPuente = loadImage("povbarco.png");
bridge = new Bridge(imgPuente);
player.setupSprites();
img3 = loadImage("pixel_kawai.gif");

}

void draw(){
background(img3);
bridge.actualizar();
  bridge.mostrar();
  player.mover();


  

player.drawPlayer();
 player.x = mouseX;
 player.y = mouseY;



  
  

}
