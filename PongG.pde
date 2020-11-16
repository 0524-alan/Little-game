void PongG(){
if (sigmas == 2) {
background(0);
strokeWeight(0);
fill(255,200,90);
rect(0,0,1200,50);
//paddles
fill(white);
circle(leftx,lefty,leftd);
circle(rightx,righty,rightd);
//ball
circle(ballx,bally,balld);
if (wkey == true) lefty = lefty - 5;
if (skey == true) lefty = lefty + 5;
if (upkey == true) righty = righty - 5;
if (downkey == true) righty = righty + 5;
if (lefty < leftd / 2 + 50) lefty = leftd / 2 + 50;
if (lefty > height - leftd / 2) lefty = height - leftd / 2;
if (righty < rightd / 2 + 50) righty = rightd / 2 + 50;
if (righty > height - rightd / 2) righty = height - rightd / 2;

//move ball
if ( timer < 0){
ballx = ballx + bx;
bally = bally + by;
}

//bouncing
if (bally <= balld / 2 + 50 || bally >= height - balld /2){
  by = by * -1;
}

if(dist(ballx,bally,rightx,righty) <= balld / 2 + rightd / 2){
  bx = (ballx - rightx)/10;
  by = (bally - righty)/10;
}

if(dist(ballx,bally,leftx,lefty) <= balld / 2 + rightd / 2){
  bx = (ballx - leftx)/10;
  by = (bally - lefty)/10;
}

stroke(white);
strokeWeight(4);
line(width/2,50,width/2,height);

textSize(30);
fill(white);
text("PLAYER1:" + leftscore,width/4,100);
text("PLAYER2:" + rightscore, 3 * width/4,100);
timer = timer - 1;

//save
stroke(0);
strokeWeight(0);
at(975,0,50,50);
rect(975,0,50,50);
textSize(50);
fill(black);
text("S",1000,20);


//scoring
if (ballx < 0){
  rightscore = rightscore + 1;
  ballx = width/2;
  bally = height/2;
  timer = 100;
   bx = random(-3,0);
  by = random(-3,0);
}

if (ballx > 1200){
  leftscore = leftscore + 1;
    ballx = width/2;
  bally = height/2;
  timer = 100;
   bx = random(0,3);
  by = random(0,3);
}

if (leftscore == 3 || rightscore == 3){
  mode = PongWin;
}
stroke(0);
  }
  
  if(sigmas == 1){
    background(0);
strokeWeight(0);
fill(255,200,90);
rect(0,0,1200,50);
//paddles
fill(white);
circle(leftx,lefty,leftd);
circle(rightx,righty,rightd);
//ball
circle(ballx,bally,balld);
if (wkey == true) lefty = lefty - 5;
if (skey == true) lefty = lefty + 5;
if(righty < bally - 4){
righty = righty + 5;
}
else if (righty > bally + 4){
 righty = righty - 5;
}

if (lefty < leftd / 2 + 50) lefty = leftd / 2 + 50;
if (lefty > height - leftd / 2) lefty = height - leftd / 2;
if (righty < rightd / 2 + 50) righty = rightd / 2 + 50;
if (righty > height - rightd / 2) righty = height - rightd / 2;


//move ball
if ( timer < 0){
ballx = ballx + bx;
bally = bally + by;
}

//bouncing
if (bally <= balld / 2 + 50 || bally >= height - balld /2){
  by = by * -1;
}

if(dist(ballx,bally,rightx,righty) <= balld / 2 + rightd / 2){
  bx = (ballx - rightx)/10;
  by = (bally - righty)/10;
}

if(dist(ballx,bally,leftx,lefty) <= balld / 2 + rightd / 2){
  bx = (ballx - leftx)/10;
  by = (bally - lefty)/10;
}

stroke(white);
strokeWeight(4);
line(width/2,50,width/2,height);

textSize(30);
fill(white);
text("PLAYER:" + leftscore,width/4,100);
text("AI:" + rightscore, 3 * width/4,100);
timer = timer - 1;


//save
stroke(0);
strokeWeight(0);
at(975,0,50,50);
rect(975,0,50,50);
textSize(50);
fill(black);
text("S",1000,20);

//scoring
if (ballx < 0){
  rightscore = rightscore + 1;
  ballx = width/2;
  bally = height/2;
  timer = 100;
   bx = random(-3,0);
  by = random(-3,0);
}

if (ballx > 1200){
  leftscore = leftscore + 1;
    ballx = width/2;
  bally = height/2;
  timer = 100;
   bx = random(0,3);
  by = random(0,3);
}
stroke(0);
}
  
 if(PPP < 0){
image(play,1100,5,40,40);
mode = pausescreen2;
}
if(PPP > 0){
image(pause,1100,0,50,50);
}
if (leftscore >= 3 || rightscore >= 3){
  mode = PongWin;
}
}




void PongGClick(){
 if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   resets();
   mode = Ponggame;
 }
   if (mouseX > 1100 && mouseX < 1150 && mouseY > 0 && mouseY < 50){
   PPP = PPP * -1;
 }
 if  (mouseX < 1025 && mouseX > 975 && mouseY < 50 && mouseY > 0) {
     selectOutput("Choose a name", "saveImage");
    }
}

void PongGkeyP(){
  if (key == 'w'|| key == 'W') wkey = true;
  if (key == 's'|| key == 'S') skey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  
}

void PongGkeyR(){
  if (key == 'w'|| key == 'W') wkey = false;
  if (key == 's'|| key == 'S') skey = false;
    if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  
}
