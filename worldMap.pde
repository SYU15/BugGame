final int GRID_TILE_WIDTH = 40;
final int GRID_TILE_HEIGHT = GRID_TILE_WIDTH;

//values used in 2d grid
final int GRID_TYPE_AIR = 0;
int GRID_TYPE_PLATFORM = 1;
int GRID_TYPE_BIRD = 2;

//indicates 2d array
int[][] worldGrid = { 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }, 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0,0,0
  }
  , 
  {
    0, 0, 0, 1, 1, 0, 0, 0,0, 0, 1, 1, 0, 0, 0, 2,2,0
  }
  , 
  {
    0, 0, 0, 1, 1, 0, 0, 0,0, 0, 1, 1, 0, 0, 0, 2,2,0
  }
  , 
  {
    0, 0, 0, 1, 1, 0, 0, 0,0, 0, 1, 1, 0, 0, 0, 2,2,0
  }
};
int whatIsUnderThisCoordinate(int someX, int someY) {
  //figures out what tile player is on
  //count rows to see where you are vertically
  int someTileRow = someY / GRID_TILE_HEIGHT;
  //count cols to see where you are horizontally
  int someTileCol = someX / GRID_TILE_WIDTH;
  //prevents player from leaving grid
  if (someY < 0) {
    return GRID_TYPE_AIR;
  }
  if (someX < 0) {
    return GRID_TYPE_AIR;
  }
  //use greater than or equal to because array starts at 0, but length starts at 1
  //0th row is used as standard 
  if (someTileCol >= worldGrid[0].length) {
    return GRID_TYPE_PLATFORM;
  }
  if (someTileRow >= worldGrid.length) {
    return GRID_TYPE_PLATFORM;
  }

  return worldGrid[someTileRow][someTileCol];
}

void worldDrawGrid() {
  //iterates row by row left to right, top to bottom
  for (int row = 0; row < worldGrid.length; row++) {
    //col = how many steps in specific row
    for (int col=0; col<worldGrid[row].length; col++) {
      if (worldGrid[row][col]==1) {
        fill(0);
      } else {
        fill(255,0);
      }
      //each tile is 50px, draw a new rectangle based on position in 2d array
      rect(col*GRID_TILE_WIDTH, row*GRID_TILE_HEIGHT, GRID_TILE_WIDTH, GRID_TILE_HEIGHT);
    }
  }
};
