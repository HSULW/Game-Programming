import processing.sound.*;
int Scene = 1;//場景編號
PImage StartPage;
PImage Start;
PImage StartTouch;
PImage Gameplay;
PImage back, next;
PImage backT, nextT;
PImage LevelChoosen;

void setup(){
  size(1920, 1080);
  //imageMode(CENTER);
  StartPage = loadImage("StartPage.png");
  Start = loadImage("Start.png");
  StartTouch = loadImage("StartTouch.png");
  Gameplay = loadImage("Gameplay.png");
  back = loadImage("back.png");
  next = loadImage("next.png");
  backT = loadImage("backT.png");
  nextT = loadImage("nextT.png");
  LevelChoosen = loadImage("LevelChoosen.png");
}//end of setup()

void draw(){
  background(255);
  //image(StartPage, width/2, height/2, width, height);
  
  switch(Scene){
    case 1://遊戲開始畫面
      image(StartPage, 0, 0, width, height);
      image(Start, 0, 0, width, height);
      if((mouseX <= 1162 && mouseX >= 752)&&(mouseY <= 745 && mouseY >= 611)){
        image(StartTouch, 0, 0, width, height);
        if(mousePressed == true){
          Scene += 1;
        }
      }
      break;
    case 2://遊戲說明畫面
      image(Gameplay, 0, 0, width, height);
      Back();
      Next();
      break;
     case 3://關卡選擇
       image(LevelChoosen, 0, 0, width, height);
       Back();
       break;
    
  
  }//end of switch
  

}//end of draw()

void Back(){
  image(back, 0, 0, width, height);
  if((mouseX <= 191 && mouseX >= 26)&&(mouseY <= 645 && mouseY >= 540)){
    image(backT, 0, 0, width, height);
    if(mousePressed == true){
      Scene -= 1;
    }
  }
}//end of Back()
void Next(){
  image(next, 0, 0, width, height);
  if((mouseX <= 1903 && mouseX >= 1738)&&(mouseY <= 645 && mouseY >= 540)){
    image(nextT, 0, 0, width, height);
    if(mousePressed == true){
      Scene += 1;
    }
  }
}//end of Next()

void LevelChoose(){
  







}//end of LevelChoose()
