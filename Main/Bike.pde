class Bike {
  PVector pos;
  float bikeSize = 10;
  //char type;

  Bike(PVector pos) {
    this.pos  = pos;
  }

  void showRegularBike() {
    float diameter = this.bikeSize;
    float x = this.pos.x;
    float y = this.pos.y;
    float barHeight = 1.5;
    //line(x, y, x+50, y);
    // frame
    line(x, y, x+diameter*barHeight, y-diameter*barHeight); // middle
    line(x+diameter*2, y, x+diameter*barHeight, y-diameter*barHeight); // right
    // handbar
    rect(x+diameter*barHeight, y-diameter*barHeight, diameter/2, diameter/10);

    // rear wheel
    PVector rearWheel = new PVector(x, y);
    circle(rearWheel.x, rearWheel.y, diameter);
    circle(rearWheel.x, rearWheel.y, diameter/5);
    drawSpoke(rearWheel, diameter/2);
    //front wheel
    circle(x+diameter*2, y, diameter);
    PVector frontWheel = new PVector(x+diameter*2, y);
    circle(frontWheel.x, frontWheel.y, diameter/5);
    drawSpoke(frontWheel, diameter/2);

    //stroke(255, 0, 0);
    //line(x-diameter/2, y+50, x+50+diameter/2, y+50); -> wheel base
    stroke(0);

    //seat
    line(x+diameter-(diameter/4), y, x, y-diameter);
    ellipse(x, y-diameter, diameter/2, diameter/4);
    //pedals
    circle(x+diameter-(diameter/4), y, diameter/2);
    circle(x+diameter-(diameter/4), y, diameter/4);
  }

  // add spokes to the wheels
  void drawSpoke(PVector centre, float r) {
    PVector core = new PVector(
      (centre.x-r) + r*cos(0.0f),
      (centre.y) + r*sin(0.0f)
      );

    float angle = PI/4;
    // draw lines from the core of circle to the edge of the wheel

    for (float theta = angle; theta <= 2*PI+angle; theta+=angle) {
      PVector spoke = new PVector(
        centre.x + r*cos(theta),
        centre.y - r*sin(theta)
        );
      line(core.x, core.y, spoke.x, spoke.y);
    }
  }
  // move
  void move() {
    float dx = random(1.4, 2.5);
    this.pos.x += dx;
  }
  
  // todo
  void showLadiesBike() {
    // find the intersection of the lines bike frame (middle) and bike seat
    // create a curve from that point to the hand bar
  }
}
