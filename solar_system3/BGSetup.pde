class BGSetup
{
  //int counter = 0;
  int ALPHALimit = 300;
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
    if (bgALPHA < ALPHALimit)
    {
      bgALPHA += 0.1;
    }
    else
    {
      bgH = random(0,255);
      bgS = random(0,200);
      bgB = random(50,100);
      bgALPHA = 50;
    }
  }
  
  void create()
  {
    noStroke();
    fill(bgH,bgS,bgB,bgALPHA);
    rect(-halfwidth,-halfheight,width*3,height*3);
  }
  
}
