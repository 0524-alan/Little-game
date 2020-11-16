void keyPressed(){
    if (mode == PongG){
    PongGkeyP();
  }
  if (mode == BreakoutG){
    BreakGClickP();
  }
}

void keyReleased(){
  if (mode == PongG){
    PongGkeyR();
  }
    if (mode == BreakoutG){
    BreakGClickR();
  }
}
