PGraphics pg;

void setup() {
  size(740, 300);
  background(0);
  pg = createGraphics(740, 300);
}

void draw() {
  if (mousePressed == true) {
    pg.beginDraw();
    pg.stroke(150, 170, 179);
    pg.strokeWeight(10);
    pg.line(mouseX, mouseY, pmouseX, pmouseY);
    pg.endDraw();
    image(pg, 0, 0); 
  }
}

// Click to clear the PGraphics object
void keyPressed() {
  if( key =='c' || key == 'C' ) {
    background(0);
    pg.beginDraw(); 
    pg.clear();
    pg.endDraw(); 
    print(key);
  }
}