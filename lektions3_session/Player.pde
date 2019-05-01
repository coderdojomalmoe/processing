class Player {
  PImage img;
  int posX;
  int posY;
  boolean leftHold;
  boolean rightHold;
  boolean upHold;
  boolean downHold;

  void draw() {
    ellipse(posX, posY, 50, 50 );
    println(posX + " : " + posY);
    if (upHold) posY -= 5;
    if (leftHold) posX -= 5;
    if (downHold) posY += 5;
    if (rightHold) posX += 5;
  }

  void keyPressed() {
    
    if (key == ' ') b = new Projectile(bulletBild, posX , posY, 0 ,-15);
    if (key=='w' || key=='W') upHold=true;
    if (key=='a' || key=='A') leftHold=true;
    if (key=='s' || key=='S') downHold=true;
    if (key=='d' || key=='D') rightHold=true;
  }
  
  void keyReleased() {
    if (key=='w'|| key=='W') upHold=false;
    if (key=='a'|| key=='A') leftHold=false;
    if (key=='s'|| key=='S') downHold=false;
    if (key=='d'|| key=='D') rightHold=false;
  }
  
  void mousePressed(){
    if(mouseButton == LEFT) b = new Projectile(bulletBild,posX ,posY,0,-15);
  }
  
}
