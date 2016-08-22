class View
{
  float x;
  float y;
  float w;
  float h;
  float centerX;
  float centerY;
  float rightX;
  float botY;
  
  
  View(float initX, float initY, float initW, float initH)
  {
    x = initX;
    y = initY;
    w = initW;
    h = initH;
    centerX = x + w / 2;
    centerY = y + h / 2;
    rightX = x + w;
    botY = y + h;
  }
  
  void drawBorder()
  {
    noFill();
    strokeWeight(5);
    stroke(0);
    rect(x,y,w,h);
  }
}