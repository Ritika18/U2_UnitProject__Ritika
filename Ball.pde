class Ball
{
  private PVector _circlePosition;
  private float _size;
  
  Ball(PVector circlePosition, float size)
  {
    _circlePosition = circlePosition;
    _size = size;
  }
  
  public void Location()
  {
    fill(255,0,0);
    ellipse(_circlePosition.x,_circlePosition.y,_size,_size);
  }
  
  public float circleX()
  {
    return _circlePosition.x;
  }
  
  public float circleY()
  {
    return _circlePosition.y;
  }
  
  public float circleXX()
  {
    return _circlePosition.x;
  }
  
  public float circleYY()
  {
    return _circlePosition.y;
  }
  
  public void circleX2()
  {
    _circlePosition.x = random(width);
  }
  
  public void circleY2()
  {
    _circlePosition.y = random(height);
  }
  
  public void circleX22()
  {
    _circlePosition.x = random(width);
  }
  
  public void circleY22()
  {
    _circlePosition.y = random(height);
  }
}