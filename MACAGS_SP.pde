//*****************************************************//
// Assignment 2 - Self Portrait
// MSDS 6390 - Visualization of Information
// Meenu Ahluwalia, Cynthia Alvarado, George Sturrock
//*****************************************************//

PImage bmjG1;
int faceFrameHeight;

void setup(){
  size(1200,700);
  background(255);
  strokeWeight(5);
  faceFrameHeight = 168;
  bmjG1 = loadImage("C:\\Users\\Sturrock\\Documents\\SMU Data Science\\Vizualization\\Assignment2\\bit31.png");
}

void draw(){
  //image(bmjG1, 0, 0); 
  drawCynthia();
  drawMeenu();
  drawGeorge();
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
  fill(255, 203, 153);
  noStroke();
  triangle(115, faceFrameHeight, 198, 341, 278, faceFrameHeight);
  stroke(0);
  bezier(116, faceFrameHeight, 114, 300, 147, 332, 198, 341);
  bezier(198, 341, 240, 332, 286, 300, 277, faceFrameHeight);

}

void drawGeorgeEyes(){
  //eyeballs
  fill(253, 254, 255);
  ellipse(162, 229, 38, 16);
  ellipse(230, 229, 38, 16);
  
  //iris
  fill(89, 94, 200);
  ellipse(162, 229, 13, 13);
  ellipse(230, 229, 13, 13);
  
  //pupils
  fill(5, 7, 8);
  ellipse(162, 229, 4, 4);
  ellipse(230, 229, 4, 4);
  
  //glare on pupil
  fill(253, 254, 255);
  ellipse(163, 228, 2.5, 2.5);
  ellipse(231, 228, 2.5, 2.5);
}

void drawGeorgeMouth(){
  noFill();
  stroke(0);
  bezier(173, 296, 196, 302, 199, 302, 220, 296);
}

void drawGeorgeBrows(){  
  noFill();
  strokeWeight(3);
  stroke(101, 53, 33);
  bezier(135, 207, 149, 198, 171, 199, 186, 208);
  bezier(207, 207, 223, 197, 244, 198, 257, 205);
}

void drawGeorgeHair(){
  stroke(0);
  fill(101, 53, 33);
  bezier(119, 245, 70, 55, 315, 55, 279, 245);
}

void drawGeorgeNose(){
  strokeWeight(2);
  stroke(210, 150, 86);
  line(189, 232, 187, 254);
  line(202, 231, 205, 254);
  //stroke(0);
  bezier(183, 266, 181, 269, 181, 275, 182, 278);
  bezier(209, 266, 211, 269, 211, 275, 210, 278);
  bezier(182, 278, 186, 277, 190, 280, 198, 281);
  bezier(210, 278, 206, 277, 202, 280, 198, 281);
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
  bezier(260, 150, 216, 200, 157, 180, 116, 168);
  bezier(245, 168, 253, 170, 258, 180, 274, 168);
  stroke(78, 28, 9);
  for (int b=0; b < 5; b=b+1){
    haX1 = random(150, 247);
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
  bezier(282, 217, 295, 230, 279, 268, 270, 274);
  bezier(109, 217, 101, 226, 113, 268, 125, 274);
}
