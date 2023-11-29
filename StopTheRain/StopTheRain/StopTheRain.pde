////////////// Charlotte Fung, 991723679///////////////////////

/////game description/////
//players press start
//press a or s to control left hand and k or l to control right hand
//press as fast as possible to successfully stuck 1 line of tissue paper ball at the rim of the window to stop the water from leaking
//if success, go to the win screen
//if fail in 20 seconds, go to the lose screen
//press restart button to try again

//////////pseudocode//////////
  //canvas 600x600 with frameRate of 30
  //make arraylist of raindrops which have it from top of the screen to the bottom of the screen
  //array for clouds, one for rain one for not raining
  //get the start and restart button
  //have press to start in start button and restart icon in restart button
  //boolean to check if a, s, k, l, are pressed individually and in pairs (a+s, k+l)
  //connect a+s to left hand and k+l to right hand, so if a or s are pressed, left hand swap colour of stroke and fill until it was released 
//////////starting screen//////////
  //connect a, s, k, l to their own key caps so when they are pressed, the stroke and fill swap until it was released
  //get the start button
  //have "press to start" in start button
  //when the start screen is on, do a "Oh no! the rain is coming in! Use the tissues to block the leaking in the window before it floods your room" as printIn
  //do a table colour for background
//////////playing screen//////////
  //establish the colour for dry and wet crumbled paper, dry ligher then wet in both stroke and fill
  //make over 12 cases (change according to the appropriate time of key presses) of those crumbled paper (default is dry colour) in a line at the bottom rim of the window
  //the first threee crumbled paper appears at the same time and the rest appears one by one
  //make a check for when is the last time a, s, k, l are pressed so if none of those are pressed in 2 seconds, it changes all the crumbled paper from dry colour to wet colour
  //the hands stays the same key pressed and key released function and also the same pocition
  //make 2 versions of paper connecting to the tissue box and switch them when the a, s, k, l are pressed to indicate there are things happening instead of nothing
  //hand the raindrop and rain colour in this at the back 
  //background of raining sky colour (darker blue)
  //if players can get to the right end of the canvas before 20 seconds, they go to the winning screen
  //if players cannot get to the right end of the canvas before 20 seconds, they go to the losing screen
//////////winning screen//////////
  //a restart button
  //when pressed, gets the player back to the starting screen to start over
  //make a happy face on that one doll where japanese people make to get good weather and no raining
  //make a sun
  //this is the part to show the good weather clouds
//////////losing screen//////////
  //a restart button
  //when pressed, gets the player back to the starting screen to start over
  //make a sad face on that one doll where japanese people make to get good weather and no raining
  //this is the part to continue showing the raindrops and the rain clouds
//////////Start Over//////////



// All classes
StartScreen StartScreen;  // Declare an instance of StartScreen class
rainCloud[] rainclouds;  // Declare an array of rainCloud objects
PlayScreen PlayScreen;  // Declare an instance of PlayScreen class
LoseScreen LoseScreen;  // Declare an instance of LoseScreen class
happyCloud[] happyCloud;  // Declare an array of happyCloud objects
WinScreen WinScreen;  // Declare an instance of WinScreen class

// Main Menu + playing (Starting Screen + play Screen)
boolean akeyPressed = false;  // Flag to track if 'a' key is pressed
boolean skeyPressed = false;  // Flag to track if 's' key is pressed
boolean kkeyPressed = false;  // Flag to track if 'k' key is pressed
boolean lkeyPressed = false;  // Flag to track if 'l' key is pressed
boolean lhandPressed = false;  // Flag to track if 'a' or 's' key is pressed
boolean rhandPressed = false;  // Flag to track if 'k' or 'l' key is pressed

// playing (play Screen)
boolean showTissueB1 = true;  // Flag to control which tissue to display
color Sdry, Fdry, Swet, Fwet;  // Declare color variables
boolean aPressed, sPressed, kPressed, lPressed;  // Flags to track key presses
int lastKeyPressTime;  // Store the time of the last key press
int tissueToShow = 0;  // Index to track which tissue to show
int buttonPressCount = 0;  // Count consecutive button presses
int tissueDisappearTime = 0;  // Store the time tissue disappeared
boolean tissueVisible = false;  // Flag to track if tissue is visible
int timerStart;  // Store the starting time
int elapsedTime;  // Store the elapsed time

// Main Menu + playing + lose (Starting Screen + play Screen + lose Screen)
ArrayList<Raindrop> raindrops;  // Declare an ArrayList to store Raindrop objects

