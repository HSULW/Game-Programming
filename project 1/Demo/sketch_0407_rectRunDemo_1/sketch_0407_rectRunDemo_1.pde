int positionY;
color colorRed, colorPink;
PShape A,B,C,D,E,F,G,H;
PShape rectangle[];

void setup(){
  size(890, 800);
  positionY = 0;
  frameRate(30);
  colorRed = color(255, 0, 0);
  colorPink = color(240, 128, 128);

}

void draw(){
  background(128);
  
  fill(colorPink);
  
  drawRect();
  
  fill(colorRed);
  Shapeee();
  //shape(rectangle[0], 100, 100);
  
  
  
  positionY += 10;
  positionY %= height;
  
  

}

void Shapeee(){
  
   B = createShape(RECT, 0, 0, 100, 50);
    C = createShape(RECT, 0, 0, 100, 50);
     D = createShape(RECT, 0, 0, 100, 50);
      E = createShape(RECT, 0, 0, 100, 50);
       F = createShape(RECT, 0, 0, 100, 50);
        G = createShape(RECT, 0, 0, 100, 50);
         H = createShape(RECT, 0, 0, 100, 50);
       
}

void drawRect(){
 
  for(int i=0 ; i<width/100 ; i++){
    rect(i*110+10, positionY, 100, 50);
  }
}   
