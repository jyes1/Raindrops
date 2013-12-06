class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 60;
  }

  void display() {
    rect(loc.x, loc.y, 100, 50);
  }

  void update() {
    loc.set(mouseX, height-d);
  }
}

