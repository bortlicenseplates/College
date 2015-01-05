class BGSetup
{
  int counter = 0;
  int countLimit = 300;
  float bgH = 0;
  float bgS = 0;
  float bgB = 0;
  float bgALPHA = 200;
  BGSetup()
  {
  }
  
  void draw()
  {
    update();
    create();
  }
  
  void update()
  {
    counter ++;
    if (counter < countLimit)
    {
      bgALPHA += 0.1;
    }
    else
    {
      bgH = random(0,255);
      bgS = random(0,200);
      bgB = random(50,200);
      counter = 0;
      bgALPHA = 20;
    }
  }
  
  void create()
  {
    noStroke();
    fill(bgH,bgS,bgB,bgALPHA);
    rect(-halfwidth,-halfheight,width+1,height+1);
  }
  
}
