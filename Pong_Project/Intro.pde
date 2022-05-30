void intro() {
  background(brown);
  
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
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 500 && mouseY < 550) {
    mode = game;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 650) {
    exit();
  }
}
