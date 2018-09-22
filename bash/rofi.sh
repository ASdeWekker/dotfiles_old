#!/usr/bin/env bash

bg-color=#2f343f
text-color=#f3f4f5
htext-color=#9575cd
a-a=#ff0000
b-b=#00ff00
c-c=#0000ff
d-d=#ffff00
e-e=#ff00ff
f-f=#00ffff
g-g=#ffffff
h-h=#000000

rofi -show run -lines 4 -eh 2 -width 100 -padding 800 -opacity "85" -bw 0 -font "Noto 22" -color-window "$a-a,$b-b,$c-c" -color-normal "$d-d,$e-e,$f-f,$g-g,$h-h"
