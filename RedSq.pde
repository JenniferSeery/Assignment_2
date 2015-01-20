class RedSq
{
  float  x= random(600);
  float y1 = random(-height);
 
void falldown() 
{  
  
   y1 = y1 + 5;
   rect(x, y1, 30, 30);
   strokeWeight(2);
   stroke(255,0,0);
   if(y1>height)
   {
     x = random(600);
     y1 = random(-200);
   }// END OF IF

  }// END OF FALL 
  
  float x1 = random(width,2*width+60);
    float y = random(height);
  void fallacross()
  {     
      x1 -= 5;
      fill(0,10,200,180);
      rect(x1, y, 20, 20);

     if(x1<0)
     {
       x1 = width+30;
       y = random(height);
     }
  }
  
  
}

/*
  x = x + 5;
   rect(x, y1, 30, 30);
   strokeWeight(2);
   stroke(255,0,0);
   if(x>height)
   {
     x = random(600);
     y1 = random(-200);
   }// END OF IF
  }
  */
