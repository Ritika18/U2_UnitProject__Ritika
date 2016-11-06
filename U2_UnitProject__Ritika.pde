/*
Name: Snake War

Description: This game is a competition between two snakes, to who can get the most amount
of points. Each snake gets points by collecting the red ball faster than the other snake.
Snake 1 moves with the keys = asdw and snake 2 moves with the keys = jkli. This can also
be played with the makey makey set up, which is on two chairs. The README includes pictures
of what the set up looks like.
*/

//score variables
int Score1 = 0;
int Score2 = 0;

//naming the objects from the classes
Snake snake;
Snake snake2;
Ball ball;

void setup ()
{
  //size of the screen
  size(700,700);
  
  //assigning all of the variables from the classes with a value
  snake = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  snake2 = new Snake(15, new PVector (random(width), random(height)),new PVector (random(width), random(height)), false, false, false, false);  
  ball = new Ball(new PVector (random(width), random(height)),15);
}

void draw()
{  
  //score function
  Score();
    
  //background
  background(0);
  fill(255);
  
  //telling the snake and ball objects what to do from what was coded in the separate classes
  snake.Draw();
  snake.Move();
  snake.Boundaries();
  
  snake2.Draw();
  snake2.Move2();
  snake2.Boundaries();
  
  ball.Location();
  
  //collision code between the first snake and the red ball
  if(dist (ball.circleX(), ball.circleY(), snake.rectX(), snake.rectY()) < 25)
  {
    ball.circleX2();
    ball.circleY2();
    Score1 = Score1 + 5;
  }
  
  //collision code between the second snake and the red ball
  if(dist (ball.circleXX(), ball.circleYY(), snake.rectX2(), snake.rectY2()) < 25)
  {
    ball.circleX22();
    ball.circleY22();
    Score2 = Score2 + 5;
  }
}

//void for score, determining which person wines
void Score()
{
  //filling the box
  fill(255);
  rect(15,15,100,35);
  //filling the color of text
  fill(0,230,230);
  textSize(32);
  text(Score1,20,45);
  
  //filling the box
  fill(0);
  rect(585,15,100,35);
  //filling the color of text
  fill(225);
  textSize(32);
  text(Score2,20,45);
}