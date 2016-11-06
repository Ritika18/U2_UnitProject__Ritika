Snake snake;
Snake snake2;
Ball ball;

void setup ()
{
  size(700,700);
  
  snake = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  snake2 = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  ball = new Ball(new PVector (random(width), random(height)),15);
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
  
  ball.Location();
  
  if(dist (ball.circleX(), ball.circleY(), snake.rectX(), snake.rectY()) < 25)
  {
    ball.circleX2();
    ball.circleY2();
  }
  
  if(dist (ball.circleXX(), ball.circleYY(), snake.rectX2(), snake.rectY2()) < 25)
  {
    ball.circleX22();
    ball.circleY22();
  }
}