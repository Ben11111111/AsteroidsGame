class Asteroid extends Floater
{
  private double rotSpeed;

  public Asteroid () {
    corners = 6;
    xCorners = new int []{-11, 7, 13, 6, -11, -5};
    yCorners = new int []{-8, -8, 0, 10, 8, 0};
    myColor = color(255);
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    myXspeed = (Math.random()*5)-2;
    myYspeed = (Math.random()*5)-2;
    myPointDirection = Math.random()*360;
    rotSpeed = (Math.random()*5)-2;
  }
   public void turn (double rotSpeed)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+= rotSpeed;
  }
  public void move() {
    
    super.move();
  }
  public void show() {
    fill(myColor);
    
    super.show();
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
