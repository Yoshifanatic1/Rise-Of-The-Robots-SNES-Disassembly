@echo off

set PATH="../../Global"
set Input1=
set asarVer=asar
set ROMName=
set ROMName0=ROTR_USA.sfc
set ROMName1=ROTR_PAL.sfc
set MemMap=hirom

setlocal EnableDelayedExpansion

echo To fully extract all files for supported ROMs, you'll need one of the following ROMs in each group:
echo - Graphics: USA
echo - Tilemaps: USA
echo - Palettes: USA
echo - Garbage Data: USA
echo - Samples: USA
echo - Music: USA
echo.

:Start
echo Place a headerless ROTR ROM with one of the following names in this folder, then type the number representing what ROM to extract from.
echo 0 = "%ROMName0%" (ROTR USA)
echo 1 = "%ROMName1%" (ROTR PAL)

:Mode
set /p Input1=""

if "%Input1%" equ "0" goto :USA
if "%Input1%" equ "1" goto :PAL

echo %Input1% is not a valid mode.
goto :Mode

:ROMNotFound
echo %ROMName% is not in the folder or is not named correctly^^!
goto :Mode

:USA
set ROMName=%ROMName0%
if not exist %ROMName0% goto :ROMNotFound

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set FMVLoc="../Graphics/Compressed/FMV"
set DSGFXLoc="../Graphics/DynamicSprites"
set UTilemapLoc="../Tilemaps"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set UnknownDatLoc="../UnknownData"
set MusicLoc="../SPC700/Music"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0001
goto :BeginExtract

:PAL
echo The PAL ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName1%
if not exist %ROMName1% goto :ROMNotFound

set UGFXLoc="../Graphics"
set CGFXLoc="../Graphics/Compressed"
set FMVLoc="../Graphics/Compressed/FMV"
set DSGFXLoc="../Graphics/DynamicSprites"
set UTilemapLoc="../Tilemaps"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set UnknownDatLoc="../UnknownData"
set MusicLoc="../SPC700/Music"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0002
goto :BeginExtract

:BeginExtract
set i=0
set PointerSet=0
echo.
echo.---------------------------------------------------------------------------
echo.
echo Generating temporary ROM
%asarVer% --fix-checksum=off --no-title-check --define ROMVer="%ROMBit%" "AssetPointersAndFiles.asm" TEMP.sfc

set "file=TEMP.sfc"
FOR %%A IN (%file%) DO set filesize=%%~zA

if %filesize% neq 0 goto :ValidFile
echo.
echo.Something is wrong with AssetPointersAndFiles.asm. Fix the above errors before running this script again.
echo.
echo.---------------------------------------------------------------------------
echo.
goto :Start

:ValidFile
CALL :GetLoopIndex
set MaxFileTypes=%Length%
set PointerSet=6

:GetNewLoopIndex
CALL :GetLoopIndex

:ExtractLoop
if %i% equ %Length% goto :NewFileType

CALL :GetGFXFileName
CALL :ExtractFile
set /a i = %i%+1
if exist TEMP1.asm del TEMP1.asm
if exist TEMP2.asm del TEMP2.asm
if exist TEMP3.txt del TEMP3.txt
goto :ExtractLoop

:NewFileType
echo Moving extracted files to appropriate locations
if %PointerSet% equ 6 goto :MoveUGFX
if %PointerSet% equ 12 goto :MoveCGFX
if %PointerSet% equ 18 goto :MoveFMV
if %PointerSet% equ 24 goto :MoveDSGFX
if %PointerSet% equ 30 goto :MoveUTilemap
if %PointerSet% equ 36 goto :MovePalettes
if %PointerSet% equ 42 goto :MoveGarbage
if %PointerSet% equ 48 goto :MoveUnknownData
if %PointerSet% equ 54 goto :MoveMusic
if %PointerSet% equ 60 goto :MoveBRR
goto :MoveNothing

:MoveUGFX
move "*.bin" %UGFXLoc%
goto :MoveNothing

:MoveCGFX
move "*.bin" %CGFXLoc%
move "*.rnc" %CGFXLoc%
goto :MoveNothing

:MoveFMV
move "*.rnc" %FMVLoc%
goto :MoveNothing

:MoveDSGFX
move "*.bin" %DSGFXLoc%
goto :MoveNothing

:MoveUTilemap
move "*.bin" %UTilemapLoc%
goto :MoveNothing

:MovePalettes
move "*.tpl" %PaletteLoc%
goto :MoveNothing

:MoveGarbage
move "*.bin" %GarbageDatLoc%
goto :MoveNothing

