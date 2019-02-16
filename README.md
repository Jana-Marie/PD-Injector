# PD Buddy Wye

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

## License

PD Buddy Wye is Copyright (C) 2017-2018 Clayton G. Hobbs, and made available
under the CERN Open Hardware Licence v1.2.  See LICENSE for more information.
# PD-Injector
