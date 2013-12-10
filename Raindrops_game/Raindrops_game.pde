Raindrop[] rain = new Raindrop[1000];
int index;
Catcher catcher;
Timer timer;
PImage cloud;
int WidthC;
int HeightC;

void setup() {
  for (int i = 1; i <rain.length; i++) {
    rain[i] = new Raindrop();
  }
  size(500, 500);
  catcher = new Catcher();
  timer = new Timer();
  index = 1;
  WidthC = 175;
  HeightC = 111;
  cloud = loadImage("cloud1.png");
}

void draw() {
  background(0);
  for (int i = 1; i <index; i++) {
    rain[i].move();
    rain[i].display();
  }
  timer.releaseRain();
  timer.flashLightning();
  catcher.display();
  catcher.move();
  image(cloud, 300, 20, WidthC, HeightC);
  for (int i = 1; i <index; i++) {
    catcher.catchRaindrop(i);
  }
}

