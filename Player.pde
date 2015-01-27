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
    if(pos.x - playerSize < r.RedSqx + 20 && pos.x + playerSize > r.RedSqx && pos.y - 50 < r.RedSqy + 20 && pos.y + playerSize > r.RedSqy)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck3(RedSq r1)
  {
    if(RedSqx1>pos.x && RedSqx1 < pos.x+playerSize &&RedSqy1 > pos.y && RedSqy1 < pos.y+playerSize)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck(RedCir rc1)
  {
    if(pos.x - playerSize< rc1.RedCirx + 20 && pos.x + playerSize > rc1.RedCirx && pos.y - playerSize < rc1.RedCiry + 20 && pos.y + playerSize > rc1.RedCiry)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck3(RedCir rc)
  {
    if(RedCirx1>pos.x && RedCirx1 < pos.x+playerSize && RedCiry1 > pos.y && RedCiry1 < pos.y+playerSize)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck2(BlueSq b)
  {
    if(pos.x - playerSize < b.x + 20 && pos.x + playerSize > b.x && pos.y - playerSize < b.y + 20 && pos.y + playerSize > b.y)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck2(BlueCir b1)
  {
    if(pos.x - playerSize < b1.BlueCirx + 20 && pos.x + playerSize > b1.BlueCirx && pos.y - playerSize < b1.BlueCiry + 20 && pos.y + playerSize > b1.BlueCiry)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck3(BlueCir bc)
  {
    if(BlueCirx1>pos.x && BlueCirx1 < pos.x+playerSize && BlueCiry1 > pos.y && BlueCiry1 < pos.y+playerSize)
    {
      return true;
    }
    return false;
  }
  
  boolean collisionCheck3(BlueSq bs)
  {
    if(BlueSqx1>pos.x && BlueSqx1 < pos.x+playerSize && BlueSqy1 > pos.y && BlueSqy1 < pos.y+playerSize)
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


  //EDITING THE PLAYERS SIZE WHEN IT GET TO A CERTAIN SCORE 
  if(RPsquares > 500 && RPcircles>500)
   {
     image(RWin,0,60);
   }
   
   if(BPsquares >500 && BPcircles>500)
   {
     image(BWin,0,60);
   }
   
   if(help==1)
   {
     image(instruct,0,60);
   }
   
   

    
 
  }

  
  
  void display()
  {    
    strokeWeight(4);
    stroke(255);
    fill(colour);  
    rect(pos.x,pos.y,playerSize,playerSize);
    }
}  
 
  


