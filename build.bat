@echo off

echo Assembling...
rgbasm -o helloW2.obj -p 255 main.asm
echo Linking...
rgblink -p 255 -o helloW2.gb -n helloW2.sym helloW2.obj
echo Fixing...
rgbfix -v -p 255 helloW2.gb
echo Build complete.
