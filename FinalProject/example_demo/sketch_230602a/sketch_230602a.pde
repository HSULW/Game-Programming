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
int Mid_indx;
int current_Mid_indx;
float lag = 0;

void setup() {
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
  HighScore = loadImage("HighScore.png");
  GameStart = loadImage("GameStart.png");
  Easy = loadImage("Easy.png");
  Mid = loadImage("Mid.png");
  Hard = loadImage("Hard.png");
  LoadMid_B();
}

void draw() {
  image(Mid, 0, 0, width, height);
  if (!gameStarted) {
    if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
      image(GameStart, 0, 0, width, height);
    }
    return;
  }
  
  if(lag >= 1){
      Mid_indx = int(random(0, 7));
      if(Mid_indx == current_Mid_indx){
        Mid_indx = int(random(0, 7));
      }
      lag = 0;
   }
  
  
  
  fill(77, 31, 0);
  textSize(120);
  textAlign(CENTER);
  text(Mid_Score, 255, 725);
  text(TimeLeft, 255, 970);
  
  if(gameStarted == true){
    frameRate(1);
    if (GameStart_Countdown > 0) {
    fill(255, 155, 0);
    textSize(500);
    textAlign(CENTER);
    text(GameStart_Countdown, width/2, height/2);
    GameStart_Countdown--;
    } else if (TimeLeft > 0 && Mid_Fail < 3 ) {
      Mid_Score = 0;
      //frameRate(60);
      TimeLeft--;
      current_Mid_indx = Mid_indx;
      image(Mid_B[current_Mid_indx], 0, 0);
      
      //if(Mid_indx == 0){
      //  if(key == 'W'){
      //    Mid_Score ++;
      //  }
      //}
  
    }
    
    lag += 0.5;
  }
  
  if (TimeLeft <= 0 || Mid_Fail >= 3) {
    gameStarted = false;
    restartGame(); 
  }
}

void mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    
  } 
}

void restartGame() {
  TimeLeft = 30;
  //Mid_Score = 0;
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
  
  if (current_Mid_indx == 0) {
    if (key == 'W' || key == 'w') {
      Mid_Score++;
      println("Correct key: W");
    } 
  } else if (current_Mid_indx == 1) {
    if (key == 'A' || key == 'a') {
      Mid_Score++;
      println("Correct key: A");
    } 
  } else if (current_Mid_indx == 2) {
    if (key == 'S' || key == 's') {
      Mid_Score++;
      println("Correct key: S");
    } 
  } else if (current_Mid_indx == 3) {
    if (key == 'D' || key == 'd') {
      Mid_Score++;
      println("Correct key: D");
    } 
  } else if (current_Mid_indx == 4) {
    if (keyCode == UP) {
      Mid_Score++;
      println("Correct key: UP");
    } 
  } else if (current_Mid_indx == 5) {
    if (keyCode == DOWN) {
      Mid_Score++;
      println("Correct key: DOWN");
    } 
  } else if (current_Mid_indx == 6) {
    if (keyCode == LEFT) {
      Mid_Score++;
      println("Correct key: LEFT");
    } 
  } else if (current_Mid_indx == 7) {
    if (keyCode == RIGHT) {
      Mid_Score++;
      println("Correct key: RIGHT");
    } 
  } else {
    Mid_Fail++;
    println("Wrong key");
  }
}
