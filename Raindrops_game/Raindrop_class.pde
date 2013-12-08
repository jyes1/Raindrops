class Raindrop {
  PVector l, v, acc;
  float d;

  Raindrop() {
    d=10;
    l = new PVector(random(d, width-2), 0);
    v = new PVector(random(-.2, .2), 0);
    acc = new PVector (0, .05);
  }

  void display() {
    fill(0, 0, 100);
    ellipse(l.x, l.y, d, d);
  }

  void move() {
    l.add(v);
    v.add(acc);
    if (l.y>height+d) {
      v = new PVector (random(-.2, .2), 0);
      l = new PVector(random(d, width-2), 0);
    }
  }
}

