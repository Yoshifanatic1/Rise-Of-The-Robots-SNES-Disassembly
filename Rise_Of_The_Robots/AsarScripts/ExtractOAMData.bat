@echo off
setlocal EnableDelayedExpansion

set PATH="../Global"

asar.exe ExtractOAMData.asm ROTR.sfc > output1.asm

pause
asar.exe output1.asm ROTR.sfc > output2.asm

pause
exit