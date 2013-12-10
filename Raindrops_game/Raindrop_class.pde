class Raindrop {
  PVector l, v, acc;
  float d;

  Raindrop() {
    d=10;
    l = new PVector(random(0, 500), 0);
    v = new PVector(random(-.2, .2), 0);
    acc = new PVector (0, .05);
  }


  void display() {
    fill(0, 0, 255);
    ellipse(l.x, l.y, d, d);
  }

  void move() {
    l.add(v);
    v.add(acc);
  }
}
