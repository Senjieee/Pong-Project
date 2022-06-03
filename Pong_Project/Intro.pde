void intro() {
  theme.play();
  background(brown);
  
  fill(red);
  circle(leftX2, leftY2, leftD);
  fill(blue);
  circle(rightX2, rightY2, rightD);
  fill(white);
  circle(x2, y2, d);
  x2 = x2 + vx2;
  y2 = y2 + vy2;
  if (y2 <= d/2 || y2 >= height-d/2) {
    vy2 = vy2 * -1;
  }
  if (y2 < 50) {
    y2 = 50;
    bump.rewind();
    bump.play();
  }
  if (y2 > 750) {
    y2 = 750;
    bump.rewind();
    bump.play();
  }
  
  if(dist(leftX2, leftY2, x2, y2) < leftD/2 + d/2) {
    vx2 = (x2 - leftX2)/13;
    vy2 = (y2 - leftY2)/13;
    bump.rewind();
    bump.play();
    z = random(-150, 150);
    z2 = random(-150, 150);
    z3 = random(-150, 150);
    z4 = random(-150, 150);
  }
  if(dist(rightX2, rightY2, x2, y2) < rightD/2 + d/2) {
    vx2 = (x2 - rightX2)/13;
    vy2 = (y2 - rightY2)/13;
    bump.rewind();
    bump.play();
    z = random(-150, 150);
    z2 = random(-150, 150);
    z3 = random(-150, 150);
    z4 = random(-150, 150);
  }
  if(leftY2 < 0) {
    leftY2 = 0;
  }
  if(leftY2 > 800) {
    leftY2 = 800;
  }
  if(rightY2 < 0) {
    rightY2 = 0;
  }
  if(rightY2 > 800) {
    rightY2 = 800;
  }
  if (x2 < rightX2) {
      if (y2 + z > rightY2) {
        rightY2 = rightY2 + 10;
      }
      if (y2 + z2 < rightY2) {
        rightY2 = rightY2 - 10;
      }
    }
  
    if (x2 > leftX2) {
      if (y2 + z3 > leftY2) {
        leftY2 = leftY2 + 10;
      }
      if (y2 + z4 < leftY2) {
        leftY2 = leftY2 - 10;
      }
    }
  
  fill(darkBrown);
  strokeWeight(3);
  stroke(singleSelect);
  rect(400, 400, 200, 50);
  stroke(multiSelect);
  rect(400, 500, 200, 50);
  stroke(quitSelect);
  rect(400, 600, 200, 50);
  fill(black);
  textSize(100);
  text("Pong", 500, 250);
  textSize(30);
  text("Singleplayer", 500, 425);
  text("Multiplayer", 500, 525);
  text("Quit", 500, 625);
}

void introClicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 450) {
    mode = game;
    AI = true;
    coin.rewind();
    coin.play();
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 500 && mouseY < 550) {
    mode = game;
    AI = false;
    coin.rewind();
    coin.play();
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 650) {
    exit();
  }
}
