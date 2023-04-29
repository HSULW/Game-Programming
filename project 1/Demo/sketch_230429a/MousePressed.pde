void mousePressed(){
  boolean hitSomething = false;
  if(dist(mouseX, mouseY, x, y) < 100){
    grade ++;
    hitSomething = true;
  }
  if(!hitSomething){
    fail ++;
  }
}
