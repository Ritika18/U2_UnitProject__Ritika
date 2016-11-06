class Snake
{
  private float _size;

  private PVector _rectanglePosition1;
  private PVector _rectanglePosition2;

  private boolean _x1;
  private boolean _x2;
  private boolean _y1;
  private boolean _y2;
  
  Snake (float size, PVector rectanglePosition1, PVector rectanglePosition2, boolean x1, boolean x2, boolean y1, boolean y2)
  {
    _size = size;
    _rectanglePosition1 = rectanglePosition1;
    _rectanglePosition2 = rectanglePosition2;

    _x1 = x1;
    _x2 = x2;
    _y1 = y1;
    _y2 = y2;
  }
  
  public void Move()
  {
     if(_x1 == true)
      {
       _rectanglePosition1.x = _rectanglePosition1.x + 10;
      }

     if(_x2 == true)
      { 
       _rectanglePosition1.x = _rectanglePosition1.x - 10;
      } 

     if(_y1 == true)
      {
       _rectanglePosition1.y = _rectanglePosition1.y + 10;
      }
    
     if(_y2 == true)
      {
       _rectanglePosition1.y = _rectanglePosition1.y - 10;
      }
    
    if(keyPressed)
    {
      if(key == 'd')
      {
       _x1 = true;
       _x2 = false;
       _y1 = false;
       _y2 = false;
      }

      if(key == 's')
      {
       _x1 = false;
       _x2 = false;
       _y1 = true;
       _y2 = false;
      }

      if(key == 'a')
      {
       _x1 = false;
       _x2 = true;
       _y1 = false;
       _y2 = false;
      }

      if(key == 'w')
      {
       _x1 = false;
       _x2 = false;
       _y1 = false;
       _y2 = true;
      }
    }
  }
  
  public void Move2()
  {
     if(_x1 == true)
      {
       _rectanglePosition2.x = _rectanglePosition2.x + 10;
      }

     if(_x2 == true)
      { 
       _rectanglePosition2.x = _rectanglePosition2.x - 10;
      } 

     if(_y1 == true)
      {
       _rectanglePosition2.y = _rectanglePosition2.y + 10;
      }
    
     if(_y2 == true)
      {
       _rectanglePosition2.y = _rectanglePosition2.y - 10;
      }
    
    if(keyPressed)
    {

      if(key == 'l')
      {
       _x1 = true;
       _x2 = false;
       _y1 = false;
       _y2 = false;
      }

      if(key == 'k')
      {
       _x1 = false;
       _x2 = false;
       _y1 = true;
       _y2 = false;
      }

      if(key == 'j')
      {
       _x1 = false;
       _x2 = true;
       _y1 = false;
       _y2 = false;
      }

      if(key == 'i')
      {
       _x1 = false;
       _x2 = false;
       _y1 = false;
       _y2 = true;
      }
    }
  }
  
  public void Boundaries()
  {
     if(_rectanglePosition1.x > width)
      {
       _rectanglePosition1.x = 0;
      }

     if(_rectanglePosition1.x < 0)
      {
       _rectanglePosition1.x = width;
      }

     if(_rectanglePosition1.y > height)
      {
       _rectanglePosition1.y = 0;
      }

     if(_rectanglePosition1.y < 0)
      {
       _rectanglePosition1.y = height;
      }
    
      if(_rectanglePosition2.x > width)
      {
       _rectanglePosition2.x = 0;
      }

     if(_rectanglePosition2.x < 0)
      {
       _rectanglePosition2.x = width;
      }

     if(_rectanglePosition2.y > height)
      {
       _rectanglePosition2.y = 0;
      }

     if(_rectanglePosition2.y < 0)
      {
       _rectanglePosition2.y = height;
      }
  }
  
  public void Draw()
  {
    fill(20,130,200);
    rect(_rectanglePosition1.x, _rectanglePosition1.y, _size+3, _size+3);
    
    fill(20,200,130);
    rect(_rectanglePosition2.x, _rectanglePosition2.y, _size+3, _size+3);
  }

  
  public float rectX()
  {
    return _rectanglePosition1.x;
  }
  
  public float rectX2()
  {
    return _rectanglePosition2.x;
  }
  
  public float rectY()
  {
    return _rectanglePosition1.y;
  }
  
  public float rectY2()
  {
    return _rectanglePosition2.y;
  }
}