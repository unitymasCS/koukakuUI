void kaiten_soto_1() {
  noStroke();
  translate(500, 250, 250);
  fill(255);
  rotateY(radians(-90+rotm));
  translate(-250, 0, 0.0);

  pushMatrix();
  rotateZ(radians(100+soto_1));
  rect(0, 170, 50, 50);
  popMatrix();

  pushMatrix();
  rotateZ(radians(170+soto_1));
  rect(0, 165, 15, 30);
  popMatrix();

  if (access) {
    soto_1 += 1.3;
    if (soto_1 >= 30) {
      soto_1 = 30;
    }
  }
}

void kaiten_soto_2() {
  noStroke();
  translate(500, 250, 250);
  fill(255);
  rotateY(radians(-90+rotm));
  translate(-250, 0, 0.06);


  pushMatrix();
  rotateZ(radians(-60+soto_2));
  rect(0, 190, 8, 110);
  popMatrix();

  pushMatrix();
  rotateZ(radians(45+soto_2));
  rect(0, 160, 6, 50);
  popMatrix();
  
  pushMatrix();
  rotateZ(radians(112+soto_2));
  rect(0, 155, 5, 30);
  popMatrix();

  pushMatrix();
  rotateZ(radians(210+soto_2));
  rect(0, 160, 8, 50);
  popMatrix();

  if (access) {
    soto_2 += 3.5;
    if (soto_2 >= 120) {
      soto_2 = 120;
    }
  }
}

void kaiten_naka() {
  noStroke();
  translate(500, 250, 250);
  fill(255);
  rotateY(radians(-90+rotm));
  translate(-250, 0, 0.06);

  pushMatrix();
  rotateZ(radians(40+naka));
  rect(0, 120, 8, 30);
  popMatrix();

  pushMatrix();
  rotateZ(radians(90+naka));
  rect(0, 125, 10, 25);
  popMatrix();

  pushMatrix();
  rotateZ(radians(150+naka));
  rect(0, 120, 8, 30);
  popMatrix();

  pushMatrix();
  rotateZ(radians(190+naka));
  rect(0, 120, 5, 30);
  popMatrix();

  pushMatrix();
  rotateZ(radians(220+naka));
  rect(0, 120, 20, 40);
  popMatrix();

  if (access) {
    if (soto_2 == 120) {
      naka += 3.0;
      if (naka >= 50) {
        naka = 50;
      }
    }
  }
}

