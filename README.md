# PD-Injector

This is a USB power deliveray Power/Data injector. It has PCB USB-C input sockets and one output plug, the data lines from one input and the power lines from the other are combined and present at the output. Therefore you can have a data connection from your (not PD capable) computer, while having power from a power supply. 

The PCB should be ordered with a thickness of 0.6mm so the on PCB sockets fits USB-C cables. For the USB-C plug, any Board Edge connector should work e.g. Molex 1054440001

![](/Images/d2fe4e0e-456e-404b-abce-1e8039c4b8b3.jpeg)
![](/Images/7aef8c37-7e13-416b-a2e1-c49216dc3331.jpeg)
![](/Images/6a3d6f61-20b1-4007-9d57-50b90662fb77.jpeg)


#### This repo is forked from the PD Buddy Wye.
[https://git.clarahobbs.com/pd-buddy/pd-buddy-wye](https://git.clarahobbs.com/pd-buddy/pd-buddy-wye)

Original README:

## PD Buddy Wye

Power/data splitter for PD Buddy Sink.

This PCB must be 0.6 mm thick so the USB Type-C card edge receptacles work.
Copper thickness can be 1 or 2 oz, ENIG finish preferred.

The PCB is made with [KiCad][], so you'll need that if you want to make any
changes.  Several PCB fabricators accept KiCad PCB files directly now, but if
you intend to order from one that does not, you'll need KiCad to plot the
Gerbers.

KiCad 4 supports loading footprint libraries from Git repositories, but its
support for doing the same with symbol libraries is lacking.  To address this,
I added the variable `_KI_LIB_GIT`.  Set this path in the main KiCad window
(Preferences > Configure Paths) to point to a local copy of the
[kicad-library][] repository to ensure that you're using the latest schematic
libraries.

[KiCad]: http://kicad-pcb.org/
[kicad-library]: https://github.com/KiCad/kicad-library/

### License

PD Buddy Wye is Copyright (C) 2017-2018 Clayton G. Hobbs, and made available
under the CERN Open Hardware Licence v1.2.  See LICENSE for more information.
