RedSq rs1,rs2;
BlueSq bs1,bs2;
RedCir rc1,rc2;
BlueCir bc1,bc2;

//Array List for the players
ArrayList<Player> players = new ArrayList<Player>();
boolean[] keys = new boolean[526];

// Vectors for the Circle 
PVector Clocation;
PVector Cvelocity;

//Vectors for the Square
PVector Slocation;
PVector Svelocity;

//IMAGES
PImage PlayerSq;

int Slives=500;
int Clives=500;


//Number of Red Squares and filling the red square array
int redSQ = 2;
RedSq[] RedSqArr= new RedSq[redSQ];
RedSq[] RedSqArr2= new RedSq[redSQ];

//Number of Red Squares and filling the red square array
int blueSQ = 2;
BlueSq[] BlueSqArr= new BlueSq[blueSQ];
BlueSq[] BlueSqArr2= new BlueSq[blueSQ];

//Number of Red Squares and filling the red square array
int redCIR = 2;
RedCir[] RedCirArr= new RedCir[redCIR];
RedCir[] RedCirArr2= new RedCir[redCIR];

//Number of Red Squares and filling the red square array
int blueCIR = 2;
BlueCir[] BlueCirArr= new BlueCir[blueCIR];
BlueCir[] BlueCirArr2= new BlueCir[blueCIR];

//SIZING OF SCREEN
boolean devMode = false;
boolean sketchFullScreen() 
{
  return ! devMode;
}

//MUSIC
import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*; 
Minim minim;
AudioPlayer player;
AudioInput input; 

void setup()
{
  
  if (devMode)
  {
    size(800, 600);
  }
  else
  {
    size(displayWidth, displayHeight);
  }
  
 // size(1000, 600);
  smooth();
  setUpPlayerControllers();
  
  //PlayerSq = loadImage("Square.png");
  
  //Initalizing the PVectors 
  Clocation = new PVector(100,100);
  Cvelocity = new PVector(1.5,1.5);
  Slocation = new PVector(0,150);
  Svelocity = new PVector(1.5,1.5);
  
  //Array for the RedSq Falling from the top
  for (int i = 0; i < RedSqArr.length; i++) 
  {
    RedSqArr[i] = new RedSq(); // Create each object
    rs1 = new RedSq();
  }
  
  //Array for the RedSq Falling from the sides
  for (int i = 0; i < RedSqArr2.length; i++) 
  {
    RedSqArr2[i] = new RedSq(); // Create each object
    rs2 = new RedSq();
  }
  
  //Array for the BlueSq Falling from the top
  for (int i = 0; i < BlueSqArr.length; i++) 
  {
    BlueSqArr[i] = new BlueSq(); // Create each object
    bs1 = new BlueSq();
  }
  
  //Array for the BlueSq Falling from the sides
  for (int i = 0; i < BlueSqArr2.length; i++) 
  {
    BlueSqArr2[i] = new BlueSq(); // Create each object
    bs2 = new BlueSq();
  }
  
  //RED CIRCLE
  for (int i = 0; i < RedCirArr.length; i++) 
  {
    RedCirArr[i] = new RedCir(); // Create each object
    rc1 = new RedCir();
  }
  //RED CIRCLE
  for (int i = 0; i < RedCirArr2.length; i++) 
  {
    RedCirArr2[i] = new RedCir(); // Create each object
    rc2 = new RedCir();
  }
  
  //RED CIRCLE
  for (int i = 0; i < BlueCirArr.length; i++) 
  {
    BlueCirArr[i] = new BlueCir(); // Create each object
    bc1 = new BlueCir();
  }
  //RED CIRCLE
  for (int i = 0; i < BlueCirArr2.length; i++) 
  {
    BlueCirArr2[i] = new BlueCir(); // Create each object
    bc2 = new BlueCir();
  }
  
    // MUSIC 
    minim = new Minim(this);
    player = minim.loadFile("Sandstorm.mp3");
    input = minim.getLineIn();
    player.play();

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
  
  //-------CIRCLE -------
  // Add the circles current speed to the circles location.
  Clocation.add(Cvelocity);
  
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

  // ------   SQUARE   ---------
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
  
  for (int i = 0; i < BlueSqArr.length; i++) 
  {
    BlueSqArr[i].falldown();
  }
  
  for (int i = 0; i < BlueSqArr2.length; i++) 
  {
    BlueSqArr2[i].fallacross();
  }
  
  for (int i = 0; i < RedCirArr.length; i++) 
  {
    RedCirArr[i].falldown();
  }
  
  for (int i = 0; i < RedCirArr2.length; i++) 
  {
    RedCirArr2[i].fallacross();
  }
  
  for (int i = 0; i < BlueCirArr.length; i++) 
  {
    BlueCirArr[i].falldown();
  }
  
  for (int i = 0; i < BlueCirArr2.length; i++) 
  {
    BlueCirArr2[i].fallacross();
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
  int y=300;
  
  for(int i = 0 ; i < children.length ; i ++)  
  {
    XML playerXML = children[i];
    Player p = new Player(
            i
            , color(random(0, 255), random(0, 255), random(0, 255))
            , playerXML);
    int x = (i + 1) * gap;
    if(i == 0)
    {
      p.playerimage = loadImage("Sqaure.png");
    }
    if(i == 1)
    {
      p.playerimage=loadImage("Circle.png");
    }
    
    p.pos.x = x;
    p.pos.y = y;
   players.add(p); 
}

}

