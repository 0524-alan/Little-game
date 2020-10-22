void PongG(){
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

//move ball
ballx = ballx + bx;
bally = bally + by;

//bouncing
if (bally <= balld/2 || bally >= height - bally /2){
  by = by * -1;
}

if(dist(ballx,bally,rightx,righty) <= balld / 2 + rightd / 2){
  bx = (ballx - rightx)/10;
  by = (bally - righty)/10;
}




}




void PongGClick(){

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
