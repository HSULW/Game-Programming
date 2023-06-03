void mouseClicked() {
  if(Scene > 3){
   if ((mouseX <= 191 && mouseX >= 26)&&(mouseY <= 645 && mouseY >= 540)) {
    //frameRate(60);
    Scene = 3;
    //image(backT, 0, 0, width, height);
    //if (mousePressed == true) {
    //  Scene = 3;
    //}
    }
  }
 
    
  switch(Level){
    case 1:
     Easy_mouseClicked();
    break;
    case 2:
      Mid_mouseClicked();
    break;
    case 3:
      Hard_mouseClicked();
    break;
  }
}// end of mouseClicked() 

void Easy_mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    Easy_restartGame();
  } 
}// end of Easy_mouseClicked()

void Mid_mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    Mid_restartGame();
  } 
}//end of Mid_mouseClicked()

void Hard_mouseClicked() {
  if ((mouseX <= 396 && mouseX >= 108) && (mouseY <= 494 && mouseY >= 402)) {
    gameStarted = true;
    Hard_restartGame();
  } 
}//end of Mid_mouseClicked()
