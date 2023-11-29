// Define the Raindrop class
class Raindrop {
  // Declare PVector variables for the position and velocity of the raindrop
  PVector position;
  PVector velocity;

  // Constructor for the Raindrop class, takes initial x position as a parameter
  Raindrop(float x) {
    // Initialize the position PVector with the given x value and y value set to 0
    position = new PVector(x, 0);
    // Initialize the velocity PVector with a constant horizontal speed (0) and a random vertical speed between 5 and 15
    velocity = new PVector(0, random(5, 15)); // Random speed for variation
  }

  // Update method to move the raindrop based on its velocity
  void update() {
    position.add(velocity);
  }

  // Display method to draw the raindrop on the screen
  void display() {
    // Set stroke color to blue (0: no red, 100: some green, 255: full blue)
    stroke(0, 100, 255); // Blue color
    // Draw a vertical line representing the raindrop using its current position
    line(position.x, position.y, position.x + 3, position.y + 60); // Vertical line representing raindrop
  }

  // Check if the raindrop has moved off the bottom of the screen
  boolean offScreen() {
    // Return true if the y-coordinate of the raindrop's position is greater than the height of the screen
    return position.y > height;
  }
}
