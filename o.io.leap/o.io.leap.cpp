#include "ext.h"							// standard Max include, always required
#include "ext_obex.h"						// required for new style Max object

#include "osc.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_atom_u.h"
#include "osc_mem.h"

#include "Leap.h"

#include <iostream>

#define _USE_MATH_DEFINES // To get definition of M_PI
#include <math.h>

using namespace std;
#include <string>

////////////////////////// object struct
typedef struct _oleap
{
	t_object	ob;
	int64_t		frame_id_save;
	void		*outlet;
	Leap::Controller	*leap;
        
} t_oleap;

///////////////////////// function prototypes
//// standard set
void *oleap_new(t_symbol *s, long argc, t_atom *argv);
void oleap_free(t_oleap *x);
void oleap_assist(t_oleap *x, void *b, long m, long a, char *s);

//// leap functions
void oleap_bang(t_oleap *x);
void oleap_bundleMessage(t_osc_bundle_u *bundle, const char* address, float datum);
void oleap_showme(t_oleap *x, t_symbol *s, long argc, t_atom *argv);

//////////////////////// global class pointer variable
void *oleap_class;



//////////////////////// Max functions
int main(void)
{
	t_class *c;
	
	c = class_new("o.io.leap", (method)oleap_new, (method)oleap_free, (long)sizeof(t_oleap),
				  0L /* leave NULL!! */, A_GIMME, 0);
	
    class_addmethod(c, (method)oleap_bang, "bang", 0);
    
    class_addmethod(c, (method)oleap_bundleMessage, "bundle", 0);
    
    class_addmethod(c, (method)oleap_showme, "showme", 0);
    
	/* you CAN'T call this from the patcher */
    class_addmethod(c, (method)oleap_assist, "assist", A_CANT, 0);
	
	class_register(CLASS_BOX, c);
	oleap_class = c;
    
    
    
	return 0;
}

void oleap_assist(t_oleap *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) { //inlet
		sprintf(s, "bang to cause the frame data output");
	}
	else {	// outlet
		sprintf(s, "osc(frame data)");
	}
}

void oleap_free(t_oleap *x)
{
	delete (Leap::Controller *)(x->leap);
}


//t_oleap *x,t_osc_bundle_u *bundle, string address, float datum

void oleap_bundleMessage(t_osc_bundle_u *bundle, const char* address, float datum)
{
    t_osc_message_u *mes = osc_message_u_alloc();
    
    osc_message_u_setAddress(mes, address);
    
    t_osc_atom_u *atom = osc_atom_u_alloc();
    
    osc_atom_u_setFloat(atom, datum);
    osc_message_u_appendAtom(mes, atom);
    
    osc_bundle_u_addMsg(bundle, mes);
    
}

