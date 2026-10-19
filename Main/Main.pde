float x, y;
float diameter;

void setup() {
  size(800, 400);
  x = width/2;
  y = height/2;
  diameter = 50;
  //strokeWeight(3);
}

void draw() {
  background(230);
  // road
  line(0, 50, width, 50);
  line(0, height-50, width, height-50);
  bike(x, y);
  x+=2;
}

void bike(float x, float y) {
  //line(x, y, x+50, y);
  line(x, y, x+diameter, y-diameter);
  line(x+diameter*2, y, x+diameter, y-diameter);
  
  // wheels
  circle(x, y, diameter);
  circle(x+diameter*2, y, diameter);
    circle(x, y, diameter/5);
  circle(x+diameter*2, y, diameter/5);
  
  //stroke(255, 0, 0);
  //line(x-diameter/2, y+50, x+50+diameter/2, y+50); -> wheel base
  stroke(0);
  
  // pedals
  circle(x+diameter-(diameter/4),y,diameter/2);
  //seat
  line(x+diameter-(diameter/4),y,x,y-diameter);
  ellipse(x,y-diameter,diameter/2,diameter/4);
  
}
