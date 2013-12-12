class Timer {
  PImage lightning;
  int WidthL;//width of Lightning
  int HeightL; //Height of lightning
  int oldTimeR = 0; //
  int oldTimeL = 0;

  Timer() {
    WidthL = 75; //defines width of lightning
    HeightL = 83; //defines Height of lightning 
    lightning = loadImage("lightning-md.png"); //defines the variable lightning as the image
  }

  void releaseRain() { //makes more rain falls if...
    if (millis() - oldTimeR >= 2000) { //the current time - the old time is about 2000 ms or 2 seconds
      index+=5; //index which was defined in raindrops_game in this scenario represents the amount of raindrops added
      oldTimeR = millis(); //after the 5 raindrops are added, oldtime is set back to zero, which restarts the cycle
    }
  }
  void flashLightning() { //flashes the lightning if...
    if (millis() - oldTimeL >= 3000) { //the current time or millis, - the old time is about 3000ms or 3 seconds.
      image(lightning, 330, 95, WidthL, HeightL); //if those things occur, the image will display...
      oldTimeL = millis(); //...and old time will be set back to millis() effectively restarting the cycle
    }
  }
}

