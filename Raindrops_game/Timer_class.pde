class Timer {
<<<<<<< HEAD
  int currentTime = 0; //this defines the current time initially as zero
  int oldTime = 0; //this defines the old time as zero initially

  Timer() {
    currentTime = millis(); //this sets the current time to milliseconds
  }

  void releaseRain() {
    if (currentTime - oldTime >= 2000) { //basically means if current time (as declared by millis) minus the time it used to be is 2000 milliseconds (or two seconds) it will...
      rain.add(new Raindrop()); //add another raindrop
      oldTime = currentTime; //this sets the old time as the current time, effectively restarting the cycle
=======
  PImage lightning;
  int WidthL;
  int HeightL;
  int currentTime = 0;
  int oldTimeR = 0;
  int oldTimeL = 0;
  int timeLeft;

  Timer() {
    currentTime = millis();
    WidthL = 75;
    HeightL = 83;
    lightning = loadImage("lightning-md.png");
    timeLeft = (30-millis()/1000);
  }

  void releaseRain() {
    if (millis() - oldTimeR >= 2000) {
      index+=5;
      oldTimeR = millis();
    }
  }
  void flashLightning() {
    if (millis() - oldTimeL >= 3000) {
      image(lightning, 330, 95, WidthL, HeightL);
      oldTimeL = millis();
>>>>>>> c9a9feda4a1532267f2f8400bb78e1af4bd9d836
    }
  }
  void lightning() {
    if (currentTime - oldTime >= 4000); //same basic idea as line 8, but sets the time at which it occurs to 4 seconds instead of 2. Says every 4 seconds...
    lightning.display(); //lightning from the lightning class will display
  }
}

