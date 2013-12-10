class Timer {
  int currentTime = 0;
  int oldTime = 0;

  Timer() {
    currentTime = millis();
  }

  void releaseRain() {
    if (millis() - oldTime >= 2000) {
      index+=3;
      oldTime = millis();
    }
  }
}

