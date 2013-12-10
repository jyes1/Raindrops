Raindrop[] rain = new Raindrop[100]; 
PImage c;
int index;
Catcher catcher;
Timer timer;
PImage cloud;
int WidthC;
int HeightC;
boolean run=true;

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
  textSize(25);
  textAlign(CENTER);
  c = loadImage ("rain1.png");
}

void draw() {
  background(c);

  if (run) {
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
    fill(255, 0, 0);
    text(millis()/1000, 50, 50);
  }

  if (!run) {
    background(255);
    textSize(25);
    text("GAME OVER \n CLOSE AND RESTART", width/2, height/2);
  }
  if (millis() > 15000) {
    run=false;
  }
}

