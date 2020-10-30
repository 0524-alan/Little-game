void PongOption(){
 background(Lorange);
 strokeWeight(0);
 fill(255,200,90);
 rect(0,0,1200,50);
 
 //1-player button
  at(220,90,280,160);
  strokeWeight(1);
  if(sigmas == 1){
   fill(255,180,30); 
  }
  rect(220,90,280,160,30);
  fill(222,216,29);
  rect(230,100,260,140,30);
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("1-PLAYER",360,170);
  
  //2-player button
  at(700,90,280,160);
  strokeWeight(1);
  if(sigmas == 2){
   fill(255,180,30); 
  }
  rect(700,90,280,160,30);
  fill(222,216,29);
  rect(710,100,260,140,30);
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("2-Player",840,170);
}
void PongOClick(){
if(mouseX < 490 && mouseX > 230 && mouseY < 240 && mouseY > 100){
sigmas = 1;
}
if(mouseX < 970 && mouseX > 710 && mouseY < 240 && mouseY > 100){
sigmas = 2;
}
if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = Ponggame;
 }
}
