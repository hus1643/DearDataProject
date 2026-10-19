PVector pos,pos2;

Bike demo,demo2;
void setup() {
  size(800, 400);
  pos = new PVector(100,100);
  pos2 = new PVector(200,200);
  rectMode(CENTER);
  demo = new Bike(pos);
  demo2 = new Bike(pos2);
}

void draw() {
  background(230);
  // road
  line(0, 50, width, 50);
  line(0, height-50, width, height-50);
  
  demo.showRegularBike(); //<>//
  demo.move();
  
  demo2.showRegularBike();
  demo2.move();
  

}

//void bike(float x, float y) {
//  float barHeight = 1.5;
//  //line(x, y, x+50, y);
//  // frame
//  line(x, y, x+diameter*barHeight, y-diameter*barHeight);
//  line(x+diameter*2, y, x+diameter*barHeight, y-diameter*barHeight);
//  // handbar
//  rect(x+diameter*barHeight,y-diameter*barHeight,20,5);
  
//  // wheels
//  circle(x, y, diameter);
//  circle(x+diameter*2, y, diameter);
//  circle(x, y, diameter/5);
//  circle(x+diameter*2, y, diameter/5);
  
//  //stroke(255, 0, 0);
//  //line(x-diameter/2, y+50, x+50+diameter/2, y+50); -> wheel base
//  stroke(0);
  
//  //seat
//  line(x+diameter-(diameter/4),y,x,y-diameter);
//  ellipse(x,y-diameter,diameter/2,diameter/4);
//  // pedals
//  circle(x+diameter-(diameter/4),y,diameter/2);
//  circle(x+diameter-(diameter/4),y,diameter/4);
//}
