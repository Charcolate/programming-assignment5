class rainCloud {
  float x, y, size;

  rainCloud(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void display() {
    noStroke();
    fill(50,18,122);  // White cloud color
    ellipse(x, y, size, size * 0.6);
    ellipse(x - size * 0.2, y, size * 0.7, size * 0.5);
    ellipse(x + size * 0.2, y+5, size * 0.7, size * 0.5);
    ellipse(x - size * 0.2, y+10, size * 0.7, size * 0.5);
    ellipse(x + size * 0.2, y+15, size * 0.7, size * 0.5);
  }

  void move() {
    x += 1;  // Move the cloud slowly to the right
  }
}
