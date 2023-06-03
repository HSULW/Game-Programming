color[][] cc = new color[5][2];

void setup(){
  size(800,600);
  strokeWeight(10);
  
  for( int r=0; r<5; r++ ){
    for( int c=0; c<2; c++ ){
      cc[r][c] = color(random(255), random(255), random(255) );
    }
  }
}

void draw(){
  background( 128 );
  
  int red = 255;
  for( int y = height - 50; y >= mouseY; y -= 50 ){
    stroke( red, 0, 0 );
    red -= 15;
    line(0, y, width, y );
  }
  
  stroke(0);
  for( int r=0; r<5; r++ ){
    for( int c=0; c<2; c++ ){
      int y = r * 100 + 100;
      int x = c * 100 + 350;
      
      fill(cc[r][c] );
      ellipse( x, y, 100, 100 );
    }
  }
}