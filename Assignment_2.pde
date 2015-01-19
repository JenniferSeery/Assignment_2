ArrayList<Player> players = new ArrayList<Player>();
boolean[] keys = new boolean[526];
PVector Clocation;
PVector Cvelocity;
PVector Slocation;
PVector Svelocity;


void setup()
{
  size(1000, 600);
  setUpPlayerControllers();
  smooth();
  background(255);
  Clocation = new PVector(100,100);
  Cvelocity = new PVector(1.5,1.5);
  Slocation = new PVector(0,150);
  Svelocity = new PVector(1.5,1.5);
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
  //rect(0,0,width,height);
  
  // Add the current speed to the location.
  Clocation.add(Cvelocity);

  // We still sometimes need to refer to the individual components of a PVector 
  // and can do so using the dot syntax (location.x, velocity.y, etc.)
  if ((Clocation.x > width) || (Clocation.x < 0)) {
    Cvelocity.x = Cvelocity.x * -1;
  }
  if ((Clocation.y > height) || (Clocation.y < 0)) {
    Cvelocity.y = Cvelocity.y * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(Clocation.x,Clocation.y,50,50);
  
   noStroke();
  fill(255,10);
  //rect(0,0,width,height);
  
  // Add the current speed to the location.
  Slocation.add(Svelocity);

  // We still sometimes need to refer to the individual components of a PVector 
  // and can do so using the dot syntax (location.x, velocity.y, etc.)
  if ((Slocation.x > width) || (Slocation.x < 0)) {
    Svelocity.x = Svelocity.x * -1;
  }
  if ((Slocation.y > height) || (Slocation.y < 0)) {
    Svelocity.y = Svelocity.y * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  rect(Slocation.x,Slocation.y,50,50);
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

