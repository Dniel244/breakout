void pause() {
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;
  
  fill(white);
  textSize(50);
  text("Paused", 400, 170);
  textSize(20);
  text("click anywhere to resume", 400, 700);
}

void pauseClicks() {
  mode = GAME;
}
