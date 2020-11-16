void pausescreen2(){
if(PPP > 0){
image(pause,1100,0,50,50);
mode = PongG;
}
}

void pausescreen2Click(){
  if (mouseX > 1100 && mouseX < 1150 && mouseY > 0 && mouseY < 50){
   PPP = PPP * -1;
 }
    if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = Ponggame;
   resets();
    }
  
}
