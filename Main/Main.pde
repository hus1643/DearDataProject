PVector pos, pos2; //<>//
PVector initBike;
Bike []bikes,tokens;
String[] lines;
void setup() {
  size(800, 400);
  frameRate(30);
  pos2 = new PVector(200, 300);
  rectMode(CENTER);
  
  // data parse
  lines = loadStrings("data.csv");
  printArray(lines);
  println(lines.length-1);
  printArray(tokens);
  
  bikes = new Bike[1];
  // Bike(PVector pos,int hour,String type,char sex,char helmet)
  for(int i = 0; i < bikes.length; i++){
    pos = new PVector(50, random(100,height-100));
    bikes[i] = new Bike(pos);
  }
}

void draw() {
  background(230);
  randomSeed(1);

  // road
  line(0, 30, width, 30);
  line(0, height-30, width, height-30);
    for (int i = 0; i < bikes.length; i++) {
    bikes[i].showMensBike();
    //bikes[i].showLadiesBike();
    bikes[i].move();
  }
}
