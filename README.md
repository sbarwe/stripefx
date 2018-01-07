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
(git checkout init; git submodule update --init --recursive) 
npm install
cd node-red-template-embedded && npm install
npm install node-red-contrib-contextbrowser node-red-dashboard node-red-contrib-curve
ln -s ../flows.json flows.json
cd nodes
ln -s ../../node-red-contrib-openpixelcontrol node-red-contrib-openpixelcontrol
cd node-red-contrib-openpixelcontrol && npm install
```

# Start

You need to have an OPC-Server running with `sudo npm start`

```
cd node-red-template-embedded && npm start --node-red-template-embedded:listening_address=0.0.0.0
```
# Testing

Run an OPC Server from [node-openpixelcontrol](https://github.com/beyondscreen/node-openpixelcontrol),
[node-opc-server](https://github.com/bbx10/node-opc-server)
or simulate incl. OpenGL LEDs with [openpixelcontrol](https://github.com/zestyping/openpixelcontrol)

# Credits

The beat detection is based on the work of https://www.airtightinteractive.com/demos/js/uberviz/audioanalysis/

# TODO:
- Embded WS/OPC Bridge (socket.io / wsautoreconnect - see pi2)
- Embded WebAudio FFT Demo (Beatdetection / FFTP JSON Format)
