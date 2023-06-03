import processing.sound.*;
int Scene = 1;//場景編號
int TimeLeft = 30;
int GameStart_Countdown = 3;
int Mid_Score = 0;
PImage StartPage;
PImage Start;
PImage StartTouch;
PImage Gameplay;
PImage back, next;
PImage backT, nextT;
PImage LevelChoosen;
PImage HighScore;
PImage GameStart;
PImage Easy, Mid, Hard;
PShape[] Mid_B = new PShape[8];
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
  HighScore = loadImage("HighScore.png");
  GameStart = loadImage("GameStart.png");
  Easy = loadImage("Easy.png");
  Mid = loadImage("Mid.png");
  Hard = loadImage("Hard.png");
  LoadMid_B();
}//end of setup()
void draw(){
  LevelMid();


}
void LevelMid(){
  int Mid_Fail = 0;
  int Mid_indx;
  image(Mid, 0, 0, width, height);
  if((mouseX <= 396 && mouseX >= 108)&&(mouseY <= 494 && mouseY >= 402)){
    image(GameStart, 0, 0, width, height);
    if(mousePressed == true){
      if(GameStart_Countdown > 0){
        fill(255, 155, 0);
        textSize(500);
        textAlign(CENTER);
        text(GameStart_Countdown, width/2, height/2);
        GameStart_Countdown --;
      }//遊戲開始倒計時
      else if(TimeLeft > 0 && Mid_Fail < 3){
        TimeLeft --;
        Mid_indx = int(random(0, 7));
        Mid_Fail = 0;
        shape(Mid_B[Mid_indx], 0, 0);
        if((dist(mouseX, mouseY, Mid_B[Mid_indx].getVertex(0).x, Mid_B[Mid_indx].getVertex(0).y) < 50)&&(mousePressed == true)) {
          Mid_Score++;
        }else{
          Mid_Fail ++;
        }
        
        
        
      
      }//遊戲開始計時
      
      
    }
  
  }
  
  
    
    
}//end of LevelMid()

void LoadMid_B(){
  Mid_B[0] = loadShape("W.svg"); 
  Mid_B[1] = loadShape("A.svg");
  Mid_B[2] = loadShape("S.svg");
  Mid_B[3] = loadShape("D.svg");
  Mid_B[4] = loadShape("UP.svg");
  Mid_B[5] = loadShape("DOWN.svg");
  Mid_B[6] = loadShape("LEFT.svg");
  Mid_B[7] = loadShape("RIGHT.svg");
}//end of LoadMid_B()
