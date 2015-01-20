class RedSq
{
  float  x= random(600);
  float y1 = random(-height);
 
void fall() 
{  
  
   y1 = y1 + 5;
   rect(x, y1, 60, 60);
   fill(255,0,0);
   if(y1>height)
   {
     x = random(600);
     y1 = random(-200);
   }// END OF IF

  }// END OF FALL 
  
}

