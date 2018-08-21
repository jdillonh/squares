// A fun sketch that loops very nicely ;)

int max_roundness = 20;
float dt = 0.05;
ArrayList<square> the_squares_1;
ArrayList<square> the_squares_2;
int square_size = 48;//50;
boolean debug = false;

color[] colors;
color bg;
state the_state = state.one;
int curr_color = 1;
int last_color = 0;
boolean has_been_up;
float t;

void setup()
{
  
  colors = scheme_2;
  fill(colors[curr_color]);
  size(600,600);
  t = 0.1;
  smooth(3);
  frameRate(120);
  noStroke();

  the_squares_1 = new ArrayList<square>(30);
  the_squares_2 = new ArrayList<square>(30);
  initialize_squares(-100,0,12,13,the_squares_1);
  initialize_squares(-61-66+2,25+15,12,13,the_squares_2);
}

void draw()
{
  background(bg);
  
  //s is rotation, r is roundness
  float s = sin(t);
  
  if(s < -0.99 && has_been_up)
  {
    switch_state();
    
    last_color = curr_color;
    curr_color = (curr_color+1) % (colors.length);
    fill(colors[curr_color]);
    has_been_up = false;
  }
  if(s > 0.9)
  {
    has_been_up = true;
  }
  
  float r = map(sin(2*t+PI/2),-1,1,0,max_roundness);
  
  switch(the_state) 
  {
    case one:
      for(int i =0; i< the_squares_1.size(); ++i)
      {
        the_squares_1.get(i).update(s,r);  
      }
      break;

    case two:
      for(int i =0; i< the_squares_2.size(); ++i)
        {
          the_squares_2.get(i).update(s,r);
        }
        break; 
  }
  
  show_squares();
  
  t+=dt;
  
}
