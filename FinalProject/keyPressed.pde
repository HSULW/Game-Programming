void keyPressed() {
  switch(Level){
    case 1:
      Easy_keyPressed();
      //有個人叫小蔡，然後他就被端走了。
      break;
    
    case 2:
      Mid_keyPressed();
      break;
    
    case 3:
      Hard_keyPressed();
      break;
  
  
  }
}// end of KeyPressed()

void Easy_keyPressed(){
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
}// end of EAsy_keyPressed

void Mid_keyPressed(){
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
}//Mid_keyPressed()

void Hard_keyPressed(){
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
}// end of Hard_keyPressed()
