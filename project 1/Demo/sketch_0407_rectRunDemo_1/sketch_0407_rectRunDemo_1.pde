int positionY, startX, shapeX;
color colorRed, colorPink;
int num, rectW;
PShape[] rectangleV;

void setup(){
  size(1000, 800);
  frameRate(30);
  positionY = 0;
  startX = 0;
  colorRed = color(255, 0, 0);
  colorPink = color(240, 128, 128);
          
  //num = int(random(8,17));
  num = 5;
  rectW = width/num;
  //num -= 2;
  println(rectW, num);
  //num = (rectW/(num-2));
  //num
}

void draw(){
  background(128);
  
  
  
  fill(colorPink);
  
  rectangleV = new PShape[num];
  for(int i=0 ; i<num ; i++){
    rectangleV[i] = createShape(RECT, 0, 0, rectW, 50);
  }
  for(int i=0 ; i<num ; i++){
    if(( i*(rectW + 10) + startX) + rectW > width) break;
    shapeX = i*((width/num)+10) + startX;
    shape(rectangleV[i], shapeX, positionY);
    //float shapeX = rectangleV[i].getX();
    //float shapeWidth = rectangleV[i].getWidth();
  }
  
  positionY += 10;
  positionY %= height;
}
