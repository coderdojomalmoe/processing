class Projectile{
  PImage img;
  int posX;
  int posY;
  int velX;
  int velY;
  
  Projectile(PImage i ,int x , int y, int vx , int vy){
    img=i;
    posX=x;
    posY=y;
    velX=vx;
    velY=vy;
  }
  
  
 void draw() {
   //       x      y    bredd höjd
   //ellipse(posX, posY,  8 , 100 );
   
   //       bild    x     y    bredd   höjd
     image(img ,  posX , posY,  50  ,  100 );
    posX = posX + velX;
    posY = posY + velY;
 }
  
}
