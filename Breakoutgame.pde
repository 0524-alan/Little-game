void Breakoutgame(){
  background(Lorange);
  fill(255,180,30);
  rect(90,90,620,420,30);


strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  

//Start button
  at(140,550,220,120);
  strokeWeight(1);
  rect(140,550,220,120,30);
  fill(222,216,29);
  rect(150,560,200,100,30);
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("START",250,610);
  
  //Option button
  at(440,550,220,120);
  strokeWeight(1);
  rect(440,550,220,120,30);
  fill(222,216,29);
  rect(450,560,200,100,30);
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("OPTION",550,610);
  
    
   image(prime[frame],90,90,620,420);
  digital = digital + 0.5;
  if(digital > frame){
  frame = frame + 1;
  }

if (frame == 79){
   digital = 0;
   frame = 0;
}
}


  
void BreakClick(){
    if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = gameCenter;
 }
  if (mouseX > 150 && mouseX < 350 && mouseY > 560 && mouseY < 660){
     reset3();
    mode = BreakoutG;
 }  
  
}
