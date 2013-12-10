class Cloud {
  PImage cloud; //imported the image
  int WidthC;
  int HeightC;

  Cloud() {
    WidthC = 175; //declaring the width of the picture so the picture displays in the first place
    HeightC = 111; //correct height of the actual picture
    cloud = loadImage("cloud1.png"); //loads the picture from the folder
  }
  void display() {
    image(cloud, 300, 20, WidthC, HeightC); //this displays the lightning image
  }
}

