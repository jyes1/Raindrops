class Lightning {
  PImage lightning;
  int WidthL;
  int HeightL;

  Lightning() {
    WidthL = 75;
    HeightL = 83;
    loadImage("lightning-md.png");
  }
  
  void display() {
    image(lightning, 330, 95, WidthL, HeightL);

