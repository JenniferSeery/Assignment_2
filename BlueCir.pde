class BlueCir
{
  float  BlueCirx= random(width);
  float  BlueCiry= random(height,2*height);
  
  int speed=10;
 
void falldown() 
{  
      BlueCiry-= 5;
      stroke(0,0,255);
      ellipse(BlueCirx, BlueCiry, 20, 20);
      fill(0);

     if(BlueCiry<0)
     {
       BlueCiry = height-bSpeeds;
       BlueCirx = random(width);
     }
 

  }// END OF FALL 
  
  
  void fallacross()
  {     
      BlueCirx1 -= 5;
      stroke(0,0,255);
      ellipse(BlueCirx1, BlueCiry1, 20, 20);
      fill(0);

     if(BlueCirx1<0)
     {
       BlueCirx1 = width+bSpeeds;
       BlueCiry1 = random(height);
     }
  }
  
  
}

