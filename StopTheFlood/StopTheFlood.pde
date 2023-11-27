int screen=0;

startscreen startscreen;
restart restart;
SadWeatherCharacter SadWeatherCharacter;
happyclouds happyclouds;
HappyWeatherCharacter HappyWeatherCharacter;

ArrayList<Raindrop> raindrops;
RainCloud[] rainclouds;

void setup() {
  size(600, 600);
  frameRate(30);

  // Create an array of cloud objects
  rainclouds = new RainCloud[13];
  for (int i = 0; i < rainclouds.length; i++) {
    float x = random(width);
    float y = random(100, 200);
    float size = random(50, 100);
    rainclouds[i] = new RainCloud(x, y, size);
  }

  happyclouds = new happyclouds[13];
  for (int i = 0; i < happyclouds.length; i++) {
    float x = random(width);
    float y = random(100, 200);
    float size = random(50, 100);
    happyclouds[i] = new happyCloud(x, y, size);
  }

  // Initialize the ArrayList to store raindrops
  raindrops = new ArrayList<Raindrop>();

  SadWeatherCharacter = new SadWeatherCharacter();
}

void draw() {
  //display the start screen
  if (screen==0) {
    background(50, 23, 77);  // Set the background to dark sky colour
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

    for (RainCloud raincloud : rainclouds) {
      raincloud.display();
      raincloud.move();

      // If a cloud goes off the screen, wrap it back to the left
      if (raincloud.x > width + raincloud.size) {
        raincloud.x = -raincloud.size;
      }
    }

    //display the starting screen
    startscreen.display();

    //this is where the start button is, so press the button to start
    if (mouseX >=105 && mouseY >=113 && mouseX <=482 && mouseY <=234 && mousePressed) {
      screen=1;
    }
  }
  if (screen ==1) {
    background(50, 23, 77);  // Set the background to dark sky colour
    playscreen.display();
    


    //display the lose screen
    if (screen==2) {
      background(50, 23, 77);  // Set the background to dark sky colour
      RainCloud.display();
      Raindrop.display();
      SadWeatherCharacter.display();
      restart.display();

      //this is where the restart button is, so press the button to go back to start
      if (mouseX >=0 && mouseY >=497 && mouseX <=98 && mouseY <=600 && mousePressed) {
        screen=0;
      }
    }

    //display the win screent
    if (screen==3) {
      background(160, 163, 255);  // Set the background to light sky colour
      for (happyCloud happycloud : happyclouds) {
        happycloud.display();
        happycloud.move();

        // If a cloud goes off the screen, wrap it back to the left
        if (happycloud.x > width + happycloud.size) {
          happycloud.x = -happycloud.size;
        }
      }

      happyCloud.display();
      HappyWeatherCharacter.display();
      restart.display();

      //this is where the restart button is, so press the button to go back to start
      if (mouseX >=0 && mouseY >=497 && mouseX <=98 && mouseY <=600 && mousePressed) {
        screen=0;
      }
    }
  }
}
