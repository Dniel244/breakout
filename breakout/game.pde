void game() {
  background(black);
  //paddle
  fill(blue);
  stroke(blue);
  circle(px, py, pd);
  //move paddle
   if (rightkey == true) px = px + 5;
   if (leftkey == true) px = px - 5;
   
   if (px > 750) px = 750;
  if (px < 50) px = 50;
   
   
  //ball
  stroke(red);
  fill(red);
  circle(ballx, bally, balld);
  
  //move ball
  ballx = ballx + ballvx;
  bally = bally + ballvy;
  if (bally > 795) {
    ballx = width/2;
    bally = height/1.5;
    ballvy = 2;
    ballvx = 0;
    px = 400;
    lives--;
  }
  
  if (ballx > 795) ballvx = -5;
  if (ballx < 5) ballvx = 5;
  if (bally < 5) ballvy = 5;
  
   if (dist(px, py, ballx, bally) <= pd/2 + balld/2) {
    ballvx = (ballx - px)/10;
    ballvy = (bally - py)/10;
  }
  
  //bricks
  
  
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
    manageBrick(i);
    }
    i++;
  }
  
  
  
  
   
 
  
 
   
   
   //lives / score
   textSize(30);
   fill(livesColor);
   text("lives: " + lives, 700, 50);
   fill(green);
   text("score: " + score, 100, 50);
   
   //livesColor
   if (lives == 3) {
     livesColor = green;
   } else if (lives == 2) {
     livesColor = yellow;
   } else if (lives == 1) {
     livesColor = red;
   }
  
   
   //gameover
   if (lives < 1) {
     mode = GAMEOVERL;
     background(black);
   }
   
   if (score >= 1) {
    mode = GAMEOVERW;
    background(black);
  }
 }
 
 void manageBrick(int i) {
   if (i <=4) {
      brickColor = red2;
    }   else if (i > 4 && i <= 9) {
      brickColor = yellow2;
   }    else if  (i > 9 && i <= 14) {
     brickColor = green2;
    }  else if (i > 14 && i <= 19) {
      brickColor = blue2;
    }
    
    stroke(brickColor);
    fill(brickColor);
    
    circle(x[i], y[i], brickd);
      
    
    if (dist(x[i], y[i], ballx, bally) <= brickd/2 + balld/2) {
    ballvx = (ballx - x[i])/10;
    ballvy = (bally - y[i])/10;
    alive[i] = false;
    score++;
  }
 }
 
 void gameClicks() {
   
 }
