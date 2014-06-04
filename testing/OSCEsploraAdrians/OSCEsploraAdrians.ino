  
/*
  Bidirectional Esplora OSC communications  using SLIP
 
 v1 Adrian Freed 2013
 v2  + Jeff Lubow 2013
 v3 2014 This one tries to get it all in one bundle by arduously constructing the bundleinstead of using the OSC for ARDUINO API
 so as to leverage strings stored in program memory.
 
 TODO move remaining parameters (in comments) to new scheme
 
 Includes some examples of common "best practices" for OSC name space and parameter 
 mapping design.
 
 Potential Future Work
 Fix floating point frequency (might be a max/msp side bug)
 Add LCD support when it is released.
 Add better sound synthesis using DDS on Timer 4
 Debounce the switches
 sliding window for the accelerometer, joystick and slider
 
*/

#include <Esplora.h>
#include <OSCBundle.h>
#include <OSCTiming.h>

//Teensy and Leonardo variants have special USB serial
#include <SLIPEncodedUSBSerial.h>

#if !defined(__AVR_ATmega32U4__)
#error select Arduino Esplora in board menu
#endif

#ifdef DONTSAVESPACE
// temperature
float getTemperature(){	
  int result;

  ADMUX =  _BV(REFS1) | _BV(REFS0) | _BV(MUX2) | _BV(MUX1) | _BV(MUX0);
  ADCSRB =  _BV(MUX5);
  delayMicroseconds(200); // wait for Vref to settle
  ADCSRA |= _BV(ADSC); // Convert
  while (bit_is_set(ADCSRA,ADSC));
  result = ADCL;
  result |= ADCH<<8;

  analogReference(DEFAULT);
  return  result/1023.0f;
}

float getSupplyVoltage(){
  // powersupply
  int result;
  // Read 1.1V reference against AVcc
  ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  delayMicroseconds(300); // wait for Vref to settle
  ADCSRA |= _BV(ADSC); // Convert
  while (bit_is_set(ADCSRA,ADSC));
  result = ADCL;
  result |= ADCH<<8;

  float supplyvoltage = 1.1264f *1023 / result;
  return supplyvoltage;	
}

#endif

// Esplora has  a dinky green led at the top left and a big RGB led at the bottom right
void routeLed(OSCMessage &msg, int addrOffset ){
  if(msg.match("/red", addrOffset)) {
    if (msg.isInt(0))  Esplora.writeRed( (byte)msg.getInt(0)); 
  }
  else 
    if(msg.match("/green", addrOffset)) {
    if (msg.isInt(0))  Esplora.writeGreen( (byte)msg.getInt(0)); 
  }
  else 
    if(msg.match("/blue", addrOffset)) {
    if (msg.isInt(0))  Esplora.writeBlue( (byte)msg.getInt(0)); 
  }
  else 
    if(msg.match("/rgb", addrOffset)) {

    if (msg.isInt(0)&&msg.isInt(1)&&msg.isInt(2))
    {
      Esplora.writeRGB((byte)msg.getInt(0),(byte)msg.getInt(1),(byte)msg.getInt(2));
    }
  }
  else
  {     
    if (msg.isInt(0))
    {
      digitalWrite(13, msg.getInt(0)>0?HIGH:LOW);
    }
  }
}

// Esplora has  a dinky green led at the top left and a big RGB led at the bottom right
void routeOut(OSCMessage &msg, int addrOffset ){
  if(msg.match("/B", addrOffset) || msg.match("/b", addrOffset)) {
    if (msg.isInt(0)) { 
      pinMode(11,OUTPUT);   
      digitalWrite(11, msg.getInt(0)>0?HIGH:LOW);  
    } 
    else    
      pinMode(11,INPUT);   // add pull up logic some day     
  }
  else 
    if(msg.match("/A", addrOffset) ||msg.match("/a", addrOffset)) {
    if (msg.isInt(0)) { 
      pinMode(3,OUTPUT);   
      digitalWrite(3, msg.getInt(0)>0?HIGH:LOW);  
    }          
    else    
      pinMode(3,INPUT);   // add pull up logic some day     
  }
}

/**
 * TONE
 * 
 * square wave output "/tone"
 * 
 * format:
 * /tone 
 *   (no value) = notome
 *  float or int = frequency
 *   optional length of time as an integer in milliseconds afterwards
 * 
 **/

