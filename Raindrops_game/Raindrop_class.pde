class Raindrop {
  PVector l, v, acc;
  float d;

  Raindrop() {
    d=10; //the diameter of the raindrop
    l = new PVector(random(0, 500), random(-10, 0)); //creates a location for each raindrop to begin at. it is random to an extent.
    v = new PVector(random(-.3, .3), 0); //the velocity vector for the location value. random to an extent.
    acc = new PVector (0, .06); //this accelerates each raindrop so it's speed appears to increase as it reaches the bottom.
  }


  void display() {
    fill(0, 100, 255); //color of raindrop
    ellipse(l.x, l.y, 2*d/3, d); //this is the actual raindrop
  }

  void move() {
    l.add(v); //this calls on the previously defined l PVector to add it's velocity to location in order to move it.
    v.add(acc); //this calls on the previously defined v PVector to add it's acceleration to velocity in order to accelerate it.
  }
}
