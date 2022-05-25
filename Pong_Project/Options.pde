void options() {
  background(white);
  
  strokeWeight(3);
  stroke(backSelect);
  fill(white);
  rect(50, 50, 200, 50);
  fill(black);
  textSize(30);
  text("Back", 150, 70);
}

void optionsClicks() {
  if (mouseX > 50 && mouseX < 250 && mouseY > 50 && mouseY < 100) {
    mode = intro;
  }
}
