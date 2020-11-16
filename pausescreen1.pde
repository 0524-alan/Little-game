void pausescreen1(){
 theme.pause();
if(PP > 0){
image(pause,1100,0,50,50);
mode = clickerG;
}
}

void pausescreen1Click(){
  if (mouseX > 1100 && mouseX < 1150 && mouseY > 0 && mouseY < 50){
   PP = PP * -1;
 }
  if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = clickergame;
   reset();
 } 
  
}
