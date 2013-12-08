class Timer {
  int currentTime = 0;
  int oldTime = 0;

  Timer() {
    currentTime = millis();
  }

  void releaseRain() {
    if (currentTime - oldTime >= 3000) {
      oldTime = currentTime;
      text(millis(), width/2, height/2);
    }
  }
}

