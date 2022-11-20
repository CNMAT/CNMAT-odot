
building luajit for intel/arm support from arm64 computer

clone from github (make submodule?)

[https://github.com/LuaJIT/LuaJIT](https://github.com/LuaJIT/LuaJIT)

start x86_64 bash:
```
arch -x86_64 zsh
```
then
```
export MACOSX_DEPLOYMENT_TARGET=10.14 
```
and
```
make
```
then

```
mv src/libluajit.a src/libluajit_x86_64.a
```

then open new terminal window (in arm mode)

```
export MACOSX_DEPLOYMENT_TARGET=10.14
make clean
make

lipo -create src/libluajit_x86_64.a src/libluajit.a -output src/libluajit_u.a
```
