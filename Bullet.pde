class Bullet extends Floater {
    
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed =  theShip.getXspeed();
    myYspeed =  theShip.getYspeed();
    myPointDirection = theShip.getdirection();
    accelerate(6);
  }
  public void show () {
    fill(48,225,240);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
 public double getX () {
    return myCenterX;
  }
  public double getY () {
    return myCenterY;
  }
}
