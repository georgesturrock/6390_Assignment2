void drawMeenusMouth() {
  line(490,475,580,475);
  if (mouseX > 880 && mouseX < 1080){
    if (mouseY > 550 && mouseY < 640){
      fill(196, 196, 196);
      quad(470, 465, 585, 465, 585, 490, 470, 490);
    }
  }

}
