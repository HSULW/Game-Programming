import processing.sound.*;

int Scene = 1; // 場景編號
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
boolean gameStarted = false;
int Mid_Fail = 0;
int Mid_indx = int(random(0, 7));
int current_Mid_indx;
float lag = 0;
boolean isCorrect = true;
PFont TCfont;
SoundFile Mid_bgm;
//
PImage[] Easy_B = new PImage[6];
int Easy_Fail = 0;
int Easy_indx = int(random(0, 5));
int current_Easy_indx;
int Easy_Score = 0;

void setup() {
  fullScreen();
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
  //LoadMid_B();
  //image(Mid, 0, 0, width, height);
  TCfont = createFont("Bangers.ttf", 28);
  textFont(TCfont);
  Mid_bgm = new SoundFile(this, "battle-of-kings-free-epic-music.mp3");
  Mid_bgm.play();
//
LoadEasy_B();
  image(Easy, 0, 0, width, height);
}
void draw(){
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

}//end of Level_Easy()


void mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    Easy_restartGame();
  } 
}

void Easy_restartGame() {
  TimeLeft = 30;
  Easy_Score = 0;
  Easy_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
}

void LoadEasy_B() {
  Easy_B[0] = loadImage("18.png"); 
  Easy_B[1] = loadImage("19.png");
  Easy_B[2] = loadImage("20.png");
  Easy_B[3] = loadImage("21.png");
  Easy_B[4] = loadImage("22.png");
  Easy_B[5] = loadImage("23.png");
 
}

void keyPressed() {
println("Key pressed: " + key + ", KeyCode: " + keyCode + ", Easy_indx: " + Easy_indx);
  isCorrect = false;
  
  if (current_Easy_indx == 0) {
    if (key == 'Q' || key == 'q') {
      Easy_Score++;
      println("Correct key: Q");
      isCorrect = true;
    } 
  } else if (current_Easy_indx == 1) {
    if (keyCode == UP) {
      Easy_Score++;
      println("Correct key: UP");
      isCorrect = true;
    } 
  } else if (current_Easy_indx == 2) {
    if (key == 'E' || key == 'e') {
      Easy_Score++;
      println("Correct key: E");
      isCorrect = true;
    } 
  } else if (current_Easy_indx == 3) {
    if (keyCode == LEFT) {
      Easy_Score++;
      println("Correct key: LEFT");
      isCorrect = true;
    } 
  } else if (current_Easy_indx == 4) {
    if (keyCode == DOWN) {
      Easy_Score++;
      println("Correct key: DOWN");
      isCorrect = true;
    } 
  } else if (current_Easy_indx == 5) {
    if (keyCode == RIGHT) {
      Easy_Score++;
      println("Correct key: RIGHT");
      isCorrect = true;
    } 
  } else {
    Easy_Fail++;
    println("Wrong key");
    isCorrect = false;
  }
  
  if (isCorrect) {
    frameRate(100);
    Easy_indx = int(random(0, 5));
    if(Easy_indx == current_Easy_indx){
      Easy_indx = int(random(0, 5));
    }
    //frameRate(60);
  }
}
