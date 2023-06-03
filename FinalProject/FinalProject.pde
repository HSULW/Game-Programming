import processing.sound.*;

int Scene = 1; // 場景編號
int Level = 1; // 關卡編號
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
PImage[] Mid_B = new PImage[8];
PImage Chos_Easy, Chos_Mid, Chos_Hard;
PImage Chos_HighScore;
boolean gameStarted = false;
int Mid_Fail = 0;
int Mid_indx = int(random(0, 7));
int current_Mid_indx;
float lag = 0;
boolean isCorrect = true;
PFont TCfont;
SoundFile Mid_bgm;
//int Easy_indx;
//int Easy_Score = 0;
//int Easy_Fail = 0;
//int Easy_X, Easy_Y;
//int[] Row = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2};
//int[] Col = {0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3};
PImage[] Hard_B = new PImage[21];
int Hard_Fail = 0;
int Hard_indx = int(random(0, 20));
int current_Hard_indx;
int Hard_Score = 0;
PImage[] Easy_B = new PImage[6];
int Easy_Fail = 0;
int Easy_indx = int(random(0, 5));
int current_Easy_indx;
int Easy_Score = 0;

void setup() {
  fullScreen();
  size(1920, 1080);
  StartPage = loadImage("StartPage.png");
  Start = loadImage("Start.png");
  StartTouch = loadImage("StartTouch.png");
  Gameplay = loadImage("Gameplay.png");
  back = loadImage("back.png");
  next = loadImage("next.png");
  backT = loadImage("backT.png");
  nextT = loadImage("nextT.png");
  LevelChoosen = loadImage("LevelChoosen.png");
  Chos_Easy = loadImage("chooseEasy.png");
  Chos_Mid = loadImage("chooseMid.png");
  Chos_Hard = loadImage("chooseHard.png");
  HighScore = loadImage("HighScore.png");
  GameStart = loadImage("GameStart.png");
  Easy = loadImage("Easy.png");
  Mid = loadImage("Mid.png");
  Hard = loadImage("Hard.png");
  Chos_HighScore = loadImage("chooseHighScore.png");
  LoadMid_B();
  TCfont = createFont("Bangers.ttf", 28);
  textFont(TCfont);
  Mid_bgm = new SoundFile(this, "battle-of-kings-free-epic-music.mp3");
  Mid_bgm.play();
  LoadHard_B();
  LoadEasy_B();
}//end of setup()

void draw() {
  background(255);
  //image(StartPage, width/2, height/2, width, height);
  if ((mouseX <= 1903 && mouseX >= 1738)&&(mouseY <= 645 && mouseY >= 540)) {
    frameRate(60);
  }
  switch(Scene) {
  case 1://遊戲開始畫面
    image(StartPage, 0, 0, width, height);
    image(Start, 0, 0, width, height);
    if ((mouseX <= 1162 && mouseX >= 752)&&(mouseY <= 745 && mouseY >= 611)) {
      image(StartTouch, 0, 0, width, height);
      if (mousePressed == true) {
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
    LevelChoose();
    break;
  case 4://高分榜
    image(HighScore, 0, 0, width, height);
    BacktoLevelChoosen();
    break;
  case 5://簡單關卡
    image(Easy, 0, 0, width, height);
    Level_Easy();
    BacktoLevelChoosen();
    break;
  case 6://中等關卡
    image(Mid, 0, 0, width, height);
    Level_Mid();
    BacktoLevelChoosen();
    break;
  case 7:
    image(Hard, 0, 0, width, height);
    Level_Hard();
    BacktoLevelChoosen();
    break;
  }//end of switch
}//end of draw()

void Back() {
  image(back, 0, 0, width, height);
  if ((mouseX <= 191 && mouseX >= 26)&&(mouseY <= 645 && mouseY >= 540)) {
    image(backT, 0, 0, width, height);
    if (mousePressed == true) {
      if (Scene == 3) {
        Scene = 2;
      }else if(Scene == 2){
        Scene = 1;
      }
    }
  }
}//end of Back()
void Next() {
  image(next, 0, 0, width, height);
  if ((mouseX <= 1903 && mouseX >= 1738)&&(mouseY <= 645 && mouseY >= 540)) {
    image(nextT, 0, 0, width, height);
    if (mousePressed == true) {
      Scene ++;
    }
  }
}//end of Next()
void BacktoLevelChoosen() {
  image(back, 0, 0, width, height);
  
    if ((mouseX <= 191 && mouseX >= 26)&&(mouseY <= 645 && mouseY >= 540)) {
    frameRate(60);
    image(backT, 0, 0, width, height);
    //if (mousePressed == true) {
    //  Scene = 3;
    //}
  }
}//end of BacktoLevelChoosen()

void LevelChoose() {
  if ((mouseX <= 797 && mouseX >= 332.4)&&(mouseY <= 770 && mouseY >= 402)) {
    // 選擇關卡_簡單
    image(Chos_Easy, 0, 0, width, height);
    if (mousePressed == true) {
      Level = 1;
      Scene = 5;
    }
  } else if ((mouseX <= 1305 && mouseX >= 840)&&(mouseY <= 770 && mouseY >= 402)) {
    // 選擇關卡_中等
    image(Chos_Mid, 0, 0, width, height);
    if (mousePressed == true) {
      Level = 2;
      Scene = 6;
    }
  } else if ((mouseX <= 1812 && mouseX >= 1347.5)&&(mouseY <= 770 && mouseY >= 402)) {
    // 選擇關卡_困難
    image(Chos_Hard, 0, 0, width, height);
    if (mousePressed == true) {
      Level = 3;
      Scene = 7;
    }
  } else if ((mouseX <= 1636 && mouseX >= 892)&&(mouseY <= 972 && mouseY >= 818)) {
    // 選擇高手榜
    image(Chos_HighScore, 0, 0, width, height);
    if (mousePressed == true) {
      Scene = 4;
    }
  }//end of if
}//end of LevelChoose()

void Level_Easy() {
  frameRate(60);
  if (!gameStarted) {
    frameRate(60);
    if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
      image(GameStart, 0, 0, width, height);
    }
    return;
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
    } else if (TimeLeft > 0 && Easy_Fail < 3) {
      TimeLeft--;
      current_Easy_indx = Easy_indx;
      image(Easy_B[current_Easy_indx], 0, 0);
    }
  }
  if (TimeLeft < 0 || Easy_Fail >= 3) {
    gameStarted = false;
    //restartGame(); 
  }
}//end of LevelEasy()

