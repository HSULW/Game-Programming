import processing.sound.*;
int Scene = 1;//場景編號
PImage StartPage;
PImage Start;
PImage StartTouch;
PImage Gameplay;
PShape back, next;

void setup(){
  size(1500, 844);
  imageMode(CENTER);
  StartPage = loadImage("StartPage.png");
  Start = loadImage("Start.png");
  StartTouch = loadImage("StartTouch.png");
  Gameplay = loadImage("Gameplay.png");
  back = loadShape("back.svg");
  next = loadShape("next.svg");
}//end of setup()

void draw(){
  background(255);
  //image(StartPage, width/2, height/2, width, height);
  
  switch(Scene){
  case 1://遊戲開始畫面
    image(StartPage, width/2, height/2, width, height);
    image(Start, width/2, height/2, width, height);
    if((mouseX <= 913 && mouseX >= 587)&&(mouseY <= 572 && mouseY >= 472)){
      image(StartTouch, width/2, height/2, width, height);
      if(mousePressed == true){
        Scene += 1;
      }
    }
    break;
    case 2:
    image(Gameplay, width/2, height/2, width, height);
    shape(back, 0, 0, width, height);
    shape(next, 0, 0, width, height);
  
  
  
  
  }//enf of switch
  

}//end of draw()