void routeTone(OSCMessage &msg, int addrOffset ){

  unsigned int frequency = 0;
  if (msg.isInt(0)){        
    frequency = msg.getInt(0);
  } 
  else if(msg.isFloat(0)){
    frequency = msg.getFloat(0); // this doesn't work due to problems with double to float conversion?
  }
  else
    Esplora.noTone();
  if(frequency>0)
  {
    if(msg.isInt(1))
      Esplora.tone(frequency, msg.getInt(1));
    else
      Esplora.tone( frequency);
  }
}


SLIPEncodedUSBSerial SLIPSerial(Serial);

const byte MUX_ADDR_PINS[] = { 
  A0, A1, A2, A3 };
const byte MUX_COM_PIN = A4;

unsigned int myReadChannel(byte channel) {
  digitalWrite(MUX_ADDR_PINS[0], (channel & 1) ? HIGH : LOW);
  digitalWrite(MUX_ADDR_PINS[1], (channel & 2) ? HIGH : LOW);
  digitalWrite(MUX_ADDR_PINS[2], (channel & 4) ? HIGH : LOW);
  digitalWrite(MUX_ADDR_PINS[3], (channel & 8) ? HIGH : LOW);

  return analogRead(MUX_COM_PIN);
}

void setup() {
  //begin SLIPSerial just like Serial
  SLIPSerial.begin(115200);   // set this as high as you can reliably run on your platform
  while(!Serial)
    ; //Leonardo bootloader "feature"
}
int oscstrlen(const char *s)
{
  int n = strlen(s)+1;
  return n+ (4-(n%4))%4;
}
void oscstrsend(char *s)
{
  
int32_t serialnumber = 1099;   //hard coded; beware

};
     
     
inline void oscwriteinteger(SLIPEncodedUSBSerial &usbs, int32_t i)
{
 usbs.write((uint8_t)(i>>24)); 
  usbs.write((uint8_t)(i>>16));
  usbs.write((uint8_t)(i>>8));
  usbs.write((uint8_t)(i));
}
inline void oscwritefloat(SLIPEncodedUSBSerial &usbs, float f)
{
  union { float f; uint32_t  i; } t;
  t.f = f;
  usbs.write((uint8_t)(t.i>>24)); 
  usbs.write((uint8_t)(t.i>>16));
  usbs.write((uint8_t)(t.i>>8));
  usbs.write((uint8_t)(t.i));
}

void oscwritestring(SLIPEncodedUSBSerial &usbs, const char *s)
{
  usbs.write((uint8_t *)s, strlen(s)+1);
  int i = (4- ((strlen(s)+1) %4)) % 4;
  
  while(i--)
    usbs.write('\0');
}
void loop(){

  if(!SLIPSerial.available())
  {


    // The COOKED OSC address space and parameter mappings 
    // encode data for ease of use and legibility at the host. Unit intervals replace integers
    // The names are chosen to clarify usage rather than adherance to the silkscreen
    // also values are acquired as close together as reasonably possible to increase
    // their usability in sensor fusion contexts, i.e. in this case with the accelerometer
const char *singleinteger = ",i\0";
const char *singlefloat = ",f\0";
const char *threefloat = ",fff\0\0\0";
const char *threeinteger = ",iii\0\0\0";
const char *osctrue = ",T\0";
const char *singlestring = ",s\0";
const char *oscfalse = ",F\0";
    
    SLIPSerial.beginPacket(); // mark the beginning of the OSC Packet    
    
    SLIPSerial.write((const uint8_t *)"#bundle", 8);          //bundle header
    
    // time stamp didn't advance: oscuino bug
if(0)
{
  uint64_t tt = oscTime();
    SLIPSerial.write((uint8_t)(tt>>56));
    SLIPSerial.write((uint8_t)(tt>>48));
    SLIPSerial.write((uint8_t)(tt>>40));
    SLIPSerial.write((uint8_t)(tt>>32));
    SLIPSerial.write((uint8_t)(tt>>24));
    SLIPSerial.write((uint8_t)(tt>>16));
    SLIPSerial.write((uint8_t)(tt>>8));
    SLIPSerial.write((uint8_t)tt);
}     
else    
    SLIPSerial.write((const uint8_t *)"\0\0\0\0\0\0\0", 8);    //Time tag
{
const char *a_manufacturer = "/Manufacturer";  
const char *a_arduino = "Arduino";
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_manufacturer) + 4 + (int32_t)oscstrlen(a_arduino)); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_manufacturer); oscwritestring(SLIPSerial, singlestring); oscwritestring(SLIPSerial, a_arduino);
}

{
const char *a_accx = "/acceleration/x";    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_accx) + 4 + 4); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_accx); oscwritestring(SLIPSerial, singlefloat); oscwritefloat(SLIPSerial, Esplora.readAccelerometer(X_AXIS)/512.0f);
}
{
  const char *a_accy = "/acceleration/y";    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_accy) + 4 + 4); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_accy ); oscwritestring(SLIPSerial, singlefloat); oscwritefloat(SLIPSerial, Esplora.readAccelerometer(Y_AXIS)/512.0f);
}
{
  const char *a_accz = "/acceleration/z";    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_accz) + 4 + 4); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_accz ); oscwritestring(SLIPSerial, singlefloat); oscwritefloat(SLIPSerial, Esplora.readAccelerometer(Z_AXIS)/512.0f);
}   

 {
const char *a_pr= "/photoresistor";    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_pr) + 4 + 4); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_pr); oscwritestring(SLIPSerial, singlefloat); oscwritefloat(SLIPSerial, Esplora.readLightSensor()/1023.0f);
}
{
  const char *a_jsh = "/joystick/horizontal";    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_jsh) + 4 + 4); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_jsh ); oscwritestring(SLIPSerial, singlefloat); oscwritefloat(SLIPSerial,(int32_t)Esplora.readJoystickX()/-512.0f);
}
{
  const char *a_jsv = "/joystick/vertical";    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_jsv) + 4 + 4); // 4 for type tag and 4 for the payload integer
    oscwritestring(SLIPSerial,a_jsv ); oscwritestring(SLIPSerial, singlefloat); oscwritefloat(SLIPSerial, (int32_t)Esplora.readJoystickY()/-512.0f);
}   
  
const char *a_ledrgb = ("/led/rgb");    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_ledrgb) + 8 + 4*3); // 8 for type tag and 4 bytes * 3 for the payload integers
    oscwritestring(SLIPSerial,a_ledrgb ); oscwritestring(SLIPSerial, threeinteger); 
      oscwriteinteger(SLIPSerial, Esplora.readRed());
      oscwriteinteger(SLIPSerial, Esplora.readGreen());
      oscwriteinteger(SLIPSerial, Esplora.readBlue());


{
    static boolean lastjsbutton  = Esplora.readJoystickSwitch()>0;
    boolean b = Esplora.readJoystickSwitch()>0;
    const char *a_jsbuttondown = "/joystick/button/down";
    const char *a_jsbuttonup = "/joystick/button/up";
   const char *a_jsbuttonreleased = "/joystick/button/released";
    const char *a_jsbuttonpressed = "/joystick/button/pressed";
    
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_jsbuttondown) + 4 + 0); // 3 for type tag and 0 payload
     oscwritestring(SLIPSerial,a_jsbuttondown ); oscwritestring(SLIPSerial, b?oscfalse:osctrue); 
     
    oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_jsbuttonup) + 4 + 0); // 3 for type tag and 0 payload
          oscwritestring(SLIPSerial,a_jsbuttonup ); oscwritestring(SLIPSerial, b?osctrue:oscfalse); 
    if(b!=lastjsbutton)
    {
      if(b)
      {
          oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_jsbuttonreleased) + 4 + 0); // 3 for type tag and 0 payload
          oscwritestring(SLIPSerial,a_jsbuttonreleased ); oscwritestring(SLIPSerial, oscfalse); 
    
      }
      else
      {
          oscwriteinteger(SLIPSerial, (int32_t)oscstrlen(a_jsbuttonpressed) + 4 + 0); // 3 for type tag and 0 payload
          oscwritestring(SLIPSerial,a_jsbuttonpressed ); oscwritestring(SLIPSerial, osctrue); 
 
      }   
    } 
    lastjsbutton = b;
}     


#ifdef OLDWAY

    // The RAW OSC address space and parameter mappngs try to capture
    // the data at lowest level without calibration or scaling
    // The names are chosen to match what is on the silkscreen of the board where it is found
