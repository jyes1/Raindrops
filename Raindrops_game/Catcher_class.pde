class Catcher {
  PVector loc;
  float d;
  int moveSpeed;
  PVector move;

  Catcher() {
    loc = new PVector(width/2, 4*height/5);
    d = 50;
    moveSpeed = 3;
    move = new PVector();
  }


  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.x -= moveSpeed;
        }
        if (keyCode == RIGHT) {
          loc.x += moveSpeed;
        }
      }
    }
  }

  void catchRaindrop(int i) {
    if (loc.dist(rain[i].l) < d/2 + rain[i].d/2) {
      float diff = d-rain[i].d;
      float change;
      if (diff>=0) {
        change = map(diff, 0, d, 3, 0);
        rain[i].l.x=700;
      }
      else {
        change = 0;
      }
      d+=change;
    }
  }
}