:MoveUnknownData
move "*.rnc" %UnknownDatLoc%
goto :MoveNothing

:MoveMusic
move "*.bin" %MusicLoc%
goto :MoveNothing

:MoveBRR
move "*.brr" %BrrLoc%
goto :MoveNothing

:MoveNothing
set i=0
set /a PointerSet = %PointerSet%+6
if %PointerSet% neq %MaxFileTypes% goto :GetNewLoopIndex
if exist TEMP.sfc del TEMP.sfc

if exist AssetsExtracted.txt goto :AssetsExtracted
echo.This file is used to tell the assembly script that the assets have been extracted. Do not delete this file. > AssetsExtracted.txt
:AssetsExtracted
echo.
echo Done^^!
echo.
echo.---------------------------------------------------------------------------
echo.
goto :Start

EXIT /B %ERRORLEVEL% 

:ExtractFile
echo:%MemMap% >> TEMP1.asm
echo:org $C00000 >> TEMP1.asm
echo:Main: >> TEMP1.asm
echo:check bankcross off >> TEMP1.asm
echo:^^!ExtractionType #= readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$00+(%i%*$0C))) >> TEMP1.asm
echo:if ^^!ExtractionType == $000000 >> TEMP1.asm
echo:^^!ExtractionDataPointer #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:^^!FilesToCombine #= readfile1("TEMP.sfc", ^^!ExtractionDataPointer) >> TEMP1.asm
echo:^^!LoopCounter #= 0 >> TEMP1.asm
echo:while ^^!LoopCounter ^^!= ^^!FilesToCombine >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$03+(^^!LoopCounter*$06))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$06+(^^!LoopCounter*$06))) >> TEMP1.asm
echo:incbin %ROMName%:^^!OffsetStart..^^!OffsetEnd >> TEMP1.asm
echo:^^!LoopCounter #= ^^!LoopCounter+$01 >> TEMP1.asm
echo:endwhile >> TEMP1.asm

echo:elseif ^^!ExtractionType == $000001 >> TEMP1.asm
echo:^^!ExtractionDataPointer #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:^^!EndPaddingBytes #= readfile2("TEMP.sfc", ^^!ExtractionDataPointer+$01) >> TEMP1.asm
echo:^^!FilesToCombine #= readfile1("TEMP.sfc", ^^!ExtractionDataPointer) >> TEMP1.asm
echo:^^!LoopCounter #= 0 >> TEMP1.asm
echo:db "TPL",$02 >> TEMP1.asm
echo:while ^^!LoopCounter ^^!= ^^!FilesToCombine >> TEMP1.asm
echo:^^!SkipBytes #= readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$03+(^^!LoopCounter*$09)) >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$06+(^^!LoopCounter*$09))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$09+(^^!LoopCounter*$09))) >> TEMP1.asm
echo:fillbyte $00 : fill ^^!SkipBytes >> TEMP1.asm
echo:incbin %ROMName%:^^!OffsetStart..^^!OffsetEnd >> TEMP1.asm
echo:^^!LoopCounter #= ^^!LoopCounter+$01 >> TEMP1.asm
echo:endwhile >> TEMP1.asm
echo:fillbyte $00 : fill ^^!EndPaddingBytes >> TEMP1.asm

echo:elseif ^^!ExtractionType ^<= $0000FF >> TEMP1.asm
echo:print "Game specific asset setting $",hex(^^!ExtractionType, 2)," is undefined." >> TEMP1.asm

echo:elseif ^^!ExtractionType ^<= $007FFF >> TEMP1.asm
echo:^^!ExtractionDataPointer #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:^^!FilesToCombine #= readfile1("TEMP.sfc", ^^!ExtractionDataPointer) >> TEMP1.asm
echo:^^!FileType #= readfile2("TEMP.sfc", ^^!ExtractionDataPointer+$01) >> TEMP1.asm
echo:^^!LoopCounter #= 0 >> TEMP1.asm
echo:dd snestopc(DataPointers) : dw ^^!FilesToCombine : dw ^^!FileType : db "ROTR    " : db "RDC V1.0.0" >> TEMP1.asm
echo:db $00,$00,$00,$00,$00,$00 >> TEMP1.asm
echo:db "Unknown RDC File" >> TEMP1.asm
echo:DataPointers: >> TEMP1.asm
echo:^^!CurrentFilePtr #= (^^!FilesToCombine*$10)+datasize(Main) >> TEMP1.asm
echo:while ^^!LoopCounter ^^!= ^^!FilesToCombine >> TEMP1.asm
echo:^^!OffsetStart #= readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$03+(^^!LoopCounter*$06)) >> TEMP1.asm
echo:^^!OffsetEnd #= readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$06+(^^!LoopCounter*$06)) >> TEMP1.asm
echo:^^!FileSize #= ^^!OffsetEnd-^^!OffsetStart >> TEMP1.asm
echo:dd $00000000,$00000000,^^!CurrentFilePtr,^^!FileSize >> TEMP1.asm
echo:^^!LoopCounter #= ^^!LoopCounter+$01 >> TEMP1.asm
echo:^^!CurrentFilePtr #= ^^!CurrentFilePtr+^^!FileSize >> TEMP1.asm
echo:endwhile >> TEMP1.asm
echo:^^!LoopCounter #= 0 >> TEMP1.asm
echo:while ^^!LoopCounter ^^!= ^^!FilesToCombine >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$03+(^^!LoopCounter*$06))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", ^^!ExtractionDataPointer+$06+(^^!LoopCounter*$06))) >> TEMP1.asm
echo:incbin %ROMName%:^^!OffsetStart..^^!OffsetEnd >> TEMP1.asm
echo:^^!LoopCounter #= ^^!LoopCounter+$01 >> TEMP1.asm
echo:endwhile >> TEMP1.asm

