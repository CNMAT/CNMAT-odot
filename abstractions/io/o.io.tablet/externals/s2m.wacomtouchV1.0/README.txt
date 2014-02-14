bug reports : gondre@lma.cnrs-mrs.fr

If s2m.wacomtouch does not work "out of the box" :


A - check that your tablet supports "touch point data" : http://www.wacomeng.com/touch/WacomFeelMulti-TouchFAQ.htm#_Toc331140757

B - be sure you installed the appropriate driver from wacom.


C - be sure the tablet is plugged directly to the computer and
    not throught the keyboard neither a usb hub.


D - If you got xcode installed, you can check if the bamboo touch is
    correctly working within your system by trying the following app from wacom :
    http://www.wacomeng.com/touch/MacMulti-Touch_Sample_Code.zip
   
   (uncompress it, open the "MultiTouch.xcodeproj" file with xcode, and click the
   "build and run" button).
   In the app, click "initialize", then select you tab which should have appeared,
   and clic "register finger callback".
   In the newly opened window, you should see your fingers while you're moving them
   on the bamboo.
   If not, please try to reinstall the drivers by following the steps described below (D).
   But if this app works properly, then s2m.wacomtouch should work too.


E - Some users that had several wacom drivers installed did not have the touch
   fonctionnality properly working at first.
   The following steps for re-installing the drivers should fix it :
	
   1 - remove all installed drivers :
    run "/Applications/bamboo/bamboo utility.app"
    remove the preferences : check "All users" and click "remove"
    and the sotfware : click "remove" in the "Tablet software" section.

    run "/Applications/wacom tablet/tablet utility.app"
    remove the preferences : check "All users" and click "remove"
    and the sotfware : click "remove" in the "Tablet software" section.

   2 - restart your computer.

   3 - download the latest drivers from wacom and install them IN THE FOLLOWING ORDER :

     - first, if you need it, any cintiq and intuos driver (as of 17/07/2012 : WacomTablet_6.3.1w2)
     - and then only the bamboo touch driver (as of 17/07/2012 : cons526-3_int)

   4 - plug the tablet and cross your fingers :)

-----------

