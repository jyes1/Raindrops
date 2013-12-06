Raindrop[] rain;
Catcher catcher;

void setup() {
  size(500, 500);
  noStroke();
  rain=new Raindrop[500];
  for (int i=0; i<rain.length; i++) {
    rain[i]=new Raindrop();
  }
  catcher = new Catcher();
}

void draw() {
  background(0);

  for (int i=0; i<rain.length; i++) {
    rain[i].display();
    rain[i].move();
  }
  catcher.display();
  catcher.update();
}

