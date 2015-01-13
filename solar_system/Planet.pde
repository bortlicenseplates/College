class Body
{
  float bodySize = 10;
  float divisor = 5;
  float orbitSpeed = TWO_PI/360.0;
  float orbitPos = 0;
  float orbitRadius = 500;
  public float bodyX = 0;
  public float bodyY = 0;
  
  Body(float speed, float radius, float size, float moonX, float moonY)
  {
    bodySize = size;
    orbitSpeed *= 365/speed;
    orbitRadius = radius;
    bodyX = moonX;
    bodyY = moonY;
  }
  
  Body(float speed, float radius, float size)
  {
    bodySize = size;
    orbitSpeed *= 365/speed;
    orbitRadius = radius;
    bodyX = 0;
    bodyY = -1/orbitRadius;
  }

  Body(float sunSize)
  {
    bodySize = sunSize;
  }
  
  void sun()
  {
    noFill();
    stroke(0,0,255);
    ellipse(0,0,bodySize,bodySize);
  }
  
  void moon(float moonX, float moonY)
  {
    pushStyle();
    
    noFill();
    stroke(200);
    strokeWeight(1);
    ellipse(moonX, moonY, orbitRadius*2, orbitRadius*2);
    popStyle();
    orbitPos += orbitSpeed/divisor;
    if (orbitPos >= TWO_PI)
    {
      orbitPos = 0;
    }
    bodyX  = moonX+(cos(orbitPos)*orbitRadius);
    bodyY  = moonY+(sin(orbitPos)*orbitRadius);
  }
  
  void update()
  {
    
    orbitPos += orbitSpeed/divisor;
    if (orbitPos >= TWO_PI)
    {
      orbitPos = 0;
    }
    bodyX  = cos(orbitPos)*orbitRadius;
    bodyY  = sin(orbitPos)*orbitRadius;
   
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
    noStroke();
    ellipse(bodyX,bodyY,bodySize,bodySize);
    popMatrix();
  }
  void moonCreate()
  {
    pushMatrix();
    ellipseMode(CENTER);
    noFill();
    stroke(255);
    ellipse(bodyX,bodyY,bodySize,bodySize);
    popMatrix();
  }
}
