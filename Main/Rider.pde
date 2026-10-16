class Rider{
  // rider wearing a helmet or not
  char helmet;
  char sex;
  // e-hire,e-personal,personal
  PVector type;
  // pavement or road
  char where;
  // time of day
  int hour;
  
  Rider(int hour,char sex,char helmet,char where){
    this.hour = hour;
    this.sex = sex;
    this.helmet = helmet;
    this.where = where;
  }
  // display the rider
  void display(){
  }
  
  
}
