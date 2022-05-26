void game() {
  background(darkBrown);
  stroke(black);
  fill(white);
  rect(490, -10, 20, 900);
 
  circle(leftX, leftY, leftD);
  circle(rightX, rightY, rightD);
  
  if (wkey == true) leftY = leftY - 5;
  if (skey == true) leftY = leftY + 5;
  if (upkey == true) rightY = rightY - 5;
  if (downkey == true) rightY = rightY + 5;
  
  circle(x, y, d);
  
  
}

void gameClicks() {
}
