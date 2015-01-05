class Planet
{
  float planetSize = 10;
  float divisor = 5;
  float orbitSpeed = TWO_PI/360.0;
  float orbitPos = 0;
  float orbitRadius = 500;
  float planetX = 0;
  float planetY = 0;
  
  Planet(float speed, float radius, float size)
  {
    planetSize = size;
    orbitSpeed *= 365/speed;
    orbitRadius = radius;
    planetX = 0;
    planetY = -1/orbitRadius;
  }
  
  void update()
  {
    
    orbitPos += orbitSpeed/divisor;
    if (orbitPos >= TWO_PI)
    {
      orbitPos = 0;
    }
    planetX  = cos(orbitPos)*orbitRadius;
    planetY  = sin(orbitPos)*orbitRadius;
   
  }
  
  void draw()
  {
    create();
    update();
  }
  
  void create()
  {
    pushMatrix();
    ellipseMode(CENTER);
    fill(100,0,255);
    ellipse(planetX,planetY,planetSize,planetSize);
    noStroke();
    popMatrix();
  }
}
