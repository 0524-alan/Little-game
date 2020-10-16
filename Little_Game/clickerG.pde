void clickerG(){
theme.play();
background(255);
fill(0);
circle(x,y,z);
x = x + vx;
y = y + vy;

  strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  

//bouncing
  if(x < z/2 || x > width - z/2){
    vx = vx * -1;
    }
  if(y < z/2 + 50 || y > height - z/2){
    vy = vy * -1;
    }
//score
textSize(25);
text("Score: " + score, 70,70);
text("Lives: " + live, 70,100);
fill(0);
if(PP < 0){
image(play,1100,5,40,40);
mode = pausescreen1;
}
if(PP > 0){
image(pause,1100,0,50,50);
mode = clickerG;
}
}

void clickerGClick(){
if( dist(mouseX,mouseY,x,y) < z/2){
  score = score + 1;
  vx = vx * 1.1;
  vy = vy * 1.1;
  coin.rewind();
  coin.play();
}
else if(mouseY > 50){ 
  live = live -1;
  bump.rewind();
  bump.play();
}
if(live == 0){
  mode = gameover;
  gameoverS.play();
}
if (mouseX > 20 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = clickergame;
 }
 
if (mouseX > 1100 && mouseX < 1150 && mouseY > 0 && mouseY < 50){
   PP = PP * -1;
 }
 
 if (mouseX > 20 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = clickergame;
   theme.pause();
   theme.rewind();
   reset();
 } 
}
