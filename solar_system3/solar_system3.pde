/*------------ Classes --------------*/
Controller controller;  
//
Body mercury;                        //
Body venus;                          //
Body earth;                          //
Body mars;   
Body jupiter;
Body saturn;
Body uranus;
Body neptune;

Body sun;                            //
Body moon;                           //
                                     //
BGSetup bground;                     //
View view;
                                     //
/*-----------------------------------*/



/*-------- display variables --------*/
float halfwidth;                     //
float halfheight;                    //
float zoom;                          //
float zoomx;                         //
float zoomy;                         //
float speeddiv;                      //
/*-----------------------------------*/

void setup()
{
  size(displayWidth*2,displayHeight*2,P2D);
  colorMode(HSB);
  frameRate(60);
  //constructors
  controller = new Controller();
  
  sun     = new Body(1392);
  
  mercury = new Body(88,     57910,     2.440);//speed,orbit,size
  venus   = new Body(255,    107200,    6.052);
  earth   = new Body(365,    147100,    6.371); 
  mars    = new Body(687,    288900,    3.390);
  jupiter = new Body(4333,   778500,    69.911);
  saturn  = new Body(10759,  1433000,   58.232);
  uranus  = new Body(687,    2877000,   25.362);
  neptune = new Body(687,    4503000,   24.622);
  
  moon    = new Body(27,    10,   1.738,  earth.bodyX, earth.bodyY);
  
  view = new View();
  
  bground = new BGSetup();
  //declare display varibles
  halfwidth    =    (width/2);
  halfheight   =    (height/2);
  zoom         =    1;
  zoomx        =    halfwidth;
  zoomy        =    halfheight;
  speeddiv     =    1;
}

void draw()
{
  view.update();
  background(0);
  //Centre Screen to (0,0)
  translate(zoomx,zoomy);
  //scale(zoom);
  //pushMatrix();
  //bground.draw();

  //popMatrix();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  saturn.draw();
  uranus.draw();
  neptune.draw();
  sun.sun();
  moon.moon(earth.bodyX, earth.bodyY);
  moon.create();
  controller.ctrl();
  
  noCursor();
}

boolean sketchFullScreen()
{
  return true;
}
