Catcher catcher;
Timer timer;
Cloud cloud;
Lightning lightning;
Raindrop[] rain = new Raindrop[1000];
int index;
void setup() {
  for (int i = 1; i <rain.length; i++) {
    rain[i] = new Raindrop();
  }
  size(500, 500);
  catcher = new Catcher();
  timer = new Timer();
  lightning = new Lightning();
  cloud = new Cloud();
  index = 1;
}

void draw() {
  background(0);
  for (int i = 1; i <index; i++) {
    rain[i].move();
    rain[i].display();
  }
  timer.releaseRain();
  catcher.display();
  catcher.move();
  for (int i = 1; i <index; i++) {
    catcher.catchRaindrop(i);
  }

  lightning.display();
  cloud.display();
}

