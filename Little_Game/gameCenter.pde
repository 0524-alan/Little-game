void gameCenter(){
background(Lorange);
strokeWeight(1);

strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  
//apple game
textSize(30);
fill(0);
text("apple game",250,440);
at(90,190,320,220);
rect(90,190,320,220,30);
fill(255,0,0);
rect(100,200,300,200,30);

//clicker game
textSize(30);
fill(0);
text("clicker game",650,440);
at(490,190,320,220);
rect(490,190,320,220,30);
fill(255,0,0);
rect(500,200,300,200,30);
}
 
 void gameClick(){
   if (mouseX > 100 && mouseX < 400 && mouseY > 200 && mouseY < 400){
   mode = applegame;
 }
    if (mouseX > 500 && mouseX < 800 && mouseY > 200 && mouseY < 400){
   mode = clickergame;
 }
   if (mouseX > 20 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = intro;
 }
 }
