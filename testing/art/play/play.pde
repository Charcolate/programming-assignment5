void setup() {
  size(600, 600);
  frameRate(30);
}

void draw() {
  table();
  tissueBox();
  tissue1();
  tissue2();
  window();
  Lhand();
  Rhand();
}

void table() {
  fill (93, 57, 84);
  rectMode(CORNERS);
  rect(0, 348, 600, 600);
}

void tissueBox() {
  strokeWeight(7);
  stroke(220, 208, 255);
  fill(147, 112, 219);
  rectMode(CORNERS);
  rect(105, 397, 494, 572);
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(175, 453, 414, 508);
}

void tissue1() {
  strokeWeight(4);
  stroke(75, 0, 130);
  fill(230, 232, 250);
  beginShape();
  vertex(194, 482);
  vertex(207, 469);
  vertex(231, 471);
  vertex(260, 482);
  vertex(268, 488);
  vertex(292, 485);
  vertex(322, 468);
  vertex(342, 467);
  vertex(367, 475);
  vertex(387, 478);
  vertex(392, 485);
  vertex(395, 491);
  vertex(401, 487);
  vertex(398, 477);
  endShape(CLOSE);
}

void tissue2() {
  strokeWeight(4);
  stroke(75, 0, 130);
  fill(230, 232, 250);
  beginShape();
  vertex(398, 482);
  vertex(401, 469);
  vertex(395, 471);
  vertex(392, 482);
  vertex(387, 488);
  vertex(367, 485);
  vertex(342, 468);
  vertex(322, 467);
  vertex(292, 475);
  vertex(268, 478);
  vertex(260, 485);
  vertex(231, 491);
  vertex(207, 487);
  vertex(194, 477);
  endShape(CLOSE);
}

void window() {
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(0, 291, 600, 350);
  rect(295, 0, 308, 291);
}

void Lhand() {
  strokeWeight(7);
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
