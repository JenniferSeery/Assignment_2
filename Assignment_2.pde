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

int Blives=500;
int Rlives=500;

//Red Square Variables
float RedSqx1 = random(width,2*width+60);
float RedSqy1= random(height);

float RedCirx1 = random(width,2*width+60);
float RedCiry1= random(height);

float BlueCirx1 = random(width,2*width+60);
 float BlueCiry1= random(height);
 
 float BlueSqx1 = random(width,2*width+60);
    float BlueSqy1= random(height);

//Points
int RPoints;
int BPoints;

int i;

//These are for testing
int k = 0;
int bc = 0;

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
boolean devMode = true;
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
  for (int j = 0; j < RedSqArr.length; j++) 
  {
    RedSqArr[j] = new RedSq(); // Create each object
    rs1 = new RedSq();
  }
  
  //Array for the RedSq Falling from the sides
  for (int j = 0; j < RedSqArr2.length; j++) 
  {
    RedSqArr2[j] = new RedSq(); // Create each object
    rs2 = new RedSq();
  }
  
  //Array for the BlueSq Falling from the top
  for (int j = 0; j < BlueSqArr.length; j++) 
  {
    BlueSqArr[j] = new BlueSq(); // Create each object
    bs1 = new BlueSq();
  }
  
  //Array for the BlueSq Falling from the sides
  for (int j = 0; j < BlueSqArr2.length; j++) 
  {
    BlueSqArr2[j] = new BlueSq(); // Create each object
    bs2 = new BlueSq();
  }
  
  //RED CIRCLE
  for (int j = 0; j < RedCirArr.length; j++) 
  {
    RedCirArr[j] = new RedCir(); // Create each object
    rc1 = new RedCir();
  }
  //RED CIRCLE
  for (int j = 0; j < RedCirArr2.length; j++) 
  {
    RedCirArr2[j] = new RedCir(); // Create each object
    rc2 = new RedCir();
  }
  
  //RED CIRCLE
  for (int j = 0; j < BlueCirArr.length; j++) 
  {
    BlueCirArr[j] = new BlueCir(); // Create each object
    bc1 = new BlueCir();
  }
  //RED CIRCLE
  for (int j = 0; j < BlueCirArr2.length; j++) 
  {
    BlueCirArr2[j] = new BlueCir(); // Create each object
    bc2 = new BlueCir();
  }
  
   minim = new Minim(this);
   songSetup();
   int i = (int) random(0,songs.size());
      player= songs.get(i).songs;
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
    
    //GOING UP RED SQUARES
    Player p = players.get(0); // DETECTING IT AGAINST THE RED PLAYER 
    
    for(int i = 0; i < players.size(); i++)
    {
      RedSq r = RedSqArr[i];
      
      if(p.collisionCheck(r))
      {
        background(255, 0, 0);
        println(k);
        k++;
      }
    }
    
    //GOING UP BLUE SQUARES 
    Player p2 = players.get(1); // DECTECTING COLLISION WITH THE BLUE SQUARE 
    
    for(int i = 0; i < players.size(); i++)
    {
      BlueSq b = BlueSqArr[i];
      
      if(p2.collisionCheck2(b))
      {
        background(0, 0, 255);
        println("Blue collision" + bc);
        bc++;
      }
    }
    
    //GOING UP RED CIRCLES
    Player p3 = players.get(0); // DETECTING IT AGAINST THE RED PLAYER 
    
    for(int i = 0; i < players.size(); i++)
    {
      RedCir rc1 = RedCirArr[i];
      
      if(p3.collisionCheck(rc1))
      {
        background(255, 0, 0);
        println(k);
        k++;
      }
    }
    
    //GOING UP BLUE CIR
    Player p4 = players.get(1); // DECTECTING COLLISION WITH THE BLUE SQUARE 
    
    for(int i = 0; i < players.size(); i++)
    {
      BlueCir b1 = BlueCirArr[i];
      
      if(p4.collisionCheck2(b1))
      {
        background(0, 0, 255);
        println("Blue collision" + bc);
        bc++;
      }
    }
    
    Player p5 = players.get(0); // DETECTING IT AGAINST THE RED PLAYER 
    
    for(int i = 0; i < players.size(); i++)
    {
      RedSq r1 = RedSqArr2[i];
      
      if(p5.collisionCheck3(r1))
      {
        background(255, 0, 0);
        println(k);
        k++;
      }
    }
    
    Player p6 = players.get(0); // DETECTING IT AGAINST THE RED PLAYER 
  
    for(int i = 0; i < players.size(); i++)
    {
      RedCir rc = RedCirArr2[i];
      
      if(p6.collisionCheck3(rc))
      {
        background(255, 0, 0);
        println(k);
        k++;
      }
    }
    
    Player p7 = players.get(1); // DETECTING IT AGAINST THE BLUE PLAYER 
    
    for(int i = 0; i < players.size(); i++)
    {
      BlueCir bc = BlueCirArr2[i];
      
      if(p7.collisionCheck3(bc))
      {
        background(0, 0, 255);
        println(bc);
        //bc++;
      }
    }
    
    
    
    if(!player.isPlaying() )
    {
      int i = (int) random(0,songs.size());
      player= songs.get(i).songs;
      player.play();
    }
      
  
    
    Player p8 = players.get(1); // DETECTING IT AGAINST THE BLUE PLAYER 
    
    for(int i = 0; i < players.size(); i++)
    {
      BlueSq bs = BlueSqArr2[i];
      
      if(p8.collisionCheck3(bs))
      {
        background(0, 0, 255);
        println(bc);
        bc++;
      }
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
  
  for (int j = 0; j < RedSqArr.length; j++) 
  {
    RedSqArr[j].falldown();
  }
  
  for (int j = 0; j < RedSqArr2.length; j++) 
  {
    RedSqArr2[j].fallacross();
  }
  
  for (int j = 0; j < BlueSqArr.length; j++) 
  {
    BlueSqArr[j].falldown();
  }
  
  for (int j = 0; j < BlueSqArr2.length; j++) 
  {
    BlueSqArr2[j].fallacross();
  }
  
  for (int j = 0; j < RedCirArr.length; j++) 
  {
    RedCirArr[j].falldown();
  }
  
  for (int j = 0; j < RedCirArr2.length; j++) 
  {
    RedCirArr2[j].fallacross();
  }
  
  for (int j = 0; j < BlueCirArr.length; j++) 
  {
    BlueCirArr[j].falldown();
  }
  
  for (int j = 0; j < BlueCirArr2.length; j++) 
  {
    BlueCirArr2[j].fallacross();
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
    color c;
    if(i==0)
    { 
      c=color(255,0,0);
    }
    else
    {
      c=color(0,0,255);
    }
      
    XML playerXML = children[i];
    Player p = new Player(
            i
             , c
            , playerXML);
    int x = (i + 1) * gap;
 

    
    
    if(i == 0)
    {
      players.add(p);
    }
    if(i == 1)
    {
      players.add(p);
    }
    
    p.pos.x = x;
    p.pos.y = y;
    
}

}

