class Enemy{
  PImage img;
  int posX;
  int posY;
  int velX;
  int velY;
  
  Enemy(int x , int y, int vx , int vy){
    posX=x;
    posY=y;
    velX=vx;
    velY=vy;
  }
  
  
 void draw() {
   //       x      y    bredd höjd
    rect(posX, posY,  50 ,  50 );
    posX = posX + velX;
    posY = posY + velY;
 }
  
}