#ifdef RAW  
      SLIPSerial.beginPacket(); 
      bndl.add("/mic").add((int32_t)Esplora.readMicrophone());
      bndl.add("/temp/sensor/celsius").add((int32_t)Esplora.readTemperature(DEGREES_C));
      bndl.add("/temp/sensor/fahrenheit").add((int32_t)Esplora.readTemperature(DEGREES_F));
      bndl.add("/linear/potentiometer").add((int32_t)Esplora.readSlider());
      bndl.add("/light/sensor").add((int32_t)Esplora.readLightSensor());
      bndl.add("/switch/1").add((int32_t)Esplora.readButton(SWITCH_1)); 
      bndl.add("/switch/2").add((int32_t)Esplora.readButton(SWITCH_2)); 
      bndl.add("/switch/3").add((int32_t)Esplora.readButton(SWITCH_3)); 
      bndl.add("/switch/4").add((int32_t)Esplora.readButton(SWITCH_4)); 
      bndl.add("/joystick/X").add((int32_t)Esplora.readJoystickX());    
      bndl.add("/joystick/Y").add((int32_t)Esplora.readJoystickY());      
      bndl.add("/joystick/switch").add((int32_t)Esplora.readJoystickSwitch());  
      bndl.add("/joystick/switch/1").add((int32_t)Esplora.readButton(JOYSTICK_DOWN)); 
      bndl.add("/joystick/switch/2").add((int32_t)Esplora.readButton(JOYSTICK_LEFT)); 
      bndl.add("/joystick/switch/3").add((int32_t)Esplora.readButton(JOYSTICK_UP)); 
      bndl.add("/joystick/switch/4").add((int32_t)Esplora.readButton(JOYSTICK_RIGHT)); 
      bndl.add("/accelerometer/x").add(Esplora.readAccelerometer(X_AXIS)); 
      bndl.add("/accelerometer/y").add(Esplora.readAccelerometer(Y_AXIS)); 
      bndl.add("/accelerometer/z").add(Esplora.readAccelerometer(Z_AXIS)); 
      bndl.send(SLIPSerial); // send the bytes to the SLIP stream
      SLIPSerial.endPacket(); // mark the end of the OSC Packet
      bndl.empty();
    #endif //RAW


    
    bndl.add("/joystick/backward").add((int32_t)Esplora.readButton(JOYSTICK_DOWN)?released:pressed); 
    bndl.add("/joystick/left").add((int32_t)Esplora.readButton(JOYSTICK_LEFT)?released:pressed); 
    bndl.add("/joystick/forward").add((int32_t)Esplora.readButton(JOYSTICK_UP)?released:pressed); 
    bndl.add("/joystick/right").add((int32_t)Esplora.readButton(JOYSTICK_RIGHT)?released:pressed);     
  
    bndl.add("/diamond/backward").add((int32_t)Esplora.readButton(SWITCH_1)?released:pressed); 
    bndl.add("/diamond/left").add((int32_t)Esplora.readButton(SWITCH_2)?released:pressed); 
    bndl.add("/diamond/forward").add((int32_t)Esplora.readButton(SWITCH_3)?released:pressed); 
    bndl.add("/diamond/right").add((int32_t)Esplora.readButton(SWITCH_4)?released:pressed); 
    bndl.add("/microphone/loudness").add(Esplora.readMicrophone()/1023.0f);
    bndl.add("/temperature/fahrenheit").add((float)Esplora.readTemperature(DEGREES_F));
    bndl.add("/temperature/celsius").add((float)Esplora.readTemperature(DEGREES_C));
    bndl.add("/slider/horizontal").add(1.0f - ((float)Esplora.readSlider()/1023.0f));   

    bndl.add("/connector/white/left").add(myReadChannel(CH_MIC  +1)/1023.0f);
    bndl.add("/connector/white/right").add(myReadChannel(CH_MIC  +2)/1023.0f);
    bndl.add("/led/red").add((int32_t)Esplora.readRed());
    bndl.add("/led/green").add((int32_t)Esplora.readGreen());
    bndl.add("/led/blue").add((int32_t)Esplora.readBlue());

    bndl.add("/connector/orange/right").add((digitalRead(3)==HIGH)?1:0);
    bndl.add("/connector/orange/left").add((digitalRead(11)==HIGH)?1:0);

    
    bndl.add("/serialnumber").add(serialnumber);    
#endif
  SLIPSerial.endPacket(); // mark the end of the OSC Packet

      //   bndl.add("/32u4/supplyVoltage").add(getSupplyVoltage());
    //   bndl.add("/32u4/temperature").add(getTemperature());

  }
  else
  {
    OSCBundle bundleIN;
    int size;

    while(!SLIPSerial.endofPacket())
      if ((size =SLIPSerial.available()) > 0)
      {
        while(size--)
          bundleIN.fill(SLIPSerial.read());
      }
    {
      if(!bundleIN.hasError())
      {
        bundleIN.route("/led", routeLed);
        bundleIN.route("/L", routeLed);    // this is how it is marked on the silkscreen
        bundleIN.route("/out", routeOut);   // for the TinkerIt output connectors
        bundleIN.route("/tone", routeTone);
        bundleIN.route("/squarewave", routeTone);
        bundleIN.route("/notone", routeTone);
      }
    }
  }
}
