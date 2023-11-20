void setup() {
  size(600, 600);
  frameRate(30);
}

void draw() {
  table();
  tissueBox();
  startButton();
  presskeys();
  words();
  Lhand();
  Rhand();
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

void Lhand() {
  stroke(75, 0, 130);
  fill(230, 232, 250);
  beginShape();
  vertex(79, 600);
  vertex(96, 529);
  vertex(86, 504);
  vertex(88, 482);
  vertex(120, 465);
  vertex(150, 462);
  vertex(180, 476);
  vertex(178, 502);
  vertex(161, 525);
  vertex(171, 520);
  vertex(178, 531);
  vertex(162, 544);
  vertex(142, 552);
  vertex(128, 600);
  endShape(CLOSE);
}

void Rhand() {
  stroke(75, 0, 130);
  fill(230, 232, 250);
  beginShape();
  vertex(523, 600);
  vertex(506, 529);
  vertex(515, 504);
  vertex(513, 482);
  vertex(481, 465);
  vertex(449, 462);
  vertex(419, 476);
  vertex(421, 502);
  vertex(438, 525);
  vertex(428, 520);
  vertex(421, 531);
  vertex(437, 544);
  vertex(457, 552);
  vertex(471, 600);
  endShape(CLOSE);
}
