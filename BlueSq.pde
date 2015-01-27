class BlueSq
{
  float  x= random(width);
  float  y= random(height,2*height);
  
  int speed=20;
 
void falldown() 
{  
      y-= 5;
      stroke(0,0,255);
      rect(x, y, 20, 20);
      fill(0);

     if(y<0)
     {
       y = height-20;
       x = random(width);
     }
 

  }// END OF FALL 
  
  
  void fallacross()
  {     
      BlueSqx1 -= 5;
      stroke(0,0,255);
      rect(BlueSqx1, BlueSqy1, 20, 20);
      fill(0);

     if(BlueSqx1<0)
     {
       BlueSqx1 = width+30;
       BlueSqy1 = random(height);
     }
  }
  
  
}

