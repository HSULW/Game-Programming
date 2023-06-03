int[] cx =  new int[100];
int[] cy = new int[100];
color[] cc = new color[100];

void setup()
{
  size(800, 600);
  
  for( int i=0; i<100; i++ ){
    cx[i] = int(random(width));
    cy[i] = int(random(height));
    cc[i] = color(random(255), random(255), random(255), 128);
  }
}

void draw()
{
  background(255);
  
  for( int i = 0; i<cx.length; i++ ){
    cx[i] += 5;
    cy[i] += 5;
    fill(cc[i]);
    ellipse(cx[i], cy[i], 30, 30);
    
    cx[i] = cx[i] % width;
    cy[i] = cy[i] % height;
  }
  
}