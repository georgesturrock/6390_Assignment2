void drawMeenusHead() {
  beginShape();
  vertex(500,510);
  vertex(590,510);
  vertex(620,500);
  vertex(630,450);
  vertex(670,350);
  vertex(680,250);
  vertex(600,75);
  vertex(350,75);
  vertex(300,225);
  //ear
  vertex(300,325);
  vertex(350,350);
  
  vertex(380,450);
  vertex(450,510);
  vertex(500,510);
  endShape();
  
  if (mouseX > 50 && mouseX < 240){
    if (mouseY > 550 && mouseY < 640){
      fill(89, 94, 200);
      quad(280, 235, 315, 235, 350, 360, 280, 360);
      quad(670, 235, 690, 240, 690, 365, 670, 360);
      noFill();
      bezier(280, 235,  220, 15, 710, 15,690, 235);
    }
  }

}
