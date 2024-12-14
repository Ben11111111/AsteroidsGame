

class Spaceship extends Floater
{
  public Spaceship() {
    corners = 4;  //the number of corners, a triangular floater has 3
    xCorners= new int[]{-8, 16, -8, -2};
    yCorners= new int[]{-8, 0, 8, 0};
    myColor = color(255);
    myCenterX = width/2;
    myCenterY = height/2; //holds center coordinates
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions
    myPointDirection = 0;
  }
   public void hyperspace(){
  myCenterX = (Math.random()*500);
  myCenterY = (Math.random()*500);
  myXspeed = 0;
  myYspeed = 0;
  myPointDirection = (Math.random()*360);
}
  public double getX () {
    return myCenterX;
  }
  public double getY () {
    return myCenterY;
  }
  public void setX (double n) {
    myCenterX = n;
  }
  public void setY (double n) {
    myCenterY = n;
  }

  public double getXspeed () {
    return myXspeed;
  }
  public void setXspeed (double n) {
    myXspeed = n;
  }
  public double getYspeed () {
    return myYspeed;
  }
  public void setYspeed (double n) {
    myYspeed = n;
  }
  public double getdirection () {
    return myPointDirection;
  }
  public void setdirection (double n) {
    myPointDirection = n;
  }
}
