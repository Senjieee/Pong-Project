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
  textSize(100);
  fill(black);
  text(timer, 500, 400);
  timer = timer -1;
  timer = timerF/60;
 
 fill(red);
  circle(leftX, leftY, leftD);
  fill(blue);
  circle(rightX, rightY, rightD);
  
  if (wkey == true) leftY = leftY - 7;
  if (skey == true) leftY = leftY + 7;
  
  if (upkey == true) rightY = rightY - 7;
  if (downkey == true) rightY = rightY + 7;
  
  fill(white);
  circle(x, y, d);
  if (timer < 0) {
    x = x + vx;
    y = y + vy;
  }
  
  if (y <= d/2 || y >= height-d/2) {
    vy = vy * -1;
  }
  
  if(dist(leftX, leftY, x, y) < leftD/2 + d/2) {
    vx = (x - leftX)/13;
    vy = (y - leftY)/13;
  }
  if(dist(rightX, rightY, x, y) < rightD/2 + d/2) {
    vx = (x - rightX)/13;
    vy = (y - rightY)/13;
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
  
  if (x < 0) {
    score2++;
    x = width/2;
    y = height/2;
    vx = -5;
    vy = 0;
  }
  if (x > 1000) {
    score++;
    x = width/2;
    y = height/2;
    vx = 5;
    vy = 0;
  }
}

void gameClicks() {
}
