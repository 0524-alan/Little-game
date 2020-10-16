import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

color Lorange = #FAEA38;
color white = #FFFFFF;
color red = #FF0000;
color green = #00FF00;
color blue = #0000FF;
color black = #000000;
color purple = #A409F6;
color pink = #E496A9;
color orange = #C75723;
color darkblue = #4025A5;
color lightblue = #03FDE9;
color brown = #8E4811;
color yellow = #DAEF1C;
color grey = #95919D;
color gold = #FDD50B;
color silver = #DBD5D2;
int mode;
final int intro = 0;
final int gameCenter = 1;
final int pausescreen1 = 2;
final int gameover = 3;
final int clickergame = 5;
final int applegame = 6;
final int appleG = 7;
final int clickerG = 8;
final int clickerOption = 9;
int a,b,c,d,e,score,live,PP;
float x,y,z,vx,vy;

PImage returnB,pause,play;

//sound variables
  Minim minim;
  AudioPlayer theme,coin,bump,gameoverS;

void setup(){
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameoverS = minim.loadFile("gameover.wav");
  
  
  
  size(1200,800);
  mode = intro;
  textAlign(CENTER,CENTER);
  a = 150;
  b = 450;
  c = 750;
  d = 1050;
  e = 1350;
  x = width/2;
  y = height/2;
  z = 100;
  score = 0;
  live = 3;
  vx = random(-5,5);
  vy = random(-5,5);
  PP = 1;
  
  returnB = loadImage("returnB.png");
  pause = loadImage("pause.png");
  play = loadImage("play.png");
}

void draw(){
  if (mode == intro){
    intro();
  }
  else if (mode == gameCenter){
    gameCenter();
  }
  else if(mode == pausescreen1){
    pausescreen1(); 
  }
  else if (mode == gameover){
    gameover(); 
  }
  else if (mode == clickergame){
    clickergame(); 
  }
  else if (mode == applegame){
    applegame(); 
  }
  else if (mode == appleG){
    appleG(); 
  }
  else if (mode == clickerG){
    clickerG(); 
  }
  else if (mode == clickerOption){
    clickerOption(); 
  }
  else {
    println( "Error: Mode = " + mode);
  }
  strokeWeight(0);
  at(0,0,70,50);
  rect(0,0,70,50);
  image(returnB,10,0,50,50);
}

void at(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
  fill(255,180,30);
  }
 else{
   fill(255,200,90);
   }
}

void reset(){
  x = width/2;
  y = height/2;
  z = 100;
  score = 0;
  live = 3;
  vx = random(-5,5);
  vy = random(-5,5);
  PP = 1;
}
  
  
