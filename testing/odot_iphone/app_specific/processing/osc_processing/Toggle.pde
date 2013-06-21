public class Toggle extends Controls {
  public Toggle(float x, float y, int r, int s, int f, int n, OscMessage o) {
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
      rect(xpos, ypos, rad, rad);
  }
}
