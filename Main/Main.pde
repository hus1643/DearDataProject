PVector pos, pos2; //<>//
PVector initBike;
Bike []bikes;
String[] lines;
void setup() {
  size(800, 400);
  frameRate(30);
  pos = new PVector(100, 200);
  pos2 = new PVector(200, 300);
  rectMode(CENTER);
  
  // data parse
  lines = loadStrings("data.csv");
  printArray(lines);
  println(lines.length-1);
  String [] tokens = split(lines[1],",");
  printArray(tokens);
  
  bikes = new Bike[lines.length];
  // Bike(PVector pos,int hour,String type,char sex,char helmet)
  for (int i = 1; i < bikes.length; i++) {
    initBike = new PVector(random(50, 100), random(30, height-30));
    int time;
    char
    bikes[i] = new Bike(initBike,tokens[i-1],tokens[i],tokens[i+1],tokens[i+2]);
  }
}

void draw() {
  background(230);
  randomSeed(1);

  // road
  //line(0, 30, width, 30);

  line(0, height-30, width, height-30);
  for (int i = 0; i < bikes.length; i++) {
    bikes[i].showRegularBike();
    bikes[i].move();
  }
  // time interval guidelines
  for (int i = 30; i < height; i+=50) {
    line(0, i, width, i);
  }
}
