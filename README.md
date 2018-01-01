# stripefx
Music controlled effects for LED stripes.
# Setup

300 Pixel WS2812b Stripe wired to an RPI3 
<embed schematic here>
# Install

As some subprojects are in development too, this project 
includes git submodules. These will later be excluded and
imported as standard dependencies via package.json

```bash
git clone --recurse-submodules https://github.com/sbarwe/stripefx.git 
cd node-red-template-embedded && npm install
npm install node-red-contrib-contextbrowser node-red-contrib-dashboard node-red-contrib-curve
ln -s ../flows.json flows.json
ln -s ../node-red-contrib-openpixelcontrol ./nodes/node-red-contrib-openpixelcontrol
cd ./nodes/node-red-contrib-openpixelcontrol && npm install
```

# Start

You need to have an OPC-Server running

```
cd node-red-template-embedded && npm start --node-red-template-embedded:listening_address=0.0.0.0
```
# Testing

Run an OPC Server from [node-openpixelcontrol](https://github.com/beyondscreen/node-openpixelcontrol),
[node-opc-server](https://github.com/bbx10/node-opc-server)
or simulate incl. OpenGL LEDs with [openpixelcontrol](https://github.com/zestyping/openpixelcontrol)
# TODO:
- embed OPC Server
- Embded WS/OPC Bridge
- Embded WebAudio FFT Demo