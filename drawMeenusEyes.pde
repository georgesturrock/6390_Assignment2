void drawMeenusEyes() {
  //right
  fill(255); 
  beginShape();
  vertex(550,300);
  vertex(560,310);
  vertex(575,315);
  vertex(605,315);
  vertex(615,310);
  vertex(630,300);
  vertex(625,285);
  vertex(605,265);
  vertex(575,265);
  vertex(555,285);
  vertex(550,300);
  endShape();
  
  fill(30,137,164);
  ellipse(590,290,30,30);
  
  fill(0);
  ellipse(587,290,20,20);
  
  //left eye
  fill(255);
  beginShape();
  vertex(420,300);
  vertex(430,310);
  vertex(445,315);
  vertex(475,315);
  vertex(485,310);
  vertex(500,300);
  vertex(495,285);
  vertex(475,265);
  vertex(445,265);
  vertex(425,285);
  vertex(420,300);
  endShape();
  
  fill(30,137,164);
  ellipse(460,290,30,30);
  
  fill(0);
  ellipse(457,290,20,20);

}
