class Timer {
  int currentTime = 0; //this defines the current time initially as zero
  int oldTime = 0; //this defines the old time as zero initially

  Timer() {
    currentTime = millis(); //this sets the current time to milliseconds
  }

  void releaseRain() {
    if (currentTime - oldTime >= 2000) { //basically means if current time (as declared by millis) minus the time it used to be is 2000 milliseconds (or two seconds) it will...
      rain.add(new Raindrop()); //add another raindrop
      oldTime = currentTime; //this sets the old time as the current time, effectively restarting the cycle
    }
  }
  void lightning() {
    if (currentTime - oldTime >= 4000); //same basic idea as line 8, but sets the time at which it occurs to 4 seconds instead of 2. Says every 4 seconds...
    lightning.display(); //lightning from the lightning class will display
  }
}

