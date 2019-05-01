
Player p = new Player();

void setup() {
  size(800, 600);
}

void draw() {
  background(255, 255, 255);      //     <--- white background
  p.draw();
}

void keyPressed() {
  p.keyPressed();
}

void keyReleased() {
  p.keyReleased();
}
