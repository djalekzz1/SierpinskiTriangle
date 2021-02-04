int counter = 0;

public void setup()
{
  size(400,400);
  noLoop();
}
public void draw()
{
  int x =100;
  int y = 100;
  int len = 50;
  
  background(255,182,193);
  sierpinski(x, y+counter, len+counter);
  counter+=10;
}
public void mousePressed()//optional
{
  redraw();
}
public void sierpinski(int x, int y, int len) 
{  
  if(len <= 20) {
    triangle(x, y, x+len/2, y-len, x+len, y); 
  }
  else {
      sierpinski(x, y, len/2);
      sierpinski(x+len/2, y, len/2);
      sierpinski(x+len/4, y-len/2, len/2);
  }
}
