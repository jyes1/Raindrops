Raindrop[] rain = new Raindrop[100]; 
PImage rainy; //creates a PImage called c
int index; //creates an integer called index
Catcher catcher; //creates a Catcher called catcher. i keep it catcher for simplicity and because i can easily recognize the upercase vs. lowercase differentiation. 
Timer timer; //creates a timer called timer.
Scoreboard scoreboard;
PImage cloud; //creates a PImage called cloud
int WidthC; //The width of the cloud
int HeightC; //the height of the cloud
boolean run=false; //this creates the 
boolean gameOver = false;
int x, y, w, h;
int startTime;
int caught;
int missed;

void setup() {
  for (int i = 1; i <rain.length; i++) {
    rain[i] = new Raindrop();
  }
  size(500, 500); //size of the sketch. it is the same size as the picture of the rain.
  catcher = new Catcher(); //creates a new Catcher named catcher
  timer = new Timer(); //creates a new Timer named timer
  scoreboard = new Scoreboard();
  index = 1; //sets the index to 1
  WidthC = 175; //defines width of cloud 
  HeightC = 111; //defines hight of cloud
  cloud = loadImage("cloud1.png"); //associates the "cloud" with the actual picture
  textSize(25); //makes the size of the text bigger
  textAlign(CENTER); //alligns the text in the center instead of top left corner.
  rainy = loadImage ("596578-1440x900-[DesktopNexus.com].jpg"); //loads the image by which rainy is defined by. 
  strokeWeight(1); // makes lines areker and more visible
  x = 100;
  y = 200;
  w = 300;
  h = 100;
  startTime = millis();
}

void draw() {
  background(rainy); //background is equal to the picture of rain
  if (!gameOver) {
    if (run) { //if the program runs... (emost other things are included here)
      for (int i = 1; i <index; i++) { //for the conditions where i is less than the index...
        rain[i].move(); //the rain will move
        rain[i].display(); //the rain will display
      }
      catcher.display(); //this calls on the Catcher class toallow the catcher to be displayed. 
      catcher.move(); //this calls on the Catcher class toallow the catcher to be moved. 
      textSize(40);
      fill(255, 0, 0); //and they will also be red
      text((millis() - startTime)/1000, 50, 75); //the seconds will be displayed as whole seconds as they count up...
      textSize(25);
      scoreboard.displayCaught();
      scoreboard.displayMissed();
      timer.releaseRain(); //this calls on the releasing rain from the timer class
      timer.flashLightning(); //this calls on the flashing lightning from the timer class
      image(cloud, 300, 20, WidthC, HeightC); //this creates the image of the cloud. the lightning goes before this picture so it slashes behind the cloud.
      for (int i = 1; i <index; i++) { //under these circumstances, where the i is less than the previously defined index...
        catcher.catchRaindrop(i); //the catcher will catch the raindrop
      }
    }
  }


  if (!run) { //if it's not running...
    fill(255, 0, 0);
    rect(100, 200, 300, 100);
    fill(0);
    text("Click In Box To Start", width/2, height/2);
  }

  if (missed >= 50) { //if the program has run for more than 20 seconds...
    gameOver=true; //it will stop running
    background(255); //there will be a white background... textSize(25); //and in size 25 text it will say...
    fill(255, 0, 0);
    rect(x, y, w, h);
    fill(0);
    text("GAME OVER \n CLOSE AND RESTART", width/2, height/2); //"GAME OVER CLOSE AND RESTART" ON TWO SEPERATE LINES AND IN THE CENTER OF THE SCREENfill(255);
  }
}

void mousePressed() {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
    timer.oldTimeR = millis();
    timer.oldTimeL = millis();
    startTime = millis();
    run=true;
  }
}

