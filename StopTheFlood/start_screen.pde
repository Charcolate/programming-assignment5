class startscreen {
  void display() {
    table();
    tissueBox();
    startButton();
    presskeys();
    words();
  }

  void table() {
    background (93, 57, 84);
  }

  void tissueBox() {
    strokeWeight(7);
    stroke(220, 208, 255);
    fill(147, 112, 219);
    rectMode(CORNERS);
    rect(28, 28, 569, 322);
  }

  void startButton() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(105, 113, 482, 234);
  }

  void presskeys() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(59, 377, 130, 446);
    rect(154, 377, 225, 446);
    rect(379, 377, 450, 446);
    rect(474, 377, 545, 446);
  }

  void words() {
    textSize(60);
    fill(231, 159, 196);
    text("Press to Start", 123, 192);
    text("A", 79, 433);
    text("S", 174, 433);
    text("K", 399, 433);
    text("L", 494, 433);
  }
}
