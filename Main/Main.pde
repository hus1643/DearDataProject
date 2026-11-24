PVector pos; //<>//
PVector initBike;
Bike []bikes;
String[] lines, tokens;
// raod markings
float roadTop = 85, roadMid = 345, roadBot = 540;

void setup() {
  size(800, 400);
  frameRate(60);
  rectMode(CENTER);
  // data parsing
  lines = loadStrings("data.csv");
  bikes = new Bike[lines.length-1];

  for (int i = 1; i < lines.length-1; i++) {
    tokens =split(lines[i], ',');
    int hour = int(trim(tokens[0]));
    String type = trim(tokens[1]);
    char sex = tokens[2].charAt(0);
    char helmet = tokens[3].charAt(0);
    boolean isRush = (hour == 8 || hour == 16);
    float laneY = 0;
    // if rush drawt the bikes in the rush zone
    if (isRush) {
      laneY = random(roadTop+48, roadMid- 22);
    } else {
      laneY = random(roadMid+52, roadBot- 22);
    }
    pos = new PVector(random(-width*1.8,width),laneY);
    bikes[i-1] = new Bike(pos,hour,type,sex,helmet);
    
  }
}

void draw() {
  background(230);
  randomSeed(42);
}
