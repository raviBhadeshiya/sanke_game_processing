snake s;
food f;
int flag = 0;
void setup() {
  size(1000, 600);
  smooth();
  noStroke();
  s = new snake();
  f= new food(50,110);
  frameRate(20);
}
void draw() {
  if (flag == 2) {
    flag = 0;
  }
  flag++;

  if (!keyPressed && flag!=1) return;
  background(255);
  /* fill(120,160,140);
   
   rect(700,550,90,40);
   if(mouseX>700&&mouseX<790&&mouseY>550&&mouseY<590&&mousePressed)
   {s=new snake();
   f=new food();
   
   for (int i=0;i<=20;i++) {
   line(20*i, 0, 20*i,width);
   line(0, 20*i, height, 20*i);
   }*/
  s.snakeBody();
  f.newfood();
}

