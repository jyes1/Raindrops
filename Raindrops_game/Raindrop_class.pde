class Raindrop {
  PVector l, v, acc;
  float d;

  Raindrop() {
    d=10; //radius of the raindrop
    l = new PVector(random(d, width-2), 0); //location of the raindrop. it can start at any random place inside the parentheses 
    v = new PVector(random(-.2, .2), 0); //location of the raindrop. it can start at any random place inside the parentheses 
    acc = new PVector (0, .05); //acceleration of the raindrop
  }


  void display() {
    fill(0, 0, 100); 
    ellipse(l.x, l.y, 2*d/3, d); //these two lines are the actual raindrop
  }

  void move() {
    l.add(v); //this lets the raindrop fall
    v.add(acc); //this lets the raindrop accelerate
    if (l.y>height+d) { //means if it gets to the end of the screen...
      v = new PVector (random(-.2, .2), 0); //velocity starts over at top
      l = new PVector(random(d, width-2), 0); // location starts over at top
    }
  }
}
