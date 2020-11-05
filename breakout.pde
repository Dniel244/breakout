import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

//Daniel Altshuler
//block 1-1b
//Nov 3, 2020

PImage[] gif;
int numberOfFrames;
int f;

//pallette
color black = #000000;
color white = #FFFFFF;
color blue = #0006FF;
color green = #0CBC00;
color yellow = #FFF305;
color red = #FF2705;
color orange = #FA7900;
color purple = #B205E8;
color red2 = #E32E2E;
color yellow2 = #F0E32C;
color green2 = #078E0C;
color blue2 = #1A32C6;


color rainbow;
color textC;
color livesColor;
color brickColor;
//mode framework
int mode;

final int INTRO = 1;
final int GAME = 2;
final int GAMEOVERL = 3;
final int GAMEOVERW = 4;
final int PAUSE = 5;

//paddle
float px, py, pd;
boolean rightkey, leftkey;

//ball
float ballx, bally, balld, ballvx, ballvy;
float introx, introy, introd, introvx, introvy;
float wx, wy, wd, wvx, wvy;
float lx, ly, ld,lvx, lvy;

// brick
  int[] x;
  int[] y;
  boolean[] alive;
  int brickd;
  int n;
  int tempx, tempy;
  
  int score;
  
  int k;

//lives 
int lives;


void setup() {
  
  minim = new Minim(this);
  song = minim.loadFile("theme.mp3");
  song.rewind();
  song.play();
  
  numberOfFrames = 39;
  gif = new PImage[numberOfFrames];
  
  int e = 0;
  while (e < numberOfFrames) {
    gif[e] = loadImage("frame_"+e+"_delay-0.03s.gif");
    e++;
    
  }
  
  
  
  
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER);
  
  //initlialize intro
  introx = 400;
  introy = 400;
  introd = 100;
  introvx = random(-5, 5);
  introvy = random(-5, 5);
  
  wx = 400;
  wy = 400;
  wd = 100;
  wvx = random(-5, 5);
  wvy = random(-5, 5);
  
  lx = 400;
  ly = 400;
  ld = 100;
  lvx = random(-5, 5);
  lvy = random(-5, 5);
  
  //initialize paddle
  px = 400;
  py = 800;
  pd = 100;
  leftkey = rightkey;
  
  //intitialize ball
  ballx = width/2;
  bally = height/1.5;
  balld = 10;
  ballvx = 0;
  ballvy = 2;
  
  //initialize brick
  brickd = 50;
  n = 20;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = 100;
  tempy = 150;
  
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 150;
    if (tempx == width+50) {
      tempx = 100;
      tempy = tempy + 100;
    }
   i++; 
  }
  
  
  
  
  
  //initialize lives
  lives = 3;
}
void draw() {
  
  if (mode == INTRO) {
    intro();
  }
  else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVERL) {
    gameoverl();
  } else if (mode == GAMEOVERW) {
    gameoverw();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("Mode error" + mode);
  }
  
}
