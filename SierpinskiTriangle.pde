int len = 0;
int x = 0;
int y = 400;

public void setup()
{
  size(400,400);
}
public void draw()
{
  background(0);
  mouseDragged();
  sierpinski(x,y,len);
}
public void mouseDragged()//optional
{
  len = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
if(len <= 20) {
  triangle(x, y, x+(len/2), y-len, x+len, y);
} else {
  sierpinski(x,y,len/2);
  sierpinski(x+(len/2),y,len/2);
  sierpinski(x+(len/4),y-(len/2),len/2);
}
}
