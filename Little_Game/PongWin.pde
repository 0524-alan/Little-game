void PongWin(){
background(0);
strokeWeight(0);
fill(255,200,90);
rect(0,0,1200,50);
textSize(60);
fill(white);
if(sigmas == 2){
if(leftscore < rightscore){
  text("PLAYER 2",600,350);
}
if(rightscore < leftscore){
  text("PLAYER 1",600,350);
}
  text("WIN",600,450);
}

if(sigmas == 1){
if(leftscore < rightscore){
  text("AI",600,350);
}
if(rightscore < leftscore){
  text("Player",600,350);
}
  text("WIN",600,450);
}
 
 at(480,530,220,120);
  rect(490,540,220,120,20);
  fill(Lorange);
  rect(500,550,200,100,20);
  textSize(30);
  fill(black);
  text("BACK",600,600);
}

void PongWClick(){
 if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   resets();
   mode = Ponggame;
 } 
  if (mouseX > 500 && mouseX < 700 && mouseY > 550 && mouseY < 650){
  mode = Ponggame;
   resets();
}
}
