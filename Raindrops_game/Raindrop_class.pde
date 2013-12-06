class Raindrop {
  PVector l, v, acc;
  float r;
  Raindrop() {
    r=10;
    l = new PVector(random(r, width-2), 0);
    v = new PVector (random(-.2, .2), random(1, 2));
    acc = new PVector (0, .1);
  }
  void display() {
    ellipse(l.x, l.y, r, r);
    rectMode(CENTER);
  }
  void move() {
    l.add(v);
    v.add(acc);
    if (l.y>height+r) {
      v = new PVector (random(-.2, .2), random(1, 2));
      l = new PVector(random(r, width-2), 0);
    }
  }
}

