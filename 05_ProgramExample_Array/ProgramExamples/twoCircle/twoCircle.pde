int[] cx = new int[2];
int[] cy = new int[2];

void setup()
{
  size(500,500);
  
  cx[0] = 50;
  cy[0] = 100;
  cx[1] = 350;
  cy[1] = 450;
}

void draw()
{
  ellipse(cx[0], cy[0], 100, 100);
  ellipse(cx[1], cy[1], 100, 100);
}