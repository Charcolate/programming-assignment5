class StartScreen {

  // Display method that sets up and draws the start screen
  void display() {
    table();         // Draw the background
    tissueBox();     // Draw the tissue box
    startButton();   // Draw the start button
    words();         // Draw the "Press to Start" text
  }

  // Method to handle key presses
  void keyPressed() {
    // Check if 'a' or 's' is pressed and update corresponding flags
    if (key == 'a' || key == 's') {
      lhandPressed = true;
    }

    // Check if 'k' or 'l' is pressed and update corresponding flags
    if (key == 'k' || key == 'l') {
      rhandPressed = true;
    }

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

  // Method to handle key releases
  void keyReleased() {
    // Check if 'a' or 's' is released and update corresponding flags
    if (key == 'a' || key == 's') {
      lhandPressed = false;
    }

    // Check if 'k' or 'l' is released and update corresponding flags
    if (key == 'k' || key == 'l') {
      rhandPressed = false;
    }

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

  // Draw the background
  void table() {
    background (93, 57, 84);
  }

  // Draw the tissue box
  void tissueBox() {
    strokeWeight(7);
    stroke(220, 208, 255);
    fill(147, 112, 219);
    rectMode(CORNERS);
    rect(28, 28, 569, 322);
  }

  // Draw the start button
  void startButton() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(105, 113, 482, 234);
  }

  // Draw the 'A' key in the lifted position
  void akeyL() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(59, 377, 130, 446);
    textSize(60);
    fill(231, 159, 196);
    text("A", 79, 433);
  }

// Draw the 'S' key in the lifted position
  void skeyL() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(154, 377, 225, 446);
    textSize(60);
    fill(231, 159, 196);
    text("S", 174, 433);
  }

// Draw the 'K' key in the lifted position
  void kkeyL() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(379, 377, 450, 446);
    textSize(60);
    fill(231, 159, 196);
    text("K", 399, 433);
  }

// Draw the 'L' key in the lifted position
  void lkeyL() {
    stroke(231, 159, 196);
    fill(230, 230, 250);
    rectMode(CORNERS);
    rect(474, 377, 545, 446);
    textSize(60);
    fill(231, 159, 196);
    text("L", 494, 433);
  }

// Draw the 'A' key in the default position
  void akeyD() {
    stroke(230, 230, 250);
    fill(231, 159, 196);
    rectMode(CORNERS);
    rect(59, 377, 130, 446);
    textSize(60);
    fill(230, 230, 250);
    text("A", 79, 433);
  }
  
// Draw the 'S' key in the default position
  void skeyD() {
    stroke(230, 230, 250);
    fill(231, 159, 196);
    rectMode(CORNERS);
    rect(154, 377, 225, 446);
    textSize(60);
    fill(230, 230, 250);
    text("S", 174, 433);
  }

// Draw the 'K' key in the default position
  void kkeyD() {
    stroke(230, 230, 250);
    fill(231, 159, 196);
    rectMode(CORNERS);
    rect(379, 377, 450, 446);
    textSize(60);
    fill(230, 230, 250);
    text("K", 399, 433);
  }

// Draw the 'L' key in the default position
  void lkeyD() {
    stroke(230, 230, 250);
    fill(231, 159, 196);
    rectMode(CORNERS);
    rect(474, 377, 545, 446);
    textSize(60);
    fill(230, 230, 250);
    text("L", 494, 433);
  }

// Draw the "Press to Start" text
  void words() {
    textSize(60);
    fill(231, 159, 196);
    text("Press to Start", 123, 192);
  }

// Draw the left hand in the default position
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

// Draw the Right hand in the default position
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

// Draw the Left hand in the lifted position
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

// Draw the Right hand in the lifted  position
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
}
