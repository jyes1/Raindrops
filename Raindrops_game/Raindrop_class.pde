class Raindrop {
  PVector l, v, acc; //declares location velocity and acceleration
  float d; //declares d, which will be diameter

  Raindrop() {
    d=10; //the diameter of the raindrop
    l = new PVector(random(15, 485), random(-15, 0)); //creates a location for each raindrop to begin at. it is random to an extent.
    v = new PVector(random(-.3, .3), 0); //the velocity vector for the location value. random to an extent.
    acc = new PVector (0, .06); //this accelerates each raindrop so it's speed appears to increase as it reaches the bottom.
  }

  void display() {
    fill(0, 0, l.y+100); //color of raindrop. it becomes a lighter shade of blue as it gets closer to the bottom
    ellipse(l.x, l.y, 2*d/3, d); //this is the actual raindrop's location and dimensions
  }

  void move() {
    l.add(v); //this calls on the previously defined l PVector to add it's velocity to location in order to move it.
    v.add(acc); //this calls on the previously defined v PVector to add it's acceleration to velocity in order to accelerate it.
  }
}
