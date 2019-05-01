class Player {
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
    if (key=='w') upHold=true;
    if (key=='a') leftHold=true;
    if (key=='s') downHold=true;
    if (key=='d') rightHold=true;
  }
  
  void keyReleased() {
    if (key=='w') upHold=false;
    if (key=='a') leftHold=false;
    if (key=='s') downHold=false;
    if (key=='d') rightHold=false;
  }
  
}
