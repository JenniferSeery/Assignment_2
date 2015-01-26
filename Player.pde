class Player
{
  PVector pos;
  char up;
  char down;
  char left;
  char right;
  char start;
  char button1;
  char button2;
  int index;
  color colour;
  PImage playerimage;
    
  Player()
  {
    pos = new PVector(width / 2, height / 2);
  }
  
  Player(int index, color colour, char up, char down, char left, char right, char start, char button1, char button2)
  {
    this();
    this.index = index;
    this.colour = colour;
    this.up = up;
    this.down = down;
    this.left = left;
    this.right = right;
    this.start = start;
    this.button1 = button1;
    this.button2 = button2;
  }
  
  Player(int index, color colour, XML xml)
  {
    this(index
        , colour
        , buttonNameToKey(xml, "up")
        , buttonNameToKey(xml, "down")
        , buttonNameToKey(xml, "left")
        , buttonNameToKey(xml, "right")
        , buttonNameToKey(xml, "start")
        , buttonNameToKey(xml, "button1")
        , buttonNameToKey(xml, "button2")
        );
  } 
  
  boolean collisionCheck(RedSq r)
  {
    if(pos.x - 50 < r.RedSqx + 20 && pos.x + 50 > r.RedSqx && pos.y - 50 < r.RedSqy + 20 && pos.y + 50 > r.RedSqy)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck(RedCir rc1)
  {
    if(pos.x - 50 < rc1.RedCirx + 20 && pos.x + 50 > rc1.RedCirx && pos.y - 50 < rc1.RedCiry + 20 && pos.y + 50 > rc1.RedCiry)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck2(BlueSq b)
  {
    if(pos.x - 50 < b.x + 20 && pos.x + 50 > b.x && pos.y - 50 < b.y + 20 && pos.y + 50 > b.y)
    {
      return true;
    }
    return false;
  }
  
  
  void update()
  {
    if (checkKey(up))
    {
      pos.y -= 6;
    }
    if (checkKey(down))
    {
      pos.y += 6;
    }
    if (checkKey(left))
    {
      pos.x -= 6;
    }    
    if (checkKey(right))
    {
      pos.x += 6;
    }
    if (checkKey(start))
    {
      println("Player " + index + " start");
    }
    if (checkKey(button1))
    {
      println("Player " + index + " button 1");
    }
    if (checkKey(button2))
    {
      println("Player " + index + " butt2");
    }    


      //RED SQUARE COLLISION HORIZONTAL
      //if(children[j].i==0)
       for(int j=0;j<RedSqArr2.length;j++)
         {
           if(RedSqx1>pos.x && RedSqx1 < pos.x+50)
             {
                 if(RedSqy1 > pos.y && RedSqy1 < pos.y+50)
                 {
                  RPoints++;
                  text(RPoints,100,100);
                  background(255);
                 }
             }
         }
         
      if(i==1)
      {
         for(int j=0;j<RedSqArr2.length;j++)
           {
             if(RedSqx1>pos.x && RedSqx1 < pos.x+50)
               {
                   if(RedSqy1 > pos.y && RedSqy1 < pos.y+50)
                     {
                        BPoints++;
                      text(RPoints,100,100);
                      rect(70,70,70,70);
                 }
             }
         }                        
    }  
 // VERTICAL COLLISION DETECTION RED SQUARE
 /*
 if(i==0)
      {
       for(int j=0;j<RedSqArr.length;j++)
         {
           if(pos.y+50>RedSqx && pos.y<RedSqy)
             {
                 if(pos.x+50 >RedSqx && pos.x <RedSqy)
                 {
                  RPoints++;
                  //text(RPoints,1000,1000);
                  background(255,0,0);
                 }
             }
         }
    }
      if(i==1)
      {
         for(int j=0;j<RedSqArr.length;j++)
           {
             if(RedSqx>pos.x+50 && RedSqx < pos.x+50)
               {
                   if(RedSqy > pos.y+50 && RedSqy < pos.y+50)
                     {
                        BPoints++;
                      text(RPoints,100,100);
                      background(255,0,0);
                 }
             }
         }                        
    }  */
 

    

  }
  
  void display()
  {    
    strokeWeight(4);
    stroke(255);
    fill(colour);  
    //image(playerimage,pos.x,pos.y);  
    rect(pos.x,pos.y,50,50);
    }
}  
 
  


