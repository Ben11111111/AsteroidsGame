

//your variable declarations here
Spaceship bob;
Star [] bub = new Star [100];
ArrayList <Asteroid> beb = new ArrayList <Asteroid>();

public void setup()
{

  size(500, 500);
 
  bob = new Spaceship();
  for (int i =0; i<bub.length; i++) {
    bub[i] = new Star();
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
  for (int i = 0; i < beb.size(); i++) {
    beb.get(i).show();
    beb.get(i).move();
   
    
    if (dist((float) beb.get(i).getCenterX(), (float) beb.get(i).getCenterY(), (float) bob.getX(), (float) bob.getY()) < 20)
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
