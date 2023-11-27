class Raindrop {
  PVector position;
  PVector velocity;

  Raindrop(float x) {
    position = new PVector(x, 0);
    velocity = new PVector(0, random(5, 15)); // Random speed for variation
  }

  void update() {
    position.add(velocity);
  }

  void display() {
    stroke(0, 100, 255); // Blue color
    line(position.x, position.y, position.x+1, position.y + 60); // Vertical line representing raindrop
  }

  boolean offScreen() {
    return position.y > height;
  }
}
