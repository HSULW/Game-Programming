int positionY;
color colorRed, colorPink;
int num, rectW;
PShape[] rectangleV;

void setup(){
  size(1000, 800);
  frameRate(30);
  positionY = 0;
  colorRed = color(255, 0, 0);
  colorPink = color(240, 128, 128);
  num = int(random(8,20));
  rectW = width/num;
  num = (rectW/(num-2));
}

void draw(){
  background(128);
  
  fill(colorPink);
  
  //drawRect();
  
  fill(colorRed);
  
 
  rectangleV = new PShape[num];
  for(int i=0 ; i<num ; i++){
    rectangleV[i] = createShape(RECT, 0, 0, 100, 50);
  }
  for(int i=0 ; i<num ; i++){
    shape(rectangleV[i], i*((width/num)+10) + 5, positionY);
  }
  
  positionY += 10;
  positionY %= height;
  
  

}
