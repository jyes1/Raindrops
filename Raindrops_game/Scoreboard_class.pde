class Scoreboard {

  Scoreboard() {
  }

  void displayCaught() { //this is what will display the amount caught
    fill(0, 255, 0); //a green...
    rect(125, 20, 60, 40); //box with those dimensions. it is green to show that it is good
    if (caught > 0 || missed > 0) { //only displays score once you've caught or missed raindrops
      fill(0); //color of the text of the amount caught. It is black.
      text(caught, 155, 50); //it will display the amount of caught at the location (155, 50)
    }
  }

  void displayMissed() { //this is what will display the amount missed
    fill(255, 0, 0); //a red...
    rect(215, 20, 60, 40); //box with those dimensions 
    if (caught > 0 || missed > 0) { //only displays score once one or more raindrops have been caught or missed. 
      fill(0); //color of the text of the amount missed
      text(missed, 245, 50); //it will display the amount of missed at the location (155, 50)
    }
  }
}

