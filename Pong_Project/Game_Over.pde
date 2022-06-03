void gameOver() {
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
  
  fill(white);
  circle(x, y, d);
  
  textSize(100);
  if (score == 3) {
    fill(red);
    text("GAME OVER", 500, 350);
    text("RED WINS", 500, 450);
  }
    
  if (score2 == 3) {
    fill(blue);
    text("GAME OVER", 500, 350);
    text("BLUE WINS", 500, 450);
  }

  fill(brown);
  strokeWeight(5);
  stroke(introSelect);
  rect(280, 550, 200, 50);
  stroke(rematchSelect);
  rect(520, 550, 200, 50);
  textSize(40);
  fill(black);
  text("Intro", 380, 570);
  text("Rematch", 620, 570);
  
  if (mouseX > 280 && mouseX < 480 && mouseY > 550 && mouseY < 600) {
    introSelect = glow;
  } else {
    introSelect = black;
  }
  if (mouseX > 520 && mouseX < 720 && mouseY > 550 && mouseY < 600) {
    rematchSelect = glow;
  } else {
    rematchSelect = black;
  }
}

void gameOverClicks() {
  if (mouseX > 280 && mouseX < 480 && mouseY > 550 && mouseY < 600) {
    mode = intro;
    bump.rewind();
    bump.play();
    leftX = 0;
    leftY = 400;
    leftD = 300;
    rightX = 1000;
    rightY = 400;
    rightD = 300;
    x = 500;
    y = 400;
    d = 100;
  
    score = 0;
    score2 = 0;
    timer = 5;
    timerF = 300;
  
    wkey = skey = upkey = downkey = false;
  
    vx = -5;
    vy = 0;
  }
  if (mouseX > 520 && mouseX < 720 && mouseY > 550 && mouseY < 600) {
    mode = game;
    coin.rewind();
    coin.play();
    leftX = 0;
    leftY = 400;
    leftD = 300;
    rightX = 1000;
    rightY = 400;
    rightD = 300;
    x = 500;
    y = 400;
    d = 100;
  
    score = 0;
    score2 = 0;
    timer = 5;
    timerF = 300;
  
    wkey = skey = upkey = downkey = false;
  
    vx = -5;
    vy = 0;
  }
}
