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
color Borange = #FFB41E;
int mode;
int signal;
int sigmas;
final int intro = 0;
final int gameCenter = 1;
final int pausescreen1 = 2;
final int gameover = 3;
final int clickergame = 5;
final int Breakoutgame = 6;
final int BreakoutG = 7;
final int clickerG = 8;
final int clickerOption = 9;
final int Ponggame = 10;
final int PongG = 11;
final int PongOption = 12;
final int PongWin = 13;
final int pausescreen2 = 14;
int a,b,c,d,e,score,live,PP,PPP,sliderY,leftscore,rightscore,timer;
float x,y,z,vx,vy,diff;

PImage returnB,pause,play,smile,angry,crying,hands,emoji,clickerP,PongP;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld,bx,by;

float balla,ballb,ballc,baa,bab,bac;

//sound variables
  Minim minim;
  AudioPlayer theme,coin,bump,gameoverS;
  
//keyboard
boolean wkey, skey, upkey, downkey,AI,akey,dkey;


void setup(){
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameoverS = minim.loadFile("gameover.wav");
  
  
  
  size(1200,800);
  mode = intro;
  textAlign(CENTER,CENTER);
  imageMode(CORNER);
  a = 150;
  b = 450;
  c = 750;
  d = 1050;
  e = 1350;
  x = width/2;
  y = height/2;
  score = 0;
  live = 3;
  sigmas = 1;
  vx = random(-3,3);
  vy = random(-3,3);
  PP = 1;
  PPP = 1;
  sliderY = 320;
  z = 100;
  
  //initalize
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  ballx = width/2;
  bally = height/2;
  balld = 100;
  bx = random(-3,3);
  by = random(-3,3);
  balla = width/2;
  ballb = height * 3 / 4;
  ballc = 50;
  baa = width/2;
  bab = height;
  bac = 100;
  
  rightscore = leftscore = 0;
  timer = 100;
  
  //keyboard
  wkey = skey = upkey = downkey = false;
  
  
  returnB = loadImage("returnB.png");
  pause = loadImage("pause.png");
  play = loadImage("play.png");
  smile = loadImage("smile.png");
  angry = loadImage("angry.png");
  crying = loadImage("crying.png");
  hands = loadImage("hands.png");
  clickerP = loadImage("clickerP.tif");
  PongP = loadImage("PongPic.tif");
  emoji = smile;
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
  else if (mode == Breakoutgame){
    Breakoutgame(); 
  }
  else if (mode == BreakoutG){
    BreakoutG(); 
  }
  else if (mode == clickerG){
    clickerG(); 
  }
  else if (mode == clickerOption){
    clickerOption(); 
  }
  else if (mode == Ponggame){
    Ponggame();
  }
  else if (mode == PongG){
    PongG();
  }
  else if (mode == PongOption){
    PongOption();
  }
  else if (mode == PongWin){
    PongWin();
  }
  else if (mode == pausescreen2){
    pausescreen2();
  }
  else {
    println( "Error: Mode = " + mode);
  }
  if (mode == intro){
  }
  else{
  strokeWeight(0);
  at(0,0,70,50);
  rect(0,0,70,50);
  image(returnB,10,0,50,50);
  }
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

void resets(){
  timer = 100;
  leftscore = 0;
  rightscore = 0;
  ballx = width/2;
  bally = height/2;
}
  
  void signals(){
    if(signal == 1){
      fill(Borange);
      rect(30,80,200,200);
      emoji = smile;
      }
      
     if(signal == 2){
      fill(Borange);
      rect(30,300,200,200);
      emoji = angry;
      } 
      
      if(signal == 3){
      fill(Borange);
      rect(250,80,200,200);
      emoji = crying;
      } 
    
      if(signal == 4){
      fill(Borange);
      rect(250,300,200,200);
      emoji = hands;
      } 
 }
 
 void saveImage(File f){
  if ( f != null){
    PImage canvas = get( 0, 50,  width - 0, height - 50);
    canvas.save(f.getAbsolutePath());
  }
}
