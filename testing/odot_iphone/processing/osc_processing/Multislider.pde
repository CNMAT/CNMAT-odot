public class Multislider extends Controls {
  public Multislider(float x, float y, int r, int s, int f, int n, OscMessage o) {
    xpos = x;
    ypos = y;
    rad = r;
    strok = s;
    fil = f;
    on = n;
    oMessage = o;
  }
  
  void draw() {
      stroke(strok);
      fill(fil);
      rect(xpos, ypos, rad, 4*rad);
      if(on != 0)
        line(xpos - rad - 1, on, xpos + rad - 1, on);
  }
}
