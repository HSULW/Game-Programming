void drawRandomwood(){  
  noTint();
  image(wood, x, y, 100, 100);
  
  timeRate += 1;
  if (start + timeRate > 50) {
    image(bgimage, width/2, height/2, width, height);
    timeRate = 1;
    x = int(random(width));
    y = int(random(height));
    if(y < 100) y+= 300;
  }
}
