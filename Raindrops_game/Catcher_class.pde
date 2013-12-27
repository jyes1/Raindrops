class Catcher {
  PVector loc; //defines the loc PVector
  float d; //diameter of catcher
  int moveSpeed; //declares movement for how fast the catcher will move
  PVector move; //declares the move pvector

  Catcher() {
    loc = new PVector(width/2, 6*height/7); //loction of the catcher
    d = 50; //diameter of the catcher
    moveSpeed = 4; //the speed at which the catcher moves
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
          loc.x -= moveSpeed; //at the moveSpeed of 4
        }
        if (keyCode == RIGHT) { //if the right arrow is clicked, the catcher moves right...
          loc.x += moveSpeed; //at the moveSpeed of 4
        }
      }
    }
  }

  void catchRaindrop(int i) {
    if (loc.dist(rain[i].l) < d/2 + rain[i].d/2) { //if the raindrop is  less than the diameter of the catcher plus the diameter of the raindrop...
      float diff = d- rain[i].d; //these variables are created
      float change; //declares the variable change
      if (diff >= 0) { //when the difference is greater than zero (when the catcher catches something)
        change = map(diff, 0, d, 10, 0); //increases diameter of the catcher when it catches something. right now it increases by 10. Increase 10 for a bigger increase
        rain[i].l.x=700; //this moves the raindrop out of view of the sketch meaning that it's not really gone, just out of the way
        caught++; //the amount caught increases
      }
      else {
        change = 0; //if the catcher doesn't catch something it doesn't grow
      }
      d+=change; //the diameter will increase at the rate of change
    }
  }
}

