class RedSq
{  

  int size=20;

  float  RedSqx= random(width);
  float  RedSqy= random(height, 2*height);
  //BLOCKS THAT FALL VERTICALLY 
  void falldown() 
  {  
    RedSqy-= 5;
    stroke(255, 0, 0);
    rect(RedSqx, RedSqy, size, size);
    fill(0);

    if (RedSqy<0)
    {
      RedSqy = height-rSpeeds;
      RedSqx = random(width);
    }
  }// END OF FALL 
  //BLOCKS THAT FALL ACROSS
  void fallacross()
  {     
    RedSqx1 -= 5;
    stroke(255, 0, 0);
    rect(RedSqx1, RedSqy1, 20, 20);
    fill(0);

    if (RedSqx1<0)
    {
      RedSqx1 = width+rSpeeds;
      RedSqy1 = random(height);
    }
  }
}

