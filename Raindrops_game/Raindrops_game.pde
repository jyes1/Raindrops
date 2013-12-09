
Catcher catcher;
Timer timer;
Cloud cloud;
Lightning lightning;
Raindrop[] rain = new Raindrop[20];
void setup() {
  size(500, 500);
//  rain.add(new Raindrop());
  catcher = new Catcher();
  timer = new Timer();
  lightning = new Lightning();
  cloud = new Cloud();
}

void draw() {
  background(0);
  for (int i = 0; i >=0; i--) {
    rain[i].move();
    rain[i].display();
  }
  timer.releaseRain();
  catcher.display();
  catcher.move();
  catcher.catchRaindrop(rain);
  lightning.display();
  cloud.display();
}

