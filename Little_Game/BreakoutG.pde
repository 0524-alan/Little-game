void BreakoutG(){
background(white);
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
  
}
