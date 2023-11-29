// The class for clouds
class happyCloud {
  float x, y, size;  // Declare variables to store cloud position and size

  // Constructor to initialize cloud's position and size
  happyCloud(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  // Method to display the cloud
  void display() {
    noStroke();  // No outline for the cloud
    fill(204, 204, 255);  // White cloud color

    // Draw ellipses to represent different parts of the cloud
    ellipse(x, y, size, size * 0.6);
    ellipse(x - size * 0.4, y, size * 1.4, size * 1);
    ellipse(x + size * 0.4, y + 100, size * 1.4, size * 1);
    ellipse(x - size * 0.4, y + 550, size * 1.4, size + 1);
    ellipse(x + size * 0.4, y + 450, size * 1.4, size * 1);
  }

  // Method to move the cloud
  void move() {
    x += 1;  // Move the cloud slowly to the right
  }
}
