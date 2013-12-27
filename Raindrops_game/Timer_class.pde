class Timer {
  PImage lightning; 
  int WidthL;//width of Lightning
  int HeightL; //Height of lightning
  int oldTimeR = 0; //declares the oldTime that the rain is released at
  int oldTimeL = 0; //declares the oldTime for the display of the lightning
  int currentTime = 0; //declares the current time since the game was started

  Timer() {
    WidthL = 75; //defines width of lightning
    HeightL = 83; //defines Height of lightning 
    lightning = loadImage("lightning-md.png"); //defines the variable lightning as the image
  }

  void releaseRain() { //makes more rain falls if...
    if (millis() - oldTimeR >= 2000) { //the current time - the old time is about 2000 ms or 2 seconds
      index+=5; //index which was defined in raindrops_game in this scenario represents the amount of raindrops added each 2 seconds
      oldTimeR = millis(); //after the 5 raindrops are added, oldtime is set back to zero, which restarts the cycle
    }
  }

  void flashLightning() { //flashes the lightning if...
    if (millis() - oldTimeL >= 3000) { //the current time or millis, - the old time is about 3000ms or 3 seconds
      image(lightning, 330, 95, WidthL, HeightL); //if those things occur, the image will display for 1 frame
      oldTimeL = millis(); //...and old time will be set back to millis() effectively restarting the cycle
    }
  }
  void clock() {
    textSize(40); //sets the text size to 40 for the timer so it is more noticable
    fill(255, 0, 0); //sets timer to red
    text(currentTime, 50, 75); //displays time as whole seconds as they count up. begins after start is pressed
    textSize(25); //sets text size back to 25 so the only text that is not 45 is the timer
    currentTime = (millis() - startTime)/1000; //displays the time since the game has started. displays in whole seconds.

  }
}

