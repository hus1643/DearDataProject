class Rider{
  // rider wearing a helmet or not
  char helmet;
  char sex;
  // e-bike,regular
  char type;
  // pavement or road
  char where;
  // time of day
  int hour;
  float x,y;
  
  Rider(int hour,char type,char sex,char helmet,char where){
    this.hour = hour;
    this.type = type;
    this.sex = sex;
    this.helmet = helmet;
    this.where = where;
  }
  // display the rider
  void display(){
    // show rider
  }
  void move(){
    // move rider
  }
  
}
