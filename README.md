<h2>GameBoy DMG test ROM</h2>

<h3>Building the ROM</h3>
In order to build the ROM, follow these steps:

<h3>In common cases:</h3>
a) download <strong>RGBDS</strong> assembler
b) download </strong>BGB</strong> or <strong>SameBoy</strong> emulator for run .gb ROM after compile builds
c) You can compile each example by running the following script:

rgbasm -o <filename.obj> <filename.asm>
rgblink -o a.gb <filename.obj>
rgbfix -v -p0 a.gb
rm <filename.obj>

<strong>so building the file 01_minimal_template.asm as an example:</strong>

rgbasm -o 01_minimal_template.obj 01_minimal_template.asm
rgblink -o a.gb 01_minimal_template.obj
rgbfix -v -p0 a.gb
rm 01_minimal_template.obj
Now you can run the built game with bgb: Start up bgb and drag and drop / open the file.

<h3>In specific cases:</h3>

<h3>Windows:</h3>

Just run build.bat in CMD (working if you download and set up correct %PATH% variable for RGBDS).

<h3>Mac OS X</h3>

1. Make sure you have Xcode installed. If not, you can get it for free from the App Store.

2. Run the following in Terminal (make sure you have admin!):

   git clone https://github.com/bentley/rgbds

   cd rgbds

   sudo make install

   cd ..

3. Run make in Terminal.

<h3>Linux (UNTESTED):</h3>

1. Run "sudo apt-get install gcc bison git" in whatever terminal emulator you use (make sure you have admin!)

2. Once that's done, run the following (make sure you have admin!):

   git clone https://github.com/bentley/rgbds

   cd rgbds

   sudo make install

   cd ..

3. Run make in Terminal.
