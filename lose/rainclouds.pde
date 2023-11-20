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
    ellipse(x - size * 0.4, y, size * 1.4, size * 1);
    ellipse(x + size * 0.4, y+100, size * 1.4, size * 1);
    ellipse(x - size * 0.4, y+550, size * 1.4, size + 1);
    ellipse(x + size * 0.4, y+450, size * 1.4, size * 1);
  }

  void move() {
    x += 1;  // Move the cloud slowly to the right
  }
}
