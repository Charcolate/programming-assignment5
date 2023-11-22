boolean lhandPressed = false;
boolean rhandPressed = false;


void setup() {
  size(600, 600);
  frameRate(30);
}

void draw() {
  background(255); // Set background to white
  // Check if 'a' or 's' is pressed, and update Lhand accordingly
  if (lhandPressed) {
    LhandD();
  } else {
    LhandL();
  }

  // Check if 'k' or 'l' is pressed, and update Rhand accordingly
  if (rhandPressed) {
    RhandD();
  } else {
    RhandL();
  }
}

void keyPressed() {
  // Check if 'a' or 's' is pressed
  if (key == 'a' || key == 's') {
    lhandPressed = true;
  }

  // Check if 'k' or 'l' is pressed
  if (key == 'k' || key == 'l') {
    rhandPressed = true;
  }
}

void keyReleased() {
  // Check if 'a' or 's' is released
  if (key == 'a' || key == 's') {
    lhandPressed = false;
  }

  // Check if 'k' or 'l' is released
  if (key == 'k' || key == 'l') {
    rhandPressed = false;
  }
}


void LhandD() {
  strokeWeight(7);
  stroke(230, 232, 250);
  fill(75, 0, 130);
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

void RhandD() {
  stroke(230, 232, 250);
  fill(75, 0, 130);
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


void LhandL() {
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

void RhandL() {
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
