void moveToNextlevel(){
   if (fail >= 3) {
     int result = JOptionPane.showConfirmDialog(null, "幹你超爛這樣也過不了，重來吧!", "通關失敗", JOptionPane.YES_NO_OPTION);
     if (result == JOptionPane.YES_OPTION) {
      grade = 0;
      fail = 0;
      x = int(random(width));
      y = int(random(height));
      if(y < 100) y+= 200;
    } else {
      exit();
    }
  }
   if (grade >= passCond) {
    int result = JOptionPane.showConfirmDialog(null, "恭喜你通過本關卡！繼續下一關嗎？", "通關成功", JOptionPane.YES_NO_OPTION);
    if (result == JOptionPane.YES_OPTION) {
      // 重置遊戲狀態，進入下一關卡
      nextLevel();
      level++;
    } else {
      exit();
    }
  }
}
