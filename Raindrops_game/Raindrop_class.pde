class Raindrop {
  PVector l, v, acc;
  float d;

  Raindrop() {
<<<<<<< HEAD
    d=10; //radius of the raindrop
    l = new PVector(random(d, width-2), 0); //location of the raindrop. it can start at any random place inside the parentheses 
    v = new PVector(random(-.2, .2), 0); //location of the raindrop. it can start at any random place inside the parentheses 
    acc = new PVector (0, .05); //acceleration of the raindrop
=======
    d=10;
    l = new PVector(random(0, 500), random(-10, 0));
    v = new PVector(random(-.2, .2), 0);
    acc = new PVector (0, .05);
>>>>>>> c9a9feda4a1532267f2f8400bb78e1af4bd9d836
  }


  void display() {
<<<<<<< HEAD
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
=======
    fill(0, 0, 255);
    ellipse(l.x, l.y, 2*d/3, d);
  }

  void move() {
    l.add(v);
    v.add(acc);
>>>>>>> c9a9feda4a1532267f2f8400bb78e1af4bd9d836
  }
}
