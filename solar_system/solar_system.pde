import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
/*-- Classes --*/
Minim sound;
AudioPlayer music;

Planet mercury;
Planet venus;
Planet earth;
Planet mars;
Sun sun;

BGSetup bground;
/*------------*/

/*-------- display variables --------*/
float halfwidth;
float halfheight;

/*-----------------------------------*/

void setup()
{
  size(displayWidth,displayHeight,P2D);
  colorMode(HSB);
  frameRate(60);
  //constructors
  mercury = new Planet(88,   70,    2.440);
  venus   = new Planet(255,  107,   6.052);
  earth   = new Planet(365,  147.1, 6.371); //speed,orbit,size
  mars    = new Planet(687,  288,   3.390);
  sun     = new Sun(69.58);
  
  sound = new Minim(this);
  music = sound.loadFile("14 Tears From The Compound Eye.mp3");
  music.rewind();
  music.play();
  
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
  sun.draw();
  
  noCursor();
}

boolean sketchFullScreen()
{
  return true;
}
