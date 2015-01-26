class RedSq
{  
  int RSspeed=20;
  int size=20;
  
  float  RedSqx= random(width);
  float  RedSqy= random(height,2*height);
  
void falldown() 
{  
      RedSqy-= 5;
      stroke(255,0,0);
      rect(RedSqx, RedSqy, size, size);
      fill(0);

     if(RedSqy<0)
     {
       RedSqy = height-RSspeed;
       RedSqx = random(width);
     }
 

  }// END OF FALL 
  
  void fallacross()
  {     
      RedSqx1 -= 5;
      stroke(255,0,0);
      rect(RedSqx1, RedSqy1, 20, 20);
      fill(0);

     if(RedSqx1<0)
     {
       RedSqx1 = width+30;
       RedSqy1 = random(height);
     }
  }
  
}

