ArrayList<Raindrop> raindrops;
rainCloud[] rainclouds;

void setup() {
  size(600, 600);
  noStroke();

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
}

void draw() {
  background(50,23,77);  // Set the background to light blue (sky color)
  
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
}
