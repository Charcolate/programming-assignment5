boolean akeyPressed = false;
boolean skeyPressed = false;
boolean kkeyPressed = false;
boolean lkeyPressed = false;

void setup() {
  size(600, 600);
  frameRate(30);
}

void draw() {
  background(255); // Set background to white

  // Check if 'a' is pressed, and update akey accordingly
  if (akeyPressed) {
    akeyD();
  } else {
    akeyL();
  }

  // Check if 's' is pressed, and update skey accordingly
  if (skeyPressed) {
    skeyD();
  } else {
    skeyL();
  }

  // Check if 'k' is pressed, and update kkey accordingly
  if (kkeyPressed) {
    kkeyD();
  } else {
    kkeyL();
  }

  // Check if 'l' is pressed, and update lkey accordingly
  if (lkeyPressed) {
    lkeyD();
  } else {
    lkeyL();
  }
}

void keyPressed() {
  // Check which key is pressed and update the corresponding flag
  if (key == 'a') {
    akeyPressed = true;
  } else if (key == 's') {
    skeyPressed = true;
  } else if (key == 'k') {
    kkeyPressed = true;
  } else if (key == 'l') {
    lkeyPressed = true;
  }
}

void keyReleased() {
  // Check which key is released and update the corresponding flag
  if (key == 'a') {
    akeyPressed = false;
  } else if (key == 's') {
    skeyPressed = false;
  } else if (key == 'k') {
    kkeyPressed = false;
  } else if (key == 'l') {
    lkeyPressed = false;
  }
}

void akeyL() {
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(59, 377, 130, 446);
  textSize(60);
  fill(231, 159, 196);
  text("A", 79, 433);
}

void skeyL() {
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(154, 377, 225, 446);
  textSize(60);
  fill(231, 159, 196);
  text("S", 174, 433);
}

void kkeyL() {
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(379, 377, 450, 446);
  textSize(60);
  fill(231, 159, 196);
  text("K", 399, 433);
}

void lkeyL() {
  stroke(231, 159, 196);
  fill(230, 230, 250);
  rectMode(CORNERS);
  rect(474, 377, 545, 446);
  textSize(60);
  fill(231, 159, 196);
  text("L", 494, 433);
}

void akeyD() {
  stroke(230, 230, 250);
  fill(231, 159, 196);
  rectMode(CORNERS);
  rect(59, 377, 130, 446);
  textSize(60);
  fill(230, 230, 250);
  text("A", 79, 433);
}

void skeyD() {
  stroke(230, 230, 250);
  fill(231, 159, 196);
  rectMode(CORNERS);
  rect(154, 377, 225, 446);
  textSize(60);
  fill(230, 230, 250);
  text("S", 174, 433);
}

void kkeyD() {
  stroke(230, 230, 250);
  fill(231, 159, 196);
  rectMode(CORNERS);
  rect(379, 377, 450, 446);
  textSize(60);
  fill(230, 230, 250);
  text("K", 399, 433);
}

void lkeyD() {
  stroke(230, 230, 250);
  fill(231, 159, 196);
  rectMode(CORNERS);
  rect(474, 377, 545, 446);
  textSize(60);
  fill(230, 230, 250);
  text("L", 494, 433);
}
