//your variable declarations here
Spaceship bob; 
public void setup() 
{
  
  size(500,500);
 background (0);
  bob = new Spaceship();
  
}
public void draw() 
{
  background (0);
  bob.show();
bob.move();
}

public void keyPressed(){
  if(key =='w'){
    bob.accelerate(0.1);
  
  }
   if(key =='a'){
    bob.turn(-5*PI);
  
  }
  if(key =='d'){
    bob.turn(5*PI);
  
  }
if(key =='f'){
   bob.setX((int)(Math.random()*500));
  bob.setY((int)(Math.random()*500));
  bob.getX();
   bob.getY();
  
  }
}
