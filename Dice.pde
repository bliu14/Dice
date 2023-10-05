void setup()
{
  size(501, 501);
  background(225);
  noLoop();
}
void draw()
{
  int k = 0;
  for (int i = 0; i < 500; i+=50) {
    for (int j = 0; j < 450; j+=50) {
      Die d = new Die(i, j);
      k += d.roll();
      String s = "Total: "+k;
      d.show();
      fill(225);
      rect(170, 450, 100, 50);
      fill(0);
      text(s, 200, 470);
      fill(225);
    }
  }
}
void mousePressed()
{
  fill(225);
  rect(0, 0, 500, 500);
  fill(225);
  redraw();
}
class Die //models one single dice cube
{
  int x;
  int y;
  int r = 0;

  Die(int x, int y) //constructor
  {
    this.x = x;
    this.y = y;
  }
  int roll()
  {
    int l = (int)(Math.random()*6)+1;
    r += l;
    return r;
  }
  void show()
  {
    if (r == 1) {
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x+25, y+25, 10, 10);
    }
    if (r == 2) {
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x+40, y+10, 10, 10);
      ellipse(x+10, y+40, 10, 10);
    }
    if (r == 3) {
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x+40, y+10, 10, 10);
      ellipse(x+10, y+40, 10, 10);
      ellipse(x+25, y+25, 10, 10);
    }
    if (r == 4) {
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x+40, y+10, 10, 10);
      ellipse(x+10, y+40, 10, 10);
      ellipse(x+40, y+40, 10, 10);
      ellipse(x+10, y+10, 10, 10);
    }
    if (r == 5) {
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x+40, y+10, 10, 10);
      ellipse(x+10, y+40, 10, 10);
      ellipse(x+40, y+40, 10, 10);
      ellipse(x+10, y+10, 10, 10);
      ellipse(x+25, y+25, 10, 10);
    }
    if (r == 6) {
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x+40, y+10, 10, 10);
      ellipse(x+10, y+40, 10, 10);
      ellipse(x+40, y+40, 10, 10);
      ellipse(x+10, y+10, 10, 10);
      ellipse(x + 40, y+25, 10, 10);
      ellipse(x+10, y+25, 10, 10);
    }
  }
}
