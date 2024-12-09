
//your variable declarations here
Spaceship bob;
Star [] bub = new Star [100];
ArrayList <Asteroid> beb;

public void setup()
{

  size(500, 500);
  background (0);
  bob = new Spaceship();
  for (int i =0; i<bub.length; i++) {
    bub[i] = new Star();
  }
  beb = new ArrayList<Asteroid>();
  for (int i = 0; i < 5; i++) {
    beb.add(new Asteroid());
  }
}
public void draw()
{
  background (0);
  bob.show();
  bob.move();
  for (int i =0; i<bub.length; i++) {
    bub[i].show();
  }
  for (int i = beb.size() - 1; i >= 0; i--) {
    Asteroid a = beb.get(i);
    a.show();
    a.move();
    if (dist((float) a.getCenterX(), (float) a.getCenterY(), (float) bob.getX(), (float) bob.getY()) < 20)
    {
      beb.remove(i);
    }
  }
}
public void keyPressed() {
  if (key =='w') {
    bob.accelerate(0.1);
  }
  if (key =='a') {
    bob.turn(-5*PI);
  }
  if (key =='d') {
    bob.turn(5*PI);
  }
  if (key =='f') {
    bob.setX((Math.random()*500));
    bob.setY((Math.random()*500));
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setdirection(Math.random()*360);
    bob.getXspeed();
    bob.getYspeed();
    bob.getdirection();
    bob.getX();
    bob.getY();
  }
}
