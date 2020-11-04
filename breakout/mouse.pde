void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVERW) {
    gameoverwClicks();
  } else if (mode == GAMEOVERL) {
    gameoverlClicks();
  }
}
