Raindrop[] rain;
void setup() {
  size(500,500);
  noStroke();
  rain=new Raindrop[2000];
  for(int i=0; i<rain.length; i++) {
    rain[i]=new Raindrop();
  }
}

void draw() {
  background(0);
  
  for(int i=0; i<rain.length; i++) {
    rain[i].display();
    rain[i].move();
  }
}
