void game() {
  background(darkBrown);
  
  textSize(50);
  fill(red);
  text(score, 200, 80);
  fill(blue);
  text(score2, 800, 80);
  stroke(black);
  fill(white);
  rect(490, -10, 20, 900);
  
 fill(red);
  circle(leftX, leftY, leftD);
  fill(blue);
  circle(rightX, rightY, rightD);
  
  if (wkey == true) leftY = leftY - 7;
  if (skey == true) leftY = leftY + 7;
  
  if (AI == false) {
    if (upkey == true) rightY = rightY - 7;
    if (downkey == true) rightY = rightY + 7;
  } 
  if (AI == true) {
    if (x < rightX) {
      if (y > rightY) {
        rightY = rightY + 7;
      }
      if (y < rightY) {
        rightY = rightY - 7;
      }
    }
  } 
  
  fill(white);
  circle(x, y, d);
  if (timer < 0) {
    x = x + vx;
    y = y + vy;
  }
  
  if (y <= d/2 || y >= height-d/2) {
    vy = vy * -1;
  }
  if (y < 50) {
    y = 50;
    bump.rewind();
    bump.play();
  }
  if (y > 750) {
    y = 750;
    bump.rewind();
    bump.play();
  }
  
  if(dist(leftX, leftY, x, y) < leftD/2 + d/2) {
    vx = (x - leftX)/13;
    vy = (y - leftY)/13;
    bump.rewind();
    bump.play();
  }
  if(dist(rightX, rightY, x, y) < rightD/2 + d/2) {
    vx = (x - rightX)/13;
    vy = (y - rightY)/13;
    bump.rewind();
    bump.play();
  }
  if(leftY < 0) {
    leftY = 0;
  }
  if(leftY > 800) {
    leftY = 800;
  }
  if(rightY < 0) {
    rightY = 0;
  }
  if(rightY > 800) {
    rightY = 800;
  }
  textSize(100);    
  if (score == 3) {
    mode = gameOver;
    fill(red);
    text("GAME OVER", 500, 350);
    text("RED WINS", 500, 450);
  }
  if (score2 == 3) {
    mode = gameOver;
    fill(blue);
    text("GAME OVER", 500, 350);
    text("BLUE WINS", 500, 450);
  }
  if (x < 0) {
    score2++;
    coin.rewind();
    coin.play();
    x = width/2;
    y = height/2;
    timerF = 180;
    timer = 3;
    vx = -5;
    vy = 0;   
  }
  if (x > 1000) {
    score++;
    coin.rewind();
    coin.play();
    x = width/2;
    y = height/2;
    timerF = 180;
    timer = 3;
    vx = 5;
    vy = 0;
    
  }
  textSize(200);
  fill(black); 
  if (timer > -1) {
     text(timer, 499, 380);
  }
  timerF = timerF -1;
  
  if (timerF == 240) {
    timer--;
    coin.rewind();
    coin.play();
  }
  if (timerF == 180) {
    timer--;
    coin.rewind();
    coin.play();
  }
  if (timerF == 120) {
    timer--;
    coin.rewind();
    coin.play();
  }
  if (timerF == 60) {
    timer--;
    coin.rewind();
    coin.play();
  }
  if (timerF == 0) {
    timer--;
    coin.rewind();
    coin.play();
  }
  if (timerF == -60) {
    timer--;
    coin.rewind();
    coin.play();
  }
}

void gameClicks() {
  mode = pause;
  bump.rewind();
  bump.play();
}
