void intro() {
 
 
   stroke(black);
   fill(blue);
   circle(introx, introy, introd);
    introx = introx + introvx;
    introy = introy + introvy;
     if (introy > 750) introvy = -5;
     if (introy < 50) introvy = +5;
     if (introx < 50) introvx = +5;
     if (introx > 750) introvx = -5;
 
 
  fill(textC);
  textSize(30);
  text("Play", introx, introy+5);
  
   if (mouseX > introx-50 && mouseX < introx+50 && mouseY > introy-50 && mouseY < introy+50) {
     textC = white;
   } else {
     textC = black;
   }
   
  
  
  
  
  
  
    
}

void introClicks() {
  if (mouseX > introx-50 && mouseX < introx+50 && mouseY > introy-50 && mouseY < introy+50) {
  score = 0;
  lives = 3;
  mode = GAME;
  ballx = width/2;
  bally = height/1.5;
  ballvy = 2;
  ballvx = 0;
  px = 400;
  
  int i = 0;
  while (i < 20) {
    alive[i] = true;
    i++;
  }
  }
}
