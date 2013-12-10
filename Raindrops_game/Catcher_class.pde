class Catcher {
  PVector loc;
  float d;
  int moveSpeed;
  PVector move;

  Catcher() {
    loc = new PVector(width/2, 4*height/5); //this defines the location of the catcher
    d = 50; //radius of the catcher
    moveSpeed = 3; //specifies how quickly the catcher can move
    move = new PVector(); //creates the PVector that will allow it to move
  }


  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d); //this is the actual catcher. this is where it is located and d specifies how big it is
  }

  void move() {
    loc.x = constrain(loc.x, 0, width); //means the catcher cant exceed the width of the screen
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) { //if the left key is pressed...
          loc.x -= moveSpeed; //it moves left
        }
        if (keyCode == RIGHT) { //if the right key is pressed...
          loc.x += moveSpeed; //it moves right
        }
      }
    }
  }


<<<<<<< HEAD
  void catchRaindrop(Raindrop[] rain) {
    for (int i = 0; i >= 0; i--) {
//      Raindrop r = rain[].get(i); //dafjknwedqlwsxcm,dfnedslx,mdnfvhfuweoqdiwslkcdnvbwfqowiasklnzdgrwfqeoiaslkzncgrw
      if (loc.dist(r.l) < d/2 + r.d/2) {
        float diff = d-r.d;
        float change;
        if (diff>=0) {
          change = map(diff, 0, d, 3, 0);
        }
        else {
          change = 0;
        }
        d+=change;
//        rain[i].remove(i);
=======
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
>>>>>>> c9a9feda4a1532267f2f8400bb78e1af4bd9d836
      }
      d+=change;
    }
  }
}

