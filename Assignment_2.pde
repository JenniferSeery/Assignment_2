RedSq rs1,rs2;

ArrayList<Player> players = new ArrayList<Player>();
boolean[] keys = new boolean[526];

// Vectors for the Circle 
PVector Clocation;
PVector Cvelocity;

//Vectors for the Square
PVector Slocation;
PVector Svelocity;

//Number of Red Squares and filling the red square array
int redSQ = 2;
RedSq[] RedSqArr= new RedSq[redSQ];
RedSq[] RedSqArr2= new RedSq[redSQ];

void setup()
{
  size(1000, 600);
  smooth();
  setUpPlayerControllers();
  
  //Initalizing the PVectors 
  Clocation = new PVector(100,100);
  Cvelocity = new PVector(1.5,1.5);
  Slocation = new PVector(0,150);
  Svelocity = new PVector(1.5,1.5);
  
  for (int i = 0; i < RedSqArr.length; i++) 
  {
    RedSqArr[i] = new RedSq(); // Create each object
    rs1 = new RedSq();
  }
  for (int i = 0; i < RedSqArr2.length; i++) 
  {
    RedSqArr2[i] = new RedSq(); // Create each object
    rs2 = new RedSq();
  }

}

void draw()
{
   background(0);
   for(Player player:players)
    {
      player.update();
      player.display();
    }
  noStroke();
  fill(255,10);
  
  // Add the circles current speed to the circles location.
  Clocation.add(Cvelocity);

  // We still sometimes need to refer to the individual components of a PVector 
  // and can do so using the dot syntax (location.x, velocity.y, etc.)
  //X Co-ordinates 
  if ((Clocation.x > width) || (Clocation.x < 0)) 
  {
    Cvelocity.x = Cvelocity.x * -1;
  }
  // Y Co ordinates 
  if ((Clocation.y > height) || (Clocation.y < 0)) 
  {
    Cvelocity.y = Cvelocity.y * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(Clocation.x,Clocation.y,50,50);
  noStroke();
  fill(255,10);
  
// Add the squares current speed to the sqaures location.
  Slocation.add(Svelocity);

  // We still sometimes need to refer to the individual components of a PVector 
  // and can do so using the dot syntax (location.x, velocity.y, etc.)
  // X ordinates
  if ((Slocation.x > width) || (Slocation.x < 0))
  {
    Svelocity.x = Svelocity.x * -1;
  }
  // Y Co ordinates 
  if ((Slocation.y > height) || (Slocation.y < 0)) 
  {
    Svelocity.y = Svelocity.y * -1;
  }

  // Display Sqaures at x location
  stroke(0);
  fill(175);
  rect(Slocation.x,Slocation.y,50,50);
  
  for (int i = 0; i < RedSqArr.length; i++) 
  {
    RedSqArr[i].falldown();
  }
  
  for (int i = 0; i < RedSqArr2.length; i++) 
  {
    RedSqArr2[i].fallacross();
  }

}

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

boolean checkKey(char theKey)
{
  return keys[Character.toUpperCase(theKey)];
}

char buttonNameToKey(XML xml, String buttonName)
{
  String value =  xml.getChild(buttonName).getContent();
  if ("LEFT".equalsIgnoreCase(value))
  {
    return LEFT;
  }
  if ("RIGHT".equalsIgnoreCase(value))
  {
    return RIGHT;
  }
  if ("UP".equalsIgnoreCase(value))
  {
    return UP;
  }
  if ("DOWN".equalsIgnoreCase(value))
  {
    return DOWN;
  }
  //.. Others to follow
  return value.charAt(0);  
}

void setUpPlayerControllers()
{
  XML xml = loadXML("arcade.xml");
  XML[] children = xml.getChildren("player");
  int gap = width / (children.length + 1);
  
  for(int i = 0 ; i < children.length ; i ++)  
  {
    XML playerXML = children[i];
    Player p = new Player(
            i
            , color(random(0, 255), random(0, 255), random(0, 255))
            , playerXML);
    int x = (i + 1) * gap;
    p.pos.x = x;
    p.pos.y = 300;
   players.add(p);         
  }
}

