class Cloud {
  PImage cloud;
  int WidthC;
  int HeightC;

  Cloud() {
    WidthC = 175;
    HeightC = 111;
    cloud = loadImage("cloud1.png");
  }
  void display() {
    image(cloud, 300, 20, WidthC, HeightC);
  }
}

