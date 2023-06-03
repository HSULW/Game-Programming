int cx;
int cy;
color cc;

void setup()
{
  size(800, 600);
  
  cx = int(random(width));
  cy = int(random(height));
  cc = color(random(255), random(255), random(255), 128);
}

void draw()
{
  background(255);
  
  cx += 5;
  cy += 5;
  fill(cc);
  ellipse(cx, cy, 30, 30);
  
  cx = cx % width;
  cy = cy % height;
  
}