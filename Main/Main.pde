PVector pos, pos2; //<>//
PVector initBike;
Bike []bikes;
void setup() {
  bikes = new Bike[30];
  size(800, 400);
  frameRate(30);
  pos = new PVector(100, 200);
  pos2 = new PVector(200, 300);
  rectMode(CENTER);
  for (int i = 0; i < bikes.length; i++) {
    initBike = new PVector(random(50, 100), random(30, height-30));
    bikes[i] = new Bike(initBike);
  }
}

void draw() {
  background(230);

  randomSeed(1);

  // road
  //line(0, 30, width, 30);
  //line(0, height-30, width, height-30);

  for (int i = 0; i < bikes.length; i++) {
    bikes[i].showRegularBike();
    bikes[i].move();
  }
  
  // time interval guidelines
  for(int i = 30; i < height; i+=50){
    line(0,i,width,i);
  }
}
