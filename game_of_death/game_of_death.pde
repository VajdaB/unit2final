gameofdeath cells;

void setup() 
{
  fullScreen();
  frameRate(6);
  cells = new gameofdeath(); //<>//
}

void draw()
{
  background(0);
  cells.generate();
  cells.SHOWYOURSELVES();
}