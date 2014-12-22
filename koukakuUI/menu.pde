void menu() {
  noStroke();
  rotateY(radians(-90+rotm));
  fill(255);
  ellipse(-250, 0, 325, 325);

  translate(0, 0, 0.01);
  fill(0);
  ellipse(-250, 0, 270, 270);

  translate(0, 0, 0.02);
  fill(255);
  ellipse(-250, 0, 250, 250);

  translate(0, 0, 0.03);
  fill(0);
  ellipse(-250, 0, 240, 240);

  translate(0, 0, 0.04);
  fill(255);
  ellipse(-250, 0, 230, 230);

  translate(0, 0, 0.06);
  fill(0);
  rect(-250, -147, 14, 16);
  rect(-397, 0, 16, 14);
  rect(-250, -88, 105, 1);
  textFont(font2, 11.2);
  text("PROTECTION LEVEL-7", -250, -90);
  textFont(font2, 15);
  text("REPORT FILE  LEVEL-3", -250, -62);

  if (naka >= 50) {
    pushMatrix();
    menu_u();
    popMatrix();
  }

  pushMatrix();
  translate(-250, 0, 0.07);
  fill(255, 0, 0);
  if (soto_2 >= 120) {
    fill(0, 255, 0);
    textFont(font1, 20);
    rotateZ(radians(8));
    text("O", 0, -138);
    rotateZ(radians(7));
    text("N", 0, -138);
    rotateZ(radians(6));
    text("L", 0, -138);
    rotateZ(radians(6));
    text("I", 0, -138);
    rotateZ(radians(6));
    text("N", 0, -138);
    rotateZ(radians(6));
    text("E", 0, -138);
  }
  if (soto_2 < 120) {
    textFont(font1, 20);
    rotateZ(radians(8));
    text("O", 0, -138);
    rotateZ(radians(7));
    text("F", 0, -138);
    rotateZ(radians(6));
    text("F", 0, -138);
    rotateZ(radians(6));
    text("L", 0, -138);
    rotateZ(radians(6));
    text("I", 0, -138);
    rotateZ(radians(6));
    text("N", 0, -138);
    rotateZ(radians(7));
    text("E", 0, -138);
  }
  popMatrix();

  pushMatrix();
  translate(-250, 0, 0.07);
  fill(255, 0, 0);
  if (soto_2 >= 120) {
    fill(0, 255, 0);
    textFont(font1, 20);
    rotateZ(radians(-82));
    text("O", 0, -138);
    rotateZ(radians(7));
    text("N", 0, -138);
    rotateZ(radians(6));
    text("L", 0, -138);
    rotateZ(radians(6));
    text("I", 0, -138);
    rotateZ(radians(6));
    text("N", 0, -138);
    rotateZ(radians(6));
    text("E", 0, -138);
  }
  if (soto_2 < 120) {
    textFont(font1, 20);
    rotateZ(radians(-82));
    text("O", 0, -138);
    rotateZ(radians(7));
    text("F", 0, -138);
    rotateZ(radians(6));
    text("F", 0, -138);
    rotateZ(radians(6));
    text("L", 0, -138);
    rotateZ(radians(6));
    text("I", 0, -138);
    rotateZ(radians(6));
    text("N", 0, -138);
    rotateZ(radians(7));
    text("E", 0, -138);
  }
  popMatrix();

  if (access) {
    rotm+=2;
    if (rotm >= 90) {
      rotm = 90;
    }
  }
  fill(0);
  translate(0, 0, 1);
  noStroke();
  rect(-240, 5, 170, 85);
  rect(-335, 25, 15, 5);
  rect(-350, 2, 15, 25);
  rect(-335, -36, 12, 15);
  rect(-145, 2, 2, 17);
  rect(-250, 5, 160, 120);
  if (watch) {
    watch();
    video.stop();
  }
  if (cmr) {
    translate(0, 0, 0.1);
    vdo();
  }
  if (waraflag) {
    warao();
  }
}

void menu_u() {
  translate(-250, 20 + menu_u, 0.1);

  pushMatrix();
  translate(25 + close, -5, 0);
  fill(255, 0, 0, 60);
  rectMode(CENTER);
  rect(-15, -20, 60, 30);
  rect(5, 5, 70, 65);
  rect(10, -15, 70, 55);
  rect(-10, 10, 60, 45);
  fill(255, 0, 0, 200);
  ellipse(0, 0, 80, 80);
  fill(0);
  ellipse(0, 0, 60, 60);
  fill(255, 0, 0);
  ellipse(0, 0, 40, 40);
  fill(255);
  textFont(font1, 9.5);
  text("CLOSE", 0, 1);
  rect(0, 3.5, 35, 1);
  popMatrix();

  translate(0, 0, 20);
  stroke(0);
  strokeWeight(5);
  fill(255);
  rect(0, 0, 135, 155);

  strokeWeight(0.5);
  fill(255, 255, 0);
  rect(-30, -55, 60, 18);
  fill(0);
  rect(-30, -55, 56, 14);
  fill(255);
  textSize(13);
  text("camera", -30, -50);

  fill(255, 255, 0);
  rect(-30, -30, 60, 18);
  fill(0);
  rect(-30, -30, 56, 14);
  fill(255);
  textSize(13);
  text("watch", -30, -25);

  if (cmr||waraflag) {
    fill(255, 255, 0);
    rect(-30, -5, 60, 18);
    fill(255, 0, 0);
    rect(-30, -5, 56, 14);
    fill(255);
    textSize(13);
    text("hack", -30, 0);
  }

  beginShape();
  texture(data);
  vertex(5, -65, 0, 0, 0);
  vertex(62, -65, 0, 130, 0);
  vertex(62, 64, 0, 130, 240);
  vertex(5, 64, 0, 0, 240);
  endShape();

  if (menu_u >= 120) {
    menu_u = 120;
    close += 10;
    caution();
    if (close >= 95) {
      close = 95;
      clflag = true;
    }
  }
  menu_u+=10;
}

void caution () {
  translate(0, -145, -20);
  beginShape();
  texture(kikuro);
  vertex(0+caution, -cautionheight, 0, -5, -5);
  vertex(105+caution, -cautionheight, 0, 155, -5);
  vertex(105+caution, cautionheight, 0, 155, 205);
  vertex(0+caution, cautionheight, 0, -5, 200);
  endShape();
  if (clflag) {
    cautionheight+=6;
    caution+=12;
    if (caution >= 145) {
      caution = 145;
    }
    if (cautionheight >= 54) {
      cautionheight = 54;
    }
  }
}

