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
  
  
  void update()
  {
    if (checkKey(up))
    {
      pos.y -= 2;
    }
    if (checkKey(down))
    {
      pos.y += 2;
    }
    if (checkKey(left))
    {
      pos.x -= 2;
    }    
    if (checkKey(right))
    {
      pos.x += 2;
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
    
  // if(i==0)
  // {
     /*for(int i=0;i<RedSqArr2.length;i++)
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
       */
   }
    
  }
  
  void display()
  {    
    strokeWeight(4);
    stroke(255);
    fill(colour);  
    //image(playerimage,pos.x,pos.y);  
    rect(pos.x,pos.y,50,50);
    
    
    
    
    
  }  
 
  


