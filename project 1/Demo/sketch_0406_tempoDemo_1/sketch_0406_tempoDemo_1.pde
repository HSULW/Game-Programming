int tempo_Speed;
int i;
int score = 0;

void setup(){
  size(800, 600);
  textSize(40);
  tempo_Speed = int(random(30, 60));
  frameRate(5);
  i = int(random(6, 10));
}

void draw(){
  
  background(128);
  stroke(0);
  
  text("Hello world!" + i, 400, 300);
  i--;
  if(i == 0){
    text("Press A" , 300, 200);
    if(key == 'A'){
      score ++;
      text("Correct!", 200, 200);
    }else{
      text("Wrong!", 200, 200);
    }
  }
  
  
  
}
