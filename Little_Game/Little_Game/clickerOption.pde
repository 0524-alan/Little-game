void clickerOption(){
  background(Lorange);
  signals();
  image(smile,30,80,200,200);
  image(angry,30,300,200,200);
  image(crying,250,80,200,200);
  image(hands,250,300,200,200);
  strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  
  rect(570,70,30,500);
  fill(black);
  rect(570,70,30,100);
  fill(red);
  rect(570,170,30,100);
  fill(orange);
  rect(570,270,30,100);
  fill(yellow);
  rect(570,370,30,100);
  fill(green);
  rect(570,470,30,100);
  fill(white);
  rect(555,sliderY,60,30);
  diff = map(sliderY,570,70,0,5);
}
void clickerOClick(){
  if(mouseX > 30 && mouseX < 230 && mouseY > 80 && mouseY < 280){
  signal = 1;
  }
   
   if(mouseX > 30 && mouseX < 230 && mouseY > 300 && mouseY < 500){
     signal = 2;
  }
   
   if(mouseX > 250 && mouseX < 450 && mouseY > 80 && mouseY < 280){
   signal = 3;
  }
   
     if(mouseX > 250 && mouseX < 450 && mouseY > 300 && mouseY < 500){
  signal = 4;
  }
  
   if (mouseX > 540 && mouseX < 600 && mouseY > 70 && mouseY < 500){
   sliderY = mouseY;
   }
   
   if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = gameCenter;
}
}


void clickerDragged(){
   if (mouseX > 540 && mouseX < 600 && mouseY > 70 && mouseY < 500){
   sliderY = mouseY;
   }
  
}
