class Timer {
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
    }
  }
}

