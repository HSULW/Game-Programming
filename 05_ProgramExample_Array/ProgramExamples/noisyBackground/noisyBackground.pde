int circleX = 0;
color[][] bgColor = new color[400][300];

void setup()
{
  size(400,300);
  
  for( int x=0; x<400; x++ ){
    for( int y=0; y<300; y++){
      bgColor[x][y] = 
        color(random(255), random(255), random(255));
    }
  }
}

void draw()
{
  for( int x=0; x<400; x++ ){
    for( int y=0; y<300; y++){
      stroke(bgColor[x][y]);
      point(x, y);
    }
  }
  
  stroke(255);
  ellipse( circleX, height/2, 30, 30);
  circleX = (circleX + 5) % width;
}