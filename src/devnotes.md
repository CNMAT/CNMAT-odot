# CNMAT Max/MSP external development
# Mac
1. Check out the following repositories:
   * [https://github.com/CNMAT/CNMAT-odot](https://github.com/CNMAT/CNMAT-odot)
   * [https://github.com/CNMAT/libo](https://github.com/CNMAT/libo)
   * [https://github.com/CNMAT/libomax](https://github.com/CNMAT/libomax)
   * [https://github.com/Cycling74/max-sdk](https://github.com/Cycling74/max-sdk)
   * all of the above should be in the same folder
2. Install flex and bison
   Compiling libo requires flex >2.5 and bison >2.4 to be installed. The OS X developer tools come with older versions of flex and bison which will not work.
   * Download the latest version of flex: [http://flex.sourceforge.net](http://flex.sourceforge.net)
   * Download the latest version of bison: [http://www.gnu.org/software/bison/](http://www.gnu.org/software/bison/)
   * Follow the instructions that come with the source code---it should be the usual `./configure; make; sudo make install`.
   * Be aware that Apple's versions of flex and bison are installed in `/usr/bin` and that the ones you install will likely end up in `/usr/local/bin`, so you will either have to remove Apple's, or adjust your path accordingly.
3. Build `libo`
     1. Add the following lines to your .profile, changing 8 to match the version of your OS
   	    * `MAC_SYSROOT = MacOSX10.8.sdk`      
   	    * `export MAC_SYSROOT`
     2. Execute the following commands at the command line:
   	    * `$ cd <path/to/libo>`
   	    * `$ make`
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

# Windows
For building on Windows, we are working on Windows 10, using the MinGW-w64 complier on Cygwin64, with separate tool chains for 32 and 64 bit externals.

### 1. Cygwin64
Down and install Cygwin64, available [here](http://www.cygwin.com/install.html).

The Cygwin installation/setup program allows you to select install packages.

Once you arrive at the `Select Packages` page, set `View` to `Full`, and then search for the following packages. You will need to scroll down to find them sometimes.

select and install the following:
* `make` : The GNU Version of the make utility.
* `gcc` : GNU complier collection
* `mingw64-x86_64-gcc-core` : GGC for Win64 toolchain
* `mingw64-i686-gcc-core` : GGC for Win32 toolchain
* `git` : Distributed version control system
* `wget` : Utility to retrieve files from the WWW via HTTP and FTP
* `flex` : A fast lexical analyzer generator
* `bison` : GNU yacc-compatible parser generator
* `zip` : Info-ZIP compression utility (for making the CNMAT-odot release)

(to select for installation, click the `Skip` icon which should then change to the version number)

On the following page, make sure `select required packages` is enabled.


### 2. GitHub repositories

```
git clone https://github.com/CNMAT/libo
git clone https://github.com/CNMAT/libomax
git clone https://github.com/CNMAT/CNMAT-odot
git clone https://github.com/Cycling74/max-sdk
```

### 3. libo and libomax

#### libo
To build for Windows 64bit, enter the `libo` directory and do:
```
make win64
```
This will compile the library with the win64 tool chain, and create a `libo.a` file in the `/libo/libs/x86_64` folder.

Then to build the Windows 32bit version of the library do:
```
make clean
make win
```
This will  compile the library with the win64 tool chain, and create a `libo.a` file in the `/libo/libs/i686` folder.

Note we need to `make clean` before building the new version, otherwise the library will be created with the already complied `.o` files.

#### libomax

Then do the same for the `libomax` library: enter the `libomax` directory and do:
```
make win64
```
This will  compile the library with the win64 tool chain, and create a `libomax.a` file in the `/libomax/libs/x86_64` folder.

Then to build the Windows 32bit version of the library do:
```
make clean
make win
```
This will  compile the library with the win64 tool chain, and create a `libomax.a` file in the `/libomax/libs/i686` folder.


### 4. build CNMAT-odot

Finally we are ready to build the CNMAT-odot for Windows 64 and 32 bit!

To build for Windows 64bit, enter the `CNMAT-odot/src` directory and do:
```
make clean
make win64
```

To build for Windows 32bit, while in the `CNMAT-odot/src` directory do:
```
make win
```

The built objects will be in the `/build/Release` folder.

Note that we don't need/want to `make clean` this time, since the Windows makefile routine cleans out the `.o` files but leaves the other platform Max object files (i.e. when building `.mxe64` the script leaves the `.mxe` objects in place). For the final step of making the release, it's simpler to have both platforms pre-built.

There are two scripts in the top-level `CNMAT-odot` directory for creating the release for Windows 32 and 64 bit:
`./make-release-win.sh` and `./make-release-win64.sh`.
