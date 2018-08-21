class square
{
  float x;
  float y;
  
  float size;
  float rotation;
  float roundness;
  
  square(float x_, float y_, float size_)
  {
    x = x_;
    y = y_;
    size = size_;
  }
  
  void update(float rotation,float roundness)
  {
    this.rotation = rotation;
    this.roundness = roundness;
  }
  
  void show(color c)//float rotation,float roundness, color the_color)
  {
    fill(c);
    pushMatrix();
    translate(x,y);
    rotate(rotation);
    rect(-size/2,-size/2,size,size,roundness);
    popMatrix();
  }
}

void show_squares()
{
  color c1;
  color c2;
  
  if(the_state == state.one)
  {
    c1 = colors[curr_color];
    c2 = colors[last_color];
    bg = c2;
  }
  else
  {
    c1 = colors[last_color];
    c2 = colors[curr_color];
    bg = c1;
  }
  switch(the_state)
  {
    case two:
      for(int i =0; i<the_squares_1.size(); ++i)
        {
          the_squares_1.get(i).show(c1);  
        }
      for(int i =0; i<the_squares_2.size(); ++i)
        {
          the_squares_2.get(i).show(c2);  
        }
      break;

    case one:
      for(int i =0; i<the_squares_2.size(); ++i)
        {
          the_squares_2.get(i).show(c2);  
        }
       for(int i =0; i<the_squares_1.size(); ++i)
        {
          the_squares_1.get(i).show(c1);  
        }
      break;
  }
}
