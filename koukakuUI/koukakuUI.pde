import processing.video.*;
import gab.opencv.*;
import java.awt.Rectangle;
Capture video;
OpenCV opencv;
Rectangle[] faces;
float rot1, rot2, rot3, rotf, rotm;
float soto_1, soto_2, naka;
int camera = 0;
int menu_u, close, caution, cautionheight;
boolean access = false;
boolean clflag = false;
boolean watch = false;
boolean cmr = true;
boolean waraflag = false;

PImage kikuro;
PImage data;
PImage warao;

PFont font1 = createFont("Arial Black", 20);
PFont font2 = createFont("Microsoft MHei", 12);
PFont font3 = createFont("04b-19 Font", 40);


void setup() {
  video = new Capture(this, 160, 120, 30);
  size(500, 500, P3D);
  textAlign(CENTER);
  rectMode(CENTER);
  kikuro = loadImage("kikuro.jpg");
  data = loadImage("data.png");
}

void draw() {
  background(0);

  camera(250, 250, 300 + camera, 250, 250, 0, 0, 1, 0);

  pushMatrix();
  translate(0, 0, 0);
  access();
  popMatrix();

  if (access) {
    camera+=25;
    if (camera >= 400) {
      camera = 400;
    }

    pushMatrix();
    translate(500, 250, 250);
    menu();
    popMatrix();

    pushMatrix();
    kaiten_soto_1();
    popMatrix();

    pushMatrix();
    kaiten_soto_2();
    popMatrix();

    pushMatrix();
    kaiten_naka();
    popMatrix();
  }

  if (!access) {
    camera-=30;
    if (camera <= 0) {
      camera = 0;
    }
    rotm = 0;
    soto_1 = 0;
    soto_2 = 0;
    naka = 0;
    menu_u = 0;
    close = 0;
    caution = 0;
    cautionheight = 0;
    watch = false;
    cmr = true;
    waraflag = false;
  }
}

void access() {
  stroke(0);
  strokeWeight(0.6);
  fill(255);
  arc(250, 250, 160, 160, PI/2+rot1, 3*PI/2+rot1+rotf);

  noStroke();
  fill(0);
  ellipse(250, 250, 140, 140);

  stroke(0);
  strokeWeight(0.6);
  fill(255);
  arc(250, 250, 140, 140, 5*PI/4-rot2, 11*PI/4-rot2+rotf);

  noStroke();
  fill(0);
  ellipse(250, 250, 130, 130);

  stroke(0);
  strokeWeight(0.6);
  fill(255);
  arc(250, 250, 130, 130, PI/6+rot3, 11*PI/6+rot3+rotf);

  fill(0);
  ellipse(250, 250, 115, 115);

  fill(0, 255, 0);
  if (access) {
    rotf+=0.1;
    fill(255, 0, 0);
    if (rotf >= 3.5) {
      rotf = 3.5;
    }
  }
  if (!access) {
    rotf-=0.1;
    fill(0, 255, 0);
    if (rotf <= 0) {
      rotf = 0;
    }
  }

  textFont(font1, 24);
  text("ACCESS", 250, 260);

  rot1+=0.01;
  rot2+=0.02;
  rot3+=0.03;
}

void captureEvent(Capture cap) {
  cap.read();
}

void mousePressed() {
  if (!access) {
    if (!clflag) {
      if (dist(250, 250, mouseX, mouseY) < 80) {
        access = true;
      }
    }
  }
  if (access) {
    if (clflag) {
      if (dist(365, 390, mouseX, mouseY) < 20) {
        access = false;
        clflag = false;
      }
      if (mouseX>190&&mouseX<250&&mouseY>335&&mouseY<355) {
        watch = false;
        cmr = true;
        waraflag = false;
      }
      if (mouseX>190&&mouseX<250&&mouseY>361&&mouseY<381) {
        watch = true;
        cmr = false;
        waraflag = false;
      }
      if (cmr==true&&mouseX>190&&mouseX<250&&mouseY>389&&mouseY<402) {
        watch = false;
        cmr = false;
        waraflag = true;
      }
    }
  }
}

