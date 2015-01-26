class RedCir
{
  
  
  int speed=20;
 
void falldown() 
{  
      RedCiry-= 5;
      stroke(255,0,0);
      ellipse(RedCirx, RedCiry, 20, 20);
      fill(0);

     if(RedCiry<0)
     {
       RedCiry = height-20;
       RedCirx = random(width);
     }
 

  }// END OF FALL 
  
  
  void fallacross()
  {     
      RedCirx1 -= 5;
      stroke(255,0,0);
      ellipse(RedCirx1, RedCiry1, 20, 20);
      fill(0);

     if(RedCirx1<0)
     {
       RedCirx1 = width+30;
       RedCiry1 = random(height);
     }
  }
  
  
}

