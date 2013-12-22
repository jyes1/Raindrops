class Scoreboard {

  Scoreboard() {
  }

  void displayCaught() { //this is what will display the amount caught
    fill(0, 255, 0); //a green...
    rect(125, 20, 60, 40); //box with those dimensions.
    fill(0); //also with black text...
    text(caught, 155, 50); //it will display the amount of caught at the location (155, 50)
  }

  void displayMissed() { //this is what will display the amount missed
    fill(255, 0, 0); //a red...
    rect(215, 20, 60, 40); //box with those dimensions.
    fill(0); //also with black text...
    text(missed, 245, 50); //it will display the amount of missed at the location (155, 50)
  }
}

