float ax, ay, az;
class snake
{ 
  
  int chainCount=10, speed, dx=0, dy=0, x, y, sizeZ;
  int[][] chain=new int[200][2];
  snake() {
    x=20*int(random(0, 48))+10;
    y=20*int(random(0, 28))+10;
    sizeZ=20;
    speed=sizeZ;
  }
  void move()
  {
      if (keyCode==UP&&!(dy>0))
      {
        dy=speed*(-1);
        dx=0;
      }
      else if (keyCode==DOWN&&!(dy<0))
      {
        dy=speed;
        dx=0;
      }
      else if (keyCode==RIGHT&&!(dx<0))
      {
        dx=speed;
        dy=0;
      }
      else if (keyCode==LEFT&&!(dx>0))
      {
        dx=speed*(-1);
        dy=0;
      }
    if (x<=width&&y<=height&&x>=0&&y>=0) {

      x+=dx;
      y+=dy;
    }
    else {
      if (x>width)x=10;
      if (y>height)y=10;
      if (x<0)x=width-10;
      if (y<0)y=height-10;
    }
    //ellipse(x, y, 25, 25);
  }
  void snakeBody() 
  {
    int tempX=x;
    int tempY=y;
    move();


    for (int i=chainCount-1;i>0;i--) {
      for (int j=0;j<2;j++) {
        chain[i][j]=chain[i-1][j];
      }
    }

    chain[chainCount-1][0]=tempX;
    chain[chainCount-1][1]=tempY;
    chain[0][0]=x;
    chain[0][1]=y;

    if (!accident()) {
      for (int i=0;i<chainCount;i++) {
        fill(random(100, 200));
        ellipse(chain[i][0], chain[i][1], sizeZ, sizeZ);
      }
    }
    else chainCount=10;
  }

  boolean accident() {
    for (int i=1;i<chainCount;i++) {
      if (chain[0][0]==chain[i][0]&&chain[0][1]==chain[i][1])return true;
    }
    return false;
  }

  void grow() {
    chainCount++;
    chain[chainCount-1][0]=chain[chainCount-2][0];
    chain[chainCount-1][1]=chain[chainCount-2][1];
  }
}