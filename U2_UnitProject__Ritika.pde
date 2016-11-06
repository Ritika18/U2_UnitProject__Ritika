Snake snake;
Snake snake2;

void setup ()
{
  size(700,700);
  
  snake = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  snake2 = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
}

void draw()
{  
  background(0);
  fill(255);
  
  snake.Draw();
  snake.Move();
  snake.Boundaries();
  
  snake2.Draw();
  snake2.Move2();
  snake2.Boundaries();
}