class gameofdeath 
{
  int w = 10;
  int columns, rows;
  int[][] grid;

  gameofdeath() 
  {
    columns = width/w;
    rows = height/w;
    grid = new int[columns][rows];
    activate();
  }

  void activate() //<>//
  {
    for (int i =1; i < columns-1; i++) 
    {
      for (int o =1; o < rows-1; o++)
      {
        grid[i][o] = int(random(2));
      }
    }
  }


  void generate() 
  {

    int[][] next = new int[columns][rows];

    for (int x = 1; x < columns-1; x++) 
    {
      for (int y = 1; y < rows-1; y++) 
      {

        int neighbors = 0;

        for (int i = -1; i <= 1; i++) 
        {
          for (int o = -1; o <= 1; o++) 
          {
            neighbors += grid[x+i][y+o];
          }
        }

        neighbors -= grid[x][y];

        if ((grid[x][y] == 1) && (neighbors <  2)) next[x][y] = 0; 
        else if ((grid[x][y] == 1) && (neighbors >  3)) next[x][y] = 0; 
        else if ((grid[x][y] == 0) && (neighbors == 3)) next[x][y] = 1;
        else next[x][y] = grid[x][y];
      }
    }

    grid = next;
  }

  void SHOWYOURSELVES() 
  {
    for ( int i = 0; i < columns; i++) 
    {
      for ( int o = 0; o < rows; o++) 
      {
        if ((grid[i][o] == 1)) fill(random(1), random(1), random(180));
        else fill(255); 
        rect(i*w, o*w, w, w);
      }
    }
  }
}

/*if (board[x-1][y-1] ==1) neighbors++;
if (board[x][y-1] ==1) neighbors++;
if (board[x+1][y-1] ==1) neighbors++;

if (board[x-1][y] ==1) neighbors++;
if (board[x+1][y] ==1) neighbors++;

if (board[x-1][y+1] ==1) neighbors++;
if (board[x][y+1] ==1) neighbors++;
if (board[x+1][y+1] ==1) neighbors++; */