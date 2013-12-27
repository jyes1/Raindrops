Raindrop[] rain = new Raindrop[500]; //this gives amount of raindrops that can possibly fall. If you catch 451 before missing 50, (which is highly unlikely) the game won't work. I don't count as a glitch because i guarantee this will not happen
PImage rainy; //creates PImage called c
int index; //creates integer called index
Catcher catcher; //creates a Catcher called catcher. I keep it catcher for simplicity and because I can easily recognize the upercase vs. lowercase differentiation
Timer timer; //creates Timer called timer
Scoreboard scoreboard; //creates Scoreboard called scoreboard
PImage cloud; //creates PImage called cloud
int WidthC; //width of the cloud
int HeightC; //height of the cloud
boolean gameOver = false; //game over function. it starts out as being false and is only made true when certain things happen
boolean run=false; //this creates the boolean that will make practically the whole program run
int x, y, w, h; //declares all the parameters for what will be the game over box
int startTime; //declaring variable startTime which will make everything start only once the start box at beginning is clicked
int caught; //declaring variable caught which is used in Catcher class and Scoreboard class
int missed; //declaring variable missed which is used in Catcher class and Scoreboard class

void setup() {
  for (int i = 1; i <rain.length; i++) { //for statement which will add raindrops
    rain[i] = new Raindrop(); //declaring the previously defined rain
  }
  size(500, 500); //size of the sketch. It is the same size as the picture of the rain (and must be)
  catcher = new Catcher(); //creates a new Catcher named catcher. Declares what a catcher is
  timer = new Timer(); //creates a new Timer named timer. Declares what a timer is
  scoreboard = new Scoreboard(); //creates a new Scoreboard named scoreboard. Declares what a scoreboard is
  index = 1; //sets the index to 1. It must be 1 so that in a later for statement in the void draw section, i = 0. SEE BELOW
  WidthC = 175; //defines width of cloud 
  HeightC = 111; //defines hight of cloud
  cloud = loadImage("cloud1.png"); //associates the "cloud" with the actual picture
  textSize(25); //makes the size of the text bigger. Meant to be the text size for the entire drawing unless otherwise declared
  textAlign(CENTER); //alligns the text in the center instead of top left corner.
  rainy = loadImage ("596578-1440x900-[DesktopNexus.com].jpg"); //loads the image by which rainy is defined by
  strokeWeight(1); // makes lines clearer and more visible
  x = 100; //declares the x coordinate of the game over rectangle
  y = 215; //declares the y coordinate of the game over rectangle
  w = 300; //declares the width of the game over rectangle
  h = 100; //declares the height of the game over rectangle
  startTime = millis(); //sets the previously declared startTime to millis() or the current time (beginning after start box is clicked)
}

void draw() {
  background(rainy); //background is equal to the picture of rain
  if (!gameOver) { //if game over is now true...
    if (run) { //if the program runs... (most other things are included here)
      for (int i = 1; i <index; i++) { //SEE ABOVE for the conditions where i is less than the index...
        rain[i].move(); //the rain will move
        rain[i].display(); //the rain will display
      }
      timer.releaseRain(); //this calls on the releasing rain from the timer class
      timer.flashLightning(); //this calls on the flashing lightning from the timer class
      timer.clock(); //this calls on the clock class to draw the clock in void draw. this is needed for the time to be properly displayed at the end of the game.
      catcher.display(); //this calls on the Catcher class to allow the catcher to be displayed
      catcher.move(); //this calls on the Catcher class to allow the catcher to be moved 
      missed = (index - caught - 6); //this displays the amount missed. since 5 are released every 2 seconds missed can be written as index (5) minus the amount caught, minus 1 since index=1 already. An additional minus 5 has to be added to account for the 5 that will be added automatically since the index increases by 5 every 2 secs. 
      scoreboard.displayCaught(); //calls on the Scoreboard class to display the amount that are caught
      scoreboard.displayMissed(); //calls on the Scoreboard class to display the amount that are caught
      image(cloud, 300, 20, WidthC, HeightC); //this creates the image of the cloud. the lightning goes before this picture so it slashes behind the cloud.
      for (int i = 1; i <index; i++) { //under these circumstances, where the i can be determined to be 0, more i is added
        catcher.catchRaindrop(i); //this dcalls on the catchRaindrop function from the catcher class
      }
    }
  }

  if (!run) { //if it's not running (AKA if it hasn't been started yet...)
    fill(255, 0, 0); //there is a red...
    rect(100, 192.5, 300, 100); //box of these parameters.
    fill(0); //and also with a fill of zero...
    text("Click In Box To Start", width/2, height/2); //there is text that says this
  }

  if (missed > 49) { //if the player misses more than 50 raindrops
    gameOver=true; //gameOver becomes true and the game ends. Game over is comprised of...
    background(255); //a white background... 
    fill(255, 0, 0); //and a red...
    rect(x, y, w, h); //rectangle with previously defined parameters.
    fill(0); //in addition there will be in black text...
    text("GAME OVER \n CLOSE AND RESTART", width/2, height/2); //this text will say: "GAME OVER CLOSE AND RESTART" ON TWO SEPERATE LINES AND IN THE CENTER OF THE SCREENfill(255);
    scoreboard.displayCaught(); //it will also display those that you caught... 
    scoreboard.displayMissed(); //and those that you missed
    textSize(40); //sets the text size to 40 for the timer so it is more noticable
    fill(255, 0, 0); //sets timer to red
    text(timer.currentTime, 50, 75); //displays time as whole seconds as they count up. begins after start is pressed
    textSize(25); //sets text size back to 25 so the only text that is not 45 is the timer. The above 3 and this command display the timer in the gameOver screen while not allowing it to continue counting. it takes a snapshot of the time it was before the game ended.
  }
}

void mousePressed() { //this is what initiates the game
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) { //if you press the mouse within the start box
    timer.oldTimeR = millis(); //the timer for the raindrops starts
    timer.oldTimeL = millis(); //the timer for the lightning starts
    startTime = millis(); //the clock begins counting
    run=true; //and run becomes true which means the game starts
  }
}