// which screen currently
int screen = 0;  // Variable to track the current screen

// Function to calculate and return the remaining time in seconds
float calculateRemainingTime() {
  int remainingTime = 20 - int((millis() - timerStart) / 1000.0);
  return max(remainingTime, 0);  // Ensure the remaining time is non-negative
}

void setup() {
  size(600, 600);
  frameRate(30);
  StartScreen = new StartScreen();
  PlayScreen = new PlayScreen();
  LoseScreen = new LoseScreen();
  WinScreen = new WinScreen();

  // Create an array of cloud objects
  rainclouds = new rainCloud[13];
  for (int i = 0; i < rainclouds.length; i++) {
    float x = random(width);
    float y = random(100, 200);
    float size = random(50, 100);
    rainclouds[i] = new rainCloud(x, y, size);
  }

  // Initialize the ArrayList to store raindrops
  raindrops = new ArrayList<Raindrop>();

  // Colours for the tissues (S for Stroke and F for Fill)
  Sdry = color(147, 112, 219);
  Fdry = color(230, 230, 250);
  Swet = color(75, 0, 130);
  Fwet = color(147, 112, 219);

  // Create an array of cloud objects
  happyCloud = new happyCloud[13];
  for (int i = 0; i < happyCloud.length; i++) {
    float x = random(width);
    float y = random(100, 200);
    float size = random(50, 100);
    happyCloud[i] = new happyCloud(x, y, size);
  }

  timerStart = millis(); // Initialize timerStart
}

