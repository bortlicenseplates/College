// ASTEROID BELT GLOBAL VARIABLES \\
// master particle count
int asteroidCount = 600;

// average distance from sun
// (should be roughly Mars distance + 1/3 distance between Mars & Jupiter)
float asteroidAverageDistance = 300;

// maximum distance deviation from average
// (should be just less than 1/3 distance between Mars & Jupiter)
float asteroidDistanceVariation = 60;

// average orbital velocity
float asteroidAverageVelocity = 0.1;

// maximum velocity deviation from average
float asteroidVelocityVariation = asteroidAverageVelocity/10*9;

// average asteroid size (strokeWeight)
//   chunky look = 1.5 - 3
//   minimal look = 0.8 - 1.5
int asteroidAverageSize = 1;

float asteroidSizeVariation = asteroidAverageSize/4*1;


// DECLARE ASTEROID BELT OBJECTS \\
// particle list
Asteroid[] asteroid = new Asteroid[asteroidCount];

// asteroid belt object
AsteroidBelt asteroidBelt;

// lensh flare object
PImage lensFlare;


float flicker;

void setup()
{
  
  size(displayWidth,displayHeight,P3D);
  frameRate(60);
  colorMode(HSB);
  
  // ASTEROID BELT SETUP \\
  // construct particles
  for (int i = 0; i < asteroidCount; i++)
  {
    asteroid[i] = new Asteroid();
  }
  
  // construct asteroid belt object
  asteroidBelt = new AsteroidBelt();
  
  // run setup method (populate particle array)
  asteroidBelt.setup();
  
  // load lens flare file
  lensFlare = loadImage("transformerslensflare31.png");
  
  
  
}
void draw()
{
  
  noCursor();
  background(0);
  
  // ASTEROID BELT DRAW \\
  // run draw method (draw shapes, rotate)
  asteroidBelt.draw();
  
  pushStyle();
  imageMode(CENTER);
  tint(255,flicker);
  image(lensFlare,width/2,height/2,400,400);
  popStyle();
  
  update();
  
}
void update()
{
  
  flicker = random(220,255);
  
}
boolean sketchFullScreen()
{
  return true;
}
