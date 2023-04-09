//set the rectangle between the windows
void setMid(){
  
  for(int i=0 ; i<num ; i++){
    if(( i*(rectW + 10) + startX) + rectW > width) 
    realNum = i;
  }
  sideLength = (width - ((rectW * realNum) + (realNum - 1) * 10)) / 2;
  if(sideLength < 0){
    sideLength = ((-1) * sideLength) / 2;
  }
  println("realNum = " + realNum);
  println("sideLength = " + sideLength);
}
