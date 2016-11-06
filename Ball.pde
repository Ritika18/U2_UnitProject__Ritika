//creating a class for the ball
class Ball
{
  //creating private variables which can be used in this class (encapsulation)
  private PVector _circlePosition;
  private float _size;
  
  //constructor
  Ball(PVector circlePosition, float size)
  {
    _circlePosition = circlePosition;
    _size = size;
  }
  
  //void telling the cirlce where to appear
  public void Location()
  {
    fill(255,0,0);
    ellipse(_circlePosition.x,_circlePosition.y,_size,_size);
  }
  
  //transfering the position of the circle -- for the collision code
  public float circleX()
  {
    return _circlePosition.x;
  }
  
  //transfering the position of the circle -- for the collision code
  public float circleY()
  {
    return _circlePosition.y;
  }
  
  //transfering the position of the circle -- for the collision code
  public float circleXX()
  {
    return _circlePosition.x;
  }
  
  //transfering the position of the circle -- for the collision code  
  public float circleYY()
  {
    return _circlePosition.y;
  }
  
  //making the circle change location after colliding
  public void circleX2()
  {
    _circlePosition.x = random(width);
  }

  //making the circle change location after colliding
  public void circleY2()
  {
    _circlePosition.y = random(height);
  }

  //making the circle change location after colliding
  public void circleX22()
  {
    _circlePosition.x = random(width);
  }

  //making the circle change location after colliding
  public void circleY22()
  {
    _circlePosition.y = random(height);
  }
}