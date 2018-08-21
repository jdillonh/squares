public enum state
{
  one,
  two,
  
}

void switch_state()
{
  if(the_state == state.one)
  {
    the_state = state.two;
  }
  else
  {
    the_state = state.one;
  }
}
