/*------------ Classes --------------*/
Body mercury;                        //
Body venus;                          //
Body earth;                          //
Body mars;                           //
Body sun;                            //
Body moon;                           //
                                     //
BGSetup bground;                     //
                                     //
/*-----------------------------------*/



/*-------- display variables --------*/
float halfwidth;                     //
float halfheight;                    //
                                     //
/*-----------------------------------*/

void setup()
{
  size(displayWidth,displayHeight,P2D);
  colorMode(HSB);
  frameRate(60);
  //constructors
  sun     = new Body(69.58);
  mercury = new Body(88,   70,    2.440);
  venus   = new Body(255,  107,   6.052);
  earth   = new Body(365,  147.1, 6.371); //speed,orbit,size
  mars    = new Body(687,  288,   3.390);
  moon    = new Body(27,    10,   1.738,  earth.bodyX, earth.bodyY);

  
  bground = new BGSetup();
  //declare display varibles
  halfwidth    =    (displayWidth/2) +1;
  halfheight   =   (displayHeight/2) +1;
}

void draw()
{
  
  //Centre Screen to (0,0)
  translate(halfwidth,halfheight);
  pushMatrix();
  bground.draw();
  popMatrix();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
  sun.sun();
  moon.moon(earth.bodyX, earth.bodyY);
  moon.create();
  
  noCursor();
}

boolean sketchFullScreen()
{
  return true;
}
