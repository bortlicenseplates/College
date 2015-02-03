////GET CAMERA SWITCHING WORKING /\/\/\/\/\/\ Array Index Out Of Bounds -1\\\\

class Controller
{
  int focusCount = 0;
  
  Controller()
  {
  }
  
  void zoomIn()
  {
    if (zoom < 10000)
    {
      zoom *= 1.002;
    }
  }
  void zoomOut()
  {
    if (zoom > 1)
    {
      zoom *= 0.998;
    }
  }
  void faster()
  {
    if (speeddiv < 10000)
    {
      speeddiv *= 1.002;
    }
  }
  void slower()
  {
    if (speeddiv > 0)
    {
      speeddiv *= 0.998;
    }
  }
  void left()
  {
      zoomx += 5;
  }
  void right()
  {
      zoomx -= 5;
  }
  void up()
  {
      zoomy += 5;
  }
  void down()
  {
      zoomy -= 5;
  }
  void ctrl()
  {
    if (keyPressedSwitch == true)
    {
      if (key == CODED) 
      {
        if (keyCode == UP) 
        {
          zoomIn();
        }
        else if (keyCode == DOWN) 
        {
          zoomOut();
        }
        if (keyCode == LEFT) 
        {
          slower();
        }
        else if (keyCode == RIGHT) 
        {
          faster();
        }
      }
      switch (key)
      {
        case 'w':
        
          up();
          break;
        
        case 's':
        
          down();
          break;
        
        case 'a':
        
          left();
          break;
        
        case 'd':
      
          right();
          break;
      }
    }
    
    if (keyPressedSwitch == false)
    {
      switch(key)
      {
        case 'r':
        
          zoom = 1;
          zoomx = halfwidth;
          zoomy = halfheight;
          break;
        
        case '=':
          if(focusCount > 8)
          {
            focusCount = 1;
          }else{
            focusCount++;
          }
          zoom = 1;
          zoomx = view.focus[focusCount][0];
          zoomy = view.focus[focusCount][1];
          break;
          
       case '-':
          if(focusCount < 1)
          {
            focusCount = 8;
            
          }else{
            focusCount--;
          }
          zoom = 1;
          zoomx = view.focus[focusCount][0];
          zoomy = view.focus[focusCount][1];
          break;
          
        default:
          break;
      }
    }
  }
}

