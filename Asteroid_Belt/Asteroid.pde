class Asteroid
{
  
  int type;
  int size;
  
  float position;
  float distance;
  float velocity;
  
  int opacity;
  
  Asteroid()
  {
    
  }
  void setup()
  {
    
    size = int(random(asteroidAverageSize - asteroidSizeVariation, asteroidAverageSize + asteroidSizeVariation));
    position = int(random(0,360));
    velocity = random(asteroidAverageVelocity - asteroidVelocityVariation, asteroidAverageVelocity + asteroidVelocityVariation);
    distance = int(random(asteroidAverageDistance - asteroidDistanceVariation, asteroidAverageDistance + asteroidDistanceVariation));
    opacity = int(random(0,255));
    
  }  
  void draw()
  {
    
    stroke(255,opacity);
    
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(position));
    translate(distance,0);
    strokeWeight(size);
    point(0,0);
    popMatrix();
    
    update();
      
  }
  void update()
  {
    
    position += velocity;
    
  }
}