void draw() {
  // Main Menu (Starting Screen)
  if (screen == 0) {
    background(93, 57, 84);
    StartScreen.display();
    println("Oh no! the rain is coming in! Use the tissues to block the leaking in the window before it floods your room");

    // Check if 'a' is pressed, and update akey accordingly
    if (akeyPressed) {
      StartScreen.akeyD();
    } else {
      StartScreen.akeyL();
    }

    // Check if 's' is pressed, and update skey accordingly
    if (skeyPressed) {
      StartScreen.skeyD();
    } else {
      StartScreen.skeyL();
    }

    // Check if 'k' is pressed, and update kkey accordingly
    if (kkeyPressed) {
      StartScreen.kkeyD();
    } else {
      StartScreen.kkeyL();
    }

    // Check if 'l' is pressed, and update lkey accordingly
    if (lkeyPressed) {
      StartScreen.lkeyD();
    } else {
      StartScreen.lkeyL();
    }

    // Check if 'a' or 's' is pressed, and update Lhand accordingly
    if (lhandPressed) {
      StartScreen.LhandD();
    } else {
      StartScreen.LhandL();
    }

    // Check if 'k' or 'l' is pressed, and update Rhand accordingly
    if (rhandPressed) {
      StartScreen.RhandD();
    } else {
      StartScreen.RhandL();
    }

    // When the player presses the start button, it goes to the playing screen
    if (mouseX >= 105 && mouseY >= 113 && mouseX <= 482 && mouseY <= 234 && mousePressed) {
      screen = 1;
    }
  }

  // playing (play Screen)
  if (screen == 1) {
    background(50, 23, 77);

    if (random(1) < 0.4) {
      float x = random(width);
      raindrops.add(new Raindrop(x));
    }

    // Update and display each raindrop
    for (int i = raindrops.size() - 1; i >= 0; i--) {
      Raindrop raindrop = raindrops.get(i);
      raindrop.update();
      raindrop.display();

      // Remove raindrop if it's off the bottom of the screen
      if (raindrop.offScreen()) {
        raindrops.remove(i);
      }
    }

    for (rainCloud raincloud : rainclouds) {
      raincloud.display();
      raincloud.move();

      // If a cloud goes off the screen, wrap it back to the left
      if (raincloud.x > width + raincloud.size) {
        raincloud.x = -raincloud.size;
      }
    }

    PlayScreen.display();

    // Draw the visible tissue based on the current state
    if (showTissueB1) {
      PlayScreen.tissueB1();
    } else {
      PlayScreen.tissueB2();
    }

    // Check if 'a' or 's' is pressed, and update Lhand accordingly
    if (lhandPressed) {
      PlayScreen.LhandD();
    } else {
      PlayScreen.LhandL();
    }

    // Check if 'k' or 'l' is pressed, and update Rhand accordingly
    if (rhandPressed) {
      PlayScreen.RhandD();
    } else {
      PlayScreen.RhandL();
    }

    // Check if none of the buttons is pressed for 2 seconds
    if (millis() - lastKeyPressTime > 2000 && tissueVisible) {
      tissueDisappearTime = millis();
      tissueVisible = false;
      tissueToShow = 0;
    }

    // Check if it's been 1 second since the last button press
    if (millis() - lastKeyPressTime > 1000) {
      stroke(Swet);
      fill(Fwet);
    } else {
      stroke(Sdry);
      fill(Fdry);
    }

    // Check if the tissue is visible
    if (tissueVisible) {
      PlayScreen.drawTissues();
    } else if (millis() - tissueDisappearTime <= 1000) {
      // Calculate the disappearing effect within the first second
      float progress = (millis() - tissueDisappearTime) / 1000.0;
      float x = map(progress, 0, 1, width, width + 200);
      if (x <= width) {
        // Draw the disappearing tissue
        pushStyle();
        strokeWeight(7);
        stroke(Swet);
        fill(Fwet);
        translate(x, 0);
        PlayScreen.drawTissues();
        popStyle();
      }
    }

    if (frameCount == 1) {
      timerStart = millis();
    }

    // Call the function to get the remaining time
    float remainingTime = calculateRemainingTime();

    // Check if 20 seconds have passed or all tissue cases are shown
    elapsedTime = constrain(millis() - timerStart, 0, 20000);

    // Check if 20 seconds have passed or all tissue cases are shown
    elapsedTime = millis() - timerStart;
    if (elapsedTime >= 20000) {
      screen = 2;  // Transition to win screen
    } else if (tissueToShow == 13) {
      screen = 3;  // Transition to lose screen
    }

    // Check if it's been 20 seconds since the last timer reset
    if (millis() - timerStart >= 20000) {
      // Reset the timer
      timerStart = millis();
    }
  }

  // lose (lose Screen)
  if (screen == 2) {
    background(50, 23, 77);
    if (random(1) < 0.4) {
      float x = random(width);
      raindrops.add(new Raindrop(x));
    }

    // Update and display each raindrop
    for (int i = raindrops.size() - 1; i >= 0; i--) {
      Raindrop raindrop = raindrops.get(i);
      raindrop.update();
      raindrop.display();

      // Remove raindrop if it's off the bottom of the screen
      if (raindrop.offScreen()) {
        raindrops.remove(i);
      }
    }

    for (rainCloud raincloud : rainclouds) {
      raincloud.display();
      raincloud.move();

      // If a cloud goes off the screen, wrap it back to the left
      if (raincloud.x > width + raincloud.size) {
        raincloud.x = -raincloud.size;
      }
    }

    LoseScreen.display();

    if (mouseX >= 0 && mouseY >= 497 && mouseX <= 98 && mouseY <= 600 && mousePressed) {
      screen = 0;
    }
  }
  // win (win Screen)
  if (screen == 3) {
    background(160, 163, 255);
    for (happyCloud happycloud : happyCloud) {
      happycloud.display();
      happycloud.move();

      // If a cloud goes off the screen, wrap it back to the left
      if (happycloud.x > width + happycloud.size) {
        happycloud.x = -happycloud.size;
      }
    }

    WinScreen.display();

    if (mouseX >= 0 && mouseY >= 497 && mouseX <= 98 && mouseY <= 600 && mousePressed) {
      screen = 0;
    }
  }
}

void keyPressed() {
  // Main Menu + playing (Starting Screen + play Screen)
  // Check if 'a' or 's' is pressed
  if (key == 'a' || key == 's') {
    lhandPressed = true;
  }

  // Check if 'k' or 'l' is pressed
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

  // playing (play Screen)
  // Switch the visible tissue when specific keys are pressed
  if (key == 'a' || key == 's' || key == 'k' || key == 'l') {
    showTissueB1 = !showTissueB1;
    // Check if it's been 1 second since the last button press
    if (millis() - lastKeyPressTime > 1000) {
      buttonPressCount = 1;
      tissueToShow = 1;
    } else {
      buttonPressCount++;
    }

    lastKeyPressTime = millis();

    // Check if 10 consecutive button presses occurred
    if (buttonPressCount >= 10) {
      tissueVisible = true;
      tissueDisappearTime = 0;
      tissueToShow++;
      buttonPressCount = 0;
    }
  }
}

void keyReleased() {
  // Main Menu + playing (Starting Screen + play Screen)
  // Check if 'a' or 's' is released
  if (key == 'a' || key == 's') {
    lhandPressed = false;
  }

  // Check if 'k' or 'l' is released
  if (key == 'k' || key == 'l') {
    rhandPressed = false;
  }

  // Check which key is pressed and update the corresponding flag
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
