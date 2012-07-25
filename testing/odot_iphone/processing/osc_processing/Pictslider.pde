public class Pictslider extends Controls {
  OscMessage oMessage2;
  int xcursor;
  int ycursor;
  public Pictslider(float x, float y, int r, int s, int f, int n, OscMessage o, OscMessage o2) {
    xpos = x;
    ypos = y;
    rad = r;
    strok = s;
    fil = f;
    on = n;
    oMessage = o;
    oMessage2 = o2;
  }
  
  void draw() {
      stroke(strok);
      fill(fil);
      rect(xpos, ypos, rad, rad);
      if(on != 0)
        ellipse(xcursor, ycursor, 5, 5);
  }
  
  //has to send two messages for x and y, so it needs a special addToBundle function
  public void addToBundle(OscBundle ob) {
    oMessage.add(xcursor);
    ob.add(oMessage);
    oMessage.clearArguments();
    ob.setTimetag(ob.now() + 10000);
    oMessage2.add(ycursor);
    ob.add(oMessage2);
    oMessage2.clearArguments();
    ob.setTimetag(ob.now() + 10000);
  }
}

