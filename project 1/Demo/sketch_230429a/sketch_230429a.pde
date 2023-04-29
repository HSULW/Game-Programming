//抓住浮木一起飄去瑞士吧
//科技113許力文、美術114劉映蘭
//Github連結 : https://github.com/HSULW/Game-Programming/blob/main/README.md
//遊戲說明 : 用滑鼠點擊螢幕上的木頭即可得一分，若點擊到木頭以外的地方則扣一分，每過一關會接下一關，第一關需得到10分才會進入下一關，而後每關過關條件都依序加5分，若扣分滿3分則失敗。

void setup(){
  size(1000,800);
  
  x = int(random(width));
  y = int(random(height));
  if(y < 100) y+= 200;
  
  wood = loadImage("badWood.png");
  bgimage = loadImage("sea.jpg");
  fish = loadImage("clown-fish.png");
  bubble = loadImage("bubbles.png");
  fishX = width / 2;
  fishY = height;
  imageMode(CENTER);
}

void draw(){
  image(bgimage, width/2, height/2, width, height);
  image(fish, fishX, fishY, 50, 50);
  image(bubble, fishX+50, fishY, 30, 30);
  fishY --;
  if(fishY < 0) fishY = height;
  drawRandomwood();
  recordGrade();
  moveToNextlevel();
  
}
