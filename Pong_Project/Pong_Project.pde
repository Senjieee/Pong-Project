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
color quitSelect;
color introSelect;
color rematchSelect;

int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;

int score, score2, timer, timerF;

float leftX, leftY, rightX, rightY, leftD, rightD;
float x, y, d;
float vx, vy;

boolean wkey, skey, upkey, downkey;

boolean AI;

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
  
  score = 0;
  score2 = 0;
  timer = 5;
  timerF = 300;
  
  wkey = skey = upkey = downkey = false;
  
  vx = -5;
  vy = 0;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
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
    quitSelect = glow;
  } else {
    quitSelect = black;
  }
}
