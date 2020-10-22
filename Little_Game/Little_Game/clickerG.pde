void clickerG(){
theme.play();
background(255);
fill(0);
//image(space,0,50,1200,750);
imageMode(CENTER);
area();
image(emoji,x,y,z,z);
imageMode(CORNER);
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
//save
at(975,0,50,50);
rect(975,0,50,50);
textSize(50);
fill(black);
text("S",1000,20);
}

void clickerGClick(){

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
 
 if  (mouseX < 1025 && mouseX > 975 && mouseY < 50 && mouseY > 0) {
     selectOutput("Choose a name", "saveImage");
    }
}

void area(){
  if(diff < 1){
    z = 120;
  }
 else if(diff < 2 && diff > 1){
    z = 110;
  }
 else if(diff < 3 && diff > 2){
    z = 100;
  }
 else if(diff < 4 && diff > 3){
    z = 90;
  }
  else if(diff < 5 && diff > 4){
    z = 80;
  }
}

void saveImage(File f){
  if ( f != null){
    PImage canvas = get( 0, 50,  width - 0, height - 50);
    canvas.save(f.getAbsolutePath());
  }
}


void clickerGpressed(){
    if( dist(mouseX,mouseY,x,y) < z/2 && diff < 1){
  score = score + 1;
  vx = vx * 1.1;
  vy = vy * 1.1;
  coin.rewind();
  coin.play();
}
else if( dist(mouseX,mouseY,x,y) < z/2 && diff > 1 && diff < 2){
  score = score + 2;
  vx = vx * 1.3;
  vy = vy * 1.3;
  coin.rewind();
  coin.play();
}
else if( dist(mouseX,mouseY,x,y) < z/2 && diff > 2 && diff < 3){
  score = score + 3;
  vx = vx * 1.5;
  vy = vy * 1.5;
  coin.rewind();
  coin.play();
}
else if( dist(mouseX,mouseY,x,y) < z/2 && diff > 3 && diff < 4){
  score = score + 4;
 // vx = vx * 1.7;
  //vy = vy * 1.7;
  coin.rewind();
  coin.play();
}
else if( dist(mouseX,mouseY,x,y) < z/2 && diff > 4 && diff < 5){
  score = score + 5;
  vx = vx * 2;
  vy = vy * 2;
  coin.rewind();
  coin.play();
}
else if(mouseY > z/2){ 
  live = live -1;
  bump.rewind();
  bump.play();
}
}
