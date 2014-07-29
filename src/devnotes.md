# CNMAT Max/MSP external development


### Building the odot objects
1. Check out the following repositories:
   * [https://github.com/CNMAT/CNMAT-odot](https://github.com/CNMAT/CNMAT-odot)
   * [https://github.com/CNMAT/libo](https://github.com/CNMAT/libo)
   * [https://github.com/CNMAT/libomax](https://github.com/CNMAT/libomax)
   * [https://github.com/Cycling74/max6-sdk](https://github.com/Cycling74/max6-sdk)
   * all of the above should be in the same folder
2. Install flex and bison
   Compiling libo requires flex >2.5 and bison >2.4 to be installed. The OS X developer tools come with older versions of flex and bison which will not work. 
   * Download the latest version of flex: [http://flex.sourceforge.net](http://flex.sourceforge.net)
   * Download the latest version of bison: [http://www.gnu.org/software/bison/](http://www.gnu.org/software/bison/)
   * Follow the instructions that come with the source code---it should be the usual `./configure; make; sudo make install`.
   * Be aware that Apple's versions of flex and bison are installed in `/usr/bin` and that the ones you install will likely end up in `/usr/local/bin`, so you will either have to remove Apple's, or adjust your path accordingly.
3. Build `libo`
   * Mac:
     1. Add the following lines to your .profile, changing 8 to match the version of your OS
   	    * `MAC_SYSROOT = MacOSX10.8.sdk`      
   	    * `export MAC_SYSROOT`
     2. Execute the following commands at the command line:
   	    * `$ cd <path/to/libo>`
   	    * `$ make`
   * Windows:
     1. **Coming soon** - we use `cygwin` for the GCC - use `make win` to compile windows libraries.
4. Build libomax
   * `$ cd <path/to/libomax>`
   * `$ make`
5. Build the odot objects
   * `$ cd <path/to/CNMAT-odot>`
   * `$ make`
   * (Xcode is required to build on Mac OS X)

### Adding an object to the odot objects
1. Make a folder in CNMAT-odot for your object.
2. Put a copy of your source code in the folder and copy an Info.plist file from one of the other odot objects into the folder.
   * **The name of your .c file should be the same as the folder that contains it.**
3. Open `odot.xcodeproj`
4. Click on the odot project at the top of the leftmost pane (if you do not see it, use `command-0` keyboard shortcut to toggle it on and off)
   <!-- TODO: include image -->
5. Select a target in the pane just to the right of the leftmost pane and duplicate it (`command-d`).
6. Double click on the copy of the target you just made and rename it to the name of your object.
7. Find the source code file in the left pane that corresponds to the target that you duplicated (the original, not the copy that was made).
	* Select it and you will see a window in the rightmost pane (`apple-alt-0` to toggle the pane) called `Target Membership`. Make sure that you unselect the target that you just created, so that the file is only a member of the target that it belongs to.
8. Drag your .c file into the list of source files in the left pane. When asked what target it should belong to, check the target you just created and unselect any others.
9. Take a deep breath and maybe stand up and stretch a bit.
10. Select your target in the pane just to the right of the leftmost pane.
11. In the Build Settings tab, find `Info.plist File` and change its value to `$(inherited)`. When you click out of that dialog, you should see `<o.myobj>/Info.plist`. If for some reason you don't, type it in manually.
12. In the same window, find `Product Name` and change its value to the name of your object
13. Click the Info tab at the top of the middle pane and change the value of `Bundle identifier` to `edu.cnmat.berkeley.o.<myobj>`
14. In the same Info tab, change the value of `Executable file` to `o.<myobj>`
15. Not done yet---maybe you should have a coffee?
16. In the top menu, select `Product->Scheme->Manage Schemes`. In the window that appears, you'll find a scheme with the name of the target that you duplicated with the word copy after it. Select it and hit the minus button in the lower left corner.
17. Hit `Autocreate Schemes Now` at the top right of that window.
18. Find the scheme for your object (probably at the bottom), select it, and hit `Edit...` at the bottom left of the window.
19. Select `Run` in the leftmost pane and make sure that `Build Configuration` is set to `Release`. Click `Ok`.
20. Select `Product->Scheme->o.<myobj>`.
21. Select `Product->Build` or hit `command-b` (A useful keyboard shortcut for building with the Release configuration is `command-shift-i`.)
