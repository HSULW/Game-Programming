int numOfRectangles; // 矩形數量
int blackRectIndex; // 黑色矩形的索引
int rectSize = 20; // 矩形大小
int rectSpacing = 30; // 矩形間距
int rectSpeed = 3; // 矩形移動速度
ArrayList<Rectangle> rectangles; // 矩形物件的ArrayList

void setup() {
  size(600, 400); // 設定視窗大小
  numOfRectangles = int(random(3, 6)); // 隨機生成矩形數量
  blackRectIndex = int(random(numOfRectangles)); // 隨機選擇黑色矩形的索引
  rectangles = new ArrayList<Rectangle>(); // 初始化矩形物件的ArrayList

  for (int i = 0; i < numOfRectangles; i++) {
    // 在視窗最上方生成矩形物件，並加入ArrayList中
    rectangles.add(new Rectangle(width/2 - ((numOfRectangles-1) * rectSpacing)/2 + i * rectSpacing, 0, rectSize, rectSize, i == blackRectIndex));
  }
}

void draw() {
  background(255); // 清空視窗背景

  for (Rectangle rect : rectangles) {
    rect.display(); // 顯示每個矩形
    rect.move(rectSpeed); // 移動每個矩形
  }

  // 如果矩形移動到視窗最下方，重新生成新的矩形
  if (rectangles.get(0).y >= height) {
    rectangles.clear(); // 清空舊的矩形物件
    numOfRectangles = int(random(3, 6)); // 隨機生成新的矩形數量
    blackRectIndex = int(random(numOfRectangles)); // 隨機選擇新的黑色矩形的索引

    for (int i = 0; i < numOfRectangles; i++) {
      // 在視窗最上方生成新的矩形物件，並加入ArrayList中
      rectangles.add(new Rectangle(width/2 - ((numOfRectangles-1) * rectSpacing)/2 + i * rectSpacing, 0, rectSize, rectSize, i == blackRectIndex));
    }
  }
}

class Rectangle {
  float x, y; // 矩形的座標
  float w, h; // 矩形的寬和高
  boolean isBlack; // 矩形是否為黑色

  Rectangle(float x, float y, float w, float h, boolean isBlack) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.isBlack = isBlack;
  }
  
  void display() {
  // 根據矩形的顏色繪製矩形
  if (isBlack) {
  fill(0);
  } else {
  fill(255);
  }
  rect(x, y, w, h);
  }
  
  void move(float speed) {
  // 將矩形向下移動指定的速度
  y += speed;
  }
  }
