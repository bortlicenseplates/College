class Sun
{
  float sunSize;
  
  Sun(float size)
  {
    sunSize = size;
  }
  
  void draw()
  {
    noFill();
    stroke(0,0,255);
    ellipse(0,0,sunSize,sunSize);
  }
}
