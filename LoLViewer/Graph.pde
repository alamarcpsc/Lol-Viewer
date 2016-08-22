class Graph
{
  float x;
  float y;
  float w;
  float h;
  
  Graph(float initX, float initY, float initW, float initH)
  {
    x = initX;
    y = initY;
    w = initW;
    h = initH;
  }
  
  void drawGraph()
  {
    noFill();
    strokeWeight(2);
    stroke(0);
    line(x,y,x,y+h);
    line(x,y+h,x+w,y+h);
  }
}