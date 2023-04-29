import javax.swing.*;
int x; //PositionX
int y; //PositionY
float timeRate = 1; //Circle Radius
int grade = 0;
int fail = 0;
//int result;
PImage wood;
PImage bgimage;
int passCond = 10;
int start = 0;
int level = 1;
PImage fish,bubble;
int fishX, fishY;

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
  fishY %= height;
  drawRandomwood();
  recordGrade();
  moveToNextlevel();
  
}

void mousePressed(){
  boolean hitSomething = false;
  if(dist(mouseX, mouseY, x, y) < 100){
    grade ++;
    hitSomething = true;
  }
  if(!hitSomething){
    fail ++;
  }
}
