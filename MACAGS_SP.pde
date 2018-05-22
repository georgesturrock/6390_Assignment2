//*****************************************************//
// Assignment 2 - Self Portrait
// MSDS 6390 - Visualization of Information
// Meenu Ahluwalia, Cynthia Alvarado, George Sturrock
//*****************************************************//

void setup(){
  size(1200,700);
  //background(255);
  strokeWeight(5);
}

void draw(){
  background(255);
  drawCynthia();
  drawMeenu();
  drawGeorge();
  writeText();
}

void writeText(){
  fill(0);
  quad(50, 550, 240, 550, 240, 640, 50, 640); //left text box
  quad(430, 550, 600, 550, 600, 640, 430, 640); //middle text box
  quad(880, 550, 1080, 550, 1080, 640, 880, 640); //right text box
  fill(255);
  textSize(24);
  text("Hear No Evil", 70, 600);
  text("See No Evil", 450, 600);
  text("Speak No Evil", 900, 600);
}

void drawCynthia(){}

void drawMeenu(){
  //color of the skin 
  fill(246,200,205);
  drawMeenusHead();
  drawMeenusHair();
  drawMeenusEyes();
  drawMeenusNose();
  drawMeenusMouth();
}

void drawGeorge(){
  drawGeorgeHair();
  drawGeorgeFaceFrame();
  drawGeorgeEyes();
  drawGeorgeMouth();
  drawGeorgeBrows();
  drawGeorgeNose();
  drawGeorgeHairAccents();
  drawGeorgeEars();
}

void drawGeorgeFaceFrame(){
  int faceFrameHeight;
  faceFrameHeight = 168;
  fill(255, 203, 153);
  noStroke();
  triangle(65, faceFrameHeight, 148, 341, 228, faceFrameHeight);
  stroke(0);
  bezier(66, faceFrameHeight, 64, 300, 97, 332, 148, 341);
  bezier(148, 341, 190, 332, 236, 300, 227, faceFrameHeight);
}

void drawGeorgeEyes(){
  //eyeballs
  fill(253, 254, 255);
  ellipse(112, 229, 38, 16);
  ellipse(180, 229, 38, 16);
  
  //iris
  strokeWeight(2);
  fill(89, 94, 200);
  ellipse(112, 229, 13, 13);
  ellipse(180, 229, 13, 13);
  
  //pupils
  fill(5, 7, 8);
  ellipse(112, 229, 5, 5);
  ellipse(180, 229, 5, 5);
  
  //glare on pupil
  fill(253, 254, 255);
  ellipse(113, 228, 3, 3);
  ellipse(181, 228, 3, 3);
  
  if (mouseX > 430 && mouseX < 600){
    if (mouseY > 550 && mouseY < 640){
      fill(0);
      quad(82, 215, 135, 215, 135, 243, 82, 243);
      quad(157, 215, 210, 215, 210, 243, 157, 243);
      noFill();
      strokeWeight(3);
      bezier(135, 220, 146, 216, 146, 216, 157, 220);
    }
  }
}

void drawGeorgeMouth(){
  noFill();
  strokeWeight(4);
  stroke(0);
  bezier(123, 296, 146, 302, 149, 302, 170, 296);
  if (mouseX > 880 && mouseX < 1080){
    if (mouseY > 550 && mouseY < 640){
      fill(196, 196, 196);
      quad(115, 285, 178, 285, 178, 310, 115, 310);
    }
  }
}

void drawGeorgeBrows(){  
  noFill();
  strokeWeight(3);
  stroke(101, 53, 33);
  bezier(85, 207, 99, 198, 121, 199, 136, 208);
  bezier(157, 207, 173, 197, 194, 198, 207, 205);
}

void drawGeorgeHair(){
  stroke(0);
  fill(101, 53, 33);
  bezier(69, 245, 20, 55, 265, 55, 229, 245);
}

void drawGeorgeNose(){
  strokeWeight(2);
  stroke(210, 150, 86);
  line(139, 232, 137, 254);
  line(152, 231, 155, 254);
  //stroke(0);
  bezier(133, 266, 131, 269, 131, 275, 132, 278);
  bezier(159, 266, 161, 269, 161, 275, 160, 278);
  bezier(132, 278, 136, 277, 140, 280, 148, 281);
  bezier(160, 278, 156, 277, 152, 280, 148, 281);
}

void drawGeorgeHairAccents(){
  float haX1;
  float haX2;
  float haX3;
  float haX4;
  float haY1;
  float haY2;
  float haY3;
  float haY4;  
  fill(101, 53, 33);
  stroke(0);
  strokeWeight(4);
  bezier(210, 150, 166, 200, 107, 180, 66, 168);
  bezier(195, 168, 203, 170, 208, 180, 224, 168);
  stroke(78, 28, 9);
  for (int b=0; b < 5; b=b+1){
    haX1 = random(100, 197);
    haY1 = random(120, 160);
    haX2 = haX1 - 5;
    haY2 = haY1 + 5;
    haX3 = haX1 - 10;
    haY3 = haY1 + 10;
    haX4 = haX1 - 15;
    haY4 = haY1 + 15;
    bezier(haX1, haY1, haX2, haY2, haX3, haY3, haX4, haY4);
  }
}

void drawGeorgeEars(){
  fill(255, 203, 153);
  bezier(232, 217, 245, 230, 229, 268, 220, 274);
  bezier(59, 217, 51, 226, 63, 268, 75, 274);
  if (mouseX > 50 && mouseX < 240){
    if (mouseY > 550 && mouseY < 640){
      fill(89, 94, 200);
      quad(50, 216, 76, 216, 76, 275, 50, 275);
      quad(219, 216, 246, 216, 246, 275, 219, 275);
      noFill();
      bezier(50, 216, 15, 50, 270, 50, 246, 216);
    }
  }
}
