# Just This Repository Notice

Yes. This repository isn't main line.

# Fork Summary

- Mixed Dvorak and JIS keyboard layout config.
- Fan made case data. Format only `*.svg` and made with Inkscape on Ubuntu.
  - "SeventhSky" is very good game; It made by "TANAKA U" with **Flash** .
  - Many and nested clones... But, It is edited to be pleasant to the touch.

- If you want Numeric pad's Enter keycap, maybe useful [this 3D model](https://www.thingiverse.com/thing:7300157) .

## External Resource

- [Just for My ErgoDash - Thingiverse](https://www.thingiverse.com/manzyun/collections/43889478/things)

# Just For Me Notice

Create case on fabric space about [SHARE Garage](https://sharegarage.jp)'s [Rayjet](https://www.rayjetlaser.com)CNC:

Order send from "Adobe Illustrator CS6".
Checking under bullets on SVG file:

- Strokes bold of cut order: 0.001mm
- Can use "clipping" for curving

------

# Notice

2019/5/5 にファームウェアをアップデートしました。  
それ以前にハードウェアを作製されていた方はアップデートの必要はありませんが、  
アップデートした方は[ビルドガイドの最終項](https://github.com/omkbd/ErgoDash/blob/master/Doc/build.md#12-firmware%E3%81%AE%E6%9B%B8%E3%81%8D%E8%BE%BC%E3%81%BF)を参照してください。

The firmware has been updated to 5/5/2019.  
If you have previously created hardware, you do not need to update, but if you have updated, please refer to [the last section of the build guide](https://github.com/omkbd/ErgoDash/blob/master/Doc/build-en.md#12-firmware).

# ErgoDash

![ErgoDash](https://github.com/omkbd/picture/blob/master/Ergodash.jpg)

[Japanese Read me](https://github.com/omkbd/ErgoDash/blob/master/Doc/ergodash_jp.md)

# Layout

![layout](https://github.com/omkbd/picture/blob/master/ergodash-layout.png)

# Parts

[ErgoDash PCB](https://github.com/omkbd/ErgoDash/tree/master/PCB)
 × 2  
[ErgoDash Case](https://github.com/omkbd/ErgoDash/tree/master/Case)
 × 2  
Switch (MX-compatible and Alps switches are supported) × 66-70  
Keycap × 66-70  
1N4148 diode × 66-70  
Arduino Pro Micro × 2  
TRRS jack MJ-4PP-9 × 2  
MJTP1117 switch × 2  
TRRS cable × 1  
Micro USB cable × 1  
M2×5mm screw × 22  
M2×8mm screw × 6  
M2×6mm spacer × 14  
Rubber feet × 8

---Option---  
LED WS2812B × 24  
LED 3mm × 66-70  
470Ω resistor × 66-70  
1kΩ resistor × 2  
NchMOSFET IRLML6344TRPbF × 2  

# Firmware

The ErgoDash uses QMK for its firmware, and the code for it is here:
[QMK - ErgoDash directory](https://github.com/qmk/qmk_firmware/tree/master/keyboards/ergodash)
.  


# Build Guide

[Japanese Build Guide](https://github.com/omkbd/ErgoDash/blob/master/Doc/build.md)  
[English Build Guide](https://github.com/omkbd/ErgoDash/blob/master/Doc/build-en.md)
