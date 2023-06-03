import processing.sound.*;

int Scene = 1; // 場景編號
int TimeLeft = 30;
int GameStart_Countdown = 3;

int Mid_Score = 0;

PFont TCfont;
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
PImage[] Mid_B = new PImage[8];
boolean gameStarted = false;
int Mid_Fail = 0;

int Mid_indx;
int current_Mid_indx;
float lag = 0;
boolean isCorrect = true;


//以下為新增變數
int Easy_indx;
int Easy_Score = 0;
int Easy_Fail = 0;
int Easy_X, Easy_Y;
int[] Row = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2};
int[] Col = {0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3};
void setup() {
  fullScreen();
  //size(1920, 1080);
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
  //image(Easy, 0, 0, width, height);
  TCfont = createFont("Bangers.ttf", 28);
  textFont(TCfont);
  //以下為新增變數
  image(Easy, 0, 0, width, height);
  
}

void draw() {
  frameRate(60);
  image(Easy, 0, 0, width, height);
  if (!gameStarted) {
    frameRate(60);
    if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
      image(GameStart, 0, 0, width, height);
    }
    //return;
  }
  
  if(isCorrect == true){
      frameRate(100);
      Easy_indx = int(random(0, 11));
      //if(Mid_indx == current_Mid_indx){
      //  Mid_indx = int(random(0, 7));
      //}
   }

  if(gameStarted == true){
    image(Easy, 0, 0, width, height);
    
    fill(77, 31, 0);
    textSize(120);
    textAlign(CENTER);
    text(Easy_Score, 255, 730);
    text(TimeLeft, 255, 975);
    
    frameRate(1);
    if (GameStart_Countdown > 0) {
    fill(255, 221, 169);
    textSize(500);
    textAlign(CENTER);
    text(GameStart_Countdown, width/2, height/2);
    GameStart_Countdown--;
    } else if (TimeLeft > 0 && Easy_Fail < 3 ) {
      TimeLeft--;
      Easy_X = Col[Easy_indx]*330 + 546;
      Easy_Y = Row[Easy_indx]*262 + 320;
      ellipseMode(CORNER);
      ellipse(Easy_X, Easy_Y, 180, 162);
      isCorrect = false;
    }
    
  }
  
  if (TimeLeft < 0 || Easy_Fail >= 3) {
    gameStarted = false;
    Easy_restartGame(); 
  }

 
}

void mouseClicked() {
  frameRate(60);      
  if(!gameStarted){
    if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
      Easy_restartGame();
      gameStarted = true;
      //return;
    } 
  }
  
  if(gameStarted == true){
    if((mouseX <= Easy_X+180 && mouseX >= Easy_X) && (mouseY <= Easy_Y+162 && mouseY >= Easy_Y)){
      Easy_Score ++;
      isCorrect = true;
    }else{
    //Easy_Fail ++;
      isCorrect = false;
    }
  }
 
 
}//end of mouseClicked() 

void Easy_restartGame(){
  TimeLeft = 30;
  Easy_Score = 0;
  Easy_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
  image(Easy, 0, 0, width, height);
}
