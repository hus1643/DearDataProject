PVector pos, pos2; //<>//

Bike demo, demo2;
void setup() {
  size(800, 400);
  pos = new PVector(100, 100);
  pos2 = new PVector(200, 200);
  rectMode(CENTER);
  demo = new Bike(pos);
  demo2 = new Bike(pos2);
}

void draw() {
  background(230);
  // road
  line(0, 50, width, 50);
  line(0, height-50, width, height-50);
  
  demo.showRegularBike();
  demo.move();
  demo2.showRegularBike();
  demo2.move();
}
