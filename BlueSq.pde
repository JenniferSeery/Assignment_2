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
  
  float x1 = random(width,2*width+60);
    float y1= random(height);
  void fallacross()
  {     
      x1 -= 5;
      stroke(0,0,255);
      rect(x1, y1, 20, 20);
      fill(0);

     if(x1<0)
     {
       x1 = width+30;
       y1 = random(height);
     }
  }
  
  
}

