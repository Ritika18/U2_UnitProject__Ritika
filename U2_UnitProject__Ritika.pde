int Score1 = 0;
int Score2 = 0;

Snake snake;
Ball ball;
Snake snake2;

void setup ()
{
  size(700,700);
  
  snake = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  snake2 = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  ball = new Ball(new PVector (random(width), random(height)),15);
}

void draw()
{  
  Score();
    
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
    Score1 = Score1 + 5;
  }
  
  if(dist (ball.circleXX(), ball.circleYY(), snake.rectX2(), snake.rectY2()) < 25)
  {
    ball.circleX22();
    ball.circleY22();
    Score2 = Score2 + 5;
  }
}

void Score()
{
  fill(255);
  rect(15,15,100,35);
  fill(0,230,230);
  textSize(32);
  text(Score1,20,45);
  
  fill(0);
  rect(585,15,100,35);
  fill(225);
  textSize(32);
  text(Score2,20,45);
}