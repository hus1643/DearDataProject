class Bike {

  PVector pos;
  //char type;

  Bike(PVector pos) {
    this.pos  = pos;
  }

  void showRegularBike() {
    float diameter = 50;
    float x = this.pos.x;
    float y = this.pos.y;
    float barHeight = 1.5;
    //line(x, y, x+50, y);
    // frame
    line(x, y, x+diameter*barHeight, y-diameter*barHeight);
    line(x+diameter*2, y, x+diameter*barHeight, y-diameter*barHeight);
    // handbar
    rect(x+diameter*barHeight, y-diameter*barHeight, diameter/2, diameter/10);

    // wheels
    circle(x, y, diameter);
    circle(x+diameter*2, y, diameter);
    circle(x, y, diameter/5);
    circle(x+diameter*2, y, diameter/5);

    //stroke(255, 0, 0);
    //line(x-diameter/2, y+50, x+50+diameter/2, y+50); -> wheel base
    stroke(0);

    //seat
    line(x+diameter-(diameter/4), y, x, y-diameter);
    ellipse(x, y-diameter, diameter/2, diameter/4);
    // pedals
    circle(x+diameter-(diameter/4), y, diameter/2);
    circle(x+diameter-(diameter/4), y, diameter/4);
  }
  void move(){
    this.pos.x += 1;
  }
  
}
