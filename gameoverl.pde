void gameoverl() {
  
  
  
  
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;
  
   stroke(black);
   strokeWeight(1);
   fill(green);
   circle(lx, ly, ld);
    lx = lx + lvx;
    ly = ly + lvy;
     if (ly > 750) lvy = -5;
     if (ly < 50) lvy = +5;
     if (lx < 50) lvx = +5;
     if (lx > 750) lvx = -5;
     
  fill(textC);
  textSize(15);
  text("Gameover", lx, ly);
  
   if (mouseX > lx-50 && mouseX < lx+50 && mouseY > ly-50 && mouseY < ly+50) {
     textC = white;
   } else {
     textC = black;
   }
}

void gameoverlClicks() {
  if (mouseX > lx-50 && mouseX < lx+50 && mouseY > ly-50 && mouseY < ly+50) {
   mode = INTRO;
 background(black);
 
 minim = new Minim(this);
  song = minim.loadFile("theme.mp3");
  song.rewind();
  song.play();
 }
  
}
