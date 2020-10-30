void gameCenter(){
background(Lorange);
strokeWeight(1);

strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  
//apple game
textSize(30);
fill(0);
text("breakout game",200,440);
at(40,190,320,220);
rect(40,190,320,220,30);
fill(255,0,0);
rect(50,200,300,200,30);

//clicker game
textSize(30);
fill(0);
text("clicker game",550,440);
at(390,190,320,220);
rect(390,190,320,220,30);
image(clickerP,400,200,300,200);
 
// Pong game
textSize(30);
fill(0);
text("pong game",900,440);
at(740,190,320,220);
rect(740,190,320,220,30);
image(PongP,750,200,300,200);
}







 void gameClick(){
   if (mouseX > 50 && mouseX < 350 && mouseY > 200 && mouseY < 400){
   mode = Breakoutgame;
 }
    if (mouseX > 400 && mouseX < 700 && mouseY > 200 && mouseY < 400){
   mode = clickergame;
 }
 if (mouseX > 750 && mouseX < 1050 && mouseY > 200 && mouseY < 400){
   mode = Ponggame;
 }
   if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = intro;
 }
 }
