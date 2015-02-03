class AsteroidBelt
{
  
  
  AsteroidBelt()
  {
    
  }
  void setup()
  {
    
    for (int i = 0; i < asteroidCount; i++)
    {
      asteroid[i].setup();
    }
    
  }
  void draw()
  {
    
    for (int i = 0; i < asteroidCount; i++)
    {
      asteroid[i].draw();
    }
    
  }
}
