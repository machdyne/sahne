# Sahne SOC

This is an experimental [LiteX](https://github.com/enjoy-digital/litex)-based System-on-a-Chip (SOC) for Machdyne / Lone Dynamics FPGA boards.

It currently only includes a simple test for the framebuffer.

Only [Lakritz](https://github.com/machdyne/lakritz) is currently supported but adding other boards supported by [litex-boards](https://github.com/litex-hub/litex-boards) should be just a matter of copying them to the targets directory and updating the Makefile.

## Building

```
$ make
```

## Running

```
$ openFPGALoader -c dirtyJtag build/machdyne_lakritz/gateware/machdyne_lakritz.bit
$ litex_term /dev/ttyACM1 --speed 115200 --kernel boot/boot.bin --serialboot
```
