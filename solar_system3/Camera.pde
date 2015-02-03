class View
{
  
  public float focus[][] = new float[10][2];
  
  View()
  {
    for(int i=0;i>=9;i++)
    {
      switch(i)
      {
        case 0: 
          focus[i][0] = sun.bodyX;
          focus[i][1] = sun.bodyY;
          break;
        case 1:
          focus[i][0] = mercury.bodyX;
          focus[i][1] = mercury.bodyY;
          break;
        case 2:
          focus[i][0] = venus.bodyX;
          focus[i][1] = venus.bodyY;
          break;
        case 3:
          focus[i][0] = earth.bodyX;
          focus[i][1] = earth.bodyY;
          break;
        case 4:
          focus[i][0] = mars.bodyX;
          focus[i][1] = mars.bodyY;
          break;
        case 5:
          focus[i][0] = jupiter.bodyX;
          focus[i][1] = jupiter.bodyY;
          break;
        case 6:
          focus[i][0] = saturn.bodyX;
          focus[i][1] = saturn.bodyY;
          break;
        case 7:
          focus[i][0] = uranus.bodyX;
          focus[i][1] = uranus.bodyY;
          break;
        case 8:
          focus[i][0] = neptune.bodyX;
          focus[i][1] = neptune.bodyY;
          break;
        case 9:
          focus[i][0] = moon.bodyX;
          focus[i][1] = moon.bodyY;
          break;
      }
    }
  }
  
  void update()
  {
    for(int i=0;i>=9;i++)
    {
      switch(i)
      {
        case 0: 
          focus[i][0] = sun.bodyX;
          focus[i][1] = sun.bodyY;
          break;
        case 1:
          focus[i][0] = mercury.bodyX;
          focus[i][1] = mercury.bodyY;
          break;
        case 2:
          focus[i][0] = venus.bodyX;
          focus[i][1] = venus.bodyY;
          break;
        case 3:
          focus[i][0] = earth.bodyX;
          focus[i][1] = earth.bodyY;
          break;
        case 4:
          focus[i][0] = mars.bodyX;
          focus[i][1] = mars.bodyY;
          break;
        case 5:
          focus[i][0] = jupiter.bodyX;
          focus[i][1] = jupiter.bodyY;
          break;
        case 6:
          focus[i][0] = saturn.bodyX;
          focus[i][1] = saturn.bodyY;
          break;
        case 7:
          focus[i][0] = uranus.bodyX;
          focus[i][1] = uranus.bodyY;
          break;
        case 8:
          focus[i][0] = neptune.bodyX;
          focus[i][1] = neptune.bodyY;
          break;
        case 9:
          focus[i][0] = moon.bodyX;
          focus[i][1] = moon.bodyY;
          break;
      }
    }
  }
    
}
  
  
  
  