void Level_Mid() {
  frameRate(60);
  if (!gameStarted) {
    frameRate(60);
    if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
      image(GameStart, 0, 0, width, height);
    }
    return;
  }

  if (gameStarted == true) {
    image(Mid, 0, 0, width, height);

    fill(77, 31, 0);
    textSize(120);
    textAlign(CENTER);
    text(Mid_Score, 255, 730);
    text(TimeLeft, 255, 975);

    frameRate(1);
    if (GameStart_Countdown > 0) {
      fill(255, 221, 169);
      textSize(500);
      textAlign(CENTER);
      text(GameStart_Countdown, width/2, height/2);
      GameStart_Countdown--;
    } else if (TimeLeft > 0 && Mid_Fail < 3) {
      TimeLeft--;
      current_Mid_indx = Mid_indx;
      image(Mid_B[current_Mid_indx], 0, 0);
    }
  }

  if (TimeLeft < 0 || Mid_Fail >= 3) {
    gameStarted = false;
    //restartGame();
  }
}//end of Level_Mid()

void Level_Hard(){
  frameRate(60);
  if (!gameStarted) {
    frameRate(60);
    if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
      image(GameStart, 0, 0, width, height);
    }
    return;
  }
  
  if(gameStarted == true){
    image(Hard, 0, 0, width, height);
    
    fill(77, 31, 0);
    textSize(120);
    textAlign(CENTER);
    text(Hard_Score, 255, 730);
    text(TimeLeft, 255, 975);
    
    frameRate(1);
    if (GameStart_Countdown > 0) {
      fill(255, 221, 169);
      textSize(500);
      textAlign(CENTER);
      text(GameStart_Countdown, width/2, height/2);
      GameStart_Countdown--;
    } else if (TimeLeft > 0 && Hard_Fail < 3) {
      TimeLeft--;
      current_Hard_indx = Hard_indx;
      image(Hard_B[current_Hard_indx], 0, 0);
    }
  }
  if (TimeLeft < 0 || Hard_Fail >= 3) {
    gameStarted = false;
    //restartGame(); 
  }
}//end of Level_Hard()

void LoadEasy_B() {
  Easy_B[0] = loadImage("18.png"); 
  Easy_B[1] = loadImage("19.png");
  Easy_B[2] = loadImage("20.png");
  Easy_B[3] = loadImage("21.png");
  Easy_B[4] = loadImage("22.png");
  Easy_B[5] = loadImage("23.png");
}//end LoadEasy_B
void LoadMid_B() {
  Mid_B[0] = loadImage("W.png");
  Mid_B[1] = loadImage("A.png");
  Mid_B[2] = loadImage("S.png");
  Mid_B[3] = loadImage("D.png");
  Mid_B[4] = loadImage("UP.png");
  Mid_B[5] = loadImage("DOWN.png");
  Mid_B[6] = loadImage("LEFT.png");
  Mid_B[7] = loadImage("RIGHT.png");
}//end LoadMid_B
void LoadHard_B() {
  Hard_B[0] = loadImage("29.png"); 
  Hard_B[1] = loadImage("30.png");
  Hard_B[2] = loadImage("31.png");
  Hard_B[3] = loadImage("32.png");
  Hard_B[4] = loadImage("33.png");
  Hard_B[5] = loadImage("34.png");
  Hard_B[6] = loadImage("35.png");
  Hard_B[7] = loadImage("36.png");
  Hard_B[8] = loadImage("37.png");
  Hard_B[9] = loadImage("38.png");
  Hard_B[10] = loadImage("39.png");
  Hard_B[11] = loadImage("40.png");
  Hard_B[12] = loadImage("41.png");
  Hard_B[13] = loadImage("42.png");
  Hard_B[14] = loadImage("43.png");
  Hard_B[15] = loadImage("44.png");
  Hard_B[16] = loadImage("45.png");
  Hard_B[17] = loadImage("46.png");
  Hard_B[18] = loadImage("47.png");
  Hard_B[19] = loadImage("48.png");
  Hard_B[20] = loadImage("49.png");
}//end LoadHard_B

void Easy_restartGame() {
  TimeLeft = 30;
  Easy_Score = 0;
  Easy_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
}// end of  Easy_restartGame()
void Mid_restartGame() {
  TimeLeft = 30;
  Mid_Score = 0;
  Mid_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
}// end of  Mid_restartGame()
void Hard_restartGame() {
  TimeLeft = 30;
  Hard_Score = 0;
  Hard_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
}// end of  Hard_restartGame()
