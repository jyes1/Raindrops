class Raindrop {
  PVector l, v, acc;
  float d;

  Raindrop() {
    d=10;
    l = new PVector(random(0, 500), random(-10, 0));
    v = new PVector(random(-.5, .5), 0);
    acc = new PVector (0, .08);
  }


  void display() {
    fill(0, 100, 255);
    ellipse(l.x, l.y, 2*d/3, d);
  }

  void move() {
    l.add(v);
    v.add(acc);
  }
}
