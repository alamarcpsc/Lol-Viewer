class Button
{
  float x;
  float y;
  float w;
  float h;
  String s;
  Boolean selected;
  
  Button(float initX, float initY, float initW, float initH, String initS)
  {
    x = initX;
    y = initY;
    w = initW;
    h = initH;
    s = initS;
    selected = false;
  }
  
  boolean mouseInBounds()
  {
    if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h)
    {
      return true;
    }
    else
    {
      return false;
    }  
  }
  
  void drawButton()
  {
    stroke(0);
    strokeWeight(2);
    if(selected)
    {
      fill(#C1C1B2);
    }
    else
    {
      noFill();
    }
    rect(x,y,w,h);
    fill(0);
    textAlign(CENTER, CENTER);
    text(s, x + w / 2, y + h / 2);
  }  
}