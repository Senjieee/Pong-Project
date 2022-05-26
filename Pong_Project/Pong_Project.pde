//Johnny Geng
//2-3
//May 25 2022
//Pong Project

color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color grey = color(59, 53, 54);
color black = color(0);
color white = color(255);
color brown = color(170, 141, 69);
color darkBrown = color(85, 62, 3);
color glow = color(238, 245, 153);
color tactile = color(209, 199, 107);

color singleSelect;
color multiSelect;
color optionsSelect;
color quitSelect;
color backSelect;

int mode;
final int intro = 0;
final int game = 1;
final int options = 2;
final int pause = 3;
final int gameOver = 4;

float leftX, leftY, rightX, rightY, leftD, rightD;
float x, y, d;

boolean wkey, skey, upkey, downkey;

void setup() {
  size(1000, 800);
  mode = intro;
  textAlign(CENTER, CENTER);
  
  leftX = 0;
  leftY = 400;
  leftD = 300;
  rightX = 1000;
  rightY = 400;
  rightD = 300;
  x = 500;
  y = 400;
  d = 100;
  
  wkey = skey = upkey = downkey = false;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == options) {
    options();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameOver) {
    gameOver();
  } else {
    println("Error: Mode = " + mode);
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 450) {
    singleSelect = glow;
  } else {
    singleSelect = black;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 500 && mouseY < 550) {
    multiSelect = glow;
  } else {
    multiSelect = black;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 650) {
    optionsSelect = glow;
  } else {
    optionsSelect = black;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 700 && mouseY < 750) {
    quitSelect = glow;
  } else {
    quitSelect = black;
  }
  if (mouseX > 50 && mouseX < 250 && mouseY > 50 && mouseY < 100) {
    backSelect = glow;
  } else {
    backSelect = black;
  }
}
