Cell[][] grid;

int cols = 20;
int rows = 20;

void setup(){
  size(400,400);
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      grid[i][j] = new Cell(i*20, j*20, 20, 20, i+j);
     }
  }
}



void draw(){
  background(0);
  for (int i = 0; i < cols; i++){
    for (int j=0; j < rows; j++){
      //Oscillate and display object
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}
