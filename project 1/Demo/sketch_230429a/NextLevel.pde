void nextLevel(){
    grade = 0;
    fail = 0;
    start += 10;
    passCond += 5;
    x = int(random(width));
    y = int(random(height));
    if(y < 100) y+= 200;
}
