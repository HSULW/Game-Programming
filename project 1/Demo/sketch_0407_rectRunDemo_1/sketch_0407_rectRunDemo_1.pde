int positionY, startX, shapeX;
color colorRed, colorPink;
int num, rectW;
int realNum;
int sideLength;//The length between the first_rect and window side.
PShape[] rectangleV;

void setup(){
  size(1000, 800);
  frameRate(30);
  
  positionY = 0;
  startX = 0;
  colorRed = color(255, 0, 0);
  colorPink = color(240, 128, 128);
          
  num = int(random(8,15));
  if(num == 12 || num == 13) num = 15; //Ignore the bug when num = 13 or 14.
  
  rectW = width/num;
  println(rectW, num);
}

void draw(){
  background(128);
  //fill(colorPink);
  
  rectangleV = new PShape[num];
  for(int i=0 ; i<num ; i++){
    rectangleV[i] = createShape(RECT, 0, 0, rectW, 50);
  }//Create a array to put the rect_variable in.
  
  setMid();//Set the rectangle between the windows.
  
  int colorChange = int(random(0, realNum-1));
  
  for(int i=0 ; i<num ; i++){
    if(( i*(rectW + 10) + startX) + rectW > width) break;
    if(i == colorChange){
      fill(colorRed);
    }
    else{
      fill(colorPink);
    }
    shapeX = i*((width/num)+10) + sideLength;
    shape(rectangleV[i], shapeX, positionY);
  }
  
  println("cC = " + colorChange);
  
  positionY += 10;
  positionY %= height;
}
