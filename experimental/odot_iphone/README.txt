Changelog:
  21st June 2013:
    I forgot about the button that works for all apps, so I need
    to look through those to make sure everything works. So things
    to do:
      Make sure old functionality still works
      Add patcher args instead of loadmess (so order doesn't matter)
      Presentation mode, so that objects can be placed in bpatcher.
  
  Update Check on 20th June 2013:
    Processing: Everything works, but I changed the sketch to reflect
                what was in the Max patch. So /pictslider/x/1 changed
                to /pictslider/1/x and same goes for the y.
    TouchOSC:
    OSCemote: Everything works.
    iOSC: Everything works.
    Mrmr: Everything works. I had to change the decrypt sub patches,
          so that the default jedermann is displayed instead of the id
          specific to my phone.

File Layout:
  app_specific: Holds patches for specific apps.
  osc_controls_old: I think is is a duplication of osc_controls_receive
    so I am holding on to these just in case they are not.
  osc_controls_receive: Receiving objects from apps, but not specific to
    one or another.
  osc_controls_send: Objects that send data back to apps.

Initial Notes August 2013:
touchosc (simple)
	multislider->/tab/fader# num (0-1)
	toggle->/tab/toggle# num (0 1)
	button->/tab/push# num (0 1)
	pictslider->/tab/xy num num (0,0-1,1)
		(0, 0) (1, 0) (2, 0)
		(0, 1) (1, 1) (2, 1)
		(0, 2) (1, 2) (2, 2)
	accelerometer->/accxyz
	special->/tab/multitoggle/x/y num (1,1-8,8)
		(1, 1) (2, 1) (3, 1)
		(1, 2) (2, 2) (2, 3)
		(1, 3) (2, 3) (3, 3) 
	

oscemote (sliders)
	opening message:/hello "OSCemote...
	multislider->/slider/# num (0-1)
	radiogroup->/segmented/# "letter" (A, B, et cetera)
	toggle->/switch/# num (0 1)
	button->/button/letter# num (0 1)
		A1 A2 A3
		B1 B2 B3
		C1 C2 C3
	pictslider->/tuio/2Dcur "set" # num num num num num (0,0-1,1)
		(0, 0) (1, 0) (2, 0)
		(0, 1) (1, 1) (2, 1)
		(0, 2) (1, 2) (2, 2)
	accelerometer->acceleration/xyz num num num (-3-3)

iosc (test {slider with pictslider})
	multislider->/osc/slider# num
	pictslider->/osc/padx num (0-1)
		        /osc/pady num (0-1)
		(0, 0) (1, 0) (2, 0)
		(0, 1) (1, 1) (2, 1)
		(0, 2) (1, 2) (2, 2)
	button->/osc/button# num (0 1)

mrmr (maxMSP_demo bank4) can set to generic as jedermann
	opening message: /mrmrPresent:…
	exit message: /mrmrNotPresent:...
	multislider->/mrmr/slider/horizontal/#/SamMansfieldPhone4 num (0-1000)
	toggle/button->/mrmr/pushbutton/#/SamMansfieldPhone4 (0 1000)
	pictslider->/mrmr/tactilezoneX/#/SamMansfieldPhone4 (0-1000)
		        /mrmr/tactilezoneY/#/SamMansfieldPhone4 (0-1000)
		(0, 0) (1, 0) (2, 0)
		(0, 1) (1, 1) (2, 1)
		(0, 2) (1, 2) (2, 2)
