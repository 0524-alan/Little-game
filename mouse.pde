void mouseReleased(){
  if (mode == intro){
    introClick();
  }
  else if (mode == gameCenter){
    gameClick();
  }
  else if(mode == pausescreen1){
    pausescreen1Click(); 
  }
  else if (mode == gameover){
    gameoverClick(); 
  }  
  else if (mode == clickergame){
    clickerClick(); 
  }  
  else if (mode == Breakoutgame){
    BreakClick(); 
  }  
  else if (mode == BreakoutG){
    BreakGClick(); 
  }  
  else if (mode == clickerG){
    clickerGClick(); 
  }  
  else if (mode == clickerOption){
    clickerOClick(); 
  }  
  else if (mode == Ponggame){
    PongClick();
    }
   else if (mode == PongG){
    PongGClick();
    }
    else if (mode == PongOption){
      PongOClick();
    }
     else if (mode == PongWin){
      PongWClick();
    }
     else if (mode == pausescreen2){
      pausescreen2Click();
    }
    else if (mode == BG){
     BGclick(); 
    }
}

void mouseDragged(){
    if (mode == clickerOption){
    clickerDragged();
  } 
}

void mousePressed(){
  if (mode == clickerG){
    clickerGpressed();
  }
}
