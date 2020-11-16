void gameover(){
  background(255,0,0);
  theme.pause();
  theme.rewind();
  strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  textSize(50);
  text("GAMEOVER",600,400);
  textSize(30);
  text("Score:" + score, 600,450);
  at(480,530,220,120);
  rect(490,540,220,120,20);
  fill(Lorange);
  rect(500,550,200,100,20);
  textSize(30);
  fill(black);
  text("BACK",600,600);
}
void gameoverClick(){
  if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = gameCenter;
   reset();
 } 
 if (mouseX > 500 && mouseX < 700 && mouseY > 550 && mouseY < 650){
  mode = clickergame;
   theme.pause();
   theme.rewind();
   reset();
 } 
}


  
  
  
