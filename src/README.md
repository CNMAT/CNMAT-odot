# Odot for Max / MSP on Mac OS X and Windows, and PD on Mac OS X,
Windows, and Linux

## Prerequisites

The odot objects rely on two libraries, `libo`, and `libomax / libopd`,
as well as the Max and / or PD SDKs.

* Max / MSP SDK (only necessary if building externals for Max):
[https://github.com/cycling74/max-sdk-base](https://github.com/cycling74/max-sdk-base)
* PD source (only necessary if building externals for PD):
[https://github.com/pure-data/pure-data](https://github.com/pure-data/pure-data)
* libo: [https://github.com/CNMAT/libo](https://github.com/CNMAT/libo)
* libomax: [https://github.com/CNMAT/libomax](https://github.com/CNMAT/libomax)

Please see the instructions in the readme for building `libo` and `libomax`.

The dependencies should all be placed in the same folder as CNMAT-odot:

```
$ ls
CNMAT-odot libo libomax max-sdk pure-data
```

## Odot for Max / MSP

### Mac OS X

```
$ cd <path/to/CNMAT-odot/src>
$ make
```

Alternatively, the objects can be made in Xcode using by opening
`odot.xcodeproj`.

### Windows 10

The Windows 10 build is done using MinGW under MSYS2. Make sure
you have installed the 64-bit GCC toolchain
(`pacman -S mingw-w64-x86_64-toolchain`).
(If you have already successfully built `libo` and `libomax`,
you're good to go.)

```
$ cd <path/to/CNMAT/odot/src>
$ make win64
```

Note that 32-bit builds on Windows are not supported.

## Odot for PD

### Mac OS X

```
$ cd <path/to/CNMAT-odot/src>
$ make
```

### Windows 10

The Windows 10 build is done using MinGW under MSYS2. Make sure
you have installed the 64-bit GCC toolchain
(`pacman -S mingw-w64-x86_64-toolchain`).
(If you have already successfully built `libo` and `libomax`,
you're good to go.)

```
$ cd <path/to/CNMAT-odot/src/pd-build>
$ ./copy-src-files.sh
$ make
```

### Linux

```
$ cd <path/to/CNMAT-odot/src/pd-build>
$ ./copy-src-files.sh
$ make
```
