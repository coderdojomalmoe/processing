Player p = new Player();
Projectile b;
Enemy e = new Enemy( 300, 0, 0, 2);
PImage bulletBild;

void setup() {
  bulletBild = loadImage("images/star.png");
  b = new Projectile(bulletBild, 500, 100, 1, 1 );

  size(800, 1000);
  p.posX=400;
  p.posY=800;
  textSize(60);
  imageMode(CENTER);
  frameRate(60);
}

void draw() {
  background(255, 255, 255);      //     <--- white background
  p.draw();
  b.draw();
  e.draw();
  fill(0);
  if ( dist( b.posX, b.posY, e.posX, e.posY) < 50)
    e = new Enemy(  (int) random(width), 0, 0, 2);

  if ( e.posY > height) {
    e.posX= (int) random(width);
    e.posY=0;
  }
  // e = new Enemy(  (int) random(width)  , 0, 0, 2);
}

void keyPressed() {
  p.keyPressed();
}

void keyReleased() {
  p.keyReleased();
}

void mousePressed() {
  p. mousePressed();
}
