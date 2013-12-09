
Catcher catcher;
Timer timer;
Cloud cloud;
Lightning lightning;
ArrayList <Raindrop> rain = new ArrayList<Raindrop>();
void setup() {
  size(500, 500);
  rain.add(new Raindrop());
  catcher = new Catcher();
  timer = new Timer();
  cloud = new Cloud();
  lightning = new Lightning();
}

void draw() {
  background(0);
  for (int i = rain.size()-1; i >=0; i--) {
    Raindrop r = rain.get(i);
    r.move();
    r.display();
  }
  timer.releaseRain();
  catcher.display();
  catcher.move();
  catcher.catchRaindrop(rain);
  cloud.display();
  lightning.display();
}

