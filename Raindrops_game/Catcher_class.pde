class Catcher {
  PVector loc; //defines the loc PVector
  float d; //diameter of catcher
  int moveSpeed;
  PVector move;

  Catcher() {
    loc = new PVector(width/2, 4*height/5); //loction of the catcher
    d = 50; //diameter of the catcher
    moveSpeed = 3; //the speed at which the catcher moves
    move = new PVector(); //defines the move PVector as a new pvector
  }


  void display() {
    fill(255); //the fill of the catcher
    ellipse(loc.x, loc.y, d, d); //the actual catcher.
  }

  void move() {
    loc.x = constrain(loc.x, 0, width); //means that the catcher can't exceed the width of the frame
    if (keyPressed) { //the key needs to be pressed in order for the following things to happen
      if (key == CODED) {
        if (keyCode == LEFT) { //if the left arrow is clicked, the catcher moves left...
          loc.x -= moveSpeed; //at the rate of moveSpeed (3)
        }
        if (keyCode == RIGHT) { //if the right arrow is clicked, the catcher moves right...
          loc.x += moveSpeed; //at the rate of moveSpeed (3)
        }
      }
    }
  }

  void catchRaindrop(int i) {
    if (loc.dist(rain[i].l) < d/2 + rain[i].d/2) { //if the raindrop is  less than the diameter of the catcher plus the diameter of the raindrop...
      float diff = d-rain[i].d; //these variables are created
      float change;
      if (diff>=0) { //when the difference is greater than zero
        change = map(diff, 0, d, 10, 0); //change is equal to that
        rain[i].l.x=700; //this basically moves the raindrop out of view of the sketch meaning that it's not really gone, just out of the way
        caught++;
      }
      else { //otherwise...
        change = 0; //there will be no change
      }
      d+=change; //the diameter will increase at the rate of change
    }

  }
}

