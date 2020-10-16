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
  else if (mode == applegame){
    appleClick(); 
  }  
  else if (mode == appleG){
    appleGClick(); 
  }  
  else if (mode == clickerG){
    clickerGClick(); 
  }  
  else if (mode == clickerOption){
    clickerOClick(); 
  }  
}
