<<<<<<< HEAD
Catcher catcher; //This creates a Catcher called catcher
Timer timer; //This creates a Timer called timer
Cloud cloud; //This creates a Cloud called cloud
Lightning lightning; //This creates a Lightning called lightning
Raindrop[] rain = new Raindrop[20]; //trfcdqnwjkrbgcdfoskltmhgbvccnkgraobghmt4klecd fibuhjoytkp4reflkvbjhtioy5rl
void setup() {
  size(500, 500); 
//  rain.add(new Raindrop());
  catcher = new Catcher(); //This defines the catcher as a new Catcher as specified in the Catcher class
  timer = new Timer(); //This defines the timer as a new Timer as specified in the Timer class
  lightning = new Lightning(); //this defines the lightning as a new lightning from the Lightning class
  cloud = new Cloud(); //this defines the cloud as a new Cloud from the Cloud class
=======
Raindrop[] rain = new Raindrop[100]; 
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
>>>>>>> c9a9feda4a1532267f2f8400bb78e1af4bd9d836
}

void draw() {
  background(0);
<<<<<<< HEAD
  for (int i = 0; i >=0; i--) {
    rain[i].move(); 
    rain[i].display();
  }
  timer.releaseRain(); //since we created a Timer called timer, this takes the releaseRain function from the Timer class and draws it. 
  catcher.display(); //same as before, but this takes the display function from the Catcher class and draws it. 
  catcher.move(); //same as before, but this takes the display function from the Catcher class and allows it to be able to move. 
  catcher.catchRaindrop(rain); //This is what makes the rain dissappear after it has been caught.
  timer.lightning(); //this takes the lightning from the timer function and in effect displays it.
  cloud.display(); //same as before, but this takes the display function from the Cloud class and draws it. 
=======

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
  if (millis() > 10000) {
    run=false;
  }
>>>>>>> c9a9feda4a1532267f2f8400bb78e1af4bd9d836
}