echo:else >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$00+(%i%*$0C)))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:incbin %ROMName%:^^!OffsetStart..^^!OffsetEnd >> TEMP1.asm
echo:endif >> TEMP1.asm

echo Extracting %FileName%
%asarVer% --fix-checksum=off --no-title-check "TEMP1.asm" %FileName%
EXIT /B 0

:GetGFXFileName
echo:%MemMap% >> TEMP2.asm
echo:org $C00000 >> TEMP2.asm
echo:^^!FileNameStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$06+(%i%*$0C)))) >> TEMP2.asm
echo:^^!FileNameEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$09+(%i%*$0C)))) >> TEMP2.asm
echo:incbin TEMP.sfc:^^!FileNameStart..^^!FileNameEnd >> TEMP2.asm
%asarVer% --fix-checksum=off --no-title-check "TEMP2.asm" TEMP3.txt

for /f "delims=" %%x in (TEMP3.txt) do set FileName=%%x

EXIT /B 0

:GetLoopIndex
echo:%MemMap% >> TEMP4.asm
echo:org $C00000 >> TEMP4.asm
echo:^^!OnesDigit = 0 >> TEMP4.asm
echo:^^!TensDigit = 0 >> TEMP4.asm
echo:^^!HundredsDigit = 0 >> TEMP4.asm
echo:^^!ThousandsDigit = 0 >> TEMP4.asm
echo:^^!TensDigitSet = 0 >> TEMP4.asm
echo:^^!HundredsDigitSet = 0 >> TEMP4.asm
echo:^^!ThousandsDigitSet = 0 >> TEMP4.asm
echo:^^!Offset #= readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%+$03)) >> TEMP4.asm
echo:while ^^!Offset ^> 0 >> TEMP4.asm
::echo:print hex(^^!Offset) >> TEMP4.asm
echo:^^!OnesDigit #= ^^!OnesDigit+1 >> TEMP4.asm
echo:if ^^!OnesDigit == 10 >> TEMP4.asm
echo:^^!OnesDigit #= 0 >> TEMP4.asm
echo:^^!TensDigit #= ^^!TensDigit+1 >> TEMP4.asm
echo:^^!TensDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigit == 10 >> TEMP4.asm
echo:^^!TensDigit #= 0 >> TEMP4.asm
echo:^^!HundredsDigit #= ^^!HundredsDigit+1 >> TEMP4.asm
echo:^^!HundredsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigit == 10 >> TEMP4.asm
echo:^^!HundredsDigit #= 0 >> TEMP4.asm
echo:^^!ThousandsDigit #= ^^!ThousandsDigit+1 >> TEMP4.asm
echo:^^!ThousandsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:^^!Offset #= ^^!Offset-1 >> TEMP4.asm
echo:endwhile >> TEMP4.asm
echo:if ^^!ThousandsDigitSet == 1 >> TEMP4.asm
echo:db ^^!ThousandsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigitSet == 1 >> TEMP4.asm
echo:db ^^!HundredsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigitSet == 1 >> TEMP4.asm
echo:db ^^!TensDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:db ^^!OnesDigit+$30 >> TEMP4.asm
%asarVer% --fix-checksum=off --no-title-check "TEMP4.asm" TEMP5.txt

for /f "delims=" %%x in (TEMP5.txt) do set Length=%%x

if exist TEMP4.asm del TEMP4.asm
if exist TEMP5.txt del TEMP5.txt

EXIT /B 0
