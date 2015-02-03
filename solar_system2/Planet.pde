class Body
{
  float bodySize = 10;
  float divisor = 10;
  float orbitSpeed = TWO_PI/360.0;
  float orbitPos = 0;
  float orbitRadius = 500;
  public float bodyX = 0;
  public float bodyY = 0;
  
  Body(float speed, float radius, float size, float moonX, float moonY)
  {
    bodySize = size/divisor;
    orbitSpeed *= 365/speed;
    orbitRadius = radius/divisor;
    bodyX = moonX;
    bodyY = moonY;
  }
  
  Body(float speed, float radius, float size)
  {
    bodySize = size/divisor;
    orbitSpeed *= 365/speed;
    orbitRadius = radius/divisor;
    bodyX = 0;
    bodyY = -1/orbitRadius;
  }

  Body(float sunSize)
  {
    bodySize = sunSize/divisor;
  }
  
  void sun()
  {
    noFill();
    stroke(0,0,255);
    if ((bodySize/zoom)>6)
    {
      ellipse(0,0,bodySize/zoom,bodySize/zoom);
    }
    else
    {
      pushStyle();
      strokeWeight(1);
      stroke(random(95,100), 255, 255);
      noFill();
      ellipse(bodyX/zoom,bodyY/zoom,6,6);
      popStyle();
    }
      
  }
  
  void moon(float moonX, float moonY)
  {
    pushStyle();
    
    noFill();
    stroke(200);
    strokeWeight(1);
    ellipse(moonX/zoom, moonY/zoom, (orbitRadius*2)/zoom, (orbitRadius*2)/zoom);
    popStyle();
    orbitPos += orbitSpeed/5;
    if (orbitPos >= TWO_PI)
    {
      orbitPos = 0;
    }
    bodyX  = moonX+(cos(orbitPos)*orbitRadius)/zoom;
    bodyY  = moonY+(sin(orbitPos)*orbitRadius)/zoom;
  }
  
  void update()
  {
    
    orbitPos += orbitSpeed/5+5;
    if (orbitPos >= TWO_PI)
    {
      orbitPos = 0;
    }
    bodyX  = cos(orbitPos)*(orbitRadius)/zoom;
    bodyY  = sin(orbitPos)*(orbitRadius)/zoom;
   
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
    if (bodySize>2)
    {
      ellipse(bodyX/zoom,bodyY/zoom,bodySize/zoom,bodySize/zoom);
    }else{
      pushStyle();
      strokeWeight(1);
      stroke(random(200,225), 255, 255, 255);
      noFill();
      beginShape(LINES);
        vertex(bodyX/zoom,bodyY/zoom);
        vertex((bodyX/zoom)+50,(bodyY/zoom)-30);
        vertex((bodyX/zoom)-10,(bodyY/zoom)-30);
      endShape();
      ellipse(bodyX/zoom,bodyY/zoom,1,2);
      
      popStyle();
    }
    popMatrix();
  }
  void moonCreate()
  {
    pushMatrix();
    ellipseMode(CENTER);
    noFill();
    stroke(255);
    ellipse(bodyX/zoom,bodyY/zoom,bodySize/zoom,bodySize/zoom);
    popMatrix();
  }
}
