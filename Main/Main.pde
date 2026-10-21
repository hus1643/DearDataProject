PVector pos, pos2; //<>//
PVector initBike;
Bike []bikes;
Bike demo, demo2;
void setup() {
  bikes = new Bike[10];
  size(800, 400);

  pos = new PVector(100, 200);
  pos2 = new PVector(200, 300);
  rectMode(CENTER);
  demo = new Bike(pos);
  demo2 = new Bike(pos2);
  for (int i = 0; i < 10; i++) {
    initBike = new PVector(random(50, 100), random(30, height-30));
    bikes[i] = new Bike(initBike);
  }
}

void draw() {
  background(230);

  randomSeed(1);
  
  // road
  line(0, 30, width, 30);
  line(0, height-30, width, height-30);

  for (int i = 0; i < 10; i++) {
    bikes[i].showRegularBike();
    bikes[i].move();
  }

  demo.showRegularBike();
  //demo.move();
  demo2.showRegularBike();
  //demo2.move();
}
