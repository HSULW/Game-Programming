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


void setup(){
  size(1000,800);
  
  x = int(random(width));
  y = int(random(height));
  if(y < 100) y+= 200;
  
  wood = loadImage("badWood.png");
  bgimage = loadImage("sea.jpg");
  imageMode(CENTER);
}

void draw(){
  image(bgimage, width/2, height/2, width, height);
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
