int screen=0;

void setup() {
  size(600, 600);
  frameRate(30);
}

void draw() {
  if (screen==0) {
    background (93, 57, 84);
    drawStart();

    if (mouseX >=105 && mouseY >=113 && mouseX <=482 && mouseY <=234 && mousePressed) {
      screen=1;
    }
  }
  if (screen==1) {
    background(160, 163, 255);
    drawrestarts();

    if (mouseX >=0 && mouseY >=497 && mouseX <=98 && mouseY <=600 && mousePressed) {
      screen=0;
    }
  }
}


void drawStart() {
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(105, 113, 482, 234);
}

void drawrestarts() {
  stroke(220, 208, 255);
  fill(147, 112, 219);
  rectMode(CORNERS);
  rect(0, 497, 98, 600);
  stroke(231, 159, 196);
  fill(230, 230, 250);
  triangle(54, 595, 28, 575, 54, 555);
  arc(50, 550, 70, 70, 0, HALF_PI);
  arc(50, 550, 70, 70, PI, PI+QUARTER_PI);
  arc(50, 550, 70, 70, PI+QUARTER_PI, TWO_PI);
  line(30, 550, 20, 550);
  stroke(231, 159, 196);
  fill(147, 112, 219);
  arc(50, 550, 30, 30, 0, HALF_PI);
  arc(50, 550, 30, 30, PI, PI+QUARTER_PI);
  arc(50, 550, 30, 30, PI+QUARTER_PI, TWO_PI);
}
