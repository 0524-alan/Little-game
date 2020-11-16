void BreakoutG(){
background(0);
strokeWeight(0);
fill(255,200,90);
rect(0,0,1200,50);
  circle(baa,bab,bac);
  circle(balla,ballb,ballc);
if (akey == true) baa = baa - 5;

if (dkey == true) baa = baa + 5;

  if (baa < bac / 2) baa = bac / 2;
if (baa > width - bac / 2) baa = width - bac / 2;

balla = balla + bx;
ballb = ballb + by;

//bouncing
if (ballb <= ballc / 2 + 50){
  by = by * -1;
}
if (balla >= width - ballc /2 || balla <= ballc /2){
  bx = bx * -1;
}

if(dist(balla,ballb,baa,bab) <= ballc / 2 + bac / 2){
  bx = (balla - baa)/10;
  by = (ballb - bab)/10;
}  
 fill(white);

int i = 0;
while(i < w){
  if ( alive[i] == true){
  managebrick(i);
  }
  i = i + 1;
}
if (ballb > 800){
  mode = BG;
}
}

void BreakGClickP(){
  if (key == 'a'|| key == 'A') akey = true;
  if (key == 'd'|| key == 'D') dkey = true;
}
void BreakGClickR(){
  if (key == 'a'|| key == 'A') akey = false;
  if (key == 'd'|| key == 'D') dkey = false;
}
void BreakGClick(){
   if (mouseX > 0 && mouseX < 70 && mouseY > 0 && mouseY < 50){
   mode = Breakoutgame;
 }
}

void managebrick(int i){
  
    if (m[i] == 100) fill (red);
    if (m[i] == 225) fill (purple);
    if (m[i] == 350) fill (yellow);
    if (m[i] == 475) fill (blue);
  circle(n[i],m[i],brickd);
  if(dist(balla,ballb,n[i],m[i]) <= ballc / 2 + brickd / 2){
  bx = (balla - n[i])/10;
  by = (ballb - m[i])/10;
  alive[i] = false;
  score2 = score2 + 1;
} 
  
  }
