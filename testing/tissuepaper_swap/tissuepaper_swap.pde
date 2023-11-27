boolean showTissue1 = true;  // Variable to track which tissue is currently visible

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  // Draw the visible tissue based on the current state
  if (showTissue1) {
    tissue1();
  } else {
    tissue2();
  }
}

void keyPressed() {
  // Switch the visible tissue when specific keys are pressed
  if (key == 'a' || key == 's' || key == 'k' || key == 'l') {
    showTissue1 = !showTissue1;
  }
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
