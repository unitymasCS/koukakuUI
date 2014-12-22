void watch() {
  translate(0, 0, 0.1);
  fill(255);
  textFont(font3, 40);
  if (minute()>9) {
    if (second()>9) {
      text(hour()+":"+minute()+":"+second(), -252, 20);
    }
  }
  if (minute()>9) {
    if (second()<10) {
      text(hour()+":"+minute()+":0"+second(), -252, 20);
    }
  }
  if (minute()<10) {
    if (second()<10) {
      text(hour()+":0"+minute()+":0"+second(), -252, 20);
    }
  }
  if (minute()<10) {
    if (second()>9) {
      text(hour()+":0"+minute()+":"+second(), -252, 20);
    }
  }
}

void vdo() {
  PImage imgIn = video;
  image(imgIn, -330, -55);
  video.start();
}

void warao() {
  if (video.available()) video.read();

  opencv = new OpenCV(this, video);
  
  //video.start();
  
  warao = loadImage("laughingman_2.gif");

  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  faces = opencv.detect();

  image(opencv.getInput(), -330, -55);

  for (int i = 0; i < faces.length; i++) {
    image(warao, faces[i].x-336, faces[i].y+-72, faces[i].width+18, faces[i].width+18);
  }
}