void oleap_showme(t_oleap *x, t_symbol *s, long argc, t_atom *argv)
{
    object_post((t_object *)x, "Full odot namespace:");
    
    object_post((t_object *)x,"/timeStamp");
    object_post((t_object *)x,"/Hands");
    
    object_post((t_object *)x,"/gesture/circle/center/x");
    object_post((t_object *)x,"/gesture/circle/center/y");
    object_post((t_object *)x,"/gesture/circle/center/z");
    object_post((t_object *)x,"/gesture/circle/pitch");
    object_post((t_object *)x,"/gesture/circle/yaw");
    object_post((t_object *)x,"/gesture/circle/roll");
    object_post((t_object *)x,"/gesture/circle/radius");
    object_post((t_object *)x,"/gesture/circle/duration");
    object_post((t_object *)x,"/gesture/circle/clockwiseness/");
    object_post((t_object *)x,"/gesture/circle/clockwiseness/");
    object_post((t_object *)x,"/gesture/circle/angle/sweep");
    object_post((t_object *)x,"/gesture/swipe/direction/x");
    object_post((t_object *)x,"/gesture/swipe/direction/x");
    object_post((t_object *)x,"/gesture/swipe/direction/x");
    object_post((t_object *)x,"/gesture/swipe/position/x");
    object_post((t_object *)x,"/gesture/swipe/position/y");
    object_post((t_object *)x,"/gesture/swipe/position/z");
    object_post((t_object *)x,"/gesture/swipe/pitch");
    object_post((t_object *)x,"/gesture/swipe/yaw");
    object_post((t_object *)x,"/gesture/swipe/roll");
    object_post((t_object *)x,"/gesture/swipe/position/start/x");
    object_post((t_object *)x,"/gesture/swipe/position/start/y");
    object_post((t_object *)x,"/gesture/swipe/position/start/z");
    object_post((t_object *)x,"/gesture/swipe/speed");
    object_post((t_object *)x,"/gesture/swipe/duration");
    object_post((t_object *)x,"/gesture/tap/down/position/x");
    object_post((t_object *)x,"/gesture/tap/down/position/y");
    object_post((t_object *)x,"/gesture/tap/down/position/z");
    object_post((t_object *)x,"/gesture/tap/down/direction/x");
    object_post((t_object *)x,"/gesture/tap/down/direction/y");
    object_post((t_object *)x,"/gesture/tap/down/direction/z");
    object_post((t_object *)x,"/gesture/tap/down/duration");
    object_post((t_object *)x,"/gesture/tap/forward/position/x");
    object_post((t_object *)x,"/gesture/tap/forward/position/y");
    object_post((t_object *)x,"/gesture/tap/forward/position/z");
    object_post((t_object *)x,"/gesture/tap/forward/direction/x");
    object_post((t_object *)x,"/gesture/tap/forward/direction/y");
    object_post((t_object *)x,"/gesture/tap/forward/direction/z");
    object_post((t_object *)x,"/gesture/tap/forward/duration");
    
    object_post((t_object *)x,"/hand/leftmost/id");
    object_post((t_object *)x,"/hand/leftmost/palm/positiony/x");
    object_post((t_object *)x,"/hand/leftmost/palm/positiony/y");
    object_post((t_object *)x,"/hand/leftmost/palm/positiony/z");
    object_post((t_object *)x,"/hand/leftmost/direction/x");
    object_post((t_object *)x,"/hand/leftmost/direction/y");
    object_post((t_object *)x,"/hand/leftmost/direction/z");
    object_post((t_object *)x,"/hand/leftmost/pitch");
    object_post((t_object *)x,"/hand/leftmost/yaw");
    object_post((t_object *)x,"/hand/leftmost/roll");
    object_post((t_object *)x,"/hand/leftmost/palm/velocity/x");
    object_post((t_object *)x,"/hand/leftmost/palm/velocity/y");
    object_post((t_object *)x,"/hand/leftmost/palm/velocity/z");
    object_post((t_object *)x,"/hand/leftmost/palm/sphere/center/x");
    object_post((t_object *)x,"/hand/leftmost/palm/sphere/center/y");
    object_post((t_object *)x,"/hand/leftmost/palm/sphere/center/z");
    object_post((t_object *)x,"/hand/leftmost/palm/sphere/radius");
    object_post((t_object *)x,"/hand/leftmost/palm/normal/x");
    object_post((t_object *)x,"/hand/leftmost/palm/normal/y");
    object_post((t_object *)x,"/hand/leftmost/palm/normal/z");
    object_post((t_object *)x,"/hand/leftmost/distance/from/rightmost");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/hand_id");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/finger_id");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/position/x");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/position/y");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/position/z");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/direction/x");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/direction/y");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/direction/z");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/velocity/x");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/velocity/y");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/velocity/z");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/direction/normalized/x");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/direction/normalized/y");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/direction/normalized/z");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/pitch/normalized/");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/yaw/normalized/");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/roll/normalized/");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/width");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/length");
    object_post((t_object *)x,"/hand/leftmost/isTool");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/distance/to/finger/$i");
    object_post((t_object *)x,"/hand/leftmost/finger/$i/angle/to/finger/$i");
    
    object_post((t_object *)x,"/hand/rightmost/id");
    object_post((t_object *)x,"/hand/rightmost/palm/positiony/x");
    object_post((t_object *)x,"/hand/rightmost/palm/positiony/y");
    object_post((t_object *)x,"/hand/rightmost/palm/positiony/z");
    object_post((t_object *)x,"/hand/rightmost/direction/x");
    object_post((t_object *)x,"/hand/rightmost/direction/y");
    object_post((t_object *)x,"/hand/rightmost/direction/z");
    object_post((t_object *)x,"/hand/rightmost/pitch");
    object_post((t_object *)x,"/hand/rightmost/yaw");
    object_post((t_object *)x,"/hand/rightmost/roll");
    object_post((t_object *)x,"/hand/rightmost/palm/velocity/x");
    object_post((t_object *)x,"/hand/rightmost/palm/velocity/y");
    object_post((t_object *)x,"/hand/rightmost/palm/velocity/z");
    object_post((t_object *)x,"/hand/rightmost/palm/sphere/center/x");
    object_post((t_object *)x,"/hand/rightmost/palm/sphere/center/y");
    object_post((t_object *)x,"/hand/rightmost/palm/sphere/center/z");
    object_post((t_object *)x,"/hand/rightmost/palm/sphere/radius");
    object_post((t_object *)x,"/hand/rightmost/palm/normal/x");
    object_post((t_object *)x,"/hand/rightmost/palm/normal/y");
    object_post((t_object *)x,"/hand/rightmost/palm/normal/z");
    
    
    object_post((t_object *)x,"/hand/rightmost/distance/from/leftmost");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/hand_id");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/finger_id");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/position/x");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/position/y");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/position/z");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/direction/x");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/direction/y");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/direction/z");
    
    object_post((t_object *)x,"/hand/rightmost/finger/$i/velocity/x");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/velocity/y");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/velocity/z");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/direction/normalized/x");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/direction/normalized/y");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/direction/normalized/z");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/pitch/normalized/");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/yaw/normalized/");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/roll/normalized/");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/width");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/length");
    object_post((t_object *)x,"/hand/rightmost/isTool");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/distance/to/finger/$i");
    object_post((t_object *)x,"/hand/rightmost/finger/$i/angle/to/finger/$i");
    object_post((t_object *)x,"/hand/$i/id");
    object_post((t_object *)x,"/hand/$i/fingers");
    object_post((t_object *)x,"/hand/$i/pitch");
    object_post((t_object *)x,"/hand/$i/yaw");
    object_post((t_object *)x,"/hand/$i/roll");
    object_post((t_object *)x,"/hand/$i/finger/$i/hand_id");
    object_post((t_object *)x,"/hand/$i/finger/$i/finger_id");
    object_post((t_object *)x,"/hand/$i/finger/$i/position/x");
    object_post((t_object *)x,"/hand/$i/finger/$i/position/y");
    object_post((t_object *)x,"/hand/$i/finger/$i/position/z");
    object_post((t_object *)x,"/hand/$i/finger/$i/direction/x");
    object_post((t_object *)x,"/hand/$i/finger/$i/direction/y");
    object_post((t_object *)x,"/hand/$i/finger/$i/direction/z");
    object_post((t_object *)x,"/hand/$i/finger/$i/velocity/x");
    object_post((t_object *)x,"/hand/$i/finger/$i/velocity/y");
    object_post((t_object *)x,"/hand/$i/finger/$i/velocity/z");
    object_post((t_object *)x,"/hand/$i/finger/$i/width");
    object_post((t_object *)x,"/hand/$i/finger/$i/length");
    object_post((t_object *)x,"/hand/$i/tool");
    
    object_post((t_object *)x,"/hand/$i/palm/hand_id");
    object_post((t_object *)x,"/hand/$i/palm/frame_id");
    object_post((t_object *)x,"/hand/$i/palm/position/x");
    object_post((t_object *)x,"/hand/$i/palm/position/y");
    object_post((t_object *)x,"/hand/$i/palm/position/z");
    object_post((t_object *)x,"/hand/$i/palm/direction/x");
    object_post((t_object *)x,"/hand/$i/palm/direction/y");
    object_post((t_object *)x,"/hand/$i/palm/direction/z");
    
    object_post((t_object *)x,"/hand/$i/palm/velocity/x");
    object_post((t_object *)x,"/hand/$i/palm/velocity/x");
    object_post((t_object *)x,"/hand/$i/palm/velocity/z");
    object_post((t_object *)x,"/hand/$i/palm/normal/x");
    object_post((t_object *)x,"/hand/$i/palm/normal/y");
    object_post((t_object *)x,"/hand/$i/palm/normal/z");
    object_post((t_object *)x,"/hand/$i/sphere/id");
    object_post((t_object *)x,"/hand/$i/sphere/frame_id");
    object_post((t_object *)x,"/hand/$i/sphere/center/x");
    object_post((t_object *)x,"/hand/$i/sphere/center/y");
    object_post((t_object *)x,"/hand/$i/sphere/center/z");
    object_post((t_object *)x,"/hand/$i/sphere/radius");
    object_post((t_object *)x,"/hand/$i/pointable/$i/id");
    object_post((t_object *)x,"/hand/$i/pointable/$i/length");
    object_post((t_object *)x,"/hand/$i/pointable/$i/width");
    object_post((t_object *)x,"/hand/$i/pointable/$i/direction/x");
    object_post((t_object *)x,"/hand/$i/pointable/$i/direction/y");
    
    object_post((t_object *)x,"/hand/$i/pointable/$i/direction/z");
    object_post((t_object *)x,"/hand/$i/pointable/$i/isFinger");
    object_post((t_object *)x,"/hand/$i/pointable/$i/isTool");
    
    object_post((t_object *)x,"/hand/$i/pointable/$i/position/tip/x");
    object_post((t_object *)x,"/hand/$i/pointable/$i/position/tip/y");
    object_post((t_object *)x,"/hand/$i/pointable/$i/position/tip/z");
    object_post((t_object *)x,"/hand/$i/pointable/$i/velocity/tip/x");
    
    object_post((t_object *)x,"/hand/$i/pointable/$i/velocity/tip/y");
    object_post((t_object *)x,"/hand/$i/pointable/$i/velocity/tip/z");
    object_post((t_object *)x,"/hand/$i/pointable/$i/position/stabilized/x");
    object_post((t_object *)x,"/hand/$i/pointable/$i/position/stabilized/y");
    object_post((t_object *)x,"/hand/$i/pointable/$i/position/stabilized/z");
    object_post((t_object *)x,"/hand/$i/pointable/$i/touchZone/distance");
    object_post((t_object *)x,"/hand/$i/pointable/$i/touchZone");
    
    object_post((t_object *)x,"/hand/$i/pointable/$i/touchZone/touching");
    object_post((t_object *)x,"/hand/$i/pointable/$i/touchZone/hovering");
    object_post((t_object *)x,"/hand/$i/interactionBox/depth");
    object_post((t_object *)x,"/hand/$i/interactionBox/center/x");
    object_post((t_object *)x,"/hand/$i/interactionBox/center/y");
    object_post((t_object *)x,"/hand/$i/interactionBox/center/z");
    object_post((t_object *)x,"/hand/$i/interactionBox/position/normalized/x");
    object_post((t_object *)x,"/hand/$i/interactionBox/position/normalized/y");
    object_post((t_object *)x,"/hand/$i/interactionBox/position/normalized/z");
    object_post((t_object *)x,"/hand/$i/interactionBox/width");
    object_post((t_object *)x,"/hand/$i/interactionBox/height");

}

