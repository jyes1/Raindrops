class Scoreboard {

  Scoreboard() {
  }

  void displayCaught() {
    fill(0, 255, 0);
    rect(125, 20, 60, 40);
    fill(0);
    text(caught, 155, 50);
  }

  void displayMissed() {
    fill(255, 0, 0);
    rect(215, 20, 60, 40);
    fill(0);
    text(missed, 245, 50);
  }
}

