int positionY, startX, shapeX;
color colorRed, colorPink;
int num, rectW;
int realNum;
int sideLength; // The length between the first_rect and window side.
PShape[] rectangleV;
int redIndex;

void setup() {
  size(1000, 800);
  //frameRate(30);
  
  positionY = 0;
  startX = 0;
  colorRed = color(255, 0, 0);
  colorPink = color(240, 128, 128);
          
  num = int(random(8, 15));
  if (num == 12 || num == 13) num = 15; // Ignore the bug when num = 13 or 14.
  
  rectW = width / num;
  println(rectW, num);
  redIndex = int(random(0, num-1)); // 初始化紅色矩形的索引值
}

void draw() {
  background(128);
  
  rectangleV = new PShape[num];
  for (int i = 0; i < num; i++) {
    rectangleV[i] = createShape(RECT, 0, 0, rectW, 50);
  } // Create an array to hold the rect_variable.
  
  setMid(); // Set the rectangle between the windows.
  
  for (int i = 0; i < num; i++) {
    
    if (i == redIndex) {
      fill(colorRed);
    } else {
      fill(colorPink);
    }
    
    if ((i * (rectW + 10) + startX) + rectW > width) {
      break;
    }
    
    shapeX = i * ((width / num) + 10) + sideLength;
    shape(rectangleV[i], shapeX, positionY);
  }
  
  println("Red Index = " + redIndex);
  
  positionY += int(random(0,60));
  positionY %= height;
}