void oleap_bang(t_oleap *x)
{

	const Leap::Frame frame = x->leap->frame();
    const int64_t frame_id = frame.id();
    Leap::Controller controller;
    
	// ignore the same frame
	if (frame_id == x->frame_id_save) return;
	x->frame_id_save = frame_id;
	
	//outlet_anything(x->outlet, gensym("frame_start"), 0, nil);
    
    char buff[128];
    
    const Leap::HandList hands = frame.hands();
	const size_t numHands = hands.count();
    const Leap::Hand leftmost = hands.leftmost();
    const Leap::Hand rightmost = hands.rightmost();
    
    t_osc_bundle_u *bundle = osc_bundle_u_alloc();//alloc creates memory for and initializes the bundle

    controller.enableGesture(Leap::Gesture::TYPE_CIRCLE);
    controller.enableGesture(Leap::Gesture::TYPE_KEY_TAP);
    controller.enableGesture(Leap::Gesture::TYPE_SCREEN_TAP);
    controller.enableGesture(Leap::Gesture::TYPE_SWIPE);
    
    
    // Get gestures
    const Leap::GestureList gestures = frame.gestures();
    
    for (int g = 0; g < gestures.count(); ++g) {
        Leap::Gesture gesture = gestures[g];
        
        switch (gesture.type()) {
            case Leap::Gesture::TYPE_CIRCLE:
            {
                
                Leap::CircleGesture circle = gesture;
                std::string clockwiseness;
                
                sprintf(buff,"/gesture/circle/center/x");
                oleap_bundleMessage(bundle,buff,circle.center().x);
                
                sprintf(buff,"/gesture/circle/center/y");
                oleap_bundleMessage(bundle,buff,circle.center().y);
                
                sprintf(buff,"/gesture/circle/center/z");
                oleap_bundleMessage(bundle,buff,circle.center().z);
                
                sprintf(buff,"/gesture/circle/pitch");
                oleap_bundleMessage(bundle,buff,circle.center().pitch());
                
                sprintf(buff,"/gesture/circle/yaw");
                oleap_bundleMessage(bundle,buff,circle.center().yaw());
                
                sprintf(buff,"/gesture/circle/roll");
                oleap_bundleMessage(bundle,buff,circle.center().roll());
                
                sprintf(buff,"/gesture/circle/radius");
                oleap_bundleMessage(bundle,buff,circle.radius());
                
                sprintf(buff,"/gesture/circle/duration");
                oleap_bundleMessage(bundle,buff,circle.duration());
                
                
                if (circle.pointable().direction().angleTo(circle.normal()) <= Leap::PI/4) {
                    clockwiseness = "clockwise";
                    
                    sprintf(buff,"/gesture/circle/clockwiseness/");
                    oleap_bundleMessage(bundle,buff,1);
                    
                } else {
                    clockwiseness = "counterclockwise";
                    
                    sprintf(buff,"/gesture/circle/clockwiseness/");
                    oleap_bundleMessage(bundle,buff,-1);
                }
                
                
                // Calculate angle swept since last frame
                float sweptAngle = 0;
                if (circle.state() != Leap::Gesture::STATE_START) {
                    Leap::CircleGesture previousUpdate = Leap::CircleGesture(controller.frame(1).gesture(circle.id()));
                    sweptAngle = (circle.progress() - previousUpdate.progress()) * 2 * Leap::PI;
                    
                    sprintf(buff,"/gesture/circle/angle/sweep");
                    oleap_bundleMessage(bundle,buff,sweptAngle);
                }
            }
                
            case Leap::Gesture::TYPE_SWIPE:
            {
                Leap::SwipeGesture swipe = gesture;
                int swipe_id = gesture.id();
                int gesture_state = gesture.state();
                Leap::Vector swipe_direction = swipe.direction();
                float swipe_speed = swipe.speed();
                
                ////////////////////////////////Swipe data
                
                sprintf(buff,"/gesture/swipe/direction/x");
                oleap_bundleMessage(bundle,buff,swipe_direction.x);
                
                sprintf(buff,"/gesture/swipe/direction/x");
                oleap_bundleMessage(bundle,buff,swipe_direction.y);
                
                sprintf(buff,"/gesture/swipe/direction/x");
                oleap_bundleMessage(bundle,buff,swipe_direction.z);
                
                sprintf(buff,"/gesture/swipe/position/x");
                oleap_bundleMessage(bundle,buff,swipe.position().x);
                
                sprintf(buff,"/gesture/swipe/position/y");
                oleap_bundleMessage(bundle,buff,swipe.position().y);
                
                sprintf(buff,"/gesture/swipe/position/z");
                oleap_bundleMessage(bundle,buff,swipe.position().z);
                
                sprintf(buff,"/gesture/swipe/pitch");
                oleap_bundleMessage(bundle,buff,swipe.position().pitch());
                
                sprintf(buff,"/gesture/swipe/yaw");
                oleap_bundleMessage(bundle,buff,swipe.position().yaw());
                
                sprintf(buff,"/gesture/swipe/roll");
                oleap_bundleMessage(bundle,buff,swipe.position().roll());
                
                sprintf(buff,"/gesture/swipe/position/start/x");
                oleap_bundleMessage(bundle,buff,swipe.startPosition().x);
                
                sprintf(buff,"/gesture/swipe/position/start/y");
                oleap_bundleMessage(bundle,buff,swipe.startPosition().y);
                
                sprintf(buff,"/gesture/swipe/position/start/z");
                oleap_bundleMessage(bundle,buff,swipe.startPosition().z);
                
                sprintf(buff,"/gesture/swipe/speed");
                oleap_bundleMessage(bundle,buff,swipe_speed);
                
                sprintf(buff,"/gesture/swipe/duration");
                oleap_bundleMessage(bundle,buff,swipe.duration());
            
                
            }
                
            case Leap::Gesture::TYPE_KEY_TAP:
            {
                Leap::KeyTapGesture tap = gesture;
                int tap_id = gesture.id();
                int tap_state = gesture.state();
                Leap::Vector tap_position = tap.position();
                Leap::Vector tap_direction = tap.direction();
                
                ////////////////////////////////Key tap data
                
                sprintf(buff,"/gesture/tap/down/position/x");
                oleap_bundleMessage(bundle,buff,tap_position.x);
                
                sprintf(buff,"/gesture/tap/down/position/y");
                oleap_bundleMessage(bundle,buff,tap_position.y);
                
                sprintf(buff,"/gesture/tap/down/position/z");
                oleap_bundleMessage(bundle,buff,tap_position.z);
                
                sprintf(buff,"/gesture/tap/down/direction/x");
                oleap_bundleMessage(bundle,buff,tap_direction.x);
                
                sprintf(buff,"/gesture/tap/down/direction/y");
                oleap_bundleMessage(bundle,buff,tap_direction.y);
                
                sprintf(buff,"/gesture/tap/down/direction/z");
                oleap_bundleMessage(bundle,buff,tap_direction.z);
                
                sprintf(buff,"/gesture/tap/down/duration");
                oleap_bundleMessage(bundle,buff,tap.duration());
          
            }
                
            case Leap::Gesture::TYPE_SCREEN_TAP:
            {
                Leap::ScreenTapGesture screentap = gesture;
                int screen_tap_id = gesture.id();
                int screen_tap_state = gesture.state();
                Leap::Vector screentap_position = screentap.position();
                Leap::Vector screentap_direction = screentap.direction();
                
                ////////////////////////////////Screen tap data
                
                sprintf(buff,"/gesture/tap/forward/position/x");
                oleap_bundleMessage(bundle,buff,screentap_position.x);
                
                sprintf(buff,"/gesture/tap/forward/position/y");
                oleap_bundleMessage(bundle,buff,screentap_position.y);
                
                sprintf(buff,"/gesture/tap/forward/position/z");
                oleap_bundleMessage(bundle,buff,screentap_position.z);
                
                sprintf(buff,"/gesture/tap/forward/direction/x");
                oleap_bundleMessage(bundle,buff,screentap_direction.x);
                
                sprintf(buff,"/gesture/tap/forward/direction/y");
                oleap_bundleMessage(bundle,buff,screentap_direction.y);
                
                sprintf(buff,"/gesture/tap/forward/direction/z");
                oleap_bundleMessage(bundle,buff,screentap_direction.z);
                
                sprintf(buff,"/gesture/tap/forward/duration");
                oleap_bundleMessage(bundle,buff,screentap.duration());

              
            }
            default:
                
                break;
        }
    }
    
    

    sprintf(buff,"/timeStamp");
    oleap_bundleMessage(bundle,buff,frame.timestamp());
    
    sprintf(buff,"/Hands");
    oleap_bundleMessage(bundle,buff,numHands);
    
    sprintf(buff,"/hand/leftmost/id");
    oleap_bundleMessage(bundle,buff,leftmost.id());
    
    sprintf(buff,"/hand/leftmost/palm/positiony/x");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().x);
    
    sprintf(buff,"/hand/leftmost/palm/positiony/y");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().y);
    
    sprintf(buff,"/hand/leftmost/palm/positiony/z");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().z);

    sprintf(buff,"/hand/leftmost/direction/x");
    oleap_bundleMessage(bundle,buff,leftmost.direction().x);
    
    sprintf(buff,"/hand/leftmost/direction/y");
    oleap_bundleMessage(bundle,buff,leftmost.direction().y);
    
    sprintf(buff,"/hand/leftmost/direction/z");
    oleap_bundleMessage(bundle,buff,leftmost.direction().z);
    
    sprintf(buff,"/hand/leftmost/pitch");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().pitch());
    
    sprintf(buff,"/hand/leftmost/yaw");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().yaw());
    
    sprintf(buff,"/hand/leftmost/roll");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().roll());
    
    sprintf(buff,"/hand/leftmost/palm/velocity/x");
    oleap_bundleMessage(bundle,buff,leftmost.palmVelocity().x);
    
    sprintf(buff,"/hand/leftmost/palm/velocity/y");
    oleap_bundleMessage(bundle,buff,leftmost.palmVelocity().y);
    
    sprintf(buff,"/hand/leftmost/palm/velocity/z");
    oleap_bundleMessage(bundle,buff,leftmost.palmVelocity().z);
    
    sprintf(buff,"/hand/leftmost/palm/sphere/center/x");
    oleap_bundleMessage(bundle,buff,leftmost.sphereCenter().x);
    
    sprintf(buff,"/hand/leftmost/palm/sphere/center/y");
    oleap_bundleMessage(bundle,buff,leftmost.sphereCenter().y);
    
    sprintf(buff,"/hand/leftmost/palm/sphere/center/z");
    oleap_bundleMessage(bundle,buff,leftmost.sphereCenter().z);

    sprintf(buff,"/hand/leftmost/palm/sphere/radius");
    oleap_bundleMessage(bundle,buff,leftmost.sphereRadius());
    
    sprintf(buff,"/hand/leftmost/palm/normal/x");
    oleap_bundleMessage(bundle,buff,leftmost.palmNormal().x);
    
    sprintf(buff,"/hand/leftmost/palm/normal/y");
    oleap_bundleMessage(bundle,buff,leftmost.palmNormal().y);
    
    sprintf(buff,"/hand/leftmost/palm/normal/z");
    oleap_bundleMessage(bundle,buff,leftmost.palmNormal().z);
    
    sprintf(buff,"/hand/leftmost/distance/from/rightmost");
    oleap_bundleMessage(bundle,buff,leftmost.palmPosition().angleTo(rightmost.palmPosition()));
    
    const Leap::FingerList &fingers = leftmost.fingers();
    const size_t numFingers = fingers.count();
    
    for(size_t j = 0; j < numFingers; j++)
    {
        const Leap::Finger &finger = fingers[j];
        const int32_t finger_id = finger.id();
        //const Leap::Ray& tip = finger.tip();
        const Leap::Vector direction = finger.direction();
        const Leap::Vector position = finger.tipPosition();
        const Leap::Vector velocity = finger.tipVelocity();
        const double width = finger.width();
        const double length = finger.length();
        const bool isTool = finger.isTool();
        
        sprintf(buff,"/hand/leftmost/finger/%d/hand_id",j+1);
        oleap_bundleMessage(bundle,buff,leftmost.id());
        
        sprintf(buff,"/hand/leftmost/finger/%d/finger_id",j+1);
        oleap_bundleMessage(bundle,buff,finger.id());
        
        sprintf(buff,"/hand/leftmost/finger/%d/position/x",j+1);
        oleap_bundleMessage(bundle,buff,position.x);
        
        sprintf(buff,"/hand/leftmost/finger/%d/position/y",j+1);
        oleap_bundleMessage(bundle,buff,position.y);
        
        sprintf(buff,"/hand/leftmost/finger/%d/position/z",j+1);
        oleap_bundleMessage(bundle,buff,position.z);
        
        sprintf(buff,"/hand/leftmost/finger/%d/direction/x",j+1);
        oleap_bundleMessage(bundle,buff,direction.x);
        
        sprintf(buff,"/hand/leftmost/finger/%d/direction/y",j+1);
        oleap_bundleMessage(bundle,buff,direction.y);
        
        sprintf(buff,"/hand/leftmost/finger/%d/direction/z",j+1);
        oleap_bundleMessage(bundle,buff,direction.z);
        
        sprintf(buff,"/hand/leftmost/finger/%d/velocity/x",j+1);
        oleap_bundleMessage(bundle,buff,velocity.x);
        
        sprintf(buff,"/hand/leftmost/finger/%d/velocity/y",j+1);
        oleap_bundleMessage(bundle,buff,velocity.y);
        
        sprintf(buff,"/hand/leftmost/finger/%d/velocity/z",j+1);
        oleap_bundleMessage(bundle,buff,velocity.z);
    
        sprintf(buff,"/hand/leftmost/finger/%d/direction/normalized/x",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().x);
        
        sprintf(buff,"/hand/leftmost/finger/%d/direction/normalized/y",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().y);
        
        sprintf(buff,"/hand/leftmost/finger/%d/direction/normalized/z",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().z);
        
        sprintf(buff,"/hand/leftmost/finger/%d/pitch/normalized/",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().pitch());
        
        sprintf(buff,"/hand/leftmost/finger/%d/yaw/normalized/",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().yaw());
        
        sprintf(buff,"/hand/leftmost/finger/%d/roll/normalized/",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().roll());
        
        sprintf(buff,"/hand/leftmost/finger/%d/width",j+1);
        oleap_bundleMessage(bundle,buff,width);
        
        sprintf(buff,"/hand/leftmost/finger/%d/length",j+1);
        oleap_bundleMessage(bundle,buff,length);
        
        sprintf(buff,"/hand/leftmost/isTool",j+1);
        oleap_bundleMessage(bundle,buff,isTool);
        
        for(size_t i = j+1; i < numFingers; i++)
        {
            sprintf(buff,"/hand/leftmost/finger/%d/distance/to/finger/%d",j+1,i+1);
            oleap_bundleMessage(bundle,buff,fingers[j].direction().distanceTo(fingers[i].direction()));
            
            sprintf(buff,"/hand/leftmost/finger/%d/angle/to/finger/%d",j+1,i+1);
            oleap_bundleMessage(bundle,buff,fingers[j].direction().angleTo((fingers[i].direction())));
            
        }
        
    }
    
    sprintf(buff,"/hand/rightmost/id");
    oleap_bundleMessage(bundle,buff,rightmost.id());
    
    sprintf(buff,"/hand/rightmost/palm/positiony/x");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().x);
    
    sprintf(buff,"/hand/rightmost/palm/positiony/y");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().y);
    
    sprintf(buff,"/hand/rightmost/palm/positiony/z");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().z);
    
    sprintf(buff,"/hand/rightmost/direction/x");
    oleap_bundleMessage(bundle,buff,rightmost.direction().x);
    
    sprintf(buff,"/hand/rightmost/direction/y");
    oleap_bundleMessage(bundle,buff,rightmost.direction().y);
    
    sprintf(buff,"/hand/rightmost/direction/z");
    oleap_bundleMessage(bundle,buff,rightmost.direction().z);
    
    sprintf(buff,"/hand/rightmost/pitch");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().pitch());
    
    sprintf(buff,"/hand/rightmost/yaw");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().yaw());
    
    sprintf(buff,"/hand/rightmost/roll");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().roll());
    
    sprintf(buff,"/hand/rightmost/palm/velocity/x");
    oleap_bundleMessage(bundle,buff,rightmost.palmVelocity().x);
    
    sprintf(buff,"/hand/rightmost/palm/velocity/y");
    oleap_bundleMessage(bundle,buff,rightmost.palmVelocity().y);
    
    sprintf(buff,"/hand/rightmost/palm/velocity/z");
    oleap_bundleMessage(bundle,buff,rightmost.palmVelocity().z);
    
    sprintf(buff,"/hand/rightmost/palm/sphere/center/x");
    oleap_bundleMessage(bundle,buff,rightmost.sphereCenter().x);
    
    sprintf(buff,"/hand/rightmost/palm/sphere/center/y");
    oleap_bundleMessage(bundle,buff,rightmost.sphereCenter().y);
    
    sprintf(buff,"/hand/rightmost/palm/sphere/center/z");
    oleap_bundleMessage(bundle,buff,rightmost.sphereCenter().z);
    
    sprintf(buff,"/hand/rightmost/palm/sphere/radius");
    oleap_bundleMessage(bundle,buff,rightmost.sphereRadius());
    
    sprintf(buff,"/hand/rightmost/palm/normal/x");
    oleap_bundleMessage(bundle,buff,rightmost.palmNormal().x);
    
    sprintf(buff,"/hand/rightmost/palm/normal/y");
    oleap_bundleMessage(bundle,buff,rightmost.palmNormal().y);
    
    sprintf(buff,"/hand/rightmost/palm/normal/z");
    oleap_bundleMessage(bundle,buff,rightmost.palmNormal().z);
    
    sprintf(buff,"/hand/rightmost/distance/from/leftmost");
    oleap_bundleMessage(bundle,buff,rightmost.palmPosition().angleTo(leftmost.palmPosition()));
    
    const Leap::FingerList &rightMostfingers = rightmost.fingers();
    const size_t rightMostnNumFingers = fingers.count();
    
    for(size_t j = 0; j < rightMostnNumFingers; j++)
    {
        const Leap::Finger &finger = rightMostfingers[j];
        const int32_t finger_id = finger.id();
        //const Leap::Ray& tip = finger.tip();
        const Leap::Vector direction = finger.direction();
        const Leap::Vector position = finger.tipPosition();
        const Leap::Vector velocity = finger.tipVelocity();
        const double width = finger.width();
        const double length = finger.length();
        const bool isTool = finger.isTool();
        
        sprintf(buff,"/hand/rightmost/finger/%d/hand_id",j+1);
        oleap_bundleMessage(bundle,buff,rightmost.id());
        
        sprintf(buff,"/hand/rightmost/finger/%d/finger_id",j+1);
        oleap_bundleMessage(bundle,buff,finger.id());
        
        sprintf(buff,"/hand/rightmost/finger/%d/position/x",j+1);
        oleap_bundleMessage(bundle,buff,position.x);
        
        sprintf(buff,"/hand/rightmost/finger/%d/position/y",j+1);
        oleap_bundleMessage(bundle,buff,position.y);
        
        sprintf(buff,"/hand/rightmost/finger/%d/position/z",j+1);
        oleap_bundleMessage(bundle,buff,position.z);
        
        sprintf(buff,"/hand/rightmost/finger/%d/direction/x",j+1);
        oleap_bundleMessage(bundle,buff,direction.x);
        
        sprintf(buff,"/hand/rightmost/finger/%d/direction/y",j+1);
        oleap_bundleMessage(bundle,buff,direction.y);
        
        sprintf(buff,"/hand/rightmost/finger/%d/direction/z",j+1);
        oleap_bundleMessage(bundle,buff,direction.z);
        
        sprintf(buff,"/hand/rightmost/finger/%d/velocity/x",j+1);
        oleap_bundleMessage(bundle,buff,velocity.x);
        
        sprintf(buff,"/hand/rightmost/finger/%d/velocity/y",j+1);
        oleap_bundleMessage(bundle,buff,velocity.y);
        
        sprintf(buff,"/hand/rightmost/finger/%d/velocity/z",j+1);
        oleap_bundleMessage(bundle,buff,velocity.z);
        
        sprintf(buff,"/hand/rightmost/finger/%d/direction/normalized/x",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().x);
        
        sprintf(buff,"/hand/rightmost/finger/%d/direction/normalized/y",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().y);
        
        sprintf(buff,"/hand/rightmost/finger/%d/direction/normalized/z",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().z);
        
        sprintf(buff,"/hand/rightmost/finger/%d/pitch/normalized/",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().pitch());
        
        sprintf(buff,"/hand/rightmost/finger/%d/yaw/normalized/",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().yaw());
        
        sprintf(buff,"/hand/rightmost/finger/%d/roll/normalized/",j+1);
        oleap_bundleMessage(bundle,buff,direction.normalized().roll());
        
        sprintf(buff,"/hand/rightmost/finger/%d/width",j+1);
        oleap_bundleMessage(bundle,buff,width);
        
        sprintf(buff,"/hand/rightmost/finger/%d/length",j+1);
        oleap_bundleMessage(bundle,buff,length);
        
        sprintf(buff,"/hand/rightmost/isTool",j+1);
        oleap_bundleMessage(bundle,buff,isTool);
        
        for(size_t i = j+1; i < numFingers; i++)
        {
            sprintf(buff,"/hand/rightmost/finger/%d/distance/to/finger/%d",j+1,i+1);
            oleap_bundleMessage(bundle,buff,fingers[j].direction().distanceTo(fingers[i].direction()));
            
            sprintf(buff,"/hand/rightmost/finger/%d/angle/to/finger/%d",j+1,i+1);
            oleap_bundleMessage(bundle,buff,fingers[j].direction().angleTo((fingers[i].direction())));
            
        }
        
    }
    
    
    //////////////////////////
    for(size_t i = 0; i < numHands; i++)
	{
		// Hand
        
        
		const Leap::Hand &hand = hands[i];
		const int32_t hand_id = hand.id();
                
		const Leap::FingerList &fingers = hand.fingers();
		const size_t numFingers = fingers.count();
        
        float pitch = hand.direction().pitch();
        float yaw = hand.direction().yaw();
        float roll = hand.palmNormal().roll();
        
        //Leap::Hand leftmost = ;
        
        

        //t_osc_bundle_u *bundle, string address, float datum

        sprintf(buff,"/hand/%d/id",i+1);
        oleap_bundleMessage(bundle,buff,hand_id);
        
        sprintf(buff,"/hand/%d/fingers",i+1);
        oleap_bundleMessage(bundle,buff,numFingers);
        
        sprintf(buff,"/hand/%d/pitch",i+1);
        oleap_bundleMessage(bundle,buff,pitch);
        
        sprintf(buff,"/hand/%d/yaw",i+1);
        oleap_bundleMessage(bundle,buff,yaw);
        
        sprintf(buff,"/hand/%d/roll",i+1);
        oleap_bundleMessage(bundle,buff,roll);
        

        
		for(size_t j = 0; j < numFingers; j++)
		{
			// Finger
			const Leap::Finger &finger = fingers[j];
			const int32_t finger_id = finger.id();
			//const Leap::Ray& tip = finger.tip();
			const Leap::Vector direction = finger.direction();
			const Leap::Vector position = finger.tipPosition();
			const Leap::Vector velocity = finger.tipVelocity();
			const double width = finger.width();
			const double length = finger.length();
			const bool isTool = finger.isTool();
            
            
            /*
            string names [14]= {“xpos”,”ypos”,”zpos”,”xdir”,”ydir”,”zdir”,”xvel”,”yvel”,”zvel,finger_length”,”istool_mes”};
            
            for(LOOP OVER FINGERS “J”)
            {
                t_osc_message_u *handdata[14];
                for(int i=0;i<14;i++)
                {
                    handdata[i]=osc_message_u_alloc();
                    osc_message_u_setAddress(handdata[i], “/”+j.toString()+ ”/” +names[i]);
                }	
                
            }
            */
            
            sprintf(buff,"/hand/%d/finger/%d/hand_id",i+1,j+1);
            oleap_bundleMessage(bundle,buff,hand_id);
            
            sprintf(buff,"/hand/%d/finger/%d/finger_id",i+1,j+1);
            oleap_bundleMessage(bundle,buff,finger_id);

            sprintf(buff,"/hand/%d/finger/%d/position/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,position.x);
            
            sprintf(buff,"/hand/%d/finger/%d/position/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,position.y);
            
            sprintf(buff,"/hand/%d/finger/%d/position/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,position.z);

            sprintf(buff,"/hand/%d/finger/%d/direction/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,direction.x);
            
            sprintf(buff,"/hand/%d/finger/%d/direction/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,direction.y);

            sprintf(buff,"/hand/%d/finger/%d/direction/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,direction.z);

            sprintf(buff,"/hand/%d/finger/%d/velocity/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,velocity.x);

            sprintf(buff,"/hand/%d/finger/%d/velocity/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,velocity.y);

            sprintf(buff,"/hand/%d/finger/%d/velocity/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,velocity.z);

            sprintf(buff,"/hand/%d/finger/%d/width",i+1,j+1);
            oleap_bundleMessage(bundle,buff,width);

            sprintf(buff,"/hand/%d/finger/%d/length",i+1,j+1);
            oleap_bundleMessage(bundle,buff,length);

            sprintf(buff,"/hand/%d/tool",i+1,j+1);
            oleap_bundleMessage(bundle,buff,isTool);

		}
        
        
        const Leap::Vector position = hand.palmPosition();
        const Leap::Vector direction = hand.direction();
        const Leap::Vector velocity = hand.palmVelocity();
        const Leap::Vector normal = hand.palmNormal();
        const Leap::Vector sphereCenter = hand.sphereCenter();
        const double sphereRadius = hand.sphereRadius();
        
        
        ///////////////////////////Palm Data!!!
        
        
        sprintf(buff,"/hand/%d/palm/hand_id",i+1);
        oleap_bundleMessage(bundle,buff,hand_id);
        
        sprintf(buff,"/hand/%d/palm/frame_id",i+1);
        oleap_bundleMessage(bundle,buff,frame_id);
        
        sprintf(buff,"/hand/%d/palm/position/x",i+1);
        oleap_bundleMessage(bundle,buff,position.x);
        
        sprintf(buff,"/hand/%d/palm/position/y",i+1);
        oleap_bundleMessage(bundle,buff,position.y);
        
        sprintf(buff,"/hand/%d/palm/position/z",i+1);
        oleap_bundleMessage(bundle,buff,position.z);
        
        sprintf(buff,"/hand/%d/palm/direction/x",i+1);
        oleap_bundleMessage(bundle,buff,direction.x);
        
        sprintf(buff,"/hand/%d/palm/direction/y",i+1);
        oleap_bundleMessage(bundle,buff,direction.y);
        
        sprintf(buff,"/hand/%d/palm/direction/z",i+1);
        oleap_bundleMessage(bundle,buff,direction.z);
        
        sprintf(buff,"/hand/%d/palm/velocity/x",i+1);
        oleap_bundleMessage(bundle,buff,velocity.x);
        
        sprintf(buff,"/hand/%d/palm/velocity/x",i+1);
        oleap_bundleMessage(bundle,buff,velocity.y);
        
        sprintf(buff,"/hand/%d/palm/velocity/z",i+1);
        oleap_bundleMessage(bundle,buff,velocity.z);
        
        sprintf(buff,"/hand/%d/palm/normal/x",i+1);
        oleap_bundleMessage(bundle,buff,normal.x);
        
        sprintf(buff,"/hand/%d/palm/normal/y",i+1);
        oleap_bundleMessage(bundle,buff,normal.y);
        
        sprintf(buff,"/hand/%d/palm/normal/z",i+1);
        oleap_bundleMessage(bundle,buff,normal.z);
        
        
        sprintf(buff,"/hand/%d/sphere/id",i);
        oleap_bundleMessage(bundle,buff,hand_id);
        
        sprintf(buff,"/hand/%d/sphere/frame_id",i);
        oleap_bundleMessage(bundle,buff,frame_id);
        
        sprintf(buff,"/hand/%d/sphere/center/x",i+1);
        oleap_bundleMessage(bundle,buff,sphereCenter.x);
        
        sprintf(buff,"/hand/%d/sphere/center/y",i+1);
        oleap_bundleMessage(bundle,buff,sphereCenter.y);
        
        sprintf(buff,"/hand/%d/sphere/center/z",i+1);
        oleap_bundleMessage(bundle,buff,sphereCenter.z);
        
        sprintf(buff,"/hand/%d/sphere/radius",i+1);
        oleap_bundleMessage(bundle,buff,sphereRadius);
    
        
        
        const Leap::PointableList pointables = frame.pointables();
        const int count = pointables.count();

        for(size_t j = 0; j < count; j++){

            sprintf(buff,"/hand/%d/pointable/%d/id",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).id());
            
            sprintf(buff,"/hand/%d/pointable/%d/length",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).length());
            
            sprintf(buff,"/hand/%d/pointable/%d/width",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).width());
        
            sprintf(buff,"/hand/%d/pointable/%d/direction/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).direction().x);
        
            sprintf(buff,"/hand/%d/pointable/%d/direction/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).direction().y);
        
            sprintf(buff,"/hand/%d/pointable/%d/direction/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).direction().z);
        
            sprintf(buff,"/hand/%d/pointable/%d/isFinger",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).isFinger());
            
            sprintf(buff,"/hand/%d/pointable/%d/isTool",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).isTool());
        
            sprintf(buff,"/hand/%d/pointable/%d/position/tip/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).tipPosition().x);
            
            sprintf(buff,"/hand/%d/pointable/%d/position/tip/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).tipPosition().y);
        
            sprintf(buff,"/hand/%d/pointable/%d/position/tip/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).tipPosition().z);
            
            sprintf(buff,"/hand/%d/pointable/%d/velocity/tip/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).tipVelocity().x);
            
            sprintf(buff,"/hand/%d/pointable/%d/velocity/tip/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).tipVelocity().y);
            
            sprintf(buff,"/hand/%d/pointable/%d/velocity/tip/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).tipVelocity().z);
     
            sprintf(buff,"/hand/%d/pointable/%d/position/stabilized/x",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).stabilizedTipPosition().x);
            
            sprintf(buff,"/hand/%d/pointable/%d/position/stabilized/y",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).stabilizedTipPosition().y);
            
            sprintf(buff,"/hand/%d/pointable/%d/position/stabilized/z",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).stabilizedTipPosition().z);
            
            sprintf(buff,"/hand/%d/pointable/%d/touchZone/distance",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).touchDistance());
            
            sprintf(buff,"/hand/%d/pointable/%d/touchZone",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).touchZone());
            
            sprintf(buff,"/hand/%d/pointable/%d/touchZone/touching",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).ZONE_TOUCHING);
            
            sprintf(buff,"/hand/%d/pointable/%d/touchZone/hovering",i+1,j+1);
            oleap_bundleMessage(bundle,buff,pointables.operator[](j).ZONE_HOVERING);
            
        }
        
        const Leap::InteractionBox box = frame.interactionBox();
        const Leap::Vector center = box.center();
        const Leap::Vector normalizedPosition = box.normalizePoint(position);
    
        sprintf(buff,"/hand/%d/interactionBox/depth",i+1);
        oleap_bundleMessage(bundle,buff,box.depth());
        
        sprintf(buff,"/hand/%d/interactionBox/center/x",i+1);
        oleap_bundleMessage(bundle,buff,center.x);
        
        sprintf(buff,"/hand/%d/interactionBox/center/y",i+1);
        oleap_bundleMessage(bundle,buff,center.y);
        
        sprintf(buff,"/hand/%d/interactionBox/center/z",i+1);
        oleap_bundleMessage(bundle,buff,center.z);
        
        sprintf(buff,"/hand/%d/interactionBox/position/normalized/x",i+1);
        oleap_bundleMessage(bundle,buff,normalizedPosition.x);
        
        sprintf(buff,"/hand/%d/interactionBox/position/normalized/y",i+1);
        oleap_bundleMessage(bundle,buff,normalizedPosition.y);
        
        sprintf(buff,"/hand/%d/interactionBox/position/normalized/z",i+1);
        oleap_bundleMessage(bundle,buff,normalizedPosition.z);
        
        sprintf(buff,"/hand/%d/interactionBox/width",i+1);
        oleap_bundleMessage(bundle,buff,box.width());
        
        sprintf(buff,"/hand/%d/interactionBox/height",i+1);
        oleap_bundleMessage(bundle,buff,box.height());
        
    }

    
    long bytes = 0;//length of byte array
    char* pointer = NULL;
    
    osc_bundle_u_serialize(bundle, &bytes, &pointer);//& is address of the variable
    //post("%ld %p", bytes,pointer);
    
    t_atom out[2];
    atom_setlong(out, bytes);
    atom_setlong(out+1, (long)pointer);
    outlet_anything(x->outlet, gensym("FullPacket"), 2, out);
    
    osc_bundle_u_free(bundle);//get rid of stuff in osc message
    osc_mem_free(pointer);//marks pointer address as being free (clear if you want to keep using same)
    

}

void *oleap_new(t_symbol *s, long argc, t_atom *argv)
{
	t_oleap *x = NULL;
    
	if (x = (t_oleap *)object_alloc((t_class *)oleap_class))
	{
		object_post((t_object *)x, "o.io.leap object for leap 8.0");
        
		x->frame_id_save = 0;
		x->outlet = outlet_new(x, NULL);
		
		// Create a controller 
		x->leap = new Leap::Controller;
	}
	return (x);
}
