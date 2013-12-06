class Raindrop {
  PVector l, v;
  float r;
  Raindrop() {
    r=10;
    l = new PVector(random(r, width-2), random(r, height-r));
    v = new PVector (random(-.2,.2), random(1,2));
  }
  void display() {
    ellipse(l.x, l.y, r, r);
    rectMode(CENTER);
  }
  void move() {
    l.add(v);
    if (l.y>height+r) {
      l.y=0;
    }
  }
}

