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

//NEW
PImage[] Hard_B = new PImage[21];
int Hard_Fail = 0;
int Hard_indx = int(random(0, 20));
int current_Hard_indx;
int Hard_Score = 0;


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
  
 //NEW
 LoadHard_B();
  image(Hard, 0, 0, width, height);
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


void mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    Hard_restartGame();
  } 
}

void Hard_restartGame() {
  TimeLeft = 30;
  Hard_Score = 0;
  Hard_Fail = 0;
  GameStart_Countdown = 3;
  frameRate(60);
}

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
}

void keyPressed() {
println("Key pressed: " + key + ", KeyCode: " + keyCode + ", Hard_indx: " + Hard_indx);
  isCorrect = false;
  
  if(current_Hard_indx == 0){
    if(key == 'Q' || key == 'q'){
      Hard_Score++;
      println("Correct key: Q");
      isCorrect = true;
    } 
  }else if(current_Hard_indx == 1){
    if(key == 'W' || key == 'w'){
      Hard_Score++;
      println("Correct key: W");
      isCorrect = true;
    } 
  }else if(current_Hard_indx == 2){
    if(key == 'E' || key == 'e'){
      Hard_Score++;
      println("Correct key: E");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 3){
    if(keyCode == UP || keyCode == UP){
      Hard_Score++;
      println("Correct key: UP");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 4){
    if(key == 'T' || key == 't'){
      Hard_Score++;
      println("Correct key: T");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 5){
    if(key == 'Y' || key == 'y'){
      Hard_Score++;
      println("Correct key: Y");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 6){
    if(key == 'U' || key == 'u'){
      Hard_Score++;
      println("Correct key: U");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 7){
    if(keyCode == LEFT || keyCode == LEFT){
      Hard_Score++;
      println("Correct key: LEFT");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 8){
    if(key == 'S' || key == 's'){
      Hard_Score++;
      println("Correct key: S");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 9){
    if(key == 'D' || key == 'd'){
      Hard_Score++;
      println("Correct key: D");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 10){
    if(key == 'F' || key == 'f'){
      Hard_Score++;
      println("Correct key: F");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 11){
    if(key == 'G' || key == 'g'){
      Hard_Score++;
      println("Correct key: G");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 12){
    if(key == 'H' || key == 'h'){
      Hard_Score++;
      println("Correct key: H");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 13){
    if(keyCode == RIGHT || keyCode == RIGHT){
      Hard_Score++;
      println("Correct key: RIGHT");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 14){
    if(key == 'Z' || key == 'z'){
      Hard_Score++;
      println("Correct key: Z");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 15){
    if(key == 'X' || key == 'x'){
      Hard_Score++;
      println("Correct key: X");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 16){
    if(key == 'C' || key == 'c'){
      Hard_Score++;
      println("Correct key: C");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 17){
    if(keyCode == DOWN || keyCode == DOWN){
      Hard_Score++;
      println("Correct key: DOWN");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 18){
    if(key == 'B' || key == 'b'){
      Hard_Score++;
      println("Correct key: B");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 19){
    if(key == 'N' || key == 'n'){
      Hard_Score++;
      println("Correct key: N");
      isCorrect = true;
    }
  }else if(current_Hard_indx == 20){
    if(key == 'M' || key == 'm'){
      Hard_Score++;
      println("Correct key: M");
      isCorrect = true;
    }
  }else {
    //Mid_Fail++;
    println("Wrong key");
    isCorrect = false;
  }
  
  if (isCorrect) {
    frameRate(100);
    Hard_indx = int(random(0, 20));
    if(Hard_indx == current_Hard_indx){
      Hard_indx = int(random(0, 20));
    }
    //frameRate(60);
  }
}
