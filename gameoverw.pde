void gameoverw() {
  
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;
   
  
   
     
     k++;
     
     if (k <= 9) {
       rainbow = red;
     } else if (k > 9 && k <= 14) {
        rainbow = orange;
      } else if (k > 14 && k <= 19) {
        rainbow = yellow;
      } else if (k > 19 && k <= 24) {
       rainbow = green;
     } else if (k > 24 && k <= 29) {
       rainbow = blue;
     } else  if (k > 29 && k <= 34) {
      rainbow = purple;
    }
   
     
     
   if (k > 34) {
     k = 0;
   }
  
  
   stroke(black);
   strokeWeight(1);
   fill(rainbow);
   circle(lx, ly, ld);
    lx = lx + lvx;
    ly = ly + lvy;
     if (ly > 750) lvy = -5;
     if (ly < 50) lvy = +5;
     if (lx < 50) lvx = +5;
     if (lx > 750) lvx = -5;
     
  fill(textC);
  textSize(15);
  text("You Win", lx, ly);
  
   if (mouseX > lx-50 && mouseX < lx+50 && mouseY > ly-50 && mouseY < ly+50) {
     textC = white;
   } else {
     textC = black;
   }
   
  
}

void gameoverwClicks() {
  if (mouseX > lx-50 && mouseX < lx+50 && mouseY > ly-50 && mouseY < ly+50) {
   mode = INTRO;
 background(black);
 song.play();
 }
  
}
