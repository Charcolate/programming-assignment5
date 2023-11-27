class restart {
  void display() {
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
}
