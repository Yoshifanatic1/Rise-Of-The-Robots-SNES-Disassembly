; This will dump the data for an asar patch that will be applied to the USA ROTR ROM. Said patch will set up the header data of all the poses in the specified range (and also generate an asset extraction line and incbin command) when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, and the % with " in the second output patch, otherwise asar won't assemble the patch.
; Lastly, the last data block will likely be larger than it should be and must be cleaned up.

!PtrStartOffset = $E530C8
!PtrEndOffset =	$E59E70

hirom

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input5
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
endmacro

macro HandleLineOfData(ID)
	if <ID> == 0
		!PrintData += "	db $',hex(!Output<ID>, 2)"
	else
		!PrintData += ",',$',hex(!Output<ID>, 2)"
	endif
endmacro

macro PrintVariableData(Data)
	print "print '	<Data>"
endmacro

!SkipBytes = 0
!LoopCounter = 0
print "hirom"

while !PtrStartOffset+!LoopCounter < !PtrEndOffset
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$00)
	!Input2 #= read2(!PtrStartOffset+!LoopCounter+$02)
	!Input3 #= read2(!PtrStartOffset+!LoopCounter+$04)
	!Input4 #= read2(!PtrStartOffset+!LoopCounter+$06)
	%ClearDefines()
	!ByteCount = 0
	!RowByteCount = 0
	!PrintData = ""
	print "print 'DATA_',hex(!PtrStartOffset+!LoopCounter),':'"
	!OAMDataSize #= !Input2
	!GFXSize #= !Input1*$80
	if !GFXSize != $00
		while !ByteCount < !OAMDataSize
			!Input5 = read1(!PtrStartOffset+!LoopCounter+!ByteCount)
			%HandleVariableDefine(!RowByteCount)
			%HandleLineOfData(!RowByteCount)
			!ByteCount #= !ByteCount+1
			!RowByteCount #= !RowByteCount+1
			if !RowByteCount == 16
				%PrintVariableData("!PrintData")
				%ClearDefines()
				!PrintData = ""
				!RowByteCount #= $00
			endif
		endwhile
		if !RowByteCount != 0
			%PrintVariableData("!PrintData")
		endif
		print "print '	;incbin %Graphics/DynamicSprites/GFX_Sprite_XXXX.bin%	; GFXSize = $',hex(!GFXSize)"
		print "print '	;dl $',hex(!PtrStartOffset+!LoopCounter+!ByteCount),',$',hex(!PtrStartOffset+!LoopCounter+!ByteCount+!GFXSize),',GFX_Sprite_XXXX,GFX_Sprite_XXXXEnd'"
		!LoopCounter #= !LoopCounter+!OAMDataSize+!GFXSize
		print "print ''"
	else
		!LoopCounter #= !PtrEndOffset
	endif
endwhile
