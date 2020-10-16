void gameover(){
  background(255,0,0);
  theme.pause();
  theme.rewind();
  strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
}
void gameoverClick(){
  if (mouseX > 20 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = gameCenter;
   reset();
 } 
}


  
  
  
