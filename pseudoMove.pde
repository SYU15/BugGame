int pseudoX = 106;
int pseudoY = 100;
int pseudoMoveX = 3;
int pseudoMoveY = 0;
final int pseduoRadiusX = 15;
boolean holdRight = false;
boolean holdLeft = false;
boolean freeFall = false;

void pseudoMove() {
  pseudoY += pseudoMoveY;
  pseudoX += pseudoMoveX;
  if (flyX > width - flyRadiusX) {
    pseudoMoveX = -pseudoMoveX;
  }
  if (flyX < flyRadiusX) {
    pseudoMoveX = -pseudoMoveX;
  }
}

void keyPressed() {
  if (keyCode == DOWN) {
    freeFall = true;
  }
  if (freeFall && keyCode == RIGHT) {
    holdRight = true;
  }
  if (freeFall && keyCode == LEFT) {
    holdLeft = true;
  }
}

void keyReleased() {
  if (keyCode == RIGHT) {
    holdRight = false;
  }
  if (keyCode == LEFT) {
    holdLeft = false;
  }
}
void handleKeyStates() {
  int pxWas = pseudoX;
  int pyWas = pseudoY;
  if (freeFall) {
    text1 = "Press the right and left arrows to aim for the pillars";
    pseudoMoveY = 2;
    pseudoMoveX = 0;
    if (holdLeft) {
      pseudoMoveX -= 3;
    }
    if (holdRight) {
      pseudoMoveX += 3;
    }
  }

  int tileUnderPlayer = whatIsUnderThisCoordinate(pseudoX, pseudoY);
  //player will be bumped back when encounter wall
  if (pseudoY >= 480 || tileUnderPlayer==GRID_TYPE_BIRD) {
    score = 0;  
    text1 = "Press the down arrow to launch Sue the pseudoscorpion";
    freeFall = false;
    continueGame ();      
  }
  else if (tileUnderPlayer == GRID_TYPE_PLATFORM) {
    score += 100;
    freeFall = false;
    continueGame();
  }
}



