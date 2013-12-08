ArrayList<Raindrop> rain = new ArrayList<Raindrop>();
Catcher catcher;
void setup() {
  size(500, 500);
  rain.add(new Raindrop());
  catcher = new Catcher();
}

void draw() {
  background(0);
  if (frameCount%3 == 0) {
    rain.add(new Raindrop());
  }
  for (int i = rain.size()-1; i >=0; i--) {
    Raindrop r = rain.get(i);
    r.move();
    r.display();
  }
  catcher.display();
  catcher.move();
  catcher.catchRaindrop(rain);
}

