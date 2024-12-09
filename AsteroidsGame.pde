

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
    Asteroid asteroid = new Asteroid();
    beb.add(asteroid);
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
  for (int i = 0; i < beb.size(); i++) {
    Asteroid a = beb.get(i);
    a.show();
    a.move();
    a.turn(a.rotSpeed);
    if (dist((float) a.getCenterX(), (float) a.getCenterY(), (float) bob.getX(), (float) bob.getY()) < 20)
    {
      beb.remove(i);
      i--;  
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
    bob.hyperspace();
  }
}
