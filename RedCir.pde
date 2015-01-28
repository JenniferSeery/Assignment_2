class RedCir
{
  float  RedCirx= random(width);
  float  RedCiry= random(height, 2*height);


  // FALL VERTICAL
  void falldown() 
  {  
    RedCiry-= 5;
    stroke(255, 0, 0);
    ellipse(RedCirx, RedCiry, 20, 20);
    fill(0);

    if (RedCiry<0)
    {
      RedCiry = height-rSpeeds;
      RedCirx = random(width);
    }
  }// END OF FALL 

  //FALLING ACROSS
  void fallacross()
  {     

    RedCirx1 -= 5;
    stroke(255, 0, 0);
    ellipse(RedCirx1, RedCiry1, 20, 20);
    fill(0);

    if (RedCirx1<0)
    {
      RedCirx1 = width+rSpeeds;
      RedCiry1 = random(height);
    }
  }
}

