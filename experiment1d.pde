PImage pseudo;
PImage fly;
PImage background;
PImage tree;
PImage tree2;
PImage bird;
PFont mono;
String text1 = "Press the down arrow to launch Sue the pseudoscorpion";
int score = 0;
boolean restart = false;

void setup() {
size(720, 480);
 pseudo = loadImage("Pseudoscorpion.png");
 fly = loadImage("Fly.png");
 tree = loadImage("tree.jpg");
 tree2 = loadImage("tree.jpg");
 bird = loadImage("bird.jpg");
 background = loadImage("gamebackground.jpg");
}
void continueGame () {
  flyX = 100;
  flyY = 60;
  pseudoX = 106;
  pseudoY = 100; 
  pseudoMoveY = 0;
  pseudoMoveX = 3;
  flyMoveX = 3;
  holdRight = false;
  holdLeft = false;
}

void newGame () {  
image(fly, flyX-fly.width/2, flyY-fly.height/2);
image(pseudo, pseudoX-pseudo.width/2, pseudoY-pseudo.height/2);
flyMove();
pseudoMove();
fill(102,0,204);
mono = loadFont("AppleMyungjo-48.vlw");
textFont(mono);
textSize(24);
text(text1,
10,25);
}

void draw() {
background(0);
image(background, 0, 0);
noStroke();
worldDrawGrid();
newGame ();
handleKeyStates();
drawPillars();
fill(0,204,102);
textSize(14);
text("Score: "+ score, 620, 25);
}
