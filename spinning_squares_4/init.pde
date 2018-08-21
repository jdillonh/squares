void initialize_squares(int x, int y,int rows,int cols,
                        ArrayList<square> dest)
{
  int curr_x = x;
  int curr_y = y;
  for(int i = 1; i < cols; ++i)
  {
    int col_x = curr_x;
    int col_y = curr_y;
    for(int j = 1; j < rows; ++j)
    {
      square newbie = new square(curr_x,curr_y,square_size);
      dest.add(newbie);
      curr_x += 66;
      curr_y -= 15;
    }
    curr_x = col_x + 15;
    curr_y = col_y + 66;
  }
  
}
