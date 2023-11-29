class rainCloud {
  // Instance variables to store the position and size of the rain cloud
  float x, y, size;

  // Constructor to initialize the rain cloud with a specific position and size
  rainCloud(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  // Method to display the rain cloud
  void display() {
    noStroke();
    fill(50, 18, 122);  // Set fill color to a shade of white for the cloud
    // Draw ellipses to represent the cloud with variations in position and size
    ellipse(x, y, size, size * 0.6);
    ellipse(x - size * 0.2, y, size * 0.7, size * 0.5);
    ellipse(x + size * 0.2, y + 5, size * 0.7, size * 0.5);
    ellipse(x - size * 0.2, y + 10, size * 0.7, size * 0.5);
    ellipse(x + size * 0.2, y + 15, size * 0.7, size * 0.5);
  }

  // Method to move the rain cloud to the right
  void move() {
    x += 1;  // Increment x-coordinate to move the cloud slowly to the right
  }
}
