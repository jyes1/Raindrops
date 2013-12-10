class Lightning {
  PImage lightning; //imported the image
  int WidthL;
  int HeightL;

  Lightning() {
    WidthL = 75; //declaring the width of THIS picture so the picture displays in the first place
    HeightL = 83; //correct height of the actual picture
    lightning = loadImage("lightning-md.png"); //loads the picture from the folder
  }
  
  void display() {
    image(lightning, 330, 95, WidthL, HeightL); //this displays the lightning
  }
}
