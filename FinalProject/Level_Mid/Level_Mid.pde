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
  LoadMid_B();
  image(Mid, 0, 0, width, height);
  TCfont = createFont("Bangers.ttf", 28);
  textFont(TCfont);
  Mid_bgm = new SoundFile(this, "battle-of-kings-free-epic-music.mp3");
  Mid_bgm.play();

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


void mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    Mid_restartGame();
  } 
}

void Mid_restartGame() {
  TimeLeft = 30;
  Mid_Score = 0;
  Mid_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
}

void LoadMid_B() {
  Mid_B[0] = loadImage("W.png"); 
  Mid_B[1] = loadImage("A.png");
  Mid_B[2] = loadImage("S.png");
  Mid_B[3] = loadImage("D.png");
  Mid_B[4] = loadImage("UP.png");
  Mid_B[5] = loadImage("DOWN.png");
  Mid_B[6] = loadImage("LEFT.png");
  Mid_B[7] = loadImage("RIGHT.png");
}

void keyPressed() {
println("Key pressed: " + key + ", KeyCode: " + keyCode + ", Mid_indx: " + Mid_indx);
  isCorrect = false;
  
  if (current_Mid_indx == 0) {
    if (key == 'W' || key == 'w') {
      Mid_Score++;
      println("Correct key: W");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 1) {
    if (key == 'A' || key == 'a') {
      Mid_Score++;
      println("Correct key: A");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 2) {
    if (key == 'S' || key == 's') {
      Mid_Score++;
      println("Correct key: S");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 3) {
    if (key == 'D' || key == 'd') {
      Mid_Score++;
      println("Correct key: D");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 4) {
    if (keyCode == UP) {
      Mid_Score++;
      println("Correct key: UP");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 5) {
    if (keyCode == DOWN) {
      Mid_Score++;
      println("Correct key: DOWN");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 6) {
    if (keyCode == LEFT) {
      Mid_Score++;
      println("Correct key: LEFT");
      isCorrect = true;
    } 
  } else if (current_Mid_indx == 7) {
    if (keyCode == RIGHT) {
      Mid_Score++;
      println("Correct key: RIGHT");
      isCorrect = true;
    } 
  } else {
    Mid_Fail++;
    println("Wrong key");
    isCorrect = false;
  }
  
  if (isCorrect) {
    frameRate(100);
    Mid_indx = int(random(0, 7));
    if(Mid_indx == current_Mid_indx){
      Mid_indx = int(random(0, 7));
    }
    //frameRate(60);
  }
}
