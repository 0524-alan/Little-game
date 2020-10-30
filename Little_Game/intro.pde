void intro(){
  //sky
  background(lightblue);
  
  strokeWeight(0);
  fill(255,200,90);
  rect(0,0,1200,50);
  
  //mountain
  strokeWeight(1);
  fill(24,196,16);
  if(a < -150){
    a = 1350;
  }
  if(b < -150){
    b = 1350;
  }
  if(c < -150){
    c = 1350;
  }
  if(d < -150){
    d = 1350;
  }
  if(e < -150){
    e = 1350;
  }
  a = a - 3;
  b = b - 3;
  c = c - 3;
  d = d - 3;
  e = e - 3;
  ellipse(a,550,300,300);
  ellipse(b,550,300,300);
  ellipse(c,550,300,300);
  ellipse(d,550,300,300);
  ellipse(e,550,300,300);
  
  //grassland
  fill(41,227,32);
  strokeWeight(1);
  rect(0,550,1200,250);
  
  //Start button
  at(490,490,220,120);
  strokeWeight(1);
  rect(490,490,220,120,30);
  fill(222,216,29);
  rect(500,500,200,100,30);
  strokeWeight(5);
  fill(0);
  textSize(30);
  text("START",600,550);
  
  textSize(60);
  text("Little Game",600,100);
  
}

  
  
void introClick(){
 if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600){
   mode = gameCenter;
   
 }
}
