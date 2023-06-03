int cx0;
int cy0;
color cc0;
int cx1;
int cy1;
color cc1;
int cx2;
int cy2;
color cc2;

void setup()
{
  size(800, 600);
  
  cx0 = int(random(width));
  cy0 = int(random(height));
  cc0 = color(random(255), random(255), random(255), 128);
  cx1 = int(random(width));
  cy1 = int(random(height));
  cc1 = color(random(255), random(255), random(255), 128);
  cx2 = int(random(width));
  cy2 = int(random(height));
  cc2= color(random(255), random(255), random(255), 128);
}

void draw()
{
  background(255);
  
  cx0 += 5;
  cy0 += 5;
  fill(cc0);
  ellipse(cx0, cy0, 30, 30);
  cx0 = cx0 % width;
  cy0 = cy0 % height;
  
  cx1 += 5;
  cy1 += 5;
  fill(cc1);
  ellipse(cx1, cy1, 30, 30);
  cx1 = cx1 % width;
  cy1 = cy1 % height;
  
  cx2 += 5;
  cy2 += 5;
  fill(cc2);
  ellipse(cx2, cy2, 30, 30);
  cx2 = cx2 % width;
  cy2 = cy2 % height;
}