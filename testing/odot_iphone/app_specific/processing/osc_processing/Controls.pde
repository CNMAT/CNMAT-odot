public class Controls {
  public float xpos;
  public float ypos;
  public int rad;
  public int strok;
  public int fil;
  public int on;
  public OscMessage oMessage;
  
  public void draw(){}
  
  public void addToBundle(OscBundle ob) {
    oMessage.add(on);
    ob.add(oMessage);
    oMessage.clearArguments();
    ob.setTimetag(ob.now() + 10000);
  }
}
