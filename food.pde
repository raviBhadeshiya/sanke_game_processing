class food {
  int xFood, yFood, fsize=15;
  food(int x,int y) { 
    xFood=x;
    yFood=y;
  }

  void newfood() {
    if (s.chain[0][0]==xFood&&s.chain[0][1]==yFood) {
      xFood=20*int(random(0, 48))+10;
      yFood=20*int(random(0, 28))+10;
      s.grow();
    }
    fill(126, 90, 110);
    ellipse(xFood, yFood, fsize, fsize);
  }
}

