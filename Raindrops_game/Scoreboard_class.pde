class Scoreboard {

  Scoreboard() {
  }

  void display() {
    fill(0, 255, 0);
    rect(220, 20, 60, 40);
    fill(0);
    text(score, 250, 50);
  }
}

