/* 
This sketch was created by Sam Mansfield utilizing the oscP5 library as an example
about how one could use Processing to send osc messages to max using the odot objects.
*/

//osc libraries
import oscP5.*;
import netP5.*;

//initializing everything
OscP5 oscP5;
NetAddress myRemoteLocation;
Button button;
Toggle toggle;
Multislider multislider;
Pictslider pictslider;
OscBundle myBundle = new OscBundle();
Controls[] controlsArray = new Controls[10];
int counter = 0;

void setup() {
  //I'm not sure if specifying the frame rate is really necessary
  frameRate(25);
  size(400, 400);
  rectMode(RADIUS);
  //creating controls and adding them to the controls array
  button = new Button(width/10.0, height/10.0, 40, 0, 255, 0, new OscMessage("/processing/button/1"));
  controlsArray[counter] = button;
  counter++;
  toggle = new Toggle(width/3.0, height/10.0, 20, 0, 255, 0, new OscMessage("/processing/toggle/1"));
  controlsArray[counter] = toggle;
  counter++;
  multislider = new Multislider(width/1.5, height/6.0, 15, 0, 255, 0, new OscMessage("/processing/multislider/1"));
  controlsArray[counter] = multislider;
  counter++;
  pictslider = new Pictslider(width/3.0, height/1.5, 80, 0, 255, 0, new OscMessage("/processing/pictslider/1/x"), new OscMessage("/processing/pictslider/1/y"));
  controlsArray[counter] = pictslider;
  counter++;
  //the next two lines are copied from an example given in the oscP5 library
  //I'm not exactly sure what I"m doing, exact for that I'm using prot 10000 to send
  //messages, but this is necessary to send osc messages
  oscP5 = new OscP5(this, 10000);  
  myRemoteLocation = new NetAddress("127.0.0.1", 10000);
}

void draw() {    
  for(int i = 0; i < counter; i++)
    controlsArray[i].draw();
}

void mouseDragged() {
  if(mouseX > multislider.xpos - multislider.rad && mouseX < multislider.xpos + multislider.rad &&
     mouseY > multislider.ypos - 4*multislider.rad && mouseY < multislider.ypos + 4*multislider.rad) {
    multislider.on = mouseY;
    sendBundle(oscP5, myBundle, myRemoteLocation, controlsArray, counter);
  }
  else if(mouseX > pictslider.xpos - pictslider.rad + 2 && mouseX < pictslider.xpos + pictslider.rad - 2 &&
          mouseY > pictslider.ypos - pictslider.rad + 2 && mouseY < pictslider.ypos + pictslider.rad - 2) {
    pictslider.on = 1;
    pictslider.xcursor = mouseX;
    pictslider.ycursor = mouseY;    
    sendBundle(oscP5, myBundle, myRemoteLocation, controlsArray, counter);
  }
}

void mousePressed() {
  if(mouseX > button.xpos - button.rad/2 && mouseX < button.xpos + button.rad/2 &&
     mouseY > button.ypos - button.rad/2 && mouseY < button.ypos + button.rad/2) {
    button.on = 1;
    button.fil = 155;
    sendBundle(oscP5, myBundle, myRemoteLocation, controlsArray, counter);
  }
  else if(mouseX > toggle.xpos - toggle.rad && mouseX < toggle.xpos + toggle.rad &&
          mouseY > toggle.ypos - toggle.rad && mouseY < toggle.ypos + toggle.rad) {
    if(toggle.on == 0) {
      toggle.on = 1;
      toggle.fil = 155;
      sendBundle(oscP5, myBundle, myRemoteLocation, controlsArray, counter);
    }
    else{
      toggle.on = 0;
      toggle.fil = 255;
      sendBundle(oscP5, myBundle, myRemoteLocation, controlsArray, counter);
    }
  }
}

void mouseReleased() {
  button.fil = 255;
  if(button.on == 1){
    button.on = 0;
    sendBundle(oscP5, myBundle, myRemoteLocation, controlsArray, counter);
  }
}

void sendBundle(OscP5 op, OscBundle ob, NetAddress na, Controls[] ca, int c){
  for(int i = 0; i < c; i++)
    ca[i].addToBundle(ob);
  op.send(ob, na);
  ob.clear();
}
