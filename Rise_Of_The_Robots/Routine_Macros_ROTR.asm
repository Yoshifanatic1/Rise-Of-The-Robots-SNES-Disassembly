
; Note: Various compressed graphics files also contain their respective tilemaps and palettes.

; Note: Shifting things around in the top half of bank C0 may affect enemy AI/the demos. Go to "CODE_C0BC7F:" to see why.

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC0Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C00000:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00
	db $00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$01,$01
	db $01,$01,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$00,$00,$00
	db $00,$00,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$01,$01
	db $01,$01,$01,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01

DATA_C00064:
	dw $00E0,$0076,$00C0,$007A,$00C0,$009A,$00C0,$00B2
	dw $00C0,$FFFF,$FFFF,$0003,$0000,$0007,$0000,$0013
	dw $0000,$0016,$0000,$0021,$0000,$0026,$0000,$002B
	dw $0000,$FFFF,$FFFF,$0007,$0000,$0010,$0000,$002D
	dw $0000,$0032,$0000,$0036,$0000,$FFFF,$FFFF,$0007
	dw $0000,$0013,$0000,$0027,$0000,$002D,$0000,$0049
	dw $0000,$FFFF,$FFFF,$0001,$0001,$0001,$0001,$0001
	dw $0001,$0001,$0001,$FFFF

DATA_C000DC:
	dw $0000,$0001,$0001,$0001,$0001,$0001,$0001,$0001
	dw $0002,$0002,$0002,$0002,$0002,$0002,$0002,$0002
	dw $0003,$0003,$0003,$0003,$0003,$0003,$0003,$0003
	dw $0004,$0004,$0004,$0004,$0004,$0004,$0004,$0004

DATA_C0011C:
	dd DATA_C00138,DATA_C00146,DATA_C00154,DATA_C00162,DATA_C00170,DATA_C0017E,DATA_C0018C

DATA_C00138:
	dw $0050,$0040,$0663,$8000,$0040,$005F,$000A

DATA_C00146:
	dw $0050,$0042,$0663,$8000,$0040,$005F,$0014

DATA_C00154:
	dw $0050,$0041,$0663,$8000,$0040,$005F,$000A

DATA_C00162:
	dw $0050,$002A,$0640,$8000,$0040,$005F,$000A

DATA_C00170:
	dw $0050,$003E,$0663,$8000,$0040,$005F,$000A

DATA_C0017E:
	dw $0050,$003A,$0663,$8000,$0040,$005F,$000A

DATA_C0018C:
	dw $0050,$003A,$0663,$8000,$0040,$005F,$000A

CODE_C0019A:
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_HDMAEnable
	STA.w $03D0
	REP.b #$20
	JSR.w CODE_C0D9DF
	SEP.b #$20
	LDA.b #$FF
	STA.w !REGISTER_Window2RightPositionDesignation
	REP.b #$20
	RTS

CODE_C001B3:
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_HDMAEnable
	SEP.b #$20
	LDA.b #$00
	STA.w HDMA[$01].Parameters
	LDA.b #!REGISTER_Window2RightPositionDesignation
	STA.w HDMA[$01].Destination
	LDA.b #DATA_C0810C>>16
	STA.w HDMA[$01].SourceBank
	REP.b #$20
	LDA.w #DATA_C0810C
	STA.w HDMA[$01].SourceLo
	SEP.b #$20
	LDA.b #$00
	STA.w HDMA[$03].Parameters
	LDA.b #!REGISTER_Window1RightPositionDesignation
	STA.w HDMA[$03].Destination
	LDA.b #DATA_C0810C>>16
	STA.w HDMA[$03].SourceBank
	REP.b #$20
	LDA.w #DATA_C0810C
	STA.w HDMA[$03].SourceLo
	SEP.b #$20
	LDA.b #$02
	STA.w HDMA[$02].Parameters
	LDA.b #!REGISTER_BG1HorizScrollOffset
	STA.w HDMA[$02].Destination
	LDA.b #$0016A8>>16
	STA.w HDMA[$02].SourceBank
	REP.b #$20
	LDA.w #$0016A8
	STA.w HDMA[$02].SourceLo
	SEP.b #$20
	LDA.b #$0E
	STA.w !REGISTER_HDMAEnable
	STA.w $03D0
	REP.b #$20
	RTS

CODE_C00212:
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_HDMAEnable
	SEP.b #$20
	LDA.b #$00
	STA.w HDMA[$01].Parameters
	LDA.b #!REGISTER_Window2RightPositionDesignation
	STA.w HDMA[$01].Destination
	LDA.b #DATA_C0810C>>16
	STA.w HDMA[$01].SourceBank
	REP.b #$20
	LDA.w #DATA_C0810C
	STA.w HDMA[$01].SourceLo
	SEP.b #$20
	LDA.b #$00
	STA.w HDMA[$03].Parameters
	LDA.b #!REGISTER_Window1RightPositionDesignation
	STA.w HDMA[$03].Destination
	LDA.b #DATA_C0810C>>16
	STA.w HDMA[$03].SourceBank
	REP.b #$20
	LDA.w #DATA_C0810C
	STA.w HDMA[$03].SourceLo
	SEP.b #$20
	LDA.b #$0A
	STA.w !REGISTER_HDMAEnable
	STA.w $03D0
	REP.b #$20
	RTS

CODE_C00258:
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_HDMAEnable
	SEP.b #$20
	LDA.b #$01
	STA.w HDMA[$02].Parameters
	LDA.b #!REGISTER_Window1LeftPositionDesignation
	STA.w HDMA[$02].Destination
	LDA.b #DATA_C08115>>16
	STA.w HDMA[$02].SourceBank
	REP.b #$20
	LDA.w #DATA_C08115
	STA.w HDMA[$02].SourceLo
	SEP.b #$20
	LDA.b #$03
	STA.w HDMA[$01].Parameters
	LDA.b #!REGISTER_ColorMathSelectAndEnable
	STA.w HDMA[$01].Destination
	LDA.b #$001825>>16
	STA.w HDMA[$01].SourceBank
	REP.b #$20
	LDA.w #$001825
	STA.w HDMA[$01].SourceLo
	SEP.b #$20
	LDA.b #$06
	STA.w !REGISTER_HDMAEnable
	STA.w $03D0
	REP.b #$20
	RTS

DATA_C0029E:
	dw DATA_C03F50>>16

DATA_C002A0:
	incbin "Graphics/Compressed/GFX_Layer1_SplashScreen1Text.rnc"

DATA_C00E7F:
	incbin "Graphics/Compressed/GFX_Layer1_SplashScreen2Text_PAL.rnc"

DATA_C01976:
	incbin "Graphics/Compressed/GFX_Layer1_SplashScreen2Text_USA.rnc"

DATA_C0223B:
	dw $0074

DATA_C0223D:
	dw $0059

UNK_C0223F:
	dw $00FF,$00FF,$00FF,$00FF,$00FF,$00FF,$00FF,$00FF
	dw $00FF,$00FF,$00FF,$00FF,$00FF,$00FF,$00FF,$00FF

DATA_C0225F:
	dw $0080,$0040,$0000

DATA_C02265:
	dw $000B,$0006,$000C,$0004,$0001,$0001,$0000,$00CD
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C02F0E
	dw $0000,$0000
	dd DATA_C02688

DATA_C02297:
	dw $0001,$0003,$000D,$0003,$0001,$0001,$0000,$00A6
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C03139
	dw $0000,$0000
	dd DATA_C02688

DATA_C022C9:
	dw $0012,$0003,$000E,$0003,$0001,$0001,$0C00,$007C
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C03191
	dw $0000,$0000
	dd DATA_C02688

UNK_C022FB:
	dw $0004,$0004,$0010,$000C,$0001,$0001,$0000,$0000
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C0232D
	dw $0000,$0000
	dd DATA_C02688

DATA_C0232D:
	db "Hello",$00

DATA_C02333:
	dw $0010,$0008,$0010,$0008,$0001,$0001,$0000,$0000
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C0270F
	dw $0000,$0000
	dd DATA_C02688

DATA_C02365:
	dw $0008,$0014,$0010,$0004,$0001,$0001,$0000,$0000
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C0270F
	dw $0000,$0000
	dd DATA_C02688

DATA_C02397:
	dw $0008,$0014,$0010,$0004,$0001,$0001,$0000,$0000
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C0270F
	dw $0000,$0000
	dd DATA_C02688

DATA_C023C9:
	dw $0007,$0014,$0014,$0006,$0001,$0001,$0000,$0000
	dw $0000,$0000,$0000,$0001,$0000,$0007,$0000,$0004
	dw $0001,$0000,$0004
	dd DATA_C0270F
	dw $0000,$0000
	dd DATA_C02688

DATA_C023FB:
	db $60
	db "          "
	db $5C : db $68
	db $AA : db $68
	db "caution."
	db $AA : db $6F
	db $7E
	db $7E
	db "droid activated and approaching"
	db $7E
	db $00

DATA_C02437:
	db $60
	db "beginning network data "
	db $7E
	db "replay of all opponents "
	db $7E
	db "and victories "
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $7E
	db $60
	db $7C : db $30,$30,$31,$30,$30,$30
	db "all droids eliminated "
	db $7E
	db "mission complete return to lander "
	db $23
	db $23
	db $23
	db $23
	db $7E
	db $60
	db $7C : db $30,$30,$31,$30,$30,$30
	db "secret code for engaging"
	db $7E
	db "the supervisor in training"
	db $7E
	db "and 2 player combat is "
	db $7E
	db "up,right,down,left,fire "
	db $7E
	db "on player 1 controller"
	db $7E
	db "whilst in select options "
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $7E
	db $60
	db $7C : db $30,$30,$31,$30,$30,$30
	db "special thanks to t and e soft"
	db $7E
	db "in particular miyuki ken"
	db $7E
	db "and yasuo for their support"
	db $7E
	db "and advice"
	db $23
	db $23
	db $23
	db $23
	db $23
	db $7E
	db $60
	db $7C : db $30,$30,$31,$30,$30,$30
	db "please log off when finished with"
	db $7E
	db "the terminal"
	db $00

DATA_C0260C:
	db $60
	db "approaching metropolis 4."
	db $7E
	db "industrial class 8."
	db $7E
	db "population 34,034; "
	db $5C : db $63
	db $AA : db $63
	db "13% human"
	db $AA : db $6F
	db $7E
	db $00

UNK_C0265F:
	db $5E : db $33
	db "task failure."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db $60
	db "virus destroyed.$."
	db $7E
	db $00

DATA_C02688:
	db "status"
	db $00

DATA_C0268F:
	dw $0002,$0000,$0000,$E000,$007E,$0000,$6C00,$000F
	dw $0005,$0008,$0005,$0005

DATA_C026A7:
	dw $0002,$0000,$0000,$E000,$007E,$0000,$7800,$000F
	dw $0005,$0008,$0005,$0005,$0002,$0000,$0000,$E000
	dw $007E,$0000,$6C00,$000F,$0005,$0008,$0005,$0005

DATA_C026D7:
	dd DATA_C02710,DATA_C02811,DATA_C02821,DATA_C02957,DATA_C02966,DATA_C02A67,DATA_C02A79,DATA_C02B71
	dd DATA_C02B7D,DATA_C02C9C,DATA_C02CA9,DATA_C02DC5,DATA_C02DDA,DATA_C02EF9

DATA_C0270F:
	db $00

DATA_C02710:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot identified: loader class 1"
	db $7E
	db "components loading robot."
	db $7E
	db "intelligence: "
	db $23
	db $23
	db "low"
	db $23
	db $23
	db $7E
	db "power rating: "
	db $23
	db $23
	db "low"
	db $23
	db $23
	db $7E
	db "combat abilities: "
	db $23
	db $23
	db "poor"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $23
	db "solid build"
	db $23
	db $23
	db $23
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "speed"
	db $23
	db $23
	db $23
	db $7E
	db "     no tactical abilities"
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $23
	db $23
	db $00

DATA_C02811:
	db $5C : db $63
	db $AA : db $63
	db "minimum."
	db $AA : db $4F
	db $7E
	db $00

DATA_C02821:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot identified - "
	db $7E
	db "       builder class 1"
	db $7E
	db "heavy construction robot."
	db $7E
	db "intelligence - "
	db $23
	db $23
	db "low"
	db $23
	db $23
	db $7E
	db "power rating - "
	db $23
	db $23
	db "high"
	db $23
	db $23
	db $7E
	db "combat abilities - "
	db $23
	db $23
	db "average"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $23
	db "powerful arms"
	db $23
	db $23
	db $23
	db $7E
	db "     "
	db $23
	db $23
	db $23
	db " agile legs "
	db $23
	db $23
	db $23
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "legs,speed"
	db $23
	db $23
	db $23
	db $7E
	db "     limited tactical abilities"
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $23
	db $23
	db $00

DATA_C02957:
	db $5C : db $63
	db $AA : db $63
	db "minimum."
	db $AA : db $6F
	db $00

DATA_C02966:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot identified -"
	db $7E
	db "crusher model dh94-2"
	db $7E
	db "dismantling robot."
	db $7E
	db "intelligence - "
	db $23
	db $23
	db "medium"
	db $23
	db $23
	db $7E
	db "power rating - "
	db $23
	db $23
	db "average"
	db $23
	db $23
	db $7E
	db "combat abilities -"
	db $23
	db $23
	db "poor"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $23
	db "agility"
	db $23
	db $23
	db $23
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "head"
	db $23
	db $23
	db $23
	db $7E
	db "        "
	db $23
	db $23
	db $23
	db "weak limbs"
	db $23
	db $23
	db $23
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $00

DATA_C02A67:
	db $5C : db $63
	db $AA : db $63
	db "dangerous"
	db $AA : db $6F
	db $23
	db $7E
	db $00

DATA_C02A79:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot unidentified - no data"
	db $7E
	db "analysis continuing:"
	db $7E
	db "intelligence - "
	db $23
	db $23
	db "high"
	db $23
	db $23
	db $7E
	db "power rating - "
	db $23
	db $23
	db "good"
	db $23
	db $23
	db $7E
	db "combat abilities -"
	db $23
	db $23
	db "good"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $23
	db "agility"
	db $23
	db $23
	db $23
	db $7E
	db "     "
	db $23
	db $23
	db "intelligence"
	db $23
	db $23
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "weak frame"
	db $23
	db $23
	db $23
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $23
	db $23
	db $00

DATA_C02B71:
	db $5C : db $63
	db $AA : db $63
	db "high"
	db $AA : db $6F
	db $7E
	db $00

DATA_C02B7D:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot identified - "
	db $7E
	db "    "
	db $23
	db $23
	db $23
	db "security droid:"
	db $7E
	db "      "
	db $23
	db $23
	db $23
	db "model - srt23-3"
	db $7E
	db "intelligence - "
	db $23
	db $23
	db "high"
	db $23
	db $23
	db $7E
	db "power rating - "
	db $23
	db $23
	db "good"
	db $23
	db $23
	db $7E
	db "combat abilities -"
	db $23
	db $23
	db "excellent"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $23
	db "agility"
	db $23
	db $23
	db $23
	db $7E
	db "     "
	db $23
	db $23
	db "intelligence"
	db $7E
	db "     "
	db $23
	db $23
	db "speed"
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "none identified"
	db $23
	db $23
	db $23
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $23
	db $23
	db $00

DATA_C02C9C:
	db $5C : db $63
	db $AA : db $63
	db "high."
	db $AA : db $6F
	db $7E : db $00

DATA_C02CA9:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot identified - supervisor~ "
	db $23
	db $23
	db $23
	db $23
	db "polymetamorphic titanium alloy"
	db $7E
	db "intelligence - "
	db $23
	db $23
	db "excellent"
	db $23
	db $23
	db $7E
	db "power rating - "
	db $23
	db $23
	db "excellent"
	db $23
	db $23
	db $7E
	db "combat abilities -"
	db $23
	db $23
	db "excellent"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $23
	db "metamorphic abilities"
	db $23
	db $23
	db $23
	db $7E
	db "     intelligence."
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "none"
	db $23
	db $23
	db $23
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $23
	db $23
	db $00

DATA_C02DC5:
	db $5C : db $63
	db $AA : db $63
	db "extremely high."
	db $7E
	db $00

DATA_C02DDA:
	db $23
	db $23
	db "Analysing form."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "robot identified - eco cyborg"
	db $7E
	db " "
	db $23
	db $23
	db $23
	db $23
	db $AA : db $63
	db "50 % human, 50% droid"
	db $AA : db $6F
	db $7E
	db "intelligence - "
	db $23
	db $23
	db "identical"
	db $23
	db $23
	db $7E
	db "power rating - "
	db $23
	db $23
	db "identical"
	db $23
	db $23
	db $7E
	db "combat abilities - "
	db $23
	db $23
	db "superior"
	db $23
	db $23
	db $7E
	db "strengths: "
	db $23
	db $23
	db $7E
	db "    knows your every move"
	db $23
	db $23
	db $23
	db $7E
	db "    high intelligence."
	db $7E
	db "weak points: "
	db $23
	db $23
	db $23
	db "none"
	db $23
	db $23
	db $23
	db $7E
	db $7E
	db $7E
	db $7E
	db "threat: -"
	db $23
	db $23
	db $23
	db $00

DATA_C02EF9:
	db $5C : db $63
	db $AA : db $63
	db "extremely high."
	db $7E
	db $00

DATA_C02F0E:
	db $AA : db $4B
	db $00

DATA_C02F11:
	db "time over ."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02F27:
	db $7C : db $30,$30,$31,$30,$30,$30
	db $60
	db "final result "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db $00

DATA_C02F48:
	db "cyborg wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02F5F:
	db "loader wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02F76:
	db "ape wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02F8A:
	db "crusher wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02FA2:
	db "military wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02FBB:
	db "sentry wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02FD2:
	db "supervisor wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C02FED:
	db "eco cyborg wins "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03008:
	db "bout drawn "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03020:
	db "double ko "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03037:
	db "draw "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03049:
	db "cyborg victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03063:
	db "loader victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C0307D:
	db "ape victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03094:
	db "crusher victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C030AF:
	db "military victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C030CB:
	db "sentry victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C030E5:
	db "supervisor victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03103:
	db "eco cyborg victory "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db $7E
	db $00

DATA_C03121:
	db "game over "
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db $00

DATA_C03139:
	db "a/i systems check.."
	db $7E
	db "inference engines"
	db $23
	db " ok"
	db $7E
	db "final checks."
	db $23
	db $7E
	db $5C : db $63
	db $AA : db $63
	db "purge all buffers"
	db $AA : db $6F
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $00

DATA_C03191:
	db "checking hardware."
	db $23
	db $7E
	db "software modules ok."
	db $23
	db $7E
	db "biocortex analysed."
	db $23
	db $7E
	db $5C : db $63
	db $AA : db $63
	db "checksum clear.."
	db $AA : db $6F
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $23
	db $00

DATA_C031EF:
	db $7C : db $30,$30,$31,$30,$30,$30
	db $60
	db "opponent deactivated."
	db $23
	db $7E
	db "downloading data."
	db $23
	db "."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "... done ..."
	db $23
	db $7E
	db $00

DATA_C03235:
	db $7C : db $30,$30,$31,$30,$30,$30
	db $60
	db "task failure."
	db $23
	db "."
	db $23
	db "."
	db $7E
	db "virus destroyed.$."
	db $7E
	db "ro$m ima ge%&#()"
	db $23
	db "=?"
	db $23
	db $7E
	db $5E : db $31
	db "@@"
	db $23
	db "*&() fading."
	db $23
	db "."
	db $23
	db $7E
	db $00
	
DATA_C0328D:
	db $7C : db $30,$30,$31,$30,$30,$31
	db $60
	db "power failure."
	db $23
	db $7E
	db "regen def grid."
	db $7E
	db "grid active."
	db $23
	db $7E
	db $00

DATA_C032C4:
	db $7C : db $30,$32,$34,$30,$30,$31
	db $60
	db $5E : db $33
	db "ready."
DATA_C032D4:
	db $23
	db $23
	db $23
	db $23
	db $23
	db $00

DATA_C032DA:
	db $7C : db $30,$30,$30,$30,$30,$38
	db "NRG:"
	db $00

DATA_C032E6:
	db $7C : db $30,$39,$31,$30,$30,$38
	db ":NRG"
	db $00

DATA_C032F2:
	dd DATA_C03316,DATA_C03326,DATA_C03336,DATA_C03346,DATA_C03353,DATA_C03364,DATA_C03376,DATA_C03386
	dd DATA_C0339A

DATA_C03316:
	db $7C : db $30,$30,$30,$30,$30,$30
	db $60
	db "CYBORG:"
	db $00

DATA_C03326:
	db $7C : db $30,$37,$39,$30,$30,$30
	db $60
	db ":CYBORG"
	db $00

DATA_C03336:
	db $7C : db $30,$37,$39,$30,$30,$30
	db $60
	db ":LOADER"
	db $00

DATA_C03346:
	db $7C : db $30,$39,$31,$30,$30,$30
	db $60
	db ":APE"
	db $00

DATA_C03353:
	db $7C : db $30,$37,$37,$30,$30,$30
	db $60
	db ":CRUSHER"
	db $00

DATA_C03364:
	db $7C : db $30,$37,$36,$30,$30,$30
	db $60
	db ":MILITARY"
	db $00

DATA_C03376:
	db $7C : db $30,$37,$39,$30,$30,$30
	db $60
	db ":SENTRY"
	db $00

DATA_C03386:
	db $7C : db $30,$36,$37,$30,$30,$30
	db $60
	db ":SUPERVISOR"
	db $00

DATA_C0339A:
	db $7C : db $30,$37,$39,$30,$30,$30
	db $60
	db ":CYBORG"
	db $00

DATA_C033AA:
	dw $05D2,$0201,$05D2,$0804,$05D2,$2010,$05D2,$8040
	dw $05D3,$0201,$05D3,$0804,$05D3,$2010,$05D3,$8040
	dw $05D4,$0201,$05D4,$0804,$05D4,$2010,$05D4,$8040
	dw $05D5,$0201,$05D5,$0804,$05D5,$2010,$05D5,$8040
	dw $05D6,$0201,$05D6,$0804,$05D6,$2010,$05D6,$8040
	dw $05D7,$0201,$05D7,$0804,$05D7,$2010,$05D7,$8040
	dw $05D8,$0201,$05D8,$0804,$05D8,$2010,$05D8,$8040
	dw $05D9,$0201,$05D9,$0804,$05D9,$2010,$05D9,$8040
	dw $05DA,$0201,$05DA,$0804,$05DA,$2010,$05DA,$8040
	dw $05DB,$0201,$05DB,$0804,$05DB,$2010,$05DB,$8040
	dw $05DC,$0201,$05DC,$0804,$05DC,$2010,$05DC,$8040
	dw $05DD,$0201,$05DD,$0804,$05DD,$2010,$05DD,$8040
	dw $05DE,$0201,$05DE,$0804,$05DE,$2010,$05DE,$8040
	dw $05DF,$0201,$05DF,$0804,$05DF,$2010,$05DF,$8040
	dw $05E0,$0201,$05E0,$0804,$05E0,$2010,$05E0,$8040
	dw $05E1,$0201,$05E1,$0804,$05E1,$2010,$05E1,$8040
	dw $05E2,$0201,$05E2,$0804,$05E2,$2010,$05E2,$8040
	dw $05E3,$0201,$05E3,$0804,$05E3,$2010,$05E3,$8040
	dw $05E4,$0201,$05E4,$0804,$05E4,$2010,$05E4,$8040
	dw $05E5,$0201,$05E5,$0804,$05E5,$2010,$05E5,$8040
	dw $05E6,$0201,$05E6,$0804,$05E6,$2010,$05E6,$8040
	dw $05E7,$0201,$05E7,$0804,$05E7,$2010,$05E7,$8040
	dw $05E8,$0201,$05E8,$0804,$05E8,$2010,$05E8,$8040
	dw $05E9,$0201,$05E9,$0804,$05E9,$2010,$05E9,$8040
	dw $05EA,$0201,$05EA,$0804,$05EA,$2010,$05EA,$8040
	dw $05EB,$0201,$05EB,$0804,$05EB,$2010,$05EB,$8040
	dw $05EC,$0201,$05EC,$0804,$05EC,$2010,$05EC,$8040
	dw $05ED,$0201,$05ED,$0804,$05ED,$2010,$05ED,$8040
	dw $05EE,$0201,$05EE,$0804,$05EE,$2010,$05EE,$8040
	dw $05EF,$0201,$05EF,$0804,$05EF,$2010,$05EF,$8040
	dw $05F0,$0201,$05F0,$0804,$05F0,$2010,$05F0,$8040
	dw $05F1,$0201,$05F1,$0804,$05F1,$2010,$05F1,$8040
	dw $0001

DATA_C035AC:
	db $01,$01,$00,$01,$00,$01,$00

DATA_C035B3:
	dw !Const_ROTR_CharacterID_Loader

DATA_C035B5:
	dw $0001

DATA_C035B7:
	dw $0002

DATA_C035B9:
	dw $0001

DATA_C035BB:
	db $20,$40,$60,$00

DATA_C035BF:
	dw $0003,$0005,$0007

DATA_C035C5:
	dw $1CE7,$1CE7,$1CE7,$1CE7,$1CE7,$1CE7,$1CE7,$1CE7
	dw $1CE7,$1CE7,$1CE7,$1CE7,$1CE7,$1CE7,$1CE7,$1CE7

DATA_C035E5:
	dd DATA_C03605,DATA_C0367F,DATA_C036F9,DATA_C03773,DATA_C037ED,DATA_C03867,DATA_C038E1,DATA_C0395B

DATA_C03605:
	dw $0200,$FFFE,$002E,$0050,$0114,$0014,$0140,$0007
	dw $0096,$0032,$0064,$0012,$0028,$0000,$0009,$0022
	dw $0000,$0857 : dd DATA_D5B102,DATA_CFF1C8,DATA_C048E2
	dd DATA_D10000,DATA_CB0000,DATA_C8D49A,DATA_F115E8
	dw $0000,$0008,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEFC,$0064,$0118,$0060,$0078,$00FA,$0009
	dw $0008,$1F2D,$1506,$FFE0,$FFE0,$FFFC,$0207,$0503
	dw $0009,$2907,$0C1B,$5420,$FFFF

DATA_C0367F:
	dw $0300,$0006,$002E,$008E,$00EF,$0014,$0140,$0007
	dw $0096,$0000,$0064,$0012,$0028,$0000,$0009,$0022
	dw $0000,$0457 : dd DATA_D5B180,DATA_D5AB20,DATA_CBCB44
	dd DATA_D56E5F,DATA_D9B6E0,DATA_C8D49A,DATA_F115E8
	dw $0001,$0000,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF60,$FEC0,$00A0,$0140,$0050,$00C8,$00FA,$0008
	dw $0004,$5947,$6A63,$FFEF,$FFEF,$0000,$0207,$0503
	dw $0009,$0C07,$201B,$583A,$FFFF

DATA_C036F9:
	dw $0300,$000F,$0030,$0049,$00E2,$0014,$0145,$0007
	dw $0096,$0000,$0064,$0012,$0028,$0000,$0009,$0022
	dw $0000,$0457 : dd DATA_D5B1FE,DATA_DBF332,DATA_CAEF8F
	dd DATA_DA30CF,DATA_DA3B0C,DATA_C7A234,DATA_EFA84D
	dw $0002,$0000,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEC0,$0064,$012C,$0050,$01F4,$00FA,$0008
	dw $0004,$4C72,$876F,$0019,$0019,$0000,$0207,$0503
	dw $0009,$1D07,$FF30,$FFFF,$FFFF

DATA_C03773:
	dw $0300,$0000,$002C,$0043,$00E2,$0014,$0140,$0007
	dw $0096,$0000,$0064,$0012,$0028,$0000,$0009,$0022
	dw $0000,$0457 : dd DATA_D5B27C,DATA_D9D62F,DATA_C40000
	dd DATA_D80000,DATA_D60000,DATA_C04922,DATA_F5BCD1
	dw $0003,$0000,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEC0,$0078,$012C,$0060,$00C8,$00FA,$0008
	dw $0008,$6963,$6B67,$0023,$0023,$FFF8,$0207,$0503
	dw $0009,$1523,$102C,$FFFF,$FFFF

DATA_C037ED:
	dw $0300,$0001,$002C,$0043,$00E2,$0014,$0140,$0007
	dw $0096,$0000,$0064,$0012,$0028,$0000,$0009,$0030
	dw $0000,$0A57 : dd DATA_D5B2FA,DATA_D2E5AE,DATA_CAEFAF
	dd DATA_D1F2C6,DATA_D4D9B9,DATA_C2CFBF,DATA_F24061
	dw $0004,$0000,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEA2,$008C,$0136,$0060,$00C8,$00FA,$0009
	dw $0008,$9800,$CFB9,$0008,$0008,$0000,$0403,$0506
	dw $0009,$1509,$FF2A,$FF68,$FFFF

DATA_C03867:
	dw $0300,$00E9,$0028,$0049,$00E0,$0014,$0145,$0007
	dw $0096,$0000,$0064,$0000,$0028,$0000,$0009,$0022
	dw $0000,$0457 : dd DATA_D5B378,DATA_DAEAD9,DATA_C40020
	dd DATA_D4B3B0,DATA_D66673,DATA_C6C2B6,DATA_FEAA6D
	dw $0005,$0008,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEA2,$008C,$0118,$0068,$00C8,$00FA,$0009
	dw $0008,$6C8B,$6761,$0002,$0002,$FFF8,$0207,$0503
	dw $0009,$1C08,$2A26,$FF0D,$FFFF

DATA_C038E1:
	dw $0300,$0000,$0028,$0049,$00FE,$0014,$0140,$0007
	dw $0096,$0000,$0064,$0012,$0028,$0000,$0009,$0022
	dw $0000,$0457 : dd DATA_D3F3CF,DATA_C9EB1A,DATA_CBCB64
	dd DATA_CFE35B,DATA_CEE5E0,DATA_C7D47B,DATA_F48A1D
	dw $0007,$0000,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEA2,$00A0,$015E,$0068,$012C,$00FA,$0009
	dw $000A,$E300,$B0BF,$FFCE,$FFCE,$FFF8,$0207,$0503
	dw $0009,$0E09,$2613,$FF38,$FFFF

DATA_C0395B:
	dw $03FF,$FFFE,$002E,$0050,$0114,$0014,$0140,$0007
	dw $0096,$0000,$0064,$0012,$0028,$0000,$0009,$0022
	dw $0000,$0857 : dd DATA_D5B102,DATA_CFF1C8,DATA_C04902
	dd DATA_D10000,DATA_CB0000,DATA_C40040,DATA_FF54C2
	dw $0000,$0008,$0000,$0012,$0000,$0000,$0000,$0001
	dw $FF9C,$FEFC,$0064,$0118,$0060,$0078,$00FA,$0009
	dw $0008,$1F2D,$1506,$FFE0,$FFE0,$FFFC,$0207,$0503
	dw $0009,$2907,$0C1B,$5420,$FFFF

DATA_C039D5:
	dw $0000,$0000,$0001,$0002,$0003,$0004,$0004,$0005
	dw $0006,$0007,$0008,$0008,$0009,$000A,$000B,$000C
	dw $000C,$000D,$000E,$000F,$0010,$0010,$0011,$0012
	dw $0013,$0014,$0014,$0015,$0016,$0017,$0018,$0018
	dw $0019,$001A,$001B,$001C,$001C,$001D,$001E,$001F
	dw $0020,$0020,$0021,$0022,$0023,$0024,$0024,$0025
	dw $0026,$0027,$0028,$0028,$0029,$002A,$002B,$002C
	dw $002C,$002D,$002E,$002F,$0030,$0030,$0031,$0032
	dw $0033,$0034,$0034,$0035,$0036,$0037,$0038,$0038
	dw $0039,$003A,$003B,$003C,$003C,$003D,$003E,$003F
	dw $0040,$0040,$0041,$0042,$0043,$0044,$0044,$0045
	dw $0046,$0047,$0048,$0048,$0049,$004A,$004B,$004C
	dw $004C,$004D,$004E,$004F,$0050,$0050,$0051,$0052
	dw $0053,$0054,$0054,$0055,$0056,$0057,$0058,$0058
	dw $0059,$005A,$005B,$005C,$005C,$005D,$005E,$005F
	dw $0060,$0060,$0061,$0062,$0063,$0064,$0064,$0065
	dw $0066,$0067,$0068,$0068,$0069,$006A,$006B,$006C
	dw $006C,$006D,$006E,$006F,$0070,$0070,$0071,$0072
	dw $0073,$0074,$0074,$0075,$0076,$0077,$0078,$0078
	dw $0079,$007A,$007B,$007C,$007C,$007D,$007E,$007F
	dw $0080,$0080,$0081,$0082,$0083,$0084,$0084,$0085
	dw $0086,$0087,$0088,$0088,$0089,$008A,$008B,$008C
	dw $008C,$008D,$008E,$008F,$0090,$0090,$0091,$0092
	dw $0093,$0094,$0094,$0095,$0096,$0097,$0098,$0098
	dw $0099,$009A,$009B,$009C,$009C,$009D,$009E,$009F
	dw $00A0,$00A0,$00A1,$00A2,$00A3,$00A4,$00A4,$00A5
	dw $00A6,$00A7,$00A8,$00A8,$00A9,$00AA,$00AB,$00AC
	dw $00AC,$00AD,$00AE,$00AF,$00B0,$00B0,$00B1,$00B2
	dw $00B3,$00B4,$00B4,$00B5,$00B6,$00B7,$00B8,$00B8
	dw $00B9,$00BA,$00BB,$00BC,$00BC,$00BD,$00BE,$00BF
	dw $00C0,$00C0,$00C1,$00C2,$00C3,$00C4,$00C4,$00C5
	dw $00C6,$00C7,$00C8,$00C8,$00C9,$00CA,$00CB,$00CC
	dw $00CC,$00CD,$00CE,$00CF,$00D0,$00D0,$00D1,$00D2
	dw $00D3,$00D4,$00D4,$00D5,$00D6,$00D7,$00D8,$00D8
	dw $00D9,$00DA,$00DB,$00DC,$00DC,$00DD,$00DE,$00DF
	dw $00E0,$00E0,$00E1,$00E2,$00E3,$00E4,$00E4,$00E5
	dw $00E6,$00E7,$00E8,$00E8,$00E9,$00EA,$00EB,$00EC
	dw $00EC,$00ED,$00EE,$00EF,$00F0,$00F0,$00F1,$00F2
	dw $00F3,$00F4,$00F4,$00F5,$00F6,$00F7,$00F8,$00F8
	dw $00F9,$00FA,$00FB,$00FC,$00FC,$00FD,$00FE,$00FF
	dw $0100,$0100,$0101,$0102,$0103,$0104,$0104,$0105
	dw $0106,$0107,$0108,$0108,$0109,$010A,$010B,$010C
	dw $010C,$010D,$010E,$010F,$0110,$0110,$0111,$0112
	dw $0113,$0114,$0114,$0115,$0116,$0117,$0118,$0118
	dw $0119,$011A,$011B,$011C,$011C,$011D,$011E,$011F
	dw $0120,$0120,$0121,$0122,$0123,$0124,$0124,$0125
	dw $0126,$0127,$0128,$0128,$0129,$012A,$012B,$012C
	dw $012C,$012D,$012E,$012F,$0130,$0130,$0131,$0132
	dw $0133,$0134,$0134,$0135,$0136,$0137,$0138,$0138
	dw $0139,$013A,$013B,$013C,$013C,$013D,$013E,$013F

DATA_C03CF5:
	dw $0190

DATA_C03CF7:
	dw $0080

DATA_C03CF9:
	db $2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F

DATA_C03D02:
	dw $0014,$002A,$0040,$0040,$0000,$0052,$0012

DATA_C03D10:
	dw $0003,$0002,$0003,$0004,$0002,$0002,$0003

DATA_C03D1E:
	dd DATA_C611F3,DATA_C611F3,DATA_C711F3,DATA_C65331,DATA_C68ADF,DATA_C74364,DATA_C611F3,DATA_C77675
	dd DATA_C611F3

DATA_C03D42:
	dw $0000,$0001,$0000,$0002,$0000,$0003,$0000,$0004
	dw $0000,$0005,$0000,$0006,$0000,$0007

DATA_C03D5E:
	dw $0002,$0003,$0004,$0004,$0003,$0004,$0003,$0002

DATA_C03D6E:
	dw $0060

DATA_C03D70:
	dw $0064

DATA_C03D72:
	dw $006C

DATA_C03D74:
	dw $0000,$0100,$0000,$0002

DATA_C03D7C:
	dw $FFFF,$FFFF,$0060

DATA_C03D82:
	dw $0001,$002D,$0003
	dw $0001,$002E,$000B
	dw $0001,$002F,$0018
	dw $0001,$0030,$001F
	dw $0001,$0031,$001F
	dw $0001,$0032,$001F
	dw $0001,$0033,$001F
	dw $0001,$0034,$001F
	dw $0001,$0035,$0019
	dw $0001,$0046,$0007
	dw $0001,$0059,$002C
	dw $0001,$005A,$002C
	dw $0001,$005B,$002C
	dw $0001,$005C,$0034
	dw $0001,$005D,$002D
	dw $0001,$005E,$002C
	dw $0001,$005F,$002C
	dw $0002,$0033,$000E
	dw $0002,$0034,$0013
	dw $0002,$0035,$001A
	dw $0002,$0036,$001E
	dw $0003,$0016,$000F
	dw $0003,$0017,$000F
	dw $0003,$0018,$0014
	dw $0003,$0019,$001C
	dw $0003,$001A,$0020
	dw $0003,$004F,$0013
	dw $0003,$0050,$0012
	dw $0004,$002B,$0011
	dw $0004,$002C,$0017
	dw $0004,$002D,$001C
	dw $0004,$002E,$001C
	dw $0004,$004B,$0007
	dw $0004,$004C,$0009
	dw $0004,$004D,$0013
	dw $0004,$004E,$0019
	dw $0004,$004F,$001F
	dw $0004,$0050,$0020
	dw $0004,$0051,$0020
	dw $0004,$0052,$0020
	dw $0004,$0053,$0027
	dw $0004,$0054,$0029
	dw $0004,$0055,$0029
	dw $0004,$0056,$0028
	dw $0004,$0057,$0024
	dw $0004,$0058,$0024
	dw $0004,$0059,$0024
	dw $0004,$005A,$0024
	dw $0005,$0010,$0016
	dw $0005,$0046,$000E
	dw $0005,$0047,$000E
	dw $0006,$002F,$000A
	dw $0006,$0030,$000C
	dw $0006,$0031,$000C
	dw $0006,$0032,$000C
	dw $0006,$0033,$000C
	dw $0006,$0034,$000C
	dw $0006,$0042,$0002
	dw $0006,$0043,$0004
	dw $0006,$0044,$0006
	dw $0006,$0045,$0006
	dw $0006,$0046,$0006
	dw $0006,$0087,$0009
	dw $0006,$008A,$0009
	dw $0006,$008B,$0009
	dw $0006,$008C,$0009
	dw $0006,$008D,$0009
	dw $0006,$008E,$0008
	dw $FFFF

DATA_C03F1C:
	dw $7C23,$7CC0,$7CD4,$7E40

DATA_C03F24:
	dw $0004,$000B,$000C,$000D,$000E,$000F,$0010,$0011
	dw $0012,$0013,$0014,$0015,$0016,$0017,$0018,$0019
	dw $001A,$001B,$001B,$001B,$FFFF,$FFFF

DATA_C03F50:
	dw $000B,$0000 : dd DATA_C03F24 : dw $0236,$0000,$0080,$002D
	dw $001E,$0160,$0012

DATA_C03F66:
	dw $000A,$0000 : dd $00000000 : dw $025E,$0000,$0080,$0048
	dw $003E,$0160,$0012

DATA_C03F7C:
	dw DATA_C03F8C,DATA_C03FA2,DATA_C03FB8,DATA_C03FCE,DATA_C03FE4,DATA_C03FFA,DATA_C04010,DATA_C04026

DATA_C03F8C:
	dw $0008,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C03FA2:
	dw $0001,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C03FB8:
	dw $0002,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C03FCE:
	dw $0003,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C03FE4:
	dw $0004,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C03FFA:
	dw $0005,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C04010:
	dw $0006,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C04026:
	dw $0007,$0000 : dd $00000000 : dw $01FA,$0000,$0080,$0048
	dw $0030,$0160,$0012

DATA_C0403C:
	dd DATA_C03049,DATA_C03063,DATA_C0307D,DATA_C03094,DATA_C030AF,DATA_C030CB,DATA_C030E5,DATA_C03103
	dd DATA_C03008,DATA_C03020

DATA_C04064:
	dd DATA_C02F48,DATA_C02F5F,DATA_C02F76,DATA_C02F8A,DATA_C02FA2,DATA_C02FBB,DATA_C02FD2,DATA_C02FED
	dd DATA_C03008,DATA_C03020

DATA_C0408C:
	dw !Const_ROTR_CharacterID_Military,!Const_ROTR_CharacterID_Crusher,!Const_ROTR_CharacterID_Loader,!Const_ROTR_CharacterID_Senty
	dw !Const_ROTR_CharacterID_Ape,$FFFF

DATA_C04098:
	dw $0009,$0000,$0000,$0000,$020E,$0000,$0030,$002A
	dw $0030,$0180,$001A

DATA_C040AE:
	dw $0009,$0000,$0000,$0000,$0236,$0000,$00D0,$002A
	dw $0030,$01A0,$0022

DATA_C040C4:
	dd DATA_FDE71A,DATA_FEAAE7,DATA_FEAB51,DATA_FEABA7,DATA_FEAC15,DATA_FEAC67,DATA_F9B514,DATA_FDE71A

DATA_C040E4:
	dd DATA_CEF47F,DATA_D7F4F3,DATA_DAEF9B,DATA_D8ED32,DATA_D2EC40,DATA_D9DB31,DATA_D9DD61,DATA_CEF47F

DATA_C04104:
	dd DATA_E5011A,DATA_E52DA8,DATA_E50A7A,DATA_E5043A,DATA_E52A88,DATA_E5075A,DATA_E59E70,DATA_E5011A

DATA_C04124:
	incbin "Graphics/Compressed/GFX_Layer1_AcclaimScreen.rnc"

DATA_C04890:
	dw $0000,$0002,$0001,$0162,$0002,$0002,$0001,$0162
	dw $0001,$0002,$0001,$0002,$0002,$0162,$0002,$0162
	dw $0003,$0002,$0003,$0002,$0004,$0162,$0003,$0002
	dw $0003,$0002,$0002,$0162,$0002,$0162,$0001,$0002
	dw $0001,$0002,$0000,$0162,$FFFF,$0002

DATA_C048DC:
	dw $012C,$0DE0,$0E60

DATA_C048E2:
	incbin "Palettes/PAL_Sprite_Cyborg.tpl":$04..$24

DATA_C04902:
	incbin "Palettes/PAL_Sprite_Cyborg.tpl":$24..$44

DATA_C04922:
	incbin "Graphics/Compressed/GFX_Layer1_CrushersArena.rnc"

DATA_C07D58:
	incbin "Graphics/Compressed/GFX_Sprite_Battle1Text.bin"

	%InsertGarbageData($C07F86, incbin, UNK_C07F86.bin)
	%HiROMBankSplit()
base $008000

CODE_C08000:
	SEI
	CLC
	XCE
	REP.b #$30
	LDX.w #$01FF
	TXS
	SEP.b #$20
	LDA.b #$8F
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	LDA.w #!REGISTER_ScreenDisplayRegister>>16
	PHA
	PLB
	LDA.w #$0000
	TCD
	PHA
	SEP.b #$20
	LDA.b #$8F
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	PLA
	STA.w !REGISTER_OAMSizeAndDataAreaDesignation
	STA.w !REGISTER_OAMAddressLo
	STA.w !REGISTER_OAMAddressHi
	STA.w !REGISTER_OAMDataWritePort
	STA.w !REGISTER_BGModeAndTileSizeSetting
	STA.w !REGISTER_MosaicSizeAndBGEnable
	STA.w !REGISTER_BG1AddressAndSize
	STA.w !REGISTER_BG2AddressAndSize
	STA.w !REGISTER_BG3AddressAndSize
	STA.w !REGISTER_BG4AddressAndSize
	STA.w !REGISTER_BG1And2TileDataDesignation
	STA.w !REGISTER_BG3And4TileDataDesignation
	STA.w !REGISTER_WRAMAddressBank
	LDY.w #$0000
CODE_C08050:
	STA.w !REGISTER_BG1HorizScrollOffset,y
	STA.w !REGISTER_BG1HorizScrollOffset,y
	INY
	CPY.w #$0008
	BNE.b CODE_C08050
	LDY.w #$0080
	STY.w !REGISTER_VRAMAddressIncrementValue
	STA.w !REGISTER_VRAMAddressLo
	STA.w !REGISTER_VRAMAddressHi
	STA.w !REGISTER_Mode7TilemapSettings
	LDY.w #$0001
	STA.w !REGISTER_Mode7MatrixParameterA
	STY.w !REGISTER_Mode7MatrixParameterA
	STA.w !REGISTER_Mode7MatrixParameterB
	STA.w !REGISTER_Mode7MatrixParameterB
	STA.w !REGISTER_Mode7MatrixParameterC
	STA.w !REGISTER_Mode7MatrixParameterC
	STA.w !REGISTER_Mode7MatrixParameterD
	STY.w !REGISTER_Mode7MatrixParameterD
	STA.w !REGISTER_Mode7CenterX
	STA.w !REGISTER_Mode7CenterX
	STA.w !REGISTER_Mode7CenterY
	STA.w !REGISTER_Mode7CenterY
	STA.w !REGISTER_CGRAMAddress
	LDY.w #$0000
CODE_C08098:
	STA.w !REGISTER_BG1And2WindowMaskSettings,y
	INY
	CPY.w #$000C
	BNE.b CODE_C08098
	LDY.w #$0030
	STY.w !REGISTER_ColorMathInitialSettings
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDY.w #$00E0
	STY.w !REGISTER_FixedColorData
	STA.w !REGISTER_InitialScreenSettings
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	LDY.w #$00FF
	STY.w !REGISTER_ProgrammableIOPortOutput
	LDY.w #$0000
CODE_C080BF:
	STA.w !REGISTER_Multiplicand,y
	INY
	CPY.w #$000C
	BNE.b CODE_C080BF
	REP.b #$20
	LDA.w #$1FFE
	TCS
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_EnableFastROM
	LDA.b #!REGISTER_ScreenDisplayRegister>>16
	PHA
	PLB
	REP.b #$20
	JML.l CODE_C08180

CODE_C080DF:
	RTI

CODE_C080E0:
	JML.l $7DE00E

CODE_C080E4:
	JML.l $7DE00B

CODE_C080E8:
	JML.l CODE_C0E0C1

CODE_C080EC:
	JML.l CODE_C0E0ED

DATA_C080F0:
	dd CODE_C08BFC

DATA_C080F4:
	dw $0014

DATA_C080F6:
	dw $0014

DATA_C080F8:
	dw $0007

DATA_C080FA:
	dw $0055

DATA_C080FC:
	dw $00C2

DATA_C080FE:
	dw $00C2

DATA_C08100:								; Note: This table must be located in the top half of bank C0 or else it won't be read correctly.
	dw !Joypad_B,!Joypad_Y,!Joypad_L
	dw !Joypad_A,!Joypad_X,!Joypad_R

DATA_C0810C:
	db $10,$00,$7F,$FF,$47,$FF,$10,$00,$00

DATA_C08115:
	db $08,$00,$00,$01,$00,$FF,$00

DATA_C0811C:
	db $00,$80,$80,$E0,$E0,$2F,$80,$80,$E0,$E0,$01,$81,$81,$00,$00,$01
	db $01,$01,$E0,$E2,$01,$01,$01,$E0,$E4,$01,$01,$01,$E0,$E6,$01,$01
	db $01,$E0,$E8,$01,$01,$01,$E0,$EA,$01,$01,$01,$E0,$EC,$01,$01,$01
	db $E0,$EE,$01,$01,$01,$E0,$EC,$01,$01,$01,$E0,$EA,$01,$01,$01,$E0
	db $E8,$01,$01,$01,$E0,$E6,$01,$01,$01,$E0,$E4,$01,$01,$01,$E0,$E2
	db $01,$01,$01,$E0,$E0,$00,$00,$00,$00,$00,$A6,$60,$D1,$1C,$25,$38
	db $CD,$00,$00,$00

base $C08180

CODE_C08180:
	CLC
	XCE
	REP.b #$30
	LDA.w #$1FFE
	TCS
	LDA.w #$0000
	TAX
CODE_C0818C:
	STA.b $00,x
	INX
	INX
	CPX.w #$2000
	BCC.b CODE_C0818C
	STZ.w $03D0
	JSR.w CODE_C0A9C4
	STZ.b $C8
	LDA.w #$0002
	STA.b $CC
	STZ.w $11A8
	STZ.w $11AC
	STZ.w $0646
	STZ.w $012E
	STZ.w $11AA
	STZ.b $36
	STZ.w !RAM_ROTR_Global_CanFreezeScreenWithSelectFlag
	JSR.w CODE_C0891A
	STZ.w !RAM_ROTR_Global_RedCyborgSelectableFlag
	LDA.w #!Const_ROTR_CharacterID_Senty
	STA.w !RAM_ROTR_Global_HighestSelectableOpponent
	STZ.w !RAM_ROTR_Global_InvincibilityCheatFlag
	LDA.w #$0052
	STA.w $02D6
	LDA.w #$0082
	STA.w $02D8
	JSR.w CODE_C0DA27
	JSR.w CODE_C0E078
	JSR.w CODE_C0E0AA
	JSR.w CODE_C0A9B1
	JSR.w CODE_C0D472
	JSR.w CODE_C0D16A
	LDA.w #$1234
	STA.w $05FC
	LDA.w #DATA_C0268F>>16
	STA.b $92
	LDA.w #DATA_C0268F
	STA.b $90
	JSR.w CODE_C0F1BA
	LDA.w #DATA_CAEFCF>>16
	STA.b $92
	LDA.w #DATA_CAEFCF
	STA.b $90
	JSR.w CODE_C0FDC0
	LDA.w #$0001
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $98
	LDA.l DATA_C035E5+$02,x
	STA.b $9A
	LDA.w #DATA_C544A5
	STA.w $11D8
	INY
	INY
	LDA.w #DATA_C544A5>>16
	STA.w $11DA
	LDA.w #DATA_C611F3
	STA.w $11DC
	LDA.w #DATA_C611F3>>16
	STA.w $11DE
	LDA.w #DATA_C8B25D
	STA.w $11E0
	INY
	INY
	LDA.w #DATA_C8B25D>>16
	STA.w $11E2
	STZ.w $11E6
	JSR.w CODE_C0EE4E
	LDA.l DATA_C035B5
	STA.w !RAM_ROTR_MainMenu_PlayerSetting
	LDA.l DATA_C035B9
	STA.w !RAM_ROTR_Global_1PlayerModeSetting
	LDA.l DATA_C035B7
	STA.w !RAM_ROTR_MainMenu_DifficultySetting
	LDA.w #$0003
	STA.w !RAM_ROTR_MainMenu_TimerSetting
	LDA.w #$0001
	STA.w !RAM_ROTR_Global_CinematicsSetting
	LDA.w #$0002
	STA.w !RAM_ROTR_Global_SuperMovesSetting
	LDA.w #$0001
	STA.w !RAM_ROTR_MainMenu_BoutsSetting
	JSR.w CODE_C08F3A
	JSR.w CODE_C08DD1
	JSR.w CODE_C08E9F
	JSR.w CODE_C08BFD
	JSR.w CODE_C089B6
	LDA.l DATA_C035B3
	STA.w !RAM_ROTR_Global_CurrentOpponent
CODE_C08286:
	JSR.w CODE_C09026
CODE_C08289:
	LDA.w #$0000
	STA.w $0F6E
	STZ.w !RAM_ROTR_MainMenu_CurrentSelection
	STZ.w $17FB
CODE_C08295:
	JSR.w CODE_C0879A
CODE_C08298:
	JSR.w CODE_C08822
	STZ.b $36
	STZ.b $34
CODE_C0829F:
	JSR.w CODE_C082CE
	CMP.w #$0000
	BEQ.b CODE_C0829F
	CMP.w #$0001
	BEQ.b CODE_C08286
	CMP.w #$0002
	BEQ.b CODE_C08298
	CMP.w #$0003
	BEQ.b CODE_C08295
	CMP.w #$0004
	BEQ.b CODE_C08286
	CMP.w #$0005
	BEQ.b CODE_C08289
	JMP.w CODE_C0829F

CODE_C082C3:
	LDX.w !RAM_ROTR_Global_CurrentOpponent
	CPX.w #!Const_ROTR_CharacterID_Supervisor
	BNE.b CODE_C08295
	JMP.w CODE_C08286

CODE_C082CE:
	STZ.w $17F9
	LDA.w $05FE
	BEQ.b CODE_C082D9
	DEC.w $05FE
CODE_C082D9:
	JSR.w CODE_C0D73E
	JSR.w CODE_C0E65E
	JSR.w CODE_C0B4AA
	JSR.w CODE_C0E61D
	JSR.w CODE_C0D50D
	JSR.w CODE_C0A6AD
	JSR.w CODE_C0D906
	LDA.w $060C
	BEQ.b CODE_C082FA
	DEC.w $060C
	BNE.b CODE_C082FA
	BRA.b CODE_C08334

CODE_C082FA:
	JSR.w CODE_C0892E
	JSR.w CODE_C0B05F
	JSR.w CODE_C0D9DF
	LDA.w $060A
	CMP.w #$0001
	BEQ.b CODE_C08310
	CMP.w #$0003
	BNE.b CODE_C08313
CODE_C08310:
	JSR.w CODE_C0D9DF
CODE_C08313:
	JSR.w CODE_C089FD
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0D5A8
	JSR.w CODE_C0D599
	JSR.w CODE_C0B8ED
	JSR.w CODE_C0AB0B
	JSR.w CODE_C0AA94
	JSR.w CODE_C0C72C
	JSR.w CODE_C0B52C
	INC.w $0610
	JMP.w CODE_C08352

CODE_C08334:
	LDA.w $060A
	CMP.w #$0002
	BNE.b CODE_C0833F
	JMP.w CODE_C0859B

CODE_C0833F:
	CMP.w #$0001
	BNE.b CODE_C08347
	JMP.w CODE_C08647

CODE_C08347:
	CMP.w #$0003
	BNE.b CODE_C0834F
	JMP.w CODE_C085D2

CODE_C0834F:
	JMP.w CODE_C085D8

CODE_C08352:
	LDA.w $17F9
	RTS

CODE_C08356:
	JSR.w CODE_C0D9DF
	LDA.w #$6CA0
	STA.b $24
	LDA.w #$0040
	STA.b $26
	LDX.w #$0000
	JSR.w CODE_C0D363
	JSR.w CODE_C0E4AA
	RTS

CODE_C0836D:
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0B179
	LDA.w #DATA_C03F50
	LDX.w #$0100
	JSR.w CODE_C08411
	LDX.w #$0060
	JSR.w CODE_C089D2
	JSR.w CODE_C0D9DF
	LDA.w #DATA_C02265>>16
	STA.b $92
	LDA.w #DATA_C02265
	STA.b $90
	LDY.w #$1929
	JSR.w CODE_C0F1D4
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0FC68
CODE_C083A1:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $194F
	ORA.w $1951
	BNE.b CODE_C083A1
	LDA.w $0306
	BEQ.b CODE_C083D7
	LDY.w #$1929
	LDA.w #DATA_C02F11
	STA.w $0026,y
	LDA.w #DATA_C02F11>>16
	STA.w $0028,y
CODE_C083C6:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $194F
	ORA.w $1951
	BNE.b CODE_C083C6
CODE_C083D7:
	LDX.w $0606
	BNE.b CODE_C083EC
	LDA.w #$0008
	LDX.w !RAM_ROTR_InMatch_P1CurrentHealth
	BNE.b CODE_C083EE
	CPX.w !RAM_ROTR_InMatch_P2CurrentHealth
	BNE.b CODE_C083EE
	INC
	BRA.b CODE_C083EE

CODE_C083EC:
	LDA.b $1A,x
CODE_C083EE:
	ASL
	ASL
	TAX
	LDA.l DATA_C04064,x
	STA.w $194F
	LDA.l DATA_C04064+$02,x
	STA.w $1951
CODE_C083FF:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $194F
	ORA.w $1951
	BNE.b CODE_C083FF
	RTS

CODE_C08411:
	JSR.w CODE_C0B10F
	JSR.w CODE_C0B05F
	JSR.w CODE_C0D9DF
	RTS

DATA_C0841B:
	dd DATA_FF54C2,DATA_F4C258,DATA_F115E8,DATA_FEAAE7,DATA_FF54C2,DATA_EFA84D,DATA_FEAB51,DATA_FF54C2
	dd DATA_F5BCD1,DATA_FEABA7,DATA_FF54C2,DATA_F24061,DATA_FEAC15,DATA_FF54C2,DATA_FEAA6D,DATA_FEAC67
	dd DATA_FF54C2,DATA_F48A1D,DATA_F9B514,$00000000

CODE_C0846B:
	JSR.w CODE_C0ED2B
	JSR.w CODE_C0D38E
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0E29A
	STZ.w $11B4
	STZ.w $11B2
	JSR.w CODE_C0D37C
	JSR.w CODE_C00212
	JSR.w CODE_C0D0CD
	LDX.w #$000A
	JSR.w CODE_C089CB
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	STZ.w $0646
	STZ.w $11A8
	LDA.w #$001D
	SEP.b #$20
	STA.w !REGISTER_BG1HorizScrollOffset
	XBA
	STA.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$7C
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$78
	STA.w !REGISTER_BG2AddressAndSize
	REP.b #$20
	JSR.w CODE_C0DA31
	LDA.w #DATA_C026A7>>16
	STA.b $92
	LDA.w #DATA_C026A7
	STA.b $90
	JSR.w CODE_C0F1BA
	LDA.w #DATA_CAEFCF>>16
	STA.b $92
	LDA.w #DATA_CAEFCF
	STA.b $90
	JSR.w CODE_C0FDC0
	LDA.w #DATA_C023C9>>16
	STA.b $92
	LDA.w #DATA_C023C9
	STA.b $90
	LDY.w #$1975
	JSR.w CODE_C0F1D4
	LDA.w #DATA_C02437>>16
	STA.w $19B9
	LDA.w #DATA_C02437
	STA.w $19B7
	JSR.w CODE_C0E4AA
	STZ.w $1803
	JSR.w CODE_C09DAF
CODE_C084FA:
	LDA.w #DATA_C0841B>>16
	STA.w $1807
	LDA.w #DATA_C0841B
	STA.w $1805
CODE_C08506:
	LDA.w $1805
	LDX.w $1807
	STA.b $90
	STX.b $92
	LDY.w #$0002
	LDA.b [$90]
	ORA.b [$90],y
	BEQ.b CODE_C084FA
	LDA.b [$90]
	STA.b $B0
	LDA.b [$90],y
	STA.b $B2
	LDA.w $1805
	CLC
	ADC.w #$0004
	STA.w $1805
	LDA.b [$B0]
	STA.b $B4
	INC.b $B0
	INC.b $B0
	LDX.w #$0200
	STX.w $11CC
	STZ.b $B6
	LDA.w #$0070
	STA.b $C0
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
CODE_C0854A:
	LDA.b $B6
	CMP.b $B4
	BCS.b CODE_C0857A
	LDA.b [$B0]
	TAX
	INC.b $B0
	INC.b $B0
	LDA.b [$B0]
	INC.b $B0
	INC.b $B0
	STX.b $90
	STA.b $92
	LDA.w #$7CEB
	STA.b $68
	JSR.w CODE_C0A248
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	INC.w $1803
	INC.b $B6
	JMP.w CODE_C0854A

CODE_C0857A:
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0E29A
	LDA.w #$7CC0
	STA.b $24
	LDA.w #$0180
	STA.b $26
	JSR.w CODE_C0D363
	JMP.w CODE_C08506

CODE_C08596:
	JSR.w CODE_C0D9DF
	BRA.b CODE_C08596

CODE_C0859B:
	LDA.w $062E
	CMP.w $062C
	BEQ.b CODE_C085AD
	CMP.w $0628
	BNE.b CODE_C085AD
	LDA.w #$0000
	BRA.b CODE_C085B0

CODE_C085AD:
	LDA.w $0628
CODE_C085B0:
	ASL
	TAX
	LDA.l DATA_C03F7C,x
	LDX.w #$0040
	LDX.w #$0001
	JSR.w CODE_C0B10F
	JSR.w CODE_C0B05F
	JSR.w CODE_C0D9DF
	JSR.w CODE_C08AE7
	LDA.l DATA_C080F6
	STA.w $05FE
	JMP.w CODE_C08352

CODE_C085D2:
	JSR.w CODE_C0836D
	JSR.w CODE_C08AAE
CODE_C085D8:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	JSR.w CODE_C0019A
	JSR.w CODE_C0DA64
	JSR.w CODE_C0D0CD
	LDX.w $0606
	BNE.b CODE_C085F4
	LDA.w $0628
	CMP.w $062E
	BRA.b CODE_C0861D

CODE_C085F4:
	LDA.b $AA,x
	CMP.w $062A
	BCC.b CODE_C0861D
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BNE.b CODE_C0863E
	LDA.w $0642
	BEQ.b CODE_C08620
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C08620
	LDA.w #!Const_ROTR_CharacterID_Supervisor
	CMP.w !RAM_ROTR_Global_CurrentOpponent
	BNE.b CODE_C08617
	JMP.w CODE_C08623

CODE_C08617:
	INC.w !RAM_ROTR_Global_CurrentOpponent
	JMP.w CODE_C08623

CODE_C0861D:
	JMP.w CODE_C0862C

CODE_C08620:
	JMP.w CODE_C08635

CODE_C08623:
	LDA.w #$0003
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C0862C:
	LDA.w #$0002
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C08635:
	LDA.w #$0001
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C0863E:
	LDA.w #$0005
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C08647:
	STZ.w $0630
	JSR.w CODE_C0836D
	LDY.w #$1929
	LDA.w #DATA_C02F27
	STA.w $0026,y
	LDA.w #DATA_C02F27>>16
	STA.w $0028,y
CODE_C0865C:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $194F
	ORA.w $1951
	BNE.b CODE_C0865C
	LDA.w $10C2
	CMP.w $0F74
	BNE.b CODE_C086A1
	LDY.w #$1929
	LDA.w #DATA_C03037
	STA.w $0026,y
	LDA.w #DATA_C03037>>16
	STA.w $0028,y
CODE_C08684:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $194F
	ORA.w $1951
	BNE.b CODE_C08684
	JSR.w CODE_C08A2A
	LDA.w #$0001
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C086A1:
	LDY.w $1032
	LDA.w #$0000
	LDX.w $0F74
	CPX.w $10C2
	BCS.b CODE_C086B7
	LDY.w #$0000
	LDA.w $1032
	BRA.b CODE_C086BF

CODE_C086B7:
	LDX.w #$0001
	STX.w $0630
	BRA.b CODE_C086C5

CODE_C086BF:
	LDX.w #$0002
	STX.w $0630
CODE_C086C5:
	STY.w $0642
	ASL
	ASL
	TAX
	LDA.l DATA_C0403C,x
	STA.w $194F
	LDA.l DATA_C0403C+$02,x
	STA.w $1951
CODE_C086D9:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $1951
	ORA.w $194F
	BNE.b CODE_C086D9
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BNE.b CODE_C0871E
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C0871E
	LDA.w $0630
	CMP.w #$0001
	BEQ.b CODE_C0871E
	LDY.w #$1929
	LDA.w #DATA_C03121
	STA.w $0026,y
	LDA.w #DATA_C03121>>16
	STA.w $0028,y
CODE_C0870D:
	JSR.w CODE_C0D9DF
	LDY.w #$1929
	JSR.w CODE_C0F75C
	LDA.w $194F
	ORA.w $1951
	BNE.b CODE_C0870D
CODE_C0871E:
	JSR.w CODE_C08A2A
	JSR.w CODE_C095AE
	LDA.w $0630
	CMP.w #$0001
	BEQ.b CODE_C0874A
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BNE.b CODE_C08741
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C08741
	LDA.w #$0001
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C08741:
	LDA.w #$0005
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C0874A:
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C0877F
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BNE.b CODE_C0877F
	LDA.w $1032
	CMP.w #$0006
	BNE.b CODE_C0876A
	JSR.w CODE_C0846B
	LDA.w #$0004
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C0876A:
	INC.w !RAM_ROTR_Global_CurrentOpponent
	LDA.w #$0003
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C08776:
	LDA.w #$0001
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C0877F:
	LDA.w #$0005
	STA.w $17F9
	JMP.w CODE_C08352

CODE_C08788:
	JSR.w CODE_C0D9DF
	LDA.w $11BA
	SEP.b #$20
	STA.w !REGISTER_BG2VertScrollOffset
	XBA
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$20
	RTS

CODE_C0879A:
	JSR.w CODE_C0019A
	LDA.w #$0001
	STA.w $11B8
	LDA.w #$0001
	STA.w $11A8
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D0CD
	JSR.w CODE_C0DA27
	LDA.w #$0000
	STA.w $10BC
	STZ.w $0F74
	STZ.w $10C2
	LDA.w #$0001
	STA.w $0628
	LDA.w $17FB
	BNE.b CODE_C087D1
CODE_C087C9:
	JSR.w CODE_C0992B
	LDA.w $11BC
	BNE.b CODE_C087C9
CODE_C087D1:
	JSR.w CODE_C0019A
	JSR.w CODE_C0D9DF
	LDA.w !RAM_ROTR_MainMenu_PlayerSetting
	STA.w !RAM_ROTR_Global_PlayerSetting
	LDA.w !RAM_ROTR_MainMenu_BoutsSetting
	STA.w !RAM_ROTR_Global_BoutsSetting
	LDA.w !RAM_ROTR_MainMenu_TimerSetting
	STA.w !RAM_ROTR_Global_TimerSetting
	LDA.w !RAM_ROTR_MainMenu_DifficultySetting
	STA.w !RAM_ROTR_Global_DifficultySetting
	LDA.w $17FB
	BEQ.b CODE_C0880C
	LDA.w #$0000
	STA.w !RAM_ROTR_Global_PlayerSetting
	LDA.w #$0001
	STA.w !RAM_ROTR_Global_BoutsSetting
	LDA.w #$0004
	STA.w !RAM_ROTR_Global_TimerSetting
	LDA.w #$0002
	STA.w !RAM_ROTR_Global_DifficultySetting
CODE_C0880C:
	LDA.w !RAM_ROTR_Global_BoutsSetting
	DEC
	ASL
	TAX
	LDA.l DATA_C035BF,x
	STA.w $062E
	STA.w $062C
	LSR
	INC
	STA.w $062A
	RTS

CODE_C08822:
	JSR.w CODE_C0019A
	JSR.w CODE_C0D0CD
	JSR.w CODE_C0DA64
	JSR.w CODE_C0DA3B
	JSR.w CODE_C0B558
	JSR.w CODE_C0B59B
	JSR.w CODE_C0D4B9
	JSR.w CODE_C0D1BD
	JSR.w CODE_C0D065
	JSR.w CODE_C0B502
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	LDA.w #$6C00
	STA.w $17C9
	LDA.w #DATA_C0268F>>16
	STA.b $92
	LDA.w #DATA_C0268F
	STA.b $90
	JSR.w CODE_C0F1BA
	LDA.w #DATA_CAEFCF>>16
	STA.b $92
	LDA.w #DATA_CAEFCF
	STA.b $90
	JSR.w CODE_C0FDC0
	LDA.w #DATA_C02297>>16
	STA.b $92
	LDA.w #DATA_C02297
	STA.b $90
	LDY.w #$1975
	JSR.w CODE_C0F1D4
	LDA.w #DATA_C022C9>>16
	STA.b $92
	LDA.w #DATA_C022C9
	STA.b $90
	LDY.w #$19C1
	JSR.w CODE_C0F1D4
	JSR.w CODE_C0019A
	JSR.w CODE_C0E591
	JSR.w CODE_C001B3
	JSR.w CODE_C0D9BB
	JSR.w CODE_C0DA31
	JSR.w CODE_C0AA18
	LDA.w #$0052
	STA.w $02D6
	LDA.w #$0082
	STA.w $02D8
	SEP.b #$20
	LDA.w $063A
	STA.w $0638
	LDX.w !RAM_ROTR_Global_TimerSetting
	DEX
	LDA.l DATA_C035BB,x
	STA.w $0639
	REP.b #$20
	LDA.l DATA_C035BB,x
	AND.w #$00FF
	STA.w $063C
	LDA.w #$0002
	STA.w $060A
	LDA.w #$000A
	STA.w $060C
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $98
	LDA.l DATA_C035E5+$02,x
	STA.b $9A
	LDY.w #$0040
	LDA.b [$98],y
	JSR.w CODE_C0ED02
	JSR.w CODE_C0D9DF
	SEP.b #$20
	LDA.b #$50
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$82
	STA.w !REGISTER_ColorMathInitialSettings
	REP.b #$20
	LDA.w #$0002
	STA.w $03CC
	STZ.w $11AA
	LDA.w #$0004
	STA.w $0130
	STZ.w $0630
	LDA.l DATA_C080F4
	STA.w $05FE
	STZ.w $0306
	RTS

CODE_C0891A:
	STZ.b $34
	LDA.w #$0000
	LDX.w #$0010
	LDY.w #$0000
CODE_C08925:
	STA.w $0038,y
	INY
	INY
	DEX
	BNE.b CODE_C08925
	RTS

CODE_C0892E:
	LDA.w $060A
	BNE.b CODE_C08963
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C08948
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BEQ.b CODE_C08963
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C08948
	BRA.b CODE_C08963

CODE_C08948:
	JSR.w CODE_C0E38A
	LDA.w #DATA_C03F66
	LDX.w #$0002
	JSR.w CODE_C0B10F
	JSR.w CODE_C0B05F
	LDA.w #$1000
	JSR.w CODE_C08964
	LDA.w #$1000
	JSR.w CODE_C08964
CODE_C08963:
	RTS

CODE_C08964:
	TAX
CODE_C08965:
	JSR.w CODE_C0D9DF
	TXA
	LDY.w !RAM_ROTR_MainMenu_PlayerSetting
	DEY
	BEQ.b CODE_C08974
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C08979
CODE_C08974:
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BEQ.b CODE_C08965
CODE_C08979:
	JSR.w CODE_C0D9DF
	TXA
	LDY.w !RAM_ROTR_MainMenu_PlayerSetting
	DEY
	BEQ.b CODE_C08988
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C08979
CODE_C08988:
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C08979
	RTS

CODE_C0898E:
	TAX
CODE_C0898F:
	LDA.w $0308
CODE_C08992:
	CMP.w $0308
	BEQ.b CODE_C08992
	TXA
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C089A2
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C0898F
CODE_C089A2:
	LDA.w $0308
CODE_C089A5:
	CMP.w $0308
	BEQ.b CODE_C089A5
	TXA
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C089A2
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C089A2
	RTS

CODE_C089B6:
	LDX.w #DATA_C08100
	LDY.w #$0000
CODE_C089BC:
	LDA.b $00,x
	STA.w $180D,y
	INX
	INX
	INY
	INY
	CPY.w #$000C
	BCC.b CODE_C089BC
	RTS

CODE_C089CB:
	JSR.w CODE_C0D9DF
	DEX
	BNE.b CODE_C089CB
	RTS

CODE_C089D2:
	PHX
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D73E
	JSR.w CODE_C0D50D
	JSR.w CODE_C0B05F
	JSR.w CODE_C0E38A
	PLX
	DEX
	BNE.b CODE_C089D2
	RTS

CODE_C089E7:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0E082
	JSR.w CODE_C0DA27
	JSR.w CODE_C0019A
	JSR.w CODE_C0DA64
CODE_C089F6:
	JMP.w CODE_C089F6

CODE_C089F9:
	JMP.w [DATA_C080F0]

CODE_C089FC:
	RTL

CODE_C089FD:
	LDA.w $063C
	BEQ.b CODE_C08A29
	LDA.w $060A
	BNE.b CODE_C08A29
	LDA.w $0638
	CMP.w #$0002
	BCS.b CODE_C08A29
	STZ.w $0638
	LDY.w #$0ECA
	LDA.w $0F4E
	CMP.w $109C
	BCS.b CODE_C08A20
	LDY.w #$1018
CODE_C08A20:
	LDA.w #$0001
	STA.w $0306
	JSR.w CODE_C0B287
CODE_C08A29:
	RTS

CODE_C08A2A:
	JSR.w CODE_C0ED1F
	LDA.w #$07D0
	STA.w $03CC
	STZ.w $0646
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	LDA.w #$000648>>16
	STA.b $92
	LDA.w #$000648
	STA.b $90
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0D3A0
	LDX.w #$00F0
	LDY.w #$0020
CODE_C08A55:
	LDA.w $0848,y
	AND.w #$001F
	STA.w $0848,y
	INY
	INY
	DEX
	BNE.b CODE_C08A55
	LDA.w #$0010
	LDX.w #$00D0
	JSR.w CODE_C0E29A
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0FC68
	JSR.w CODE_C0D9DF
	LDY.w #$19C1
	JSR.w CODE_C0FC68
	STZ.w $0646
CODE_C08A81:
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	LDY.w #$19C1
	JSR.w CODE_C0F75C
	LDA.w $199B
	ORA.w $199D
	ORA.w $19E7
	ORA.w $19E9
	BNE.b CODE_C08A81
	STZ.w $060A
	LDA.w #$0004
	STA.w $060A
	LDA.w #$0001
	STA.w $060C
	RTS

CODE_C08AAE:
	LDY.w #$1975
	JSR.w CODE_C0FC68
	JSR.w CODE_C0D9DF
	LDY.w #$19C1
	JSR.w CODE_C0FC68
	STZ.w $0646
CODE_C08AC0:
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	LDY.w #$19C1
	JSR.w CODE_C0F75C
	LDA.w $199B
	ORA.w $199D
	ORA.w $19E7
	ORA.w $19E9
	BNE.b CODE_C08AC0
	LDA.w #$0064
	LDA.w #$001E
	STA.w $060C
	RTS

CODE_C08AE7:
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	LDY.w #$19C1
	JSR.w CODE_C0F75C
	LDA.w $199B
	ORA.w $199D
	ORA.w $19E7
	ORA.w $19E9
	BNE.b CODE_C08AE7
	LDA.w #DATA_C03316
	STA.w $199B
	LDA.w #DATA_C03316>>16
	STA.w $199D
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	INC
	ASL
	ASL
	TAX
	LDA.l DATA_C032F2,x
	STA.w $19E7
	LDA.l DATA_C032F2+$02,x
	STA.w $19E9
	JSR.w CODE_C08B50
	LDA.w #DATA_C032DA
	STA.w $199B
	LDA.w #DATA_C032DA>>16
	STA.w $199D
	LDA.w #DATA_C032E6
	STA.w $19E7
	LDA.w #DATA_C032E6>>16
	STA.w $19E9
	JSR.w CODE_C08B50
	STZ.w $060A
	LDA.w #$FFFF
	STA.w $0646
	JSR.w CODE_C0CCE9
	RTS

CODE_C08B50:
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0B05F
	LDY.w #$19C1
	JSR.w CODE_C0F75C
	LDY.w #$1975
	JSR.w CODE_C0F75C
	LDA.w $199B
	ORA.w $199D
	ORA.w $19E7
	ORA.w $19E9
	BNE.b CODE_C08B50
	RTS

CODE_C08B71:
	PHY
	PHX
	TYA
	LDY.w #$1975
	LDX.w #$19C1
	CMP.w #$0ECA
	BEQ.b CODE_C08B85
	LDY.w #$19C1
	LDX.w #$1975
CODE_C08B85:
	LDA.w #DATA_C03235
	STA.w $0026,y
	LDA.w #DATA_C03235>>16
	STA.w $0028,y
	LDA.w #DATA_C031EF
	STA.b $26,x
	LDA.w #DATA_C031EF>>16
	STA.b $28,x
	PLX
	PLY
	RTS

CODE_C08B9E:
	PHY
	PHX
	TYA
	LDY.w #$1975
	LDX.w #$19C1
	CMP.w #$0ECA
	BEQ.b CODE_C08BB2
	LDY.w #$19C1
	LDX.w #$1975
CODE_C08BB2:
	LDA.w #DATA_C032C4
	STA.b $26,x
	LDA.w #DATA_C032C4>>16
	STA.b $28,x
	LDA.w #DATA_C0328D
	STA.w $0026,y
	LDA.w #DATA_C0328D>>16
	STA.w $0028,y
	PLX
	PLY
	RTS

CODE_C08BCB:
	PHY
	PHX
	LDA.w #DATA_C032C4
	STA.w $199B
	STA.w $19E7
	LDA.w #DATA_C032C4>>16
	STA.w $199D
	STA.w $19E9
	PLX
	PLY
	RTS

CODE_C08BE2:
	PHY
	PHX
	LDA.w #DATA_C032D4
	STA.w $199B
	STA.w $19E7
	LDA.w #DATA_C032D4>>16
	STA.w $199D
	STA.w $19E9
	PLX
	PLY
	RTS

CODE_C08BF9:
	JSR.w CODE_C08BFD
CODE_C08BFC:
	RTL

CODE_C08BFD:
	JSR.w CODE_C0D38E
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0E29A
	STZ.w $11B4
	STZ.w $11B2
	JSR.w CODE_C0D37C
	JSR.w CODE_C0D0CD
	JSR.w CODE_C0019A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$58
	STA.w !REGISTER_BG1AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0E4AA
	LDA.w #DATA_C9D544>>16
	STA.b $92
	LDA.w #DATA_C9D544
	STA.b $90
	LDA.w #$5800
	STA.b $68
	LDA.w #$0002
	STA.w $11CC
	JSR.w CODE_C08C8F
	LDA.w $11AE
	STA.b $90
	LDA.w $11B0
	STA.b $92
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0D3A0
	LDX.w #$0100
	LDA.w #$0000
	JSR.w CODE_C0E29A
	LDA.w #$012C
	STA.b $68
CODE_C08C74:
	JSR.w CODE_C0D9DF
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C08C88
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C08C88
	DEC.b $68
	BNE.b CODE_C08C74
CODE_C08C88:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	RTS

CODE_C08C8F:
	STZ.b $A4
	STZ.b $A6
CODE_C08C93:
	LDY.w #$0000
	LDA.b [$90],y
	CMP.w #$4E52
	BNE.b CODE_C08CB8
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $96
	PLA
	STA.b $94
	BRA.b CODE_C08CC0

CODE_C08CB8:
	LDA.b $90
	STA.b $94
	LDA.b $92
	STA.b $96
CODE_C08CC0:
	LDA.b $90
	PHA
	LDA.b $92
	PHA
	LDY.w #$0000
	LDA.b [$94],y
	INY
	INY
	CLC
	ADC.b [$94],y
	ADC.b $94
	STA.w $11AE
	STA.b $90
	LDA.b $96
	STA.w $11B0
	STA.b $92
	PLA
	STA.b $92
	PLA
	STA.b $90
	JSR.w CODE_C09870
	LDA.b $94
	STA.b $20
	LDA.b $96
	STA.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.w $11CE
	LDY.w #$0002
	LDA.b [$20],y
	CLC
	ADC.b $20
	STA.b $20
	LDA.w $11CC
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0000
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0E4AA
	LDY.w #$0004
	LDA.b [$94],y
	STA.b $7C
	INY
	INY
	LDA.b $68
	STA.b $6A
CODE_C08D2A:
	LDA.b $A4
	ORA.b $A6
	BEQ.b CODE_C08D38
	LDA.b [$A4]
	STA.b $6A
	INC.b $A4
	INC.b $A4
CODE_C08D38:
	LDA.b [$94],y
	CLC
	ADC.b $94
	STA.b $90
	LDA.b $96
	ADC.w #$0000
	STA.b $92
	INY
	INY
	LDA.b [$94],y
	AND.w #$00FF
	STA.b $70
	INY
	LDA.b [$94],y
	AND.w #$00FF
	STA.b $74
	PHY
	LDX.b $70
	LDA.b $74
	JSR.w CODE_C0E4DB
	STA.b $78
	PLY
	INY
	STY.b $7E
	LDA.w #$007E
	STA.b $9A
	LDA.w #$9000
	STA.b $98
	LDA.b $74
	STA.b $76
	LDY.w #$0000
CODE_C08D76:
	LDX.b $70
CODE_C08D78:
	LDA.b [$90],y
	CLC
	ADC.w $11CC
	STA.b [$98]
	INC.b $98
	INC.b $98
	INY
	INY
	DEX
	BNE.b CODE_C08D78
	DEC.b $76
	BNE.b CODE_C08D76
	LDA.b $6A
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$007E
	STA.b $22
	LDA.w #$9000
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C08DA0:
	LDA.b $70
	STA.b $26
	LDA.b $6A
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	LDA.b $70
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C08DA0
	JSR.w CODE_C0E4AA
	DEC.b $7C
	BEQ.b CODE_C08DCD
	LDY.b $7E
	JMP.w CODE_C08D2A

CODE_C08DCD:
	JSR.w CODE_C0E4AA
	RTS

CODE_C08DD1:
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0E29A
	JSR.w CODE_C0D37C
	JSR.w CODE_C0D38E
	JSR.w CODE_C0D0CD
	JSR.w CODE_C0019A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$58
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$5C
	STA.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$60
	STA.w !REGISTER_BG1And2TileDataDesignation
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0D37C
	LDX.w #$0100
	LDA.w #$0000
	JSR.w CODE_C0D46A
	LDA.w #$5C00
	STA.w $11D4
	LDA.w #$6000
	STA.w $11D6
	LDA.w #$0002
	STA.w $11CC
	LDA.w #$0040
	STA.w $11D0
	LDA.w #$2000
	STA.w $11D2
	LDA.w $063A
	CMP.w #$003C
	BNE.b CODE_C08E56
	LDA.w #DATA_C01976>>16
	STA.b $96
	LDA.w #DATA_C01976
	STA.b $94
	BRA.b CODE_C08E60

CODE_C08E56:
	LDA.w #DATA_C00E7F>>16
	STA.b $96
	LDA.w #DATA_C00E7F
	STA.b $94
CODE_C08E60:
	JSR.w CODE_C09292
	LDA.w $11AE
	STA.b $90
	LDA.w $11B0
	STA.b $92
	LDA.w #$0000
	LDX.w #$0010
	JSR.w CODE_C0D3A0
	LDA.w #$0000
	LDX.w #$0010
	JSR.w CODE_C0E29A
	LDA.w #$012C
	STA.b $68
CODE_C08E84:
	JSR.w CODE_C0D9DF
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C08E98
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C08E98
	DEC.b $68
	BNE.b CODE_C08E84
CODE_C08E98:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	RTS

CODE_C08E9F:
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0E29A
	STZ.w $11B4
	STZ.w $11B2
	JSR.w CODE_C0D37C
	LDX.w #$0100
	LDA.w #$0000
	JSR.w CODE_C0D46A
	JSR.w CODE_C0D0CD
	JSR.w CODE_C0019A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_MainScreenLayers
CODE_C08ED0:
	LDA.b #$58
	STA.w !REGISTER_BG1AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0D37C
	LDA.w #$5800
	STA.b $68
	LDA.w #DATA_C04124>>16
	STA.b $92
	LDA.w #DATA_C04124
	STA.b $90
	LDA.w #$0002
	STA.w $11CC
	JSR.w CODE_C08C8F
	LDA.w $11AE
	STA.b $90
	LDA.w $11B0
	STA.b $92
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0D3A0
	LDX.w #$0100
	LDA.w #$0000
	JSR.w CODE_C0E29A
	LDA.w #$0078
	STA.b $68
CODE_C08F1F:
	JSR.w CODE_C0D9DF
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C08F33
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C08F33
	DEC.b $68
	BNE.b CODE_C08F1F
CODE_C08F33:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	RTS

CODE_C08F3A:
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0E29A
	JSR.w CODE_C0D37C
	JSR.w CODE_C0D38E
	JSR.w CODE_C0D0CD
	JSR.w CODE_C0019A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$58
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$5C
	STA.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$60
	STA.w !REGISTER_BG1And2TileDataDesignation
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0D37C
	LDX.w #$0100
	LDA.w #$0000
	JSR.w CODE_C0D46A
	LDA.w #$5C00
	STA.w $11D4
	LDA.w #$6000
	STA.w $11D6
	LDA.w #$0002
	STA.w $11CC
	LDA.w #$0040
	STA.w $11D0
	LDA.w #$2000
	STA.w $11D2
	LDA.w #DATA_C002A0>>16
	STA.b $96
	LDA.w #DATA_C002A0
	STA.b $94
	JSR.w CODE_C09292
	LDA.w $11AE
	STA.b $90
	LDA.w $11B0
	STA.b $92
	LDA.w #$0000
	LDX.w #$0010
	JSR.w CODE_C0D3A0
	LDA.w #$0000
	LDX.w #$0010
	JSR.w CODE_C0E29A
	LDA.w #$012C
	STA.b $68
CODE_C08FD9:
	JSR.w CODE_C0D9DF
	DEC.b $68
	BNE.b CODE_C08FD9
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	RTS

CODE_C08FE7:
	LDA.w #$0002
	STA.w $11CC
	LDA.w #$01C3
	LDA.w #$01E3
	STA.w $11D0
	LDA.w #$2000
	STA.w $11D2
	LDA.w #DATA_C58E2B>>16
	STA.b $96
	LDA.w #DATA_C58E2B
	STA.b $94
	JSR.w CODE_C09292
	LDA.w $11AE
	STA.b $90
	LDA.w $11B0
	STA.b $92
	LDA.w #$0000
	LDX.w #$0010
	JSR.w CODE_C0D3A0
	LDA.w #$0000
CODE_C0901F:
	LDX.w #$0010
	JSR.w CODE_C0E29A
	RTS

CODE_C09026:
	LDA.w #$0000
	STA.w !RAM_ROTR_Global_CurrentDemo
CODE_C0902C:
	SEP.b #$20
	LDA.b #$E0
	STA.w !REGISTER_FixedColorData
	REP.b #$20
	STZ.w !RAM_ROTR_Global_LocalFrameCounter
	STZ.w !RAM_ROTR_TitleScreen_CurrentState
	LDA.w #$0000
	STA.w $11A8
	JSR.w CODE_C0ED2B
	JSR.w CODE_C0D38E
	JSR.w CODE_C0D37C
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0D46A
	STZ.w $11B4
	STZ.w $11B2
	JSR.w CODE_C0019A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	SEP.b #$20
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$23
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$00
	STA.w !REGISTER_ColorMathInitialSettings
	LDA.b #$01
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$68
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$6C
	STA.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$70
	STA.w !REGISTER_BG1And2TileDataDesignation
	LDA.b #$00
	STA.w !REGISTER_MainScreenWindowMask
	LDA.b #$00
	STA.w !REGISTER_SubScreenWindowMask
	REP.b #$20
	LDA.w #$6800
	STA.b $24
	LDA.w #$0800
	STA.b $26
	JSR.w CODE_C0D363
	LDA.w #$6C00
	STA.b $24
	LDA.w #$0800
	STA.b $26
	JSR.w CODE_C0D363
	LDA.w #$0000
	STA.b $24
	LDA.w #$0800
	STA.b $26
	JSR.w CODE_C0D363
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0DA31
	JSR.w CODE_C0D37C
	LDA.w #$6C00
	STA.w $11D4
	LDA.w #$6000
	LDA.w #$7000
	STA.w $11D6
	LDA.w #DATA_C18E0B>>16
	STA.b $B2
	LDA.w #DATA_C18E0B
	STA.b $B0
	LDA.b [$B0]
	STA.b $B4
	INC.b $B0
	INC.b $B0
	LDX.w #$0002
	STX.w $11CC
	STZ.b $B6
	STZ.b $BA
	LDA.w #$0060
	STA.b $C0
	LDX.w #$0000
CODE_C090FF:
	LDA.l DATA_C04890,x
	STA.w $0272,x
	INX
	INX
	CPX.w #$0064
	BCC.b CODE_C090FF
	LDA.w #$FFFF
	STA.w $0282
CODE_C09113:
	JSR.w CODE_C091EE
	LDA.b !RAM_ROTR_TitleScreen_AnimationTimer
	ASL
	ASL
	TAX
	LDA.l $000272,x
	BPL.b CODE_C09125
	STZ.b !RAM_ROTR_TitleScreen_AnimationTimer
	BRA.b CODE_C09113

CODE_C09125:
	LDA.l $000274,x
	STA.w $11CC
	LDA.l $000272,x
	ASL
	ASL
	TAY
	LDA.b [$B0],y
	STA.b $90
	INY
	INY
	LDA.b [$B0],y
	STA.b $92
	LDA.w #$6840
	STA.b $68
	JSR.w CODE_C093B5
	INC.b !RAM_ROTR_TitleScreen_AnimationTimer
	JSR.w CODE_C0D9DF
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09179
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C09179
	LDA.w !RAM_ROTR_TitleScreen_CurrentState
	ASL
	TAX
	LDA.l DATA_C048DC,x
	CMP.w !RAM_ROTR_Global_LocalFrameCounter
	BCS.b CODE_C09113
	LDA.w !RAM_ROTR_TitleScreen_CurrentState
	INC.w !RAM_ROTR_TitleScreen_CurrentState
	CMP.w #$0002
	BCS.b CODE_C0917C
	LDA.w #$0001
	STA.w $0282
	JMP.w CODE_C09113

CODE_C09179:
	JMP.w CODE_C091E4

CODE_C0917C:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	JSR.w CODE_C0ED95
	LDA.w #$0001
	STA.w $17FB
	LDA.w !RAM_ROTR_Global_CurrentDemo
	ASL
	TAX
	LDA.l DATA_C0408C,x
	BPL.b CODE_C0919D
	STZ.w !RAM_ROTR_Global_CurrentDemo
	LDA.l DATA_C0408C
CODE_C0919D:
	STA.w !RAM_ROTR_Global_CurrentOpponent
	INC.w !RAM_ROTR_Global_CurrentDemo
	STZ.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$FFFF
	STA.w $17FB
	JSR.w CODE_C0879A
	JSR.w CODE_C08822
	LDA.w #$0000
	STA.w $0F6E
	STA.w $10BC
	LDA.w #$04B0
	STA.w $17FD
CODE_C091C1:
	DEC.w $17FD
	BMI.b CODE_C091D8
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C091E4
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C091E4
	JSR.w CODE_C082CE
	BEQ.b CODE_C091C1
CODE_C091D8:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	JSR.w CODE_C0019A
	JMP.w CODE_C0902C

CODE_C091E4:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	JSR.w CODE_C0ED95
	RTS

CODE_C091EE:
	LDX.b !RAM_ROTR_TitleScreen_AnimationTimer
	CPX.w #$0005
	BCC.b CODE_C09221
	LDA.w !RAM_ROTR_TitleScreen_CurrentState
	LDY.w #$FFFF
	STY.w $0282
	CPX.w #$000B
	BNE.b CODE_C09221
	CMP.w #$0001
	BNE.b CODE_C09213
	LDA.w #$0001
	STA.w $180B
	JSR.w CODE_C09222
	BRA.b CODE_C09221

CODE_C09213:
	CMP.w #$0002
	BNE.b CODE_C09221
	LDA.w #$0001
	STA.w $180B
	JSR.w CODE_C0925D
CODE_C09221:
	RTS

CODE_C09222:
	JSR.w CODE_C0D9DF
	SEP.b #$20
	AND.b #$1F
	ORA.b #$E0
	STA.w !REGISTER_FixedColorData
	LDA.w $180C
	BEQ.b CODE_C0923F
	DEC.w $180B
	BNE.b CODE_C09255
	REP.b #$20
	STZ.w $180B
	BRA.b CODE_C09255

CODE_C0923F:
	REP.b #$20
	INC.w $180B
	LDA.w $180B
	CMP.w #$0020
	BCC.b CODE_C09255
	JSR.w CODE_C08FE7
	LDA.w #$011F
	STA.w $180B
CODE_C09255:
	REP.b #$20
	LDA.w $180B
	BNE.b CODE_C09222
	RTS

CODE_C0925D:
	JSR.w CODE_C0D9DF
	SEP.b #$20
	AND.b #$1F
	ORA.b #$E0
	STA.w !REGISTER_FixedColorData
	LDA.w $180C
	BEQ.b CODE_C0927A
	DEC.w $180B
	BNE.b CODE_C0928A
	REP.b #$20
	STZ.w $180B
	BRA.b CODE_C0928A

CODE_C0927A:
	REP.b #$20
	INC.w $180B
	LDA.w $180B
	CMP.w #$0020
	BCC.b CODE_C0928A
	STZ.w $180B
CODE_C0928A:
	REP.b #$20
	LDA.w $180B
	BNE.b CODE_C0925D
	RTS

CODE_C09292:
	LDY.w #$0000
	LDA.b [$94],y
	CMP.w #$4E52
	BNE.b CODE_C092BD
	LDA.b $94
	STA.b $90
	LDA.b $96
	STA.b $92
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $96
	PLA
	STA.b $94
CODE_C092BD:
	LDA.b $90
	LDY.w #$0000
	LDA.b [$94],y
	INY
	INY
	CLC
	ADC.b [$94],y
	ADC.b $94
	STA.w $11AE
	LDA.b $96
	STA.w $11B0
	LDA.b $94
	LDX.b $96
	STA.b $20
	STX.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	STA.w $11CE
	LDY.w #$0002
	LDA.b [$20],y
	CLC
	ADC.b $20
	STA.b $20
	LDA.w $11CC
	AND.w #$01FF
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w $11D6
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0E4AA
	LDY.w #$0004
	LDA.b [$94],y
	STA.b $7C
	INY
	INY
	LDA.w $11D0
	CLC
	ADC.w $11D4
	STA.b $6A
CODE_C0931C:
	LDA.b [$94],y
	CLC
	ADC.b $94
	STA.b $90
	LDA.b $96
	ADC.w #$0000
	STA.b $92
	INY
	INY
	LDA.b [$94],y
	AND.w #$00FF
	STA.b $70
	INY
	LDA.b [$94],y
	AND.w #$00FF
	STA.b $74
	PHY
	LDX.b $70
	LDA.b $74
	JSR.w CODE_C0E4DB
	STA.b $78
	PLY
	INY
	STY.b $7E
	LDA.w #$007E
	STA.b $9A
	LDA.w #$9000
	STA.b $98
	LDA.b $74
	STA.b $76
	LDY.w #$0000
CODE_C0935A:
	LDX.b $70
CODE_C0935C:
	LDA.b [$90],y
	CLC
	ADC.w $11CC
	ADC.w $11D2
	STA.b [$98]
	INC.b $98
	INC.b $98
	INY
	INY
	DEX
	BNE.b CODE_C0935C
	DEC.b $76
	BNE.b CODE_C0935A
	LDA.b $6A
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$007E
	STA.b $22
	LDA.w #$9000
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C09387:
	LDA.b $70
	STA.b $26
	LDA.b $6A
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	LDA.b $70
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C09387
	JSR.w CODE_C0E4AA
	DEC.b $7C
	BEQ.b CODE_C093B4
	LDY.b $7E
	JMP.w CODE_C0931C

CODE_C093B4:
	RTS

CODE_C093B5:
	LDA.b [$90]
	CMP.w #$4E52
	BNE.b CODE_C093D5
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $92
	PLA
	STA.b $90
CODE_C093D5:
	LDA.b !RAM_ROTR_TitleScreen_AnimationTimer
	BNE.b CODE_C093EB
	LDY.w #$0000
	LDA.b [$90],y
	INY
	INY
	CLC
	ADC.b [$90],y
	ADC.b $90
	STA.b $BC
	LDA.b $92
	STA.b $BE
CODE_C093EB:
	JSR.w CODE_C0D9DF
	LDA.b $90
	STA.b $20
	LDA.b $92
	STA.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.w $11CE
	INY
	INY
	LDA.b [$20],y
	CLC
	ADC.b $20
	STA.b $20
	LDA.w $11CC
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0000
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0E4AA
	LDA.b !RAM_ROTR_TitleScreen_AnimationTimer
	LDA.w #$007E
	STA.b $9A
	LDA.w #$9000
	STA.b $98
	LDX.w #$0320
	LDA.b $90
	CLC
	ADC.w #$000A
	STA.b $90
	LDY.w #$0000
CODE_C09440:
	LDA.b [$90],y
	CLC
	ADC.w $11CC
	STA.b [$98],y
	INY
	INY
	DEX
	BNE.b CODE_C09440
	LDA.w #$007E
	STA.b $22
	LDA.w #$9000
	STA.b $20
	LDA.w #$0320
	STA.b $26
	LDA.b $68
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b !RAM_ROTR_TitleScreen_AnimationTimer
	CMP.w #$0000
	BNE.b CODE_C0947E
	LDA.b $BC
	CLC
	ADC.w #$0140
	STA.b $90
	LDA.b $BE
	STA.b $92
	LDA.w #$00A0
	LDX.b $C0
	JSR.w CODE_C0D447
CODE_C0947E:
	JSR.w CODE_C0E4AA
	RTS

CODE_C09482:
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$00F0
	JSR.w CODE_C0E29A
	LDA.w #$0640
	STA.b $26
	LDA.w #$7C00
	STA.b $24
	JSR.w CODE_C0D363
	JSR.w CODE_C0EDE2
	JSR.w CODE_C0E38A
	LDA.w #$4000
	STA.b $24
	LDA.w #$2000
	STA.b $26
	JSR.w CODE_C0019A
	LDX.w #$000A
	JSR.w CODE_C089CB
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	LDA.w #$0000
	STA.w $0646
	SEP.b #$20
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$7C
	STA.w !REGISTER_BG1AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0E4AA
	LDA.w #DATA_C026A7>>16
	STA.b $92
	LDA.w #DATA_C026A7
	STA.b $90
	JSR.w CODE_C0F1BA
	LDA.w #DATA_CAEFCF>>16
	STA.b $92
	LDA.w #DATA_CAEFCF
	STA.b $90
	JSR.w CODE_C0FDC0
	LDA.w #DATA_C02365>>16
	STA.b $92
	LDA.w #DATA_C02365
	STA.b $90
	LDY.w #$1975
	JSR.w CODE_C0F1D4
	LDA.w #DATA_C0260C>>16
	STA.w $19B9
	LDA.w #DATA_C0260C
	STA.w $19B7
	LDX.w $11C6
	STX.w $11CC
	LDA.w #DATA_F4C258
	STA.b $B0
	LDA.w #DATA_F4C258>>16
	STA.b $B2
	LDA.b [$B0]
	STA.b $B4
	INC.b $B0
	INC.b $B0
	LDX.w $11C6
	STX.w $11CC
	STZ.b $B6
	LDA.w #$00E0
	STA.b $C0
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
CODE_C0953F:
	LDA.b $B6
	CMP.b $B4
	BCS.b CODE_C0957E
	LDA.b [$B0]
	TAX
	INC.b $B0
	INC.b $B0
	LDA.b [$B0]
	INC.b $B0
	INC.b $B0
	STX.b $90
	STA.b $92
	LDA.w #$7D08
	STA.b $68
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C0957E
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C0957E
	JSR.w CODE_C0A248
	LDA.w $11B8
	PHA
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	PLA
	INC.b $B6
	JMP.w CODE_C0953F

CODE_C0957E:
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$00F0
	JSR.w CODE_C0E29A
	LDA.w #$0640
	STA.b $26
	LDA.w #$7C00
	STA.b $24
	JSR.w CODE_C0D363
	LDY.w #$1975
	JSR.w CODE_C0F24D
	LDA.w #$0640
	STA.b $26
	LDA.w #$7800
	STA.b $24
	JSR.w CODE_C0D363
	JSR.w CODE_C0ED95
	RTS

CODE_C095AE:
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$00F0
	JSR.w CODE_C0E29A
	JSR.w CODE_C0D73E
	JSR.w CODE_C0E38A
	LDA.w #$4000
	STA.b $24
	LDA.w #$2000
	STA.b $26
	JSR.w CODE_C0D363
	JSR.w CODE_C00212
	LDX.w #$000A
	JSR.w CODE_C089CB
	JSR.w CODE_C0D9DF
	LDA.w #$0006
	JSR.w CODE_C0ED02
	STZ.w !RAM_ROTR_Global_LocalFrameCounter
	JSR.w CODE_C0DA27
	LDA.w #$0000
	STA.w $0646
	SEP.b #$20
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$58
	STA.w !REGISTER_BG1AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0E4AA
	LDA.w #$0002
	STA.w $11CC
	STA.w $11C6
	LDA.w $0642
	ASL
	ASL
	TAX
	LDA.l DATA_C040C4,x
	STA.b $B0
	LDA.l DATA_C040C4+$02,x
	STA.b $B2
	LDA.b [$B0]
	STA.b $B4
	INC.b $B0
	INC.b $B0
	LDX.w $11C6
	STX.w $11CC
	STZ.b $B6
	LDA.w #$00E0
	STA.b $C0
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
CODE_C0963F:
	LDA.b $B6
	CMP.b $B4
	BCS.b CODE_C09670
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09689
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C09689
	LDA.b [$B0]
	TAX
	INC.b $B0
	INC.b $B0
	LDA.b [$B0]
	INC.b $B0
	INC.b $B0
	STX.b $90
	STA.b $92
	LDA.w #$5928
	STA.b $68
	JSR.w CODE_C0A248
	INC.b $B6
	JMP.w CODE_C0963F

CODE_C09670:
	JSR.w CODE_C0D9DF
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09689
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C09689
	LDA.w !RAM_ROTR_Global_LocalFrameCounter
	CMP.l DATA_C03CF5
	BCC.b CODE_C09670
CODE_C09689:
	LDA.w $0642
	BNE.b CODE_C0968E
CODE_C0968E:
	LDA.w #$0000
	JSR.w CODE_C0ED02
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	RTS

CODE_C0969B:
	LDY.w #$0000
	LDA.b [$90],y
	CMP.w #$4E52
	BNE.b CODE_C096C0
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $96
	PLA
	STA.b $94
	BRA.b CODE_C096C8

CODE_C096C0:
	LDA.b $90
	STA.b $94
	LDA.b $92
	STA.b $96
CODE_C096C8:
	LDA.b $90
	PHA
	LDA.b $92
	PHA
	LDY.w #$0000
	LDA.b [$94],y
	INY
	INY
	CLC
	ADC.b [$94],y
	ADC.b $94
	ADC.w #$0020
	STA.w $11AE
	STA.b $90
	LDA.b $96
	STA.w $11B0
	STA.b $92
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0D447
	PLA
	STA.b $92
	PLA
	STA.b $90
	JSR.w CODE_C09870
	LDA.b $94
	STA.b $20
	LDA.b $96
	STA.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.w $11CE
	LDY.w #$0002
	LDA.b [$20],y
	CLC
	ADC.b $20
	STA.b $20
	LDA.w $11CC
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0000
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0E4AA
	LDY.w #$0004
	LDA.b [$94],y
	STA.b $7C
	INY
	INY
CODE_C0973A:
	LDA.b [$94],y
	CLC
	ADC.b $94
	STA.b $90
	LDA.b $96
	ADC.w #$0000
	STA.b $92
	INY
	INY
	LDA.b [$94],y
	AND.w #$00FF
	STA.b $70
	INY
	LDA.b [$94],y
	AND.w #$00FF
	STA.b $74
	PHY
	LDX.b $70
	LDA.b $74
	JSR.w CODE_C0E4DB
	STA.b $78
	PLY
	INY
	STY.b $7E
	LDA.w #$007E
	STA.b $9A
	LDA.w #$9000
	STA.b $98
	LDA.b $74
	STA.b $76
	LDY.w #$0000
CODE_C09778:
	LDX.b $70
CODE_C0977A:
	LDA.b [$90],y
	CLC
	ADC.w $11CC
	STA.b [$98]
	INC.b $98
	INC.b $98
	INY
	INY
	DEX
	BNE.b CODE_C0977A
	LDX.b $70
CODE_C0978D:
	DEY
	DEY
	LDA.b [$90],y
	EOR.w #$4000
	CLC
	ADC.w $11CC
	STA.b [$98]
	INC.b $98
	INC.b $98
	DEX
	BNE.b CODE_C0978D
	TYA
	CLC
	ADC.b $70
	ADC.b $70
	TAY
	DEC.b $76
	BNE.b CODE_C09778
	LDA.b $68
	STA.b $6A
	LDA.b $6A
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$007E
	STA.b $22
	LDA.w #$9000
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C097C3:
	LDA.b $70
	LDA.w #$0020
	STA.b $26
	LDA.b $6A
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	LDA.b $70
	ASL
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C097C3
	JSR.w CODE_C0E4AA
	LDA.b $68
	STA.b $6A
	LDA.w #$007E
	STA.b $22
	LDA.w #$9040
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C097FD:
	LDA.b $70
	ASL
	SEC
	SBC.w #$0020
	STA.b $26
	LDA.b $6A
	CLC
	ADC.w #$0400
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	LDA.b $70
	ASL
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C097FD
	JSR.w CODE_C0E4AA
	LDA.b $74
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.b $68
	STA.b $68
	DEC.b $7C
	BEQ.b CODE_C09840
	LDY.b $7E
	JMP.w CODE_C0973A

CODE_C09840:
	JSR.w CODE_C0E4AA
	RTS

CODE_C09844:
	LDA.w #$7F0000>>16
	STA.b $9A
	LDA.w #$7F0000
	STA.b $98
	LDA.b [$94]
	STA.b [$98]
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.b $70
	INC.b $98
	INC.b $98
	LDA.b $98
	STA.b $A0
	LDA.b $94
	INC
	INC
	STA.b $94
	STA.b $9C
	LDA.b $96
	STA.b $9E
	BRA.b CODE_C098B1

CODE_C09870:
	LDA.w #$007F
	STA.b $9A
	LDA.w #$0000
	STA.b $98
	LDY.w #$0002
	LDA.b [$94],y
	LSR
	INC
	TAX
	LDY.w #$0000
CODE_C09885:
	LDA.b [$94],y
	STA.b [$98],y
	INY
	INY
	DEX
	BNE.b CODE_C09885
	LDA.b [$94]
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.b $70
	LDY.w #$0002
	LDA.b [$94],y
	CLC
	ADC.b $94
	STA.b $94
	STA.b $9C
	LDA.b $96
	STA.b $9E
	LDA.b [$98],y
	CLC
	ADC.b $98
	STA.b $98
	STA.b $A0
CODE_C098B1:
	LDA.w #$0008
	STA.b $74
CODE_C098B6:
	LDA.b $70
	STA.b $72
CODE_C098BA:
	LDX.w #$0008
CODE_C098BD:
	SEP.b #$20
	LDA.b [$9C]
	LSR
	ROR.w $0104
	LSR
	ROR.w $0105
	LSR
	ROR.w $0106
	LSR
	ROR.w $0107
	LSR
	ROR.w $0108
	LSR
	ROR.w $0109
	LSR
	ROR.w $010A
	LSR
	ROR.w $010B
	REP.b #$20
	INC.b $9C
	DEX
	BNE.b CODE_C098BD
	LDA.w $0104
	STA.b [$98]
	LDA.w $0106
	LDY.w #$0010
	STA.b [$98],y
	LDA.w $0108
	LDY.w #$0020
	STA.b [$98],y
	LDA.w $010A
	LDY.w #$0030
	STA.b [$98],y
	LDA.b $98
	CLC
	ADC.w #$0040
	STA.b $98
	DEC.b $72
	BNE.b CODE_C098BA
	INC.b $A0
	INC.b $A0
	LDA.b $A0
	STA.b $98
	DEC.b $74
	BEQ.b CODE_C09920
	JMP.w CODE_C098B6

CODE_C09920:
	LDA.w #$007F
	STA.b $96
	LDA.w #$0000
	STA.b $94
	RTS

CODE_C0992B:
	LDA.w #$0008
	JSR.w CODE_C0ED02
	STZ.b $34
	STZ.b $36
	STZ.w $1823
	STZ.w $11BC
	JSR.w CODE_C0891A
	STZ.w $0646
	JSR.w CODE_C0DA27
	JSR.w CODE_C0019A
	STZ.w $11A8
	JSR.w CODE_C0D0CD
	LDX.w #$0100
	LDA.w #$0000
	JSR.w CODE_C0D3F7
	JSR.w CODE_C0D472
	LDA.w $1823
	SEP.b #$20
	STA.w !REGISTER_BG1HorizScrollOffset
	XBA
	STA.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$7C
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$78
	STA.w !REGISTER_BG2AddressAndSize
	LDA.b #$03
	STA.w !REGISTER_BGModeAndTileSizeSetting
	LDA.b #$70
	LDA.b #$70
	STA.w !REGISTER_BG1And2TileDataDesignation
	LDA.b #$13
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$FF
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG2VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG2VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG2HorizScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG2HorizScrollOffset
	LDA.b #$00
	STA.w !REGISTER_InitialScreenSettings
	REP.b #$20
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$00
	STA.w !REGISTER_BG1And2WindowMaskSettings
	LDA.b #$20
	STA.w !REGISTER_ObjectAndColorWindowSettings
	LDA.b #$00
	STA.w !REGISTER_Window1LeftPositionDesignation
	STA.w !REGISTER_Window1RightPositionDesignation
	LDA.b #$01
	STA.w !REGISTER_Window2LeftPositionDesignation
	LDA.b #$7F
	STA.w !REGISTER_Window2RightPositionDesignation
	LDA.b #$01
	STA.w !REGISTER_MainScreenWindowMask
	LDA.b #$01
	STA.w !REGISTER_SubScreenWindowMask
	LDA.b #$50
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$42
	STA.w !REGISTER_ColorMathInitialSettings
	LDA.b #$E0
	STA.w !REGISTER_FixedColorData
	REP.b #$20
	SEP.b #$20
	LDX.w #$0000
	LDY.w #$005E
CODE_C099EB:
	LDA.l DATA_C0811C,x
	STA.w $1825,x
	INX
	DEY
	BNE.b CODE_C099EB
	REP.b #$20
	JSR.w CODE_C0D9DF
	JSR.w CODE_C00258
	LDY.w #$0000
	LDX.w #$0010
	LDA.w #$0000
CODE_C09A07:
	STA.w !RAM_ROTR_Global_CheatInputBuffer,y
	INY
	INY
	DEX
	BNE.b CODE_C09A07
	LDA.w #$0004
	STA.w $03CC
	JSR.w CODE_C0D37C
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0D46A
	LDA.w #DATA_E5A792>>16
	STA.b $92
	LDA.w #DATA_E5A792
	STA.b $90
	LDA.w #$0000
	LDX.w #$0100
	JSR.w CODE_C0D3A0
	LDA.w #$0002
	STA.w $11CC
	LDA.w #$0000
	JSR.w CODE_C0A54B
	JSR.w CODE_C0E4AA
	LDA.w $11CC
	CLC
	ADC.w $11CE
	STA.w $11CC
	STA.w $11C4
	CLC
	ADC.l DATA_C03D70
	STA.w $11C6
	CLC
	ADC.l DATA_C03D72
	STA.w $11C8
	STA.w $11CC
	LDA.w #DATA_D0F966>>16
	STA.b $92
	LDA.w #DATA_D0F966
	STA.b $90
	LDA.w #$00F0
	LDX.w #$0010
	JSR.w CODE_C0D3A0
	JSR.w CODE_C0DA64
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_OAMSizeAndDataAreaDesignation
	REP.b #$20
	STZ.w $0644
	LDA.w #$FFFF
	STA.w $11AC
	JSR.w CODE_C0DA31
	LDA.w #$0080
	LDX.w #$0080
	JSR.w CODE_C0E29A
	LDA.w #$0004
	STA.w $0130
	STZ.b $34
	STZ.b $36
CODE_C09AA1:
	LDA.w #$0001
	STA.b $88
CODE_C09AA6:
	LDA.b $88
	ASL
	ASL
	STA.b $8A
	LDX.w #$0132
	LDA.l DATA_C0223B
	STA.b $00,x
	LDA.l DATA_C0223D
	STA.b $02,x
	LDA.w #$003E
	STA.b $0C,x
	LDA.w #DATA_C30002>>16
	STA.b $9A
	LDA.w #DATA_C30002
	STA.b $98
	LDA.b $8A
	TAY
	LDA.b [$98],y
	STA.b $10,x
	INY
	INY
	LDA.b [$98],y
	STA.b $12,x
	LDA.w #$0009
	STA.b $04,x
	LDA.w #$0008
	STA.b $06,x
	LDA.w #$0000
	STA.b $0E,x
	JSR.w CODE_C0D73E
	JSR.w CODE_C0E4AA
	STZ.b $34
	STZ.b $36
	LDY.w #$0132
	LDA.l DATA_C03D6E
	TAX
	LDA.w #$002D
	STA.w $02DE
	JSR.w CODE_C0DDF9
	LDA.w #$0000
	STA.b $96
	LDA.w #$0132
	STA.b $94
	LDA.l DATA_C03D6E
	JSR.w CODE_C0D936
	JSR.w CODE_C0E38A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	INC.b $88
	LDA.b $88
	CMP.l DATA_C30000
	BCS.b CODE_C09B28
	JMP.w CODE_C09AA6

CODE_C09B28:
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	BNE.b CODE_C09B39
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C09E0F
	JMP.w CODE_C09AA1

CODE_C09B39:
	LDA.w #$0032
	STA.w $011E
	LDA.w #$0000
	JSR.w CODE_C0ED02
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	CMP.w #!Const_ROTR_CharacterID_Loader
	BNE.b CODE_C09B6E
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BNE.b CODE_C09B6E
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C09B6E
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$00F0
	JSR.w CODE_C0E29A
	JSR.w CODE_C09482
	LDA.w #$0000
	JSR.w CODE_C0ED02
CODE_C09B6E:
	JSR.w CODE_C0A48E
	JSR.w CODE_C00258
CODE_C09B74:
	JSR.w CODE_C09FC7
	STZ.w $0120
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C09B86
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BEQ.b CODE_C09BE1
CODE_C09B86:
	LDA.w #!Joypad_DPadR
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09B93
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C09BB6
CODE_C09B93:
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	CMP.w #!Const_ROTR_CharacterID_RedCyborg
	BEQ.b CODE_C09BB6
	CMP.w !RAM_ROTR_Global_HighestSelectableOpponent
	BNE.b CODE_C09BB0
	LDA.w !RAM_ROTR_Global_RedCyborgSelectableFlag
	BEQ.b CODE_C09BB6
	LDA.w #!Const_ROTR_CharacterID_RedCyborg
	INC.w $0120
	STA.w !RAM_ROTR_Global_CurrentOpponent
	BRA.b CODE_C09BB6

CODE_C09BB0:
	INC.w $0120
	INC.w !RAM_ROTR_Global_CurrentOpponent
CODE_C09BB6:
	LDA.w #!Joypad_DPadL
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09BC3
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C09BE1
CODE_C09BC3:
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	CMP.w #!Const_ROTR_CharacterID_RedCyborg
	BNE.b CODE_C09BD6
	LDA.w !RAM_ROTR_Global_HighestSelectableOpponent
	INC.w $0120
	STA.w !RAM_ROTR_Global_CurrentOpponent
	BRA.b CODE_C09BE1

CODE_C09BD6:
	CMP.w #$0001
	BEQ.b CODE_C09BE1
	INC.w $0120
	DEC.w !RAM_ROTR_Global_CurrentOpponent
CODE_C09BE1:
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C09BF2
	LDX.w !RAM_ROTR_Global_1PlayerModeSetting
	DEX
	BNE.b CODE_C09BF2
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	BNE.b CODE_C09C22
CODE_C09BF2:
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09BFF
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C09C05
CODE_C09BFF:
	LDA.w #$8000
	STA.w $0120
CODE_C09C05:
	LDA.w $0120
	BMI.b CODE_C09C15
	BNE.b CODE_C09C0F
	JMP.w CODE_C09B74

CODE_C09C0F:
	JSR.w CODE_C0D38E
	JMP.w CODE_C09AA1

CODE_C09C15:
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09C15
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C09C15
CODE_C09C22:
	LDX.w #$0080
	LDA.w #$0000
	LDY.w #$0100
CODE_C09C2B:
	STA.w $0848,y
	INY
	INY
	DEX
	BNE.b CODE_C09C2B
	LDA.w #$0080
	LDX.w #$0080
	JSR.w CODE_C0E29A
	SEP.b #$20
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	REP.b #$20
	LDY.w #$0000
	LDX.w #$001E
CODE_C09C4B:
	JSR.w CODE_C0D9DF
	TYA
	SEP.b #$20
	STA.w !REGISTER_BG1HorizScrollOffset
	XBA
	STA.w !REGISTER_BG1HorizScrollOffset
	REP.b #$20
	INY
	DEX
	BNE.b CODE_C09C4B
	LDA.w #DATA_C026A7>>16
	STA.b $92
	LDA.w #DATA_C026A7
	STA.b $90
	JSR.w CODE_C0F1BA
	LDA.w #DATA_CAEFCF>>16
	STA.b $92
	LDA.w #DATA_CAEFCF
	STA.b $90
	JSR.w CODE_C0FDC0
	LDA.w #DATA_C02333>>16
	STA.b $92
	LDA.w #DATA_C02333
	STA.b $90
	LDY.w #$1975
	JSR.w CODE_C0F1D4
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	DEC
	ASL
	ASL
	ASL
	TAX
	LDY.w #$1975
	LDA.l DATA_C026D7,x
	STA.w $0042,y
	LDA.l DATA_C026D7+$02,x
	STA.w $0044,y
	JSR.w CODE_C09DBB
	JSR.w CODE_C0EDC0
	SEP.b #$20
	LDA.b #$01
	STA.w $1825
	REP.b #$20
CODE_C09CB0:
	JSR.w CODE_C0D9DF
	LDA.w $011E
	BEQ.b CODE_C09CBD
	DEC.w $011E
	BNE.b CODE_C09CBD
CODE_C09CBD:
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09D37
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C09D37
	LDY.w #$1975
	JSR.w CODE_C0F75C
	JSR.w CODE_C09DFE
	LDA.w $199B
	ORA.w $199D
	BNE.b CODE_C09CB0
	SEP.b #$20
	STZ.w $182F
	REP.b #$20
	LDA.w #$20D0
	STA.w $1832
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	DEC
	ASL
	ASL
	ASL
	TAX
	LDY.w #$1975
	LDA.l DATA_C026D7+$04,x
	STA.w $0042,y
	LDA.l DATA_C026D7+$06,x
	STA.w $0044,y
CODE_C09D01:
	JSR.w CODE_C0D9DF
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09D37
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C09D37
	LDY.w #$1975
	JSR.w CODE_C0F75C
	JSR.w CODE_C09DFE
	SEP.b #$20
	LDA.w $182F
	REP.b #$20
	AND.w #$00FF
	CMP.w #$007E
	BCC.b CODE_C09D01
	LDA.w $199B
	ORA.w $199D
	BNE.b CODE_C09D01
	LDX.w #$0078
	JSR.w CODE_C089CB
CODE_C09D37:
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0E29A
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0DA27
	SEP.b #$20
	STZ.w $1825
	LDA.b #$E0
	STA.w !REGISTER_FixedColorData
	LDA.b #$02
	STA.w !REGISTER_ColorMathInitialSettings
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$01
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	REP.b #$20
	JSR.w CODE_C0DA31
	JSR.w CODE_C0DA27
	SEP.b #$20
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	REP.b #$20
	JSR.w CODE_C0DA31
	LDA.w #DATA_C02333>>16
	STA.b $92
	LDA.w #DATA_C02333
	STA.b $90
	LDY.w #$1975
	JSR.w CODE_C0F24D
	JSR.w CODE_C0ED95
	LDX.w !RAM_ROTR_Global_CinematicsSetting
	DEX
	BNE.b CODE_C09D9C
	JSR.w CODE_C0A08F
CODE_C09D9C:
	JSR.w CODE_C0D9CF
	JSR.w CODE_C0DA27
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0019A
	LDA.w #$0001
	STA.w $11A8
	RTS

CODE_C09DAF:
	LDA.w #DATA_DEF701>>16
	STA.b $92
	LDA.w #DATA_DEF701
	STA.b $90
	BRA.b CODE_C09DC5

CODE_C09DBB:
	LDA.w #DATA_D9DF91>>16
	STA.b $92
	LDA.w #DATA_D9DF91
	STA.b $90
CODE_C09DC5:
	LDA.w #$7C00
	STA.b $68
	LDA.w #DATA_C03F1C>>16
	STA.b $A6
	LDA.w #DATA_C03F1C
	STA.b $A4
	LDA.w #$0002
	STA.w $11CC
	JSR.w CODE_C08C93
	LDA.w $11AE
	CLC
	ADC.w #$0100
	STA.b $90
	LDA.w $11B0
	STA.b $92
	LDA.w #$0080
	LDX.w #$0070
	JSR.w CODE_C0D3A0
	LDX.w #$0070
	LDA.w #$0080
	JSR.w CODE_C0E29A
	RTS

CODE_C09DFE:
	SEP.b #$20
	LDA.w $182F
	INC
	INC
	CMP.b #$80
	BCS.b CODE_C09E0C
	STA.w $182F
CODE_C09E0C:
	REP.b #$20
	RTS

CODE_C09E0F:
	LDA.w !RAM_ROTR_MainMenu_PlayerSetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$0008
	JSR.w CODE_C09EE1
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	CMP.w #$0003
	BNE.b CODE_C09E71
	LDA.w !RAM_ROTR_MainMenu_DifficultySetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$000A
	JSR.w CODE_C09EE1
	STA.w !RAM_ROTR_MainMenu_DifficultySetting
	LDA.w !RAM_ROTR_MainMenu_TimerSetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$000B
	JSR.w CODE_C09EE1
	STA.w !RAM_ROTR_MainMenu_TimerSetting
	LDA.w !RAM_ROTR_Global_CinematicsSetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$000C
	JSR.w CODE_C09EE1
	STA.w !RAM_ROTR_Global_CinematicsSetting
	LDA.w !RAM_ROTR_Global_SuperMovesSetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$000D
	JSR.w CODE_C09EE1
	STA.w !RAM_ROTR_Global_SuperMovesSetting
	LDA.w !RAM_ROTR_MainMenu_BoutsSetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$000E
	JSR.w CODE_C09EE1
	STA.w !RAM_ROTR_MainMenu_BoutsSetting
	JMP.w CODE_C09E0F

CODE_C09E71:
	STA.w !RAM_ROTR_MainMenu_PlayerSetting
	CMP.w #$0001
	BNE.b CODE_C09E92
	LDA.w !RAM_ROTR_Global_1PlayerModeSetting
	STA.w !RAM_ROTR_MainMenu_CurrentSelection
	LDA.w #$0009
	JSR.w CODE_C09EE1
	STA.w !RAM_ROTR_Global_1PlayerModeSetting
	DEC
	BNE.b CODE_C09E92
	LDA.l DATA_C035B3
	STA.w !RAM_ROTR_Global_CurrentOpponent
CODE_C09E92:
	RTS

; Note: Cheat code inputs. They are stored backwards, so start from the right and go left for what has to be entered in game.

DATA_C09E93:					; Note: Play as Red Cyborg
	dw !Const_ROTR_Button_Fire,!Joypad_DPadD,!Joypad_DPadU,!Joypad_DPadL,!Joypad_DPadD,!Joypad_DPadR,!Joypad_DPadU,$FFFF

DATA_C09EA3:					; Note: Play as Supervisor cheat
	dw !Const_ROTR_Button_Fire,!Joypad_DPadL,!Joypad_DPadD,!Joypad_DPadR,!Joypad_DPadU,$FFFF

DATA_C09EAF:					; Note: Invincibility cheat
	dw !Const_ROTR_Button_Fire,!Joypad_DPadR,!Joypad_DPadL,!Joypad_DPadD,!Const_ROTR_Button_Fire,!Joypad_DPadU,!Const_ROTR_Button_Fire,!Joypad_DPadD
	dw $FFFF

DATA_C09EC1:					; Note: Play ending cheat
	dw !Const_ROTR_Button_Fire,!Joypad_DPadR,!Joypad_DPadL,!Joypad_DPadD,!Const_ROTR_Button_Fire,!Joypad_DPadR,!Const_ROTR_Button_Fire,!Joypad_DPadL
	dw $FFFF

DATA_C09ED3:					; Note: Press Select to freeze screen cheat
	dw !Const_ROTR_Button_Fire,!Joypad_DPadL,!Joypad_DPadR,!Const_ROTR_Button_Fire,!Joypad_DPadR,!Joypad_DPadL,$FFFF

CODE_C09EE1:
	STZ.w !RAM_ROTR_Global_LocalFrameCounter
	JSR.w CODE_C0A4D5
	LDA.w $0602
	SEC
	SBC.w #$0008
	ASL
	TAX
	LDA.l DATA_C03D10,x
	STA.w $0000
	JSR.w CODE_C09F9A
	JSR.w CODE_C0D3C2
	LDA.w #$0010
	LDX.w #$0070
CODE_C09F03:
	JSR.w CODE_C0D43D
	JSR.w CODE_C09F9A
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0D46A
CODE_C09F12:
	JSR.w CODE_C09FC7
	JSR.w CODE_C0D9DF
	LDA.w !RAM_ROTR_Global_LocalFrameCounter
	CMP.w #$04B0
	BCC.b CODE_C09F27
	LDA.w #$1FFE
	TCS
	JMP.w CODE_C08286

CODE_C09F27:
	LDA.b $68
	CMP.w #$0014
	BCC.b CODE_C09F7E
	LDA.w #!Joypad_DPadU
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09F3B
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C09F4A
CODE_C09F3B:
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	CMP.w #$0001
	BEQ.b CODE_C09F4A
	DEC.w !RAM_ROTR_MainMenu_CurrentSelection
	STZ.b $68
	BRA.b CODE_C09F8A

CODE_C09F4A:
	LDA.w #!Joypad_DPadD
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09F57
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C09F66
CODE_C09F57:
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	CMP.w $0000
	BCS.b CODE_C09F66
	INC.w !RAM_ROTR_MainMenu_CurrentSelection
	STZ.b $68
	BRA.b CODE_C09F8A

CODE_C09F66:
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C09F73
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BEQ.b CODE_C09F7E
CODE_C09F73:
	JSR.w CODE_C0D38E
	LDX.w #$0070
	LDA.w #$0010
	BRA.b CODE_C09F8D

CODE_C09F7E:
	LDA.b $68
	CMP.w #$0016
	BCS.b CODE_C09F87
	INC.b $68
CODE_C09F87:
	JMP.w CODE_C09F12

CODE_C09F8A:
	JMP.w CODE_C09F03

CODE_C09F8D:
	JSR.w CODE_C0D38E
	LDA.w #$0010
	LDX.w #$0070
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	RTS

CODE_C09F9A:
	LDA.w #$0070
	LDY.w #$0020
	LDX.w #$0020
	JSR.w CODE_C0D3E6
	LDA.w !RAM_ROTR_MainMenu_CurrentSelection
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	TAY
	LDA.w #$0010
	STA.b $68
	LDX.w #$0000
CODE_C09FB8:
	LDA.w $0A48,x
	STA.w $0648,y
	INX
	INX
	INY
	INY
	DEC.b $68
	BNE.b CODE_C09FB8
	RTS

CODE_C09FC7:
	LDA.w #$C0F0
	STA.b $80
	EOR.w #$FFFF
	STA.b $82
	LDA.w !RAM_ROTR_Global_HeldButtonsP1
	AND.w #$FFF0
	STA.b $78
	STZ.b $7C
	AND.b $80
	BEQ.b CODE_C09FE1
	INC.b $7C
CODE_C09FE1:
	LDA.b $78
	AND.b $82
	ORA.b $7C
	STA.b $78
	LDA.b $78
	BEQ.b CODE_C0A008
	CMP.w !RAM_ROTR_Global_CheatInputBuffer
	BEQ.b CODE_C0A008
	LDX.w #$001E
	LDY.w #$000F
CODE_C09FF8:
	LDA.w !RAM_ROTR_Global_CheatInputBuffer-$02,x
	STA.w !RAM_ROTR_Global_CheatInputBuffer,x
	DEX
	DEX
	DEY
	BNE.b CODE_C09FF8
	LDA.b $78
	STA.w !RAM_ROTR_Global_CheatInputBuffer
CODE_C0A008:
	LDA.w #DATA_C09E93>>16
	STA.b $9E
	LDA.w #DATA_C09E93
	STA.b $9C
	JSR.w CODE_C0A075
	BNE.b CODE_C0A01F
	LDA.w #$0001
	STA.w !RAM_ROTR_Global_RedCyborgSelectableFlag
	BRA.b CODE_C0A074

CODE_C0A01F:
	LDA.w #DATA_C09EA3>>16
	STA.b $9E
	LDA.w #DATA_C09EA3
	STA.b $9C
	JSR.w CODE_C0A075
	BNE.b CODE_C0A036
	LDA.w #!Const_ROTR_CharacterID_Supervisor
	STA.w !RAM_ROTR_Global_HighestSelectableOpponent
	BRA.b CODE_C0A074

CODE_C0A036:
	LDA.w #DATA_C09EAF>>16
	STA.b $9E
	LDA.w #DATA_C09EAF
	STA.b $9C
	JSR.w CODE_C0A075
	BNE.b CODE_C0A04D
	LDA.w #$0001
	STA.w !RAM_ROTR_Global_InvincibilityCheatFlag
	BRA.b CODE_C0A074

CODE_C0A04D:
	LDA.w #DATA_C09EC1>>16
	STA.b $9E
	LDA.w #DATA_C09EC1
	STA.b $9C
	JSR.w CODE_C0A075
	BNE.b CODE_C0A05F
	JMP.w CODE_C0846B

CODE_C0A05F:
	LDA.w #DATA_C09ED3>>16
	STA.b $9E
	LDA.w #DATA_C09ED3
	STA.b $9C
	JSR.w CODE_C0A075
	BNE.b CODE_C0A074
	LDA.w #$0001
	STA.w !RAM_ROTR_Global_CanFreezeScreenWithSelectFlag
CODE_C0A074:
	RTS

CODE_C0A075:
	LDY.w #$0000
CODE_C0A078:
	LDA.b [$9C],y
	BMI.b CODE_C0A08B
	CMP.w !RAM_ROTR_Global_CheatInputBuffer,y
	BNE.b CODE_C0A08B
	INY
	INY
	LDA.b [$9C],y
	BPL.b CODE_C0A078
	LDA.w #$0000
	RTS

CODE_C0A08B:
	LDA.w #$FFFF
	RTS

CODE_C0A08F:
	STA.w $1823
	JSR.w CODE_C0EE04
	LDA.w #$7CC0
	STA.b $24
	LDA.w #$0260
	STA.b $26
	JSR.w CODE_C0D363
	LDA.w #$7800
	STA.b $24
	LDA.w #$0320
	STA.b $26
	JSR.w CODE_C0D363
	JSR.w CODE_C09DBB
	LDA.w #DATA_C026A7>>16
	STA.b $92
	LDA.w #DATA_C026A7
	STA.b $90
	JSR.w CODE_C0F1BA
	LDA.w #DATA_CAEFCF>>16
	STA.b $92
	LDA.w #DATA_CAEFCF
	STA.b $90
	JSR.w CODE_C0FDC0
	LDA.w #DATA_C02397>>16
	STA.b $92
	LDA.w #DATA_C02397
	STA.b $90
	LDY.w #$1975
	JSR.w CODE_C0F1D4
	LDA.w #DATA_C023FB>>16
	STA.w $19B9
	LDA.w #DATA_C023FB
	STA.w $19B7
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	LDA.w #$001D
	SEP.b #$20
	STA.w !REGISTER_BG1HorizScrollOffset
	XBA
	STA.w !REGISTER_BG1HorizScrollOffset
	SEP.b #$20
	LDA.b #$01
	REP.b #$20
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $98
	LDA.l DATA_C035E5+$02,x
	STA.b $9A
	LDY.w #$003C
	LDA.b [$98],y
	TAX
	INY
	INY
	LDA.b [$98],y
	STX.b $B0
	STA.b $B2
	STZ.b $BC
	STZ.b $BE
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	CMP.w #!Const_ROTR_CharacterID_RedCyborg
	BNE.b CODE_C0A139
	LDA.w #DATA_E5C3F4
	STA.b $BC
	LDA.w #DATA_E5C3F4>>16
	STA.b $BE
CODE_C0A139:
	LDA.b [$B0]
	STA.b $B4
	INC.b $B0
	INC.b $B0
	LDX.w $11C6
	STX.w $11CC
	STZ.b $B6
	LDA.w #$0070
	STA.b $C0
CODE_C0A14E:
	LDA.b $B6
	CMP.b $B4
	BCS.b CODE_C0A192
	LDA.b [$B0]
	TAX
	INC.b $B0
	INC.b $B0
	LDA.b [$B0]
	INC.b $B0
	INC.b $B0
	STX.b $90
	STA.b $92
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.w #$7CCB
	STA.b $68
	LDA.w #!Joypad_Start
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C0A1B2
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C0A1B2
	JSR.w CODE_C0A250
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	INC.b $B6
	JMP.w CODE_C0A14E

CODE_C0A192:
	LDA.b $B6
	TAX
CODE_C0A195:
	PHX
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	LDY.w #$1975
	JSR.w CODE_C0F75C
	PLX
	INX
	CPX.w #$0064
	BCC.b CODE_C0A195
CODE_C0A1B2:
	LDX.w #$0032
	JSR.w CODE_C089CB
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	CMP.w #!Const_ROTR_CharacterID_Supervisor
	BNE.b CODE_C0A1C0
CODE_C0A1C0:
	JSR.w CODE_C0ED95
	RTS

CODE_C0A1C4:
	LDA.b [$90]
	CMP.w #$4E52
	BNE.b CODE_C0A1E4
	LDA.w #$007E
	STA.b $96
	LDA.w #$9000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $92
	PLA
	STA.b $90
CODE_C0A1E4:
	INC.b $90
	INC.b $90
	LDA.b [$90]
	INC.b $90
	INC.b $90
	STA.b $78
	TAX
	BNE.b CODE_C0A1F4
	RTS

CODE_C0A1F4:
	LDA.w #$007E
	STA.b $96
	LDA.w #$2002
	STA.b $94
CODE_C0A1FE:
	LDA.b [$90]
	INC.b $90
	INC.b $90
	TAX
	BPL.b CODE_C0A234
	AND.w #$C000
	CMP.w #$8000
	BNE.b CODE_C0A21A
	TXA
	AND.w #$3FFF
	CLC
	ADC.b $94
	STA.b $94
	BRA.b CODE_C0A243

CODE_C0A21A:
	TXA
	EOR.w #$FFFF
	CLC
	ADC.w #$0002
	TAX
	LDA.b [$90]
CODE_C0A225:
	STA.b [$94]
	INC.b $94
	INC.b $94
	DEX
	BNE.b CODE_C0A225
	INC.b $90
	INC.b $90
	BRA.b CODE_C0A243

CODE_C0A234:
	LDA.b [$90]
	STA.b [$94]
	INC.b $94
	INC.b $94
	INC.b $90
	INC.b $90
	DEX
	BNE.b CODE_C0A234
CODE_C0A243:
	DEC.b $78
	BNE.b CODE_C0A1FE
	RTS

CODE_C0A248:
	LDA.b $B6
	BNE.b CODE_C0A250
	STZ.b $BC
	STZ.b $BE
CODE_C0A250:
	LDA.b $B6
	BEQ.b CODE_C0A263
	JSR.w CODE_C0A1C4
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	BRA.b CODE_C0A2BF

CODE_C0A263:
	LDA.b [$90]
	CMP.w #$4E52
	BNE.b CODE_C0A292
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $96
	PLA
	STA.b $94
	LDA.b $BC
	ORA.b $BE
	BNE.b CODE_C0A290
	LDY.w #$0000
	LDA.b [$94],y
	CLC
	ADC.b $94
	ADC.w #$0002
	STA.b $BC
	LDA.b $96
	STA.b $BE
CODE_C0A290:
	BRA.b CODE_C0A2BF

CODE_C0A292:
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDY.w #$0000
	LDA.b [$90],y
	STA.b [$94],y
	LSR
	TAX
CODE_C0A2A5:
	INY
	INY
	LDA.b [$90],y
	STA.b [$94],y
	DEX
	BNE.b CODE_C0A2A5
	LDY.w #$0000
	LDA.b [$90],y
	CLC
	ADC.b $90
	ADC.w #$0002
	STA.b $BC
	LDA.b $92
	STA.b $BE
CODE_C0A2BF:
	JSR.w CODE_C0D9DF
	LDA.b $94
	STA.b $20
	LDA.b $96
	STA.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.b $84
	INC.b $20
	INC.b $20
	LDA.w $11CC
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0000
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0E4AA
	LDA.b $B6
	BNE.b CODE_C0A351
	LDA.w #$0010
	STA.b $70
	LDA.w #$000C
	STA.b $74
	LDA.b $68
	STA.b $6A
	LDA.w #$7F0000>>16
	STA.b $9A
	LDA.w #$7F0000
	STA.b $98
	LDA.w $11CC
	LDX.w #$00C0
	LDY.w #$0000
CODE_C0A319:
	STA.b [$98],y
	CLC
	ADC.w #$0001
	INY
	INY
	DEX
	BNE.b CODE_C0A319
	LDA.w #$007F
	STA.b $22
	LDA.w #$0000
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C0A332:
	LDA.b $70
	STA.b $26
	LDA.b $6A
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C0A332
CODE_C0A351:
	LDA.b $B6
	CMP.w #$0001
	BNE.b CODE_C0A36C
	LDA.b $BC
	CLC
	ADC.w #$0020
	STA.b $90
	LDA.b $BE
	STA.b $92
	LDA.w #$0010
	LDX.b $C0
	JSR.w CODE_C0D447
CODE_C0A36C:
	JSR.w CODE_C0E4AA
	RTS

CODE_C0A370:
	LDA.b $B6
	BEQ.b CODE_C0A383
	JSR.w CODE_C0A1C4
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	BRA.b CODE_C0A3D9

CODE_C0A383:
	LDA.b [$90]
	CMP.w #$4E52
	BNE.b CODE_C0A3AC
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $96
	PLA
	STA.b $94
	LDY.w #$0000
	LDA.b [$94],y
	CLC
	ADC.b $94
	ADC.w #$0002
	STA.b $BC
	LDA.b $96
	STA.b $BE
	BRA.b CODE_C0A3D9

CODE_C0A3AC:
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDY.w #$0000
	LDA.b [$90],y
	STA.b [$94],y
	LSR
	TAX
CODE_C0A3BF:
	INY
	INY
	LDA.b [$90],y
	STA.b [$94],y
	DEX
	BNE.b CODE_C0A3BF
	LDY.w #$0000
	LDA.b [$90],y
	CLC
	ADC.b $90
	ADC.w #$0002
	STA.b $BC
	LDA.b $92
	STA.b $BE
CODE_C0A3D9:
	JSR.w CODE_C0D9DF
	JSR.w CODE_C09844
	LDA.b $94
	STA.b $20
	LDA.b $96
	STA.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.w $11CE
	INC.b $20
	INC.b $20
	LDA.w $11CC
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0000
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0E4AA
	LDA.b $B6
	BNE.b CODE_C0A46F
	LDA.w #$0010
	STA.b $70
	LDA.w #$000C
	STA.b $74
	LDA.b $68
	STA.b $6A
	LDA.w #$7F0000>>16
	STA.b $9A
	LDA.w #$7F0000
	STA.b $98
	LDA.w $11CC
	LDX.w #$00C0
	LDY.w #$0000
CODE_C0A437:
	STA.b [$98],y
	CLC
	ADC.w #$0001
	INY
	INY
	DEX
	BNE.b CODE_C0A437
	LDA.w #$007F
	STA.b $22
	LDA.w #$0000
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C0A450:
	LDA.b $70
	STA.b $26
	LDA.b $6A
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C0A450
CODE_C0A46F:
	LDA.b $B6
	CMP.w #$0001
	BNE.b CODE_C0A48A
	LDA.b $BC
	CLC
	ADC.w #$0020
	STA.b $90
	LDA.b $BE
	STA.b $92
	LDA.w #$0010
	LDX.b $C0
	JSR.w CODE_C0D447
CODE_C0A48A:
	JSR.w CODE_C0E4AA
	RTS

CODE_C0A48E:
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0D9DF
	LDY.w #$0020
	LDX.w #$0070
CODE_C0A49A:
	LDA.w $0648,y
	AND.w #$0000
	STA.w $0648,y
	INY
	INY
	DEX
	BNE.b CODE_C0A49A
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0D46A
	JSR.w CODE_C0D9DF
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	JSR.w CODE_C0A4D5
	LDA.b $90
	CLC
	ADC.w #$0020
	STA.b $90
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0D3A0
	LDA.w #$0010
	LDX.w #$0070
	JSR.w CODE_C0E29A
	RTS

CODE_C0A4D5:
	STA.w $0602
	SEC
	SBC.w #$0001
	ASL
	ASL
	TAX
	INX
	INX
	LDA.l DATA_C2FF22-$02,x
	STA.b $90
	LDA.l DATA_C2FF22,x
	STA.b $92
	JSR.w CODE_C0E4AA
	LDA.b [$90]
	CMP.w #$4E52
	BNE.b CODE_C0A510
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $92
	PLA
	STA.b $90
CODE_C0A510:
	LDA.w #$7CC4
	STA.b $68
	LDA.w $11C8
	CMP.w $11CC
	BNE.b CODE_C0A520
	LDA.w $11C6
CODE_C0A520:
	STA.w $11CC
	JSR.w CODE_C0A5BA
	JSR.w CODE_C0D43D
	LDA.w #$7E2000>>16
	STA.b $92
	LDA.w #$7E2000
	STA.b $90
	LDY.w #$0000
	LDA.b [$90],y
	INY
	INY
	CLC
	ADC.b [$90],y
	ADC.b $90
	STA.b $90
	LDA.w #$0000
	LDX.w #$0080
	JSR.w CODE_C0D3B5
	RTS

CODE_C0A54B:
	ASL
	ASL
	STA.b $68
	ASL
	CLC
	ADC.b $68
	STA.b $68
	LDA.w #DATA_C30002>>16
	STA.b $AA
	LDA.w #DATA_C30002
	STA.b $A8
	LDA.b $A8
	CLC
	ADC.b $68
	STA.b $A8
	LDY.w #$0000
	LDA.b [$A8],y
	TAX
	INY
	INY
	LDA.b [$A8],y
	STA.b $92
	STX.b $90
	LDA.b [$90]
	CMP.w #$4E52
	BNE.b CODE_C0A594
	LDA.w #$007E
	STA.b $96
	LDA.w #$2000
	STA.b $94
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSR.w CODE_C0E4C3
	PLA
	STA.b $92
	PLA
	STA.b $90
CODE_C0A594:
	LDY.w #$0004
	LDA.b [$A8],y
	LDA.w #$0000
	SEC
	LSR
	LSR
	LSR
	STA.b $68
	INY
	INY
	LDA.b [$A8],y
	LDA.w #$0000
	AND.w #$00F8
	ASL
	ASL
	CLC
	ADC.b $68
	LDA.w #$0000
	CLC
	ADC.w #$7C00
	STA.b $68
CODE_C0A5BA:
	LDA.b $90
	STA.b $94
	LDA.b $92
	STA.b $96
	JSR.w CODE_C09870
	LDA.w #$7F0000>>16
	STA.b $92
	LDA.w #$7F0000
	STA.b $90
	LDA.b $90
	STA.b $20
	LDA.b $92
	STA.b $22
	LDY.w #$0000
	LDA.b [$20],y
	LSR
	STA.b $26
	LSR
	LSR
	LSR
	LSR
	LSR
	STA.w $11CE
	LDY.w #$0002
	LDA.b [$20],y
	CLC
	ADC.b $20
	STA.b $20
	LDA.w $11CC
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0000
	STA.b $24
	JSR.w CODE_C0E46C
	JSR.w CODE_C0E4AA
	LDY.w #$0004
	LDA.b [$90],y
	STA.b $7C
	INY
	INY
CODE_C0A60E:
	LDA.b [$90],y
	CLC
	ADC.b $90
	STA.b $94
	LDA.b $92
	ADC.w #$0000
	STA.b $96
	INY
	INY
	LDA.b [$90],y
	AND.w #$00FF
	STA.b $70
	INY
	LDA.b [$90],y
	AND.w #$00FF
	STA.b $74
	INY
	STY.b $7E
	LDA.w #$007E
	STA.b $9A
	LDA.w #$9000
	STA.b $98
	LDA.b $74
	STA.b $76
	LDY.w #$0000
CODE_C0A641:
	LDX.b $70
CODE_C0A643:
	LDA.b [$94],y
	CLC
	ADC.w $11CC
	STA.b [$98]
	INC.b $98
	INC.b $98
	INY
	INY
	DEX
	BNE.b CODE_C0A643
	DEC.b $76
	BNE.b CODE_C0A641
	LDA.b $68
	STA.b $6A
	LDA.w #$007E
	STA.b $22
	LDA.w #$9000
	STA.b $20
	LDA.b $74
	STA.b $76
CODE_C0A66A:
	LDA.b $70
	STA.b $26
	LDA.b $6A
	STA.b $24
	JSR.w CODE_C0E46C
	LDA.b $6A
	CLC
	ADC.w #$0020
	STA.b $6A
	LDA.b $26
	ASL
	CLC
	ADC.b $20
	STA.b $20
	DEC.b $76
	BNE.b CODE_C0A66A
	JSR.w CODE_C0E4AA
	LDA.b $6A
	STA.b $68
	LDY.b $7E
	DEC.b $7C
	BEQ.b CODE_C0A699
	JMP.w CODE_C0A60E

CODE_C0A699:
	RTS

CODE_C0A69A:
	LDA.w $05FC
	ASL.w $05FC
	EOR.w $05FC
	ROL
	BCC.b CODE_C0A6A9
	INC.w $05FC
CODE_C0A6A9:
	LDA.w $05FC
	RTS

CODE_C0A6AD:
	JSR.w CODE_C0A86A
	LDY.w #$0C52
	LDA.w #$0000
	STA.b $70
	LDA.w #$0010
	STA.b $68
CODE_C0A6BD:
	LDA.w $0002,y
	BNE.b CODE_C0A6C5
	JMP.w CODE_C0A771

CODE_C0A6C5:
	LDA.w $0610
	AND.w #$000F
	BNE.b CODE_C0A6D7
	LDA.w $0004,y
	INC
	AND.w #$0003
	STA.w $0004,y
CODE_C0A6D7:
	LDA.w $0610
	AND.w #$0001
	BEQ.b CODE_C0A6E2
	JMP.w CODE_C0A76E

CODE_C0A6E2:
	LDA.w $0010,y
	CLC
	ADC.w #$00C0
	STA.w $0010,y
	CLC
	ADC.w $0016,y
	STA.w $0016,y
	STA.b $6A
	XBA
	AND.w #$00FF
	LDX.b $6A
	BPL.b CODE_C0A700
	ORA.w #$FF00
CODE_C0A700:
	CLC
	ADC.w $0002,y
	STA.w $0002,y
	LDA.w $0016,y
	AND.w #$00FF
	STA.w $0016,y
	LDA.w $0012,y
	CMP.w $0002,y
	BCS.b CODE_C0A741
	STA.w $0002,y
	LDA.w $0010,y
	BMI.b CODE_C0A726
	LSR
	CLC
	EOR.w #$FFFF
	INC
CODE_C0A726:
	STA.w $0010,y
	LDA.w $000C,y
	INC
	STA.w $000C,y
	CMP.w #$000A
	BEQ.b CODE_C0A77F
	LDA.w $0004,y
	DEC
	AND.w #$0003
	STA.w $0004,y
	BRA.b CODE_C0A76E

CODE_C0A741:
	LDA.w $000E,y
	CLC
	ADC.w $0014,y
	STA.w $0014,y
	STA.b $6A
	XBA
	AND.w #$00FF
	LDX.b $6A
	BPL.b CODE_C0A758
	ORA.w #$FF00
CODE_C0A758:
	CLC
	ADC.w $0000,y
	STA.w $0000,y
	LDA.w $0014,y
	AND.w #$00FF
	STA.w $0014,y
	LDA.w $0000,y
	CMP.w #$013F
CODE_C0A76E:
	JSR.w CODE_C0A787
CODE_C0A771:
	TYA
	CLC
	ADC.w #$001A
	TAY
	DEC.b $68
	BEQ.b CODE_C0A77E
	JMP.w CODE_C0A6BD

CODE_C0A77E:
	RTS

CODE_C0A77F:
	LDA.w #$0000
	STA.w $0002,y
	BRA.b CODE_C0A771

CODE_C0A787:
	LDA.w $0002,y
	CLC
	ADC.w #$000A
	STA.b $7C
	LDA.w $0000,y
	PHX
	TAX
	BMI.b CODE_C0A7A7
	CMP.w #$018F
	BCC.b CODE_C0A79F
	LDA.w #$018F
CODE_C0A79F:
	ASL
	TAX
	LDA.l DATA_C039D5,x
	BRA.b CODE_C0A7BD

CODE_C0A7A7:
	EOR.w #$FFFF
	INC
	CMP.w #$018F
	BCC.b CODE_C0A7B3
	LDA.w #$018F
CODE_C0A7B3:
	ASL
	TAX
	LDA.l DATA_C039D5,x
	EOR.w #$FFFF
	INC
CODE_C0A7BD:
	PLX
	CLC
	ADC.w #$FFF6
	STA.b $78
	LDA.w $0004,y
	CLC
	ADC.w #$0000
	STA.b $74
	LDA.w $000A,y
	AND.w #$0007
	ASL
	ORA.w #$0030
	STA.b $6C
	PHY
	JSR.w CODE_C0DACA
	PLY
	RTS

CODE_C0A7DF:
	LDA.w $0002,y
	CLC
	ADC.w #$000A
	STA.b $02,x
	STA.b $16,x
	LDA.w $0000,y
	PHX
	TAX
	BMI.b CODE_C0A801
	CMP.w #$018F
	BCC.b CODE_C0A7F9
	LDA.w #$018F
CODE_C0A7F9:
	ASL
	TAX
	LDA.l DATA_C039D5,x
	BRA.b CODE_C0A817

CODE_C0A801:
	EOR.w #$FFFF
	INC
	CMP.w #$018F
	BCC.b CODE_C0A80D
	LDA.w #$018F
CODE_C0A80D:
	ASL
	TAX
	LDA.l DATA_C039D5,x
	EOR.w #$FFFF
	INC
CODE_C0A817:
	PLX
	CLC
	ADC.w #$FFF6
	STA.b $00,x
	SEC
	SBC.w #$000C
	STA.b $14,x
	LDA.w #$0010
	CLC
	ADC.b $8A
	STA.b $08,x
	INC
	INC
	STA.b $1C,x
	LDA.w #$0032
	STA.b $0C,x
	LDA.w #$0072
	STA.b $20,x
	STZ.b $0E,x
	STZ.b $22,x
	LDA.w #$0001
	STA.b $04,x
	STA.b $06,x
	STA.b $18,x
	STA.b $1A,x
	LDA.w $0004,y
	ASL
	CLC
	ADC.w #$0020
	STA.b $0A,x
	STA.b $1E,x
	PHY
	PHX
	TXA
	TAY
	PHY
	JSR.w CODE_C0DB39
	PLY
	TYA
	CLC
	ADC.w #$0014
	TAY
	JSR.w CODE_C0DB39
	PLX
	PLY
	RTS

CODE_C0A86A:
	LDY.w #$0DF2
	LDX.w #$0182
	LDA.w #$0003
	STA.b $88
	STZ.b $8A
CODE_C0A877:
	LDA.w $0002,y
	BEQ.b CODE_C0A893
	JSR.w CODE_C0A7DF
	LDA.w $0610
	AND.w #$0001
	BNE.b CODE_C0A893
	LDA.w $0004,y
	INC
	STA.w $0004,y
	CMP.w #$0008
	BCS.b CODE_C0A8A8
CODE_C0A893:
	TYA
	CLC
	ADC.w #$0010
	TAY
	TXA
	CLC
	ADC.w #$0028
	TAX
	INC.b $8A
	INC.b $8A
	DEC.b $88
	BNE.b CODE_C0A877
	RTS

CODE_C0A8A8:
	LDA.w #$0000
	STA.w $0002,y
	BRA.b CODE_C0A893

CODE_C0A8B0:
	LDA.w $0C4C
	SEC
	SBC.w #$0014
	STA.w $0C4C
	JSR.w CODE_C0A98D
	LDA.w $0C48
	STA.b $68
	BNE.b CODE_C0A8C5
	RTS

CODE_C0A8C5:
	LDA.w #$0010
	STA.b $6C
	LDA.w #$0000
	STA.b $A2
	LDA.w #$0C52
	STA.b $A0
CODE_C0A8D4:
	LDY.w #$0002
	LDA.b [$A0],y
	BEQ.b CODE_C0A8DE
	JMP.w CODE_C0A97D

CODE_C0A8DE:
	JSR.w CODE_C0A69A
	PHA
	AND.w #$0007
	CLC
	ADC.w $0C4A
	CLC
	ADC.w #$0004
	LDY.w #$0000
	STA.b [$A0],y
	PLA
	LSR
	LSR
	LSR
	LSR
	AND.w #$0007
	CLC
	ADC.w $0C4C
	ADC.w #$0010
	LDY.w #$0002
	STA.b [$A0],y
	JSR.w CODE_C0A69A
	AND.w #$0003
	LDY.w #$0004
	STA.b [$A0],y
	JSR.w CODE_C0A69A
	STA.b $6A
	AND.w #$001F
	LDX.w #$0010
	JSR.w CODE_C0E4DB
	LSR.b $6A
	BCC.b CODE_C0A92A
	EOR.w #$FFFF
	CLC
	ADC.w #$0001
CODE_C0A92A:
	LDY.w #$000E
	STA.b [$A0],y
	LDA.w $0C4E
	ASL
	ASL
	ASL
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$F800
	LDY.w #$0010
	STA.b [$A0],y
	JSR.w CODE_C0A69A
	AND.w #$0007
	ASL
	CLC
	ADC.w #$00BE
	LDY.w #$0012
	STA.b [$A0],y
	JSR.w CODE_C0A69A
	TAY
	AND.w #$0001
	TAX
	TYA
	LSR
	LSR
	TYA
	ADC.w #$0000
	LDA.w #$0000
	LDY.w #$000C
	STA.b [$A0],y
	LDA.w $0C50
	LDY.w #$000A
	STA.b [$A0],y
	LDA.w #$0000
	LDY.w #$0006
	STA.b [$A0],y
	DEC.b $68
	BEQ.b CODE_C0A98C
CODE_C0A97D:
	LDA.b $A0
	CLC
	ADC.w #$001A
	STA.b $A0
	DEC.b $6C
	BEQ.b CODE_C0A98C
	JMP.w CODE_C0A8D4

CODE_C0A98C:
	RTS

CODE_C0A98D:
	LDA.w #$0003
	STA.b $68
	LDX.w #$0DF2
CODE_C0A995:
	LDA.b $02,x
	BNE.b CODE_C0A9A6
	LDA.w $0C4A
	STA.b $00,x
	LDA.w $0C4C
	STA.b $02,x
	STZ.b $04,x
	RTS

CODE_C0A9A6:
	TXA
	CLC
	ADC.w #$0010
	TAX
	DEC.b $68
	BNE.b CODE_C0A995
	RTS

CODE_C0A9B1:
	SEI
	SEP.b #$20
	LDA.b #$B1
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	REP.b #$20
	LDA.l DATA_C00064
	STA.w !REGISTER_HCountTimerLo
	CLI
	RTS

CODE_C0A9C4:
	LDX.w #$3000
	LDY.w #$0032
	SEP.b #$20
	LDA.w !REGISTER_PPUStatusFlag2
	REP.b #$20
	BIT.w #!PPUStatusFlag2_ConsoleRegion
	BNE.b CODE_C0A9DC
	LDX.w #$1000
	LDY.w #$003C
CODE_C0A9DC:
	STX.w $03C4
	STY.w $063A
	RTS

CODE_C0A9E3:
	JSR.w CODE_C0D9DF
	SEI
	SEP.b #$20
	LDA.b #$81
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	REP.b #$20
	CLI
	RTS

CODE_C0A9F2:
	RTS

CODE_C0A9F3:
	LDY.b $98
	LDA.w $001A,y
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $A8
	LDA.l DATA_C035E5+$02,x
	STA.b $AA
	LDY.w #$0022
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.b $98
	STA.w $0032,y
	STA.w $0082,y
	RTS

CODE_C0AA18:
	LDA.w $1032
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $A8
	LDA.l DATA_C035E5+$02,x
	STA.b $AA
	LDY.w #$0034
	LDA.b [$A8],y
	STA.b $90
	INY
	INY
	LDA.b [$A8],y
	STA.b $92
	ORA.b $90
	BEQ.b CODE_C0AA4B
	LDA.w #$007F
	STA.b $96
	LDA.w #$0000
	STA.b $94
	JSR.w CODE_C0E4C3
CODE_C0AA4B:
	LDA.l $7F0008
	XBA
	STA.w $1172
	STA.w $1170
	LDA.l $7F000A
	XBA
	STA.w $1174
	LDA.l $7F0007
	AND.w #$00FF
	STA.w $02E6
	LDA.l $7F0006
	AND.w #$00FF
	STA.w $02E8
	LDX.w $02E6
	JSR.w CODE_C0E4DB
	ASL
	ASL
	CLC
	ADC.w #$000C
	STA.w $0EBE
	TAX
	LDA.l $7F0000,x
	AND.w #$00FF
	ASL
	ASL
	CLC
	ADC.w $0EBE
	INC
	STA.w $0EC0
	RTS

CODE_C0AA94:
	LDA.w $0ED4
	SEC
	SBC.w $0ECC
	STA.b $68
	LDX.w #$1018
	LDA.w $1022
	SEC
	SBC.w $101A
	STA.b $6C
	ORA.b $68
	BEQ.b CODE_C0AABB
	LDA.b $6C
	CMP.b $68
	BCS.b CODE_C0AAB8
	LDX.w #$0ECA
	LDA.b $68
CODE_C0AAB8:
	STX.w $17F7
CODE_C0AABB:
	LDY.w $1172
	CPY.w #$0029
	BCS.b CODE_C0AAC4
	LSR
CODE_C0AAC4:
	STA.w $17F5
	BRA.b CODE_C0AAE6

CODE_C0AAC9:
	LDA.b $20,x
	CMP.w #$0012
	BEQ.b CODE_C0AAE6
	CMP.w #$0015
	BEQ.b CODE_C0AAE6
	CMP.w #$0016
	BEQ.b CODE_C0AAE6
	CMP.w #$0022
	BEQ.b CODE_C0AAE6
	CMP.w #$001C
	BEQ.b CODE_C0AAE6
	BRA.b CODE_C0AAF6

CODE_C0AAE6:
	LDA.w $1170
	SEC
	SBC.w $17F5
	BCS.b CODE_C0AAF2
	LDA.w #$0000
CODE_C0AAF2:
	STA.w $1170
	RTS

CODE_C0AAF6:
	LDA.w $1170
	SEC
	SBC.w $17F5
	BCS.b CODE_C0AB02
	LDA.w #$0000
CODE_C0AB02:
	CLC
	ADC.w $1170
	LSR
	STA.w $1170
	RTS

CODE_C0AB0B:
	LDA.w $1172
	STA.w $1170
	LDA.w $05FE
	BEQ.b CODE_C0AB17
	RTS

CODE_C0AB17:
	LDA.w #$0000
	STA.b $92
	LDA.w #$0ECA
	STA.b $90
	LDA.w #$0000
	STA.b $96
	LDA.w #$1018
	STA.b $94
	LDA.l DATA_C03D7C
	BMI.b CODE_C0AB34
	STA.w $0EEE
CODE_C0AB34:
	LDA.l DATA_C03D7C+$02
	BMI.b CODE_C0AB3D
	STA.w $103C
CODE_C0AB3D:
	LDX.w $02E6
	LDA.w $0EEE
	JSR.w CODE_C0E4DB
	CLC
	ADC.w $103C
	ASL
	ASL
	CLC
	ADC.w #$000C
	TAX
	STX.w $181B
	LDA.l $7F0000,x
	STA.w $181F
	LDA.l $7F0002,x
	STA.w $1821
	LDA.l $7F0000,x
	BNE.b CODE_C0AB6B
	JMP.w CODE_C0ABCB

CODE_C0AB6B:
	LDA.l $7F0002,x
	BEQ.b CODE_C0AB74
	JMP.w CODE_C0AC1E

CODE_C0AB74:
	BRA.b CODE_C0ABC8

CODE_C0AB76:
	LDA.l $7F0000,x
	AND.w #$00FF
	STA.b $68
	LDA.w $1018
	SEC
	SBC.w $0ECA
	BCS.b CODE_C0AB8F
	EOR.w #$FFFF
	CLC
	ADC.w #$0001
CODE_C0AB8F:
	SEC
	SBC.w $1174
	SEC
	SBC.b $68
	BPL.b CODE_C0ABC8
	BEQ.b CODE_C0ABC8
	STA.b $68
	LDA.w $0ECA
	CLC
	ADC.b $68
	STA.w $0ECA
	LDA.w $1170
	SEC
	SBC.b $68
	STA.w $1170
	LDA.w $0ECA
	SEC
	SBC.w $0EDC
	BPL.b CODE_C0ABC8
	STA.b $68
	LDA.w $0EDC
	STA.w $0ECA
	LDA.w $1018
	SEC
	SBC.b $68
	STA.w $1018
CODE_C0ABC8:
	JMP.w CODE_C0AEFA

CODE_C0ABCB:
	BRA.b CODE_C0ABC8

CODE_C0ABCD:
	LDA.l $7F0002,x
	AND.w #$00FF
	BEQ.b CODE_C0ABC8
	STA.b $68
	LDA.w $0ECA
	SEC
	SBC.w $1018
	BCS.b CODE_C0ABE8
	EOR.w #$FFFF
	CLC
	ADC.w #$0001
CODE_C0ABE8:
	SEC
	SBC.w $1174
	BMI.b CODE_C0ABC8
	BEQ.b CODE_C0ABC8
	LDA.w $1018
	SEC
	SBC.b $68
	STA.w $1018
	LDA.w $1170
	SEC
	SBC.b $68
	STA.w $1170
	LDA.w $1018
	SEC
	SBC.w $102A
	BPL.b CODE_C0ABC8
	STA.b $68
	LDA.w $102A
	STA.w $1018
	LDA.w $0EDC
	CLC
	ADC.b $68
	STA.w $0EDC
	BRA.b CODE_C0ABC8

CODE_C0AC1E:
	LDA.w $1046
	CMP.w $0EF8
	BNE.b CODE_C0AC96
	LDA.l $7F0000,x
	AND.w #$00FF
	STA.b $78
	LDA.l $7F0001,x
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0AC42
	EOR.w #$FFFF
	CLC
	ADC.w #$0001
CODE_C0AC42:
	AND.w #$00FF
	STA.b $70
	INC.b $70
	LDA.l $7F0003,x
	AND.w #$00FF
	STA.b $74
	STZ.b $84
	LDA.w $1018
	SEC
	SBC.w $0ECA
	STA.w $181D
	BCS.b CODE_C0AC66
	EOR.w #$FFFF
	INC
	DEC.b $84
CODE_C0AC66:
	STA.b $7A
	CMP.w #$00FF
	BCS.b CODE_C0AC96
	LDA.b $78
	CMP.b $7A
	BCC.b CODE_C0AC96
	LDA.w $0ECC
	CLC
	ADC.w #$0100
	STA.b $78
	LDA.w $101A
	CLC
	ADC.w #$0100
	STA.b $7A
	LDA.b $78
	SEC
	SBC.b $7A
	BCS.b CODE_C0AC90
	EOR.w #$FFFF
	INC
CODE_C0AC90:
	CMP.b $70
	BCS.b CODE_C0AC96
	BRA.b CODE_C0AC99

CODE_C0AC96:
	JMP.w CODE_C0AEFA

CODE_C0AC99:
	LDA.w #$FFFF
	STA.w $0F78
	STA.w $10C6
	LDX.w $0EC0
	LDA.l $7F0000,x
	AND.w #$00FF
	BEQ.b CODE_C0ACD8
	TAY
	INX
CODE_C0ACB0:
	LDA.l $7F0000,x
	AND.w #$00FF
	CMP.w $103C
	BEQ.b CODE_C0ACC5
	INX
	INX
	INX
	INX
	DEY
	BNE.b CODE_C0ACB0
	BRA.b CODE_C0ACD8

CODE_C0ACC5:
	STX.w $10C4
	LDA.l $7F0003,x
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$0003
	STA.w $10C6
CODE_C0ACD8:
	LDX.w $0EBE
	LDA.l $7F0000,x
	AND.w #$00FF
	BEQ.b CODE_C0AD0E
	TAY
	INX
CODE_C0ACE6:
	LDA.l $7F0000,x
	AND.w #$00FF
	CMP.w $0EEE
	BEQ.b CODE_C0ACFB
	INX
	INX
	INX
	INX
	DEY
	BNE.b CODE_C0ACE6
	BRA.b CODE_C0AD0E

CODE_C0ACFB:
	STX.w $0F76
	LDA.l $7F0003,x
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$0003
	STA.w $0F78
CODE_C0AD0E:
	LDA.w $10C6
	SEC
	SBC.w $0F78
	BPL.b CODE_C0AD1A
	JMP.w CODE_C0AE09

CODE_C0AD1A:
	LDA.w $0EF8
	BNE.b CODE_C0AD26
	LDA.w $181D
	BMI.b CODE_C0AD50
	BRA.b CODE_C0AD2B

CODE_C0AD26:
	LDA.w $181D
	BPL.b CODE_C0AD50
CODE_C0AD2B:
	LDA.w $0FA4
	BNE.b CODE_C0AD50
	LDA.w !RAM_ROTR_Global_InvincibilityCheatFlag
	BNE.b CODE_C0AD50
	LDX.w $10C4
	STX.w $0EC2
	LDA.w $10C6
	BMI.b CODE_C0AD50
	LDA.w $1028
	BIT.w #$1000
	BNE.b CODE_C0AD50
	ORA.w #$1000
	STA.w $1028
	BRA.b CODE_C0AD53

CODE_C0AD50:
	JMP.w CODE_C0AEFA

CODE_C0AD53:
	LDA.w $05FE
	BNE.b CODE_C0ADB0
	LDA.w $1098
	STA.b $84
	LDA.w $0EE8
	ASL
	LDY.w $0ED4
	CPY.w $0ECC
	BEQ.b CODE_C0AD6C
	LDA.w #$0004
CODE_C0AD6C:
	STA.b $70
	LDA.l $7F0003,x
	AND.w #$001F
	STA.b $6C
	LDA.l $7F0003,x
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$0001
	CLC
	ADC.b $70
	TAX
	LDA.l DATA_C0EFDD,x
	AND.w #$00FF
	BIT.w #$0080
	BNE.b CODE_C0ADB0
	STA.w $0EEA
	LDA.w $0EDA
	AND.w #$DF7B
	STA.w $0EDA
	STZ.w $0ED8
	STZ.w $0FC6
	LDA.w #$0001
	STA.w $0EE8
	STZ.w $0F80
	BRA.b CODE_C0ADF2

CODE_C0ADB0:
	LDA.b $84
	LSR
	LSR
	STA.b $84
	LDX.w #$0ECA
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0002
	LDA.b [$98],y
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0ADCE
	ORA.w #$FF00
CODE_C0ADCE:
	ORA.w #$0000
	ASL
	EOR.w #$FFFF
	INC
	CLC
	ADC.w $0F6C
	STA.w $0F6C
	LDX.w #$0ECA
	JSR.w CODE_C0CEC8
	LDA.w #$0000
	STA.b $92
	LDA.w #$0ECA
	STA.b $90
	JSR.w CODE_C0EC42
	BRA.b CODE_C0AE02

CODE_C0ADF2:
	LDA.w #$0000
	STA.b $92
	LDA.w #$1018
	STA.b $90
	JSR.w CODE_C0EC42
	JSR.w CODE_C0ECCA
CODE_C0AE02:
	LDY.w #$0ECA
	JSR.w CODE_C0AEFE
	RTS

CODE_C0AE09:
	LDA.w $1046
	BNE.b CODE_C0AE15
	LDA.w $181D
	BMI.b CODE_C0AE3A
	BRA.b CODE_C0AE1A

CODE_C0AE15:
	LDA.w $181D
	BPL.b CODE_C0AE3A
CODE_C0AE1A:
	LDA.w $10F2
	BNE.b CODE_C0AE3A
	LDX.w $0F76
	STX.w $0EC2
	LDA.w $0F78
	BMI.b CODE_C0AE3A
	LDA.w $0EDA
	BIT.w #$1000
	BNE.b CODE_C0AE3A
	ORA.w #$1000
	STA.w $0EDA
	BRA.b CODE_C0AE3D

CODE_C0AE3A:
	JMP.w CODE_C0AEFA

CODE_C0AE3D:
	LDA.w $05FE
	BNE.b CODE_C0AE9D
	JSR.w CODE_C0C5DB
	LDA.w $0F4A
	STA.b $84
	LDA.w $1036
	ASL
	LDY.w $1022
	CPY.w $101A
	BEQ.b CODE_C0AE59
	LDA.w #$0004
CODE_C0AE59:
	STA.b $70
	LDA.l $7F0003,x
	AND.w #$001F
	STA.b $6C
	LDA.l $7F0003,x
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$0001
	CLC
	ADC.b $70
	TAX
	LDA.l DATA_C0EFDD,x
	AND.w #$00FF
	BIT.w #$0080
	BNE.b CODE_C0AE9D
	STA.w $1038
	LDA.w $1028
	AND.w #$DF7B
	STA.w $1028
	STZ.w $1026
	STZ.w $1114
	LDA.w #$0001
	STA.w $1036
	STZ.w $10CE
	BRA.b CODE_C0AEDF

CODE_C0AE9D:
	LDA.b $84
	LSR
	LSR
	STA.b $84
	LDX.w #$1018
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0002
	LDA.b [$98],y
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0AEBB
	ORA.w #$FF00
CODE_C0AEBB:
	ORA.w #$0000
	ASL
	EOR.w #$FFFF
	INC
	CLC
	ADC.w $10BA
	STA.w $10BA
	LDX.w #$1018
	JSR.w CODE_C0CEC8
	LDA.w #$0000
	STA.b $92
	LDA.w #$1018
	STA.b $90
	JSR.w CODE_C0EC42
	BRA.b CODE_C0AEEF

CODE_C0AEDF:
	LDA.w #$0000
	STA.b $92
	LDA.w #$0ECA
	STA.b $90
	JSR.w CODE_C0EC42
	JSR.w CODE_C0ECCA
CODE_C0AEEF:
	LDY.w #$1018
	JSR.w CODE_C0AEFE
	RTS

CODE_C0AEF6:
	LDA.w #$FFFF
	RTS

CODE_C0AEFA:
	LDA.w #$0000
	RTS

CODE_C0AEFE:
	STY.b $A0
	LDA.w $060A
	BEQ.b CODE_C0AF06
	RTS

CODE_C0AF06:
	LDA.w $00C2,y
	STA.b $A4
	LDX.b $A4
	LDA.b $6C
	STA.b $86,x
	LDY.b $A0
	LDA.b $84
	LSR
	LSR
	LSR
	LSR
	LSR
	BNE.b CODE_C0AF1F
	LDA.w #$0001
CODE_C0AF1F:
	STA.b $70
	LDX.b $A4
	LDA.b $8E,x
	STA.b $80
	TAX
	LDA.b $70
	JSR.w CODE_C0E4F4
	TAX
	LDA.b $6C
	JSR.w CODE_C0E4F4
	TAX
	LDA.l DATA_C03CF7
	JSR.w CODE_C0E512
	LSR
	STA.b $74
	LDX.b $A4
	STA.b $88,x
	CLC
	LDY.b $A0
	ADC.w $0084,y
	STA.w $0084,y
	LDX.b $C2,y
	LDA.b $74
	LSR
	CLC
	ADC.b $A6,x
	STA.b $A6,x
	LDA.w $0082,y
	SEC
	SBC.b $74
	STA.w $0082,y
	BCS.b CODE_C0AF66
	LDA.w #$0000
	STA.w $0082,y
CODE_C0AF66:
	LDA.w $0082,y
	BNE.b CODE_C0AF70
	LDY.b $A0
	JMP.w CODE_C0B287

CODE_C0AF70:
	LDA.w $001A,y
	JSR.w CODE_C0ECE5
	LDA.b $84
	TAX
	LDA.w #$0009
	JSR.w CODE_C0E512
	CLC
	ADC.w #$0003
	CMP.w #$000A
	BCS.b CODE_C0AF8B
	LDA.w #$000A
CODE_C0AF8B:
	LDY.b $A0
	CPY.w #$1018
	BEQ.b CODE_C0AF96
	EOR.w #$FFFF
	INC
CODE_C0AF96:
	LDX.b $2E,y
	BPL.b CODE_C0AF9E
	EOR.w #$FFFF
	INC
CODE_C0AF9E:
	STA.b $6C
	STA.w $008C,y
	LDX.b $A4
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $A0
	BIT.w #$0008
	BNE.b CODE_C0AFC0
	LDA.w #$0003
	CLC
	LDX.b $A4
	ADC.b $90,x
	STA.b $90,x
CODE_C0AFC0:
	LDA.b $84
	TAX
	STA.w $0C4E
	LDA.w #$0012
	JSR.w CODE_C0E512
	STA.w $0C48
	TAX
	BNE.b CODE_C0AFDE
	LDA.w #$0001
	STA.w $0C48
	LDA.w #$0012
	STA.w $0C4E
CODE_C0AFDE:
	LDX.w $0EC2
	LDA.l $7F0001,x
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0AFF0
	ORA.w #$FF00
CODE_C0AFF0:
	ORA.w #$0000
	ASL
	CLC
	LDY.b $A4
	ADC.w $003A,y
	STA.b $70
	LDA.w $002E,y
	EOR.b $70
	STA.b $70
	LDA.w $0000,y
	CLC
	ADC.b $70
	STA.w $0C4A
	LDA.l $7F0002,x
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0B01B
	ORA.w #$FF00
CODE_C0B01B:
	ORA.w #$0000
	CLC
	ADC.w $0002,y
	ADC.w $003C,y
	STA.w $0C4C
	LDY.b $A0
	LDA.w $008A,y
	AND.w #$0007
	STA.w $0C50
	JSR.w CODE_C0A8B0
	LDX.b $A4
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0002
	LDA.b [$98],y
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0B04D
	ORA.w #$FF00
CODE_C0B04D:
	ORA.w #$0000
	ASL
	LDY.b $A4
	ADC.w $00A2,y
	STA.w $00A2,y
	LDX.b $A4
	JSR.w CODE_C0CEC8
	RTS

CODE_C0B05F:
	LDY.w #$0000
	LDX.w #$0004
CODE_C0B065:
	LDA.w $0E7A,y
	BNE.b CODE_C0B06D
	JMP.w CODE_C0B100

CODE_C0B06D:
	PHY
	LDA.w $0E78,y
	STA.b $A8
	LDA.l DATA_C0029E
	STA.b $AA
	LDA.w $0E80,y
	STA.b $A4
	LDA.w $0E82,y
	STA.b $A6
	LDA.w $0E7A,y
	BPL.b CODE_C0B0AE
	LDA.w $0E7C,y
	STA.b $68
	LDA.w $0E7E,y
	STA.b $6C
	LDA.b $A4
	ORA.b $A6
	BEQ.b CODE_C0B0A0
	LDA.w $0E86,y
	INC
	ASL
	TAY
	LDA.b [$A4],y
CODE_C0B0A0:
	JSR.w CODE_C0B18F
	PLY
	PHY
	LDA.w $0E7A,y
	AND.w #$7FFF
	STA.w $0E7A,y
CODE_C0B0AE:
	PLY
	LDA.w $0E80,y
	STA.b $A4
	LDA.w $0E82,y
	STA.b $A6
	ORA.b $A4
	BEQ.b CODE_C0B0EF
	LDA.w $0E84,y
	INC
	STA.w $0E84,y
	CMP.b [$A4]
	BCC.b CODE_C0B0EF
	LDA.w $0E86,y
	INC
	INC
	ASL
	CLC
	ADC.b $A4
	STA.b $A4
	LDA.b [$A4]
	BMI.b CODE_C0B0EF
	LDA.w $0E86,y
	INC
	STA.w $0E86,y
	LDA.w #$0000
	STA.w $0E84,y
	LDA.w $0E7A,y
	ORA.w #$8000
	STA.w $0E7A,y
	BRA.b CODE_C0B0FB

CODE_C0B0EF:
	LDA.w $0E7A,y
	DEC
	STA.w $0E7A,y
	AND.w #$7FFF
	BEQ.b CODE_C0B100
CODE_C0B0FB:
	PHY
	JSR.w CODE_C0B26B
	PLY
CODE_C0B100:
	TYA
	CLC
	ADC.w #$0010
	TAY
	CPY.w #$0040
	BCS.b CODE_C0B10E
	JMP.w CODE_C0B065

CODE_C0B10E:
	RTS

CODE_C0B10F:
	PHA
	STA.b $AC
	LDA.l DATA_C0029E
	STA.b $AE
	LDY.w #$000C
	LDA.b [$AC],y
	STA.b $68
	INY
	INY
	LDA.b [$AC],y
	STA.b $6C
	PLA
	LDY.w #$0000
CODE_C0B129:
	PHA
	LDA.w $0E7A,y
	BNE.b CODE_C0B16C
	PLA
	STA.b $AC
	STA.w $0E78,y
	TXA
	ORA.w #$8000
	STA.w $0E7A,y
	LDA.l DATA_C0029E
	STA.b $AE
	LDA.b $68
	STA.w $0E7C,y
	LDA.b $6C
	STA.w $0E7E,y
	INC.b $AC
	INC.b $AC
	INC.b $AC
	INC.b $AC
	LDA.b [$AC]
	STA.w $0E80,y
	INC.b $AC
	INC.b $AC
	LDA.b [$AC]
	STA.w $0E82,y
	LDA.w #$0000
	STA.w $0E84,y
	STA.w $0E86,y
	RTS

CODE_C0B16C:
	TYA
	CLC
	ADC.w #$0010
	TAY
	PLA
	CPY.w #$0040
	BCC.b CODE_C0B129
	RTS

CODE_C0B179:
	JSR.w CODE_C0B17D
	RTS

CODE_C0B17D:
	LDY.w #$0000
	LDX.w #$0020
	LDA.w #$0000
CODE_C0B186:
	STA.w $0E78,y
	INY
	INY
	DEX
	BNE.b CODE_C0B186
	RTS

CODE_C0B18F:
	TAY
	BNE.b CODE_C0B197
	LDY.w #$0000
	LDA.b [$A8],y
CODE_C0B197:
	DEC
	ASL
	ASL
	ASL
	INC
	INC
	CLC
	ADC.w #DATA_E5B22B
	STA.b $A0
	LDA.w #DATA_E5B22B>>16
	STA.b $A2
	LDY.w #$0000
	LDA.b [$A0],y
	STA.b $98
	INY
	INY
	LDA.b [$A0],y
	STA.b $9A
	LDY.w #$0008
	LDA.b [$A8],y
	STA.b $AC
	LDY.w #$0000
	LDA.b [$98],y
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	INY
	INY
	CLC
	ADC.b [$98],y
	ADC.b $98
	STA.b $90
	LDA.b $9A
	STA.b $92
	LDY.w #$0010
	LDA.b [$A8],y
	AND.w #$001E
	ASL
	ASL
	ASL
	LDX.w #$0010
	JSR.w CODE_C0D447
	LDX.b $AC
	LDA.b $98
	STA.b $10,x
	LDA.b $9A
	STA.b $12,x
	LDY.w #$0004
	LDA.b [$A0],y
	LSR
	EOR.w #$FFFF
	INC
	CLC
	ADC.b $68
	STA.b $00,x
	LDA.b $6C
	STA.b $02,x
	LDY.w #$0008
	LDA.b [$98],y
	AND.w #$00FF
	LDX.b $AC
	STA.b $04,x
	INY
	LDA.b [$98],y
	AND.w #$00FF
	LDX.b $AC
	STA.b $06,x
	LDY.w #$0014
	LDA.b [$A8],y
	LDX.b $AC
	STA.b $08,x
	LDY.w #$0012
	LDA.b [$A8],y
	LDX.b $AC
	STA.b $0A,x
	LDY.w #$0010
	LDA.b [$A8],y
	LDX.b $AC
	STA.b $0C,x
	LDA.w #$0000
	LDX.b $AC
	STA.b $0E,x
	LDY.w #$0012
	LDA.b [$A8],y
	TAX
	LDY.w #$0014
	LDA.b [$A8],y
	STA.w $02DE
	LDY.b $AC
	JSR.w CODE_C0DC65
	PHX
	PHY
	JSR.w CODE_C0E38A
	PLY
	PLX
	LDA.b $AC
	STA.b $94
	LDA.w #$0000
	STA.b $96
	LDY.w #$0012
	LDA.b [$A8],y
	JSR.w CODE_C0D936
	JSR.w CODE_C0D9DF
	NOP
	RTS

CODE_C0B26B:
	LDY.w #$0008
	LDA.b [$A8],y
	STA.b $AC
	LDY.w #$0012
	LDA.b [$A8],y
	TAX
	LDY.w #$0014
	LDA.b [$A8],y
	STA.w $02DE
	LDY.b $AC
	JSR.w CODE_C0DC65
	TAX
	RTS

CODE_C0B287:
	LDA.w $060A
	BEQ.b CODE_C0B28D
	RTS

CODE_C0B28D:
	STY.b $90
	STZ.w $0606
	LDA.b $90
	LDX.b $C2,y
	STX.b $94
	LDA.w $0F4E
	CMP.w $109C
	BEQ.b CODE_C0B2B0
	STX.w $0606
	INC.b $AA,x
	LDA.w #$0011
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	BRA.b CODE_C0B2D2

CODE_C0B2B0:
	LDA.w $062C
	CMP.w $062E
	BNE.b CODE_C0B2BB
	INC.w $062E
CODE_C0B2BB:
	JSR.w CODE_C0D9DF
	LDA.w $0628
	CMP.w $062E
	BCC.b CODE_C0B2CC
	LDA.w #$0001
	JMP.w CODE_C0B39B

CODE_C0B2CC:
	LDA.w #$0003
	JMP.w CODE_C0B39B

CODE_C0B2D2:
	JSR.w CODE_C08356
	LDX.w $0606
	LDY.b $C2,x
	INC.w $0628
	LDA.w $062E
	CMP.w $0628
	BCC.b CODE_C0B2EC
	LDA.b $AA,x
	CMP.w $062A
	BNE.b CODE_C0B34B
CODE_C0B2EC:
	LDA.w $0638
	BEQ.b CODE_C0B30B
	LDA.w #$0000
	STA.b $90,x
	LDA.w #$0018
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
CODE_C0B30B:
	LDA.w $001A,y
	STA.w $0642
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7F
	ORA.w #$0800
	STA.w $0010,y
	LDA.b $10,x
	AND.w #$FFFB
	STA.b $10,x
	JSR.w CODE_C08B71
	LDA.w #$01F4
	STA.w $05FE
	LDX.w #$0064
	LDA.w $0638
	CMP.w #$0002
	BCS.b CODE_C0B341
	LDX.w #$001E
CODE_C0B341:
	STX.w $060C
	LDA.w #$0001
	STA.w $060A
	RTS

CODE_C0B34B:
	LDA.w $05FE
	BNE.b CODE_C0B380
	LDA.w $0638
	BEQ.b CODE_C0B36A
	LDA.w #$0018
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
CODE_C0B36A:
	LDA.b $10,x
	ORA.w #$0800
	STA.b $10,x
	LDA.w $0010,y
	ORA.w #$0800
	STA.w $0010,y
	LDA.w #$01F4
	STA.w $05FE
CODE_C0B380:
	LDX.w #$0064
	LDA.w $0638
	CMP.w #$0002
	BCS.b CODE_C0B38E
	LDX.w #$001E
CODE_C0B38E:
	STX.w $060C
	LDA.w #$0003
	STA.w $060A
	JSR.w CODE_C08B9E
	RTS

CODE_C0B39B:
	PHA
	JSR.w CODE_C08356
	PLA
	STA.w $060A
	CMP.w #$0003
	BNE.b CODE_C0B3AD
	JSR.w CODE_C08BCB
	BRA.b CODE_C0B3B0

CODE_C0B3AD:
	JSR.w CODE_C08BE2
CODE_C0B3B0:
	LDA.w #$001E
	STA.w $060C
	LDA.w !RAM_ROTR_InMatch_P1CurrentHealth
	ORA.w !RAM_ROTR_InMatch_P2CurrentHealth
	BNE.b CODE_C0B3E8
	LDA.w #$0018
	STA.w $0EEA
	STA.w $1038
	LDA.w #$0000
	STA.w $0ED8
	STA.w $1026
	LDA.w $0EDA
	AND.w #$FF7B
	STA.w $0EDA
	LDA.w $1028
	AND.w #$FF7B
	STA.w $1028
	LDA.w #$0064
	STA.w $060C
CODE_C0B3E8:
	INC.w $0628
	RTS

CODE_C0B3EC:
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7F
	AND.w #$FFFB
	STA.w $0010,y
	RTS

CODE_C0B402:
	LDY.b $90
	LDA.w $008C,y
	BNE.b CODE_C0B40A
	RTS

CODE_C0B40A:
	STA.b $6A
	LDX.b $C2,y
	LDA.b $6A
	CLC
	ADC.w $0000,y
	STA.w $0000,y
	DEC.b $6A
	LDA.w $008C,y
	BPL.b CODE_C0B422
	INC.b $6A
	INC.b $6A
CODE_C0B422:
	LDA.b $6A
	STA.w $008C,y
	LDA.w $0000,y
	BPL.b CODE_C0B431
	LDA.w $0012,y
	BRA.b CODE_C0B439

CODE_C0B431:
	LDA.w $0012,y
	CMP.w $0000,y
	BCC.b CODE_C0B43F
CODE_C0B439:
	STA.w $0000,y
	JMP.w CODE_C0B498

CODE_C0B43F:
	LDA.w $0014,y
	CMP.w $0000,y
	BCS.b CODE_C0B44D
	STA.w $0000,y
	JMP.w CODE_C0B498

CODE_C0B44D:
	LDX.b $C2,y
	CPY.w #$0ECA
	BEQ.b CODE_C0B45F
	LDA.w $0000,y
	STA.b $6A
	LDA.b $00,x
	STA.b $6E
	BRA.b CODE_C0B468

CODE_C0B45F:
	LDA.w $0000,y
	STA.b $6E
	LDA.b $00,x
	STA.b $6A
CODE_C0B468:
	LDA.b $6A
	SEC
	SBC.b $6E
	STA.b $6A
	CMP.w #$0010
	BCS.b CODE_C0B497
	JSR.w CODE_C0B498
	LDA.w #$0010
	STA.b $6E
	SEC
	SBC.b $6A
	STA.b $6E
	CPY.w #$0ECA
	BEQ.b CODE_C0B48E
	LDA.b $6E
	EOR.w #$FFFF
	INC
	STA.b $6E
CODE_C0B48E:
	LDA.w $0000,y
	SEC
	SBC.b $6E
	STA.w $0000,y
CODE_C0B497:
	RTS

CODE_C0B498:
	LDX.b $C2,y
	LDA.w $008C,y
	EOR.w #$FFFF
	INC
	STA.b $8C,x
	LDA.w #$0000
	STA.w $008C,y
	RTS

CODE_C0B4AA:
	LDA.w $0644
	EOR.w #$FFFF
	INC
	STA.b $68
	LDA.w $17BB
	BEQ.b CODE_C0B4BC
	BMI.b CODE_C0B4EC
	BRA.b CODE_C0B4FB

CODE_C0B4BC:
	LDA.w $0ECA
	CLC
	ADC.w $1018
	LSR
	SEC
	SBC.w #$00A0
	STA.b $6C
	STZ.b $70
	TAX
	BPL.b CODE_C0B4D1
	DEC.b $70
CODE_C0B4D1:
	LSR.b $70
	ROR
	STA.b $74
	SEC
	SBC.b $68
	CLC
	ADC.w #$0008
	CMP.w #$0010
	BCC.b CODE_C0B501
	TAX
	BPL.b CODE_C0B4F4
	LDA.w #$FFF0
	STA.w $17BB
	RTS

CODE_C0B4EC:
	JSR.w CODE_C0E561
	INC.w $17BB
	BRA.b CODE_C0B501

CODE_C0B4F4:
	LDA.w #$0010
	STA.w $17BB
	RTS

CODE_C0B4FB:
	JSR.w CODE_C0E531
	DEC.w $17BB
CODE_C0B501:
	RTS

CODE_C0B502:
	LDA.w #DATA_C0EFE5>>16
	STA.b $92
	LDA.w #DATA_C0EFE5
	STA.b $90
	LDA.w #$0000
	STA.b $96
	LDA.w #$02EA
	STA.b $94
	LDX.w #$0005
	LDY.w #$0000
CODE_C0B51C:
	LDA.b [$90],y
	STA.b [$94],y
	INY
	INY
	LDA.b [$90],y
	STA.b [$94],y
	INY
	INY
	DEX
	BNE.b CODE_C0B51C
	RTS

CODE_C0B52C:
	LDA.w #$0000
	STA.b $96
	LDA.w #$02EA
	STA.b $94
	LDX.w #$0005
	LDY.w #$0000
CODE_C0B53C:
	LDA.b [$94],y
	BNE.b CODE_C0B54A
	INY
	INY
	LDA.b [$94],y
	DEY
	DEY
	STA.b [$94],y
	BRA.b CODE_C0B550

CODE_C0B54A:
	SEC
	SBC.w #$0001
	STA.b [$94],y
CODE_C0B550:
	INY
	INY
	INY
	INY
	DEX
	BNE.b CODE_C0B53C
	RTS

CODE_C0B558:
	LDA.w #$0000
	STA.b $9A
	LDA.w #$0ECA
	STA.b $98
	LDA.w #$0000
	LDX.w #$0002
	JSR.w CODE_C0B5DC
	LDA.w #$0000
	STA.b $9A
	LDA.w #$1018
	STA.b $98
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	LDX.w !RAM_ROTR_Global_DifficultySetting
	JSR.w CODE_C0B5DC
	LDX.w !RAM_ROTR_Global_PlayerSetting
	BNE.b CODE_C0B58C
	LDA.w $0EDA
	ORA.w #$0002
	STA.w $0EDA
CODE_C0B58C:
	CPX.w #$0002
	BEQ.b CODE_C0B59A
	LDA.w $1028
	ORA.w #$0002
	STA.w $1028
CODE_C0B59A:
	RTS

CODE_C0B59B:
	LDA.w $1032
	STA.b $88
	LDA.w #$0002
	STA.w $11CC
	LDA.w #$0020
	LDA.w #$0000
	CLC
	ADC.w #$6000
	STA.b $68
	LDA.b $88
	CLC
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $90
	STA.b $A0
	LDA.l DATA_C035E5+$02,x
	STA.b $92
	STA.b $A2
	LDY.w #$0038
	LDA.b [$90],y
	TAX
	INY
	INY
	LDA.b [$90],y
	STX.b $90
	STA.b $92
	STZ.b $8A
	JSR.w CODE_C0969B
	RTS

CODE_C0B5DC:
	PHA
	TXA
	DEC
	AND.w #$0003
	LDX.w #$0007
	JSR.w CODE_C0E4DB
	CLC
	ADC.w $0628
	DEC
	LDX.w #$0006
	JSR.w CODE_C0E4DB
	STA.b $78
	PLA
	LDY.w #$001A
	STA.b [$98],y
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $A8
	LDA.l DATA_C035E5+$02,x
	STA.b $AA
	LDY.w #$0028
	LDA.b [$A8],y
	PHA
	INY
	INY
	LDA.b [$A8],y
	LDY.w #$0028
	STA.b [$98],y
	DEY
	DEY
	PLA
	STA.b [$98],y
	LDX.b $98
	CPX.w #$0ECA
	BNE.b CODE_C0B64E
	LDA.w #$010C
	STA.b $5C,x
	LDY.w #$0006
	LDA.b [$A8],y
	STA.b $00,x
	STA.b $3E,x
	LDA.w #$1018
	STA.b $C2,x
	LDA.w #$0000
	STA.b $C4,x
	LDA.w #$2000
	STA.b $CE,x
	LDA.w #$007E
	STA.b $D0,x
	LDA.w #$0000
	STA.b $E2,x
	BRA.b CODE_C0B67E

CODE_C0B64E:
	LDA.w #$0114
	STA.b $5C,x
	LDY.w #$0008
	LDA.b [$A8],y
	STA.b $00,x
	STA.b $3E,x
	LDA.w #$0ECA
	STA.b $C2,x
	LDA.w #$0000
	STA.b $C4,x
	LDA.w #$2FA0
	STA.b $CE,x
	LDA.w #$007E
	STA.b $D0,x
	PHX
	LDA.w !RAM_ROTR_Global_DifficultySetting
	DEC
	ASL
	TAX
	LDA.l DATA_C0225F,x
	PLX
	STA.b $E2,x
CODE_C0B67E:
	LDA.w #$0000
	STA.b $A6,x
	STA.b $E4,x
	STA.b $E6,x
	LDA.b $1A,x
	ASL
	ASL
	TAX
	LDY.w #$00C6
	LDA.l DATA_C04104,x
	STA.b [$98],y
	INY
	INY
	LDA.l DATA_C04104+$02,x
	STA.b [$98],y
	LDY.w #$00BE
	LDA.l DATA_C040E4,x
	STA.b [$98],y
	INY
	INY
	LDA.l DATA_C040E4+$02,x
	STA.b [$98],y
	LDA.w #$0001
	LDY.w #$001E
	STA.b [$98],y
	LDY.w #$000A
	LDA.b [$A8],y
	LDY.w #$0012
	STA.b [$98],y
	LDY.w #$000C
	LDA.b [$A8],y
	LDY.w #$0014
	STA.b [$98],y
	LDY.w #$0023
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$0034
	STA.b [$98],y
	LDY.b $98
	LDA.l DATA_C080FA
	STA.w $0002,y
	STA.w $000A,y
	LDX.b $98
	LDY.w #$0000
	LDA.b [$A8],y
	AND.w #$00FF
	BEQ.b CODE_C0B6F2
	LDA.w #$FFFF
CODE_C0B6F2:
	LDY.w #$002A
	STA.b [$98],y
	LDY.w #$002C
	STA.b [$98],y
	LDY.w #$002A
	EOR.b [$98],y
	LDY.w #$002E
	STA.b [$98],y
	LDY.w #$0042
	LDA.b [$A8],y
	ASL
	LDY.w #$004E
	STA.b [$98],y
	LDY.w #$005A
	LDA.b [$A8],y
	LDY.w #$008E
	STA.b [$98],y
	LDY.w #$0044
	LDA.b [$A8],y
	LDY.w #$0052
	STA.b [$98],y
	LDY.w #$0014
	LDA.b [$A8],y
	LDY.w #$0054
	STA.b [$98],y
	LDY.w #$0046
	LDA.b [$A8],y
	LDY.w #$00FA
	STA.b [$98],y
	LDY.w #$005C
	LDA.b [$A8],y
	LDY.w #$00B2
	STA.b [$98],y
	LDY.w #$001A
	LDA.b [$A8],y
	LDY.w #$00B4
	STA.b [$98],y
	LDY.w #$005E
	LDA.b [$A8],y
	LDY.w #$0056
	STA.b [$98],y
	LDY.w #$001E
	LDA.b [$A8],y
	LDY.w #$003A
	STA.b [$98],y
	LDY.w #$0020
	LDA.b [$A8],y
	LDY.w #$003C
	STA.b [$98],y
	LDA.w #$0008
	STA.b $68
	LDX.b $98
	LDY.w #$0072
CODE_C0B775:
	LDA.b [$A8],y
	AND.w #$00FF
	STA.b $92,x
	INY
	INX
	INX
	DEC.b $68
	BNE.b CODE_C0B775
	LDA.w #$0000
	LDX.b $98
	LDY.w #$0008
CODE_C0B78B:
	STA.b $E8,x
	INX
	INX
	DEY
	BNE.b CODE_C0B78B
	LDA.w #$0000
	LDY.b $98
	STA.w $0024,y
	STA.w $000E,y
	STA.w $0020,y
	STA.w $0090,y
	STA.w $00B6,y
	STA.w $0030,y
	STA.w $0080,y
	STA.w $000C,y
	STA.w $0048,y
	STA.w $008C,y
	STA.w $0010,y
	STA.w $0022,y
	STA.w $0084,y
	STA.w $00D2,y
	STA.w $00D4,y
	STA.w $00D6,y
	STA.w $00D8,y
	STA.w $00DA,y
	STA.w $00DC,y
	STA.w $00DE,y
	STA.w $00E0,y
	STA.w $0036,y
	STA.w $0038,y
	LDY.w #$0002
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$0044
	STA.b [$98],y
	LDY.w #$0024
	LDA.b [$A8],y
	CLC
	ADC.b $78
	TAX
	INY
	INY
	LDA.b [$A8],y
	STX.b $A0
	STA.b $A2
	LDX.b $98
	LDY.w #$0000
	LDA.b [$A0],y
	AND.w #$00FF
	ASL
	STA.b $4E,x
	INY
	LDA.b [$A0],y
	AND.w #$00FF
	STA.b $FA,x
	INY
	LDA.b [$A0],y
	AND.w #$00FF
	STA.b $52,x
	INY
	LDA.b [$A0],y
	AND.w #$00FF
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	STA.b $8E,x
	INY
	LDA.b [$A0],y
	AND.w #$00FF
	STA.b $50,x
	INY
	LDA.b [$A0],y
	AND.w #$00FF
	STA.b $34,x
	JSR.w CODE_C0A9F3
	LDY.w #$0001
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$008A
	STA.b [$98],y
	AND.w #$0007
	CLC
	ADC.w #$0008
	ASL
	ASL
	ASL
	ASL
	PHA
	LDY.w #$001A
	LDA.b [$98],y
	AND.w #$0007
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $90
	LDA.l DATA_C035E5+$02,x
	STA.b $92
	LDY.w #$002C
	LDA.b [$90],y
	TAX
	INY
	INY
	LDA.b [$90],y
	STX.b $90
	STA.b $92
	PLA
	LDX.w #$0010
	JSR.w CODE_C0D447
	LDA.w #$0000
	LDX.w #$000B
	LDY.w #$00FC
CODE_C0B886:
	STA.b [$98],y
	INY
	INY
	DEX
	BNE.b CODE_C0B886
	LDX.w #$0014
	LDY.w #$0112
CODE_C0B893:
	STA.b [$98],y
	INY
	INY
	DEX
	BNE.b CODE_C0B893
	RTS

CODE_C0B89B:
	LDY.b $90
	LDA.w $0080,y
	LDX.w #$0000
	CMP.w #$0016
	BCC.b CODE_C0B8AF
	INX
	CMP.w #$002C
	BCC.b CODE_C0B8AF
	INX
CODE_C0B8AF:
	TXA
	ASL
	ASL
	RTS

CODE_C0B8B3:
	LDY.w #$0082
	LDA.b [$98],y
	LDY.w #$0004
	STA.b [$A0],y
	RTS

CODE_C0B8BE:
	LDY.w #$0000
	LDA.b [$90],y
	LDY.w #$0004
	STA.b [$90],y
	LDY.w #$0002
	LDA.b [$90],y
	LDY.w #$0006
	STA.b [$90],y
	RTS

CODE_C0B8D3:
	JSR.w CODE_C0B8E1
	LDY.w #$0004
	LDA.b [$94],y
	LDY.w #$0000
	STA.b [$94],y
	RTS

CODE_C0B8E1:
	LDY.w #$0004
	LDA.b [$90],y
	LDY.w #$0000
	STA.b [$90],y
	RTS

CODE_C0B8EC:
	RTS

CODE_C0B8ED:
	JSR.w CODE_C0B8EC
	LDA.w $0610
	BIT.w #$0001
	BNE.b CODE_C0B937
	LDA.w #$0000
	STA.b $92
	LDA.w #$0ECA
	STA.b $90
	LDA.w #$0000
	STA.b $96
	LDA.w #$1018
	STA.b $94
	JSR.w CODE_C0B8BE
	JSR.w CODE_C0B972
	JSR.w CODE_C0CBB3
	JSR.w CODE_C0ECC9
	JSR.w CODE_C0B402
	JSR.w CODE_C0C7AE
	LDA.w #$0000
	STA.b $9A
	LDA.w #$0ECA
	STA.b $98
	LDA.w #$0000
	STA.b $A2
	LDA.w #$0E40
	STA.b $A0
	JSR.w CODE_C0B8B3
	BRA.b CODE_C0B971

CODE_C0B937:
	LDA.w #$0000
	STA.b $92
	LDA.w #$1018
	STA.b $90
	LDA.w #$0000
	STA.b $96
	LDA.w #$0ECA
	STA.b $94
	JSR.w CODE_C0B8BE
	JSR.w CODE_C0B972
	JSR.w CODE_C0CBB3
	JSR.w CODE_C0ECC9
	JSR.w CODE_C0B402
	LDA.w #$0000
	STA.b $9A
	LDA.w #$1018
	STA.b $98
	LDA.w #$0000
	STA.b $A2
	LDA.w #$0E4E
	STA.b $A0
	JSR.w CODE_C0B8B3
CODE_C0B971:
	RTS

CODE_C0B972:
	LDY.b $90
	LDA.w $0090,y
	BEQ.b CODE_C0B97E
	DEC
	STA.w $0090,y
	RTS

CODE_C0B97E:
	LDX.b $90
	LDA.w #$0000
	LDY.w #$000A
	CLC
CODE_C0B987:
	ADC.w $0112,x
	INX
	INX
	DEY
	BNE.b CODE_C0B987
	LDY.b $90
	STA.w $00A8,y
	LDA.w $00B4,y
	INC
	LDA.w $00B4,y
	LDA.w $00B2,y
	CMP.w $00B4,y
	BNE.b CODE_C0B9B8
	LDA.w #$0000
	STA.w $00B4,y
	LDA.w $0032,y
	CMP.w $0082,y
	BEQ.b CODE_C0B9B8
	LDA.w $0082,y
	INC
	STA.w $0082,y
CODE_C0B9B8:
	LDA.w $0010,y
	BIT.w #$0002
	BNE.b CODE_C0B9E1
	LDA.w $005C,y
	TAX
	LDA.b $00,x
	BIT.w #$0020
	BEQ.b CODE_C0B9D7
	LDA.w $0030,y
	STA.w $0080,y
	LDA.w #$0000
	STA.w $0030,y
CODE_C0B9D7:
	JSR.w CODE_C0D78C
	JSR.w CODE_C0C20C
	JSR.w CODE_C0C714
	RTS

CODE_C0B9E1:
	JSR.w CODE_C0B9EE
	JSR.w CODE_C0BE6E
	JSR.w CODE_C0C20C
	JSR.w CODE_C0C714
	RTS

CODE_C0B9EE:
	JSR.w CODE_C0C690
	LDY.b $90
	LDA.w $0082,y
	BEQ.b CODE_C0BA18
	LDA.w $05FE
	BNE.b CODE_C0BA18
	LDY.b $90
	LDA.w $00E4,y
	BEQ.b CODE_C0BA48
	DEC
	STA.w $00E4,y
	BNE.b CODE_C0BA48
	LDA.w $000A,y
	CMP.w $0002,y
	BEQ.b CODE_C0BA19
	LDA.w #$0001
	STA.w $00E4,y
CODE_C0BA18:
	RTS

CODE_C0BA19:
	LDA.w $00E6,y
	CMP.w #$001F
	BNE.b CODE_C0BA2F
	LDA.w $001A,y
	CMP.w #$0002
	BNE.b CODE_C0BA2F
	LDA.w #$0013
	STA.w $00E6,y
CODE_C0BA2F:
	LDA.w $00E6,y
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	JSR.w CODE_C0CC9E
	RTS

CODE_C0BA48:
	LDY.b $90
	LDX.b $C2,y
	STX.b $94
	LDA.w #$0018
	CMP.w $0020,y
	BEQ.b CODE_C0BA62
	CMP.b $20,x
	BEQ.b CODE_C0BA62
	LDA.w $0010,y
	BIT.w #$0004
	BNE.b CODE_C0BA68
CODE_C0BA62:
	LDA.w #$0000
	STA.b $68
	RTS

CODE_C0BA68:
	LDA.w $000E,y
	STA.w $03C2
	LDA.w $0020,y
	STA.w $03C0
	CMP.w #$0010
	BEQ.b CODE_C0BA7E
	CMP.w #$0007
	BNE.b CODE_C0BAA9
CODE_C0BA7E:
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $90
	BIT.w #$0004
	BNE.b CODE_C0BAA8
	LDX.b $C2,y
	LDA.b $10,x
	BIT.w #$0004
	BEQ.b CODE_C0BAA8
	LDA.w #$FF7B
	AND.w $0010,y
	STA.w $0010,y
	LDA.w $0020,y
	INC
	STA.w $0020,y
CODE_C0BAA8:
	RTS

CODE_C0BAA9:
	LDY.b $90
	LDX.b $C2,y
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0001
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0BAC4
	ORA.w #$FF00
CODE_C0BAC4:
	ORA.w #$0000
	DEC
	DEC
	BPL.b CODE_C0BACE
	JMP.w CODE_C0BC09

CODE_C0BACE:
	LDY.b $90
	LDA.w #$0000
	STA.w $00BC,y
	STA.w $00BA,y
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $90
	BIT.w #$0004
	BNE.b CODE_C0BAF9
	LDY.w #$0003
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	STA.b $68
	JSR.w CODE_C0BFEA
	BPL.b CODE_C0BAF9
	JMP.w CODE_C0BBBE

CODE_C0BAF9:
	LDX.b $90
	LDA.b $20,x
	STA.b $68
	JSR.w CODE_C0CB9A
	LDY.w #$0001
	LDA.b [$98],y
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0BB12
	ORA.w #$FF00
CODE_C0BB12:
	ORA.w #$0000
	DEC
	DEC
	DEC
	BMI.b CODE_C0BB1D
	JMP.w CODE_C0BB51

CODE_C0BB1D:
	LDY.b $90
	LDX.b $C2,y
	JSR.w CODE_C0BDD8
	STA.w $0EC4
	BPL.b CODE_C0BB2D
	LDA.w #$FFFF
	NOP
CODE_C0BB2D:
	JSR.w CODE_C0C13C
	LDA.w $0EC4
	CMP.w $0EC6
	BCC.b CODE_C0BB52
	LDY.b $90
	LDA.w #$0000
	STA.w $00FC,y
	LDA.w $0010,y
	ORA.w #$0004
	STA.w $0010,y
	LDA.w $0EC8
	STA.b $68
	JSR.w CODE_C0BF42
CODE_C0BB51:
	RTS

CODE_C0BB52:
	LDY.b $90
	LDA.w #$0000
	STA.w $000E,y
	LDA.w #$FF7F
	AND.w $0010,y
	STA.w $0010,y
	LDA.w $001E,y
	BEQ.b CODE_C0BBA2
	LDA.w $000A,y
	CMP.w $0002,y
	BEQ.b CODE_C0BB86
	LDA.w #$0014
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	RTS

CODE_C0BB86:
	LDA.w #$0010
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	LDA.w #$0000
	STA.w $00FC,y
	RTS

CODE_C0BBA2:
	LDA.w #$0007
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	LDA.w #$0000
	STA.w $00FC,y
	RTS

CODE_C0BBBE:
	LDY.b $90
	LDA.w $0020,y
	CMP.w #$0002
	BNE.b CODE_C0BC09
	LDA.w $0ECA
	SEC
	SBC.w $1018
	BCS.b CODE_C0BBD5
	EOR.w #$FFFF
	INC
CODE_C0BBD5:
	SEC
	SBC.w $1174
	SBC.w $1170
	BMI.b CODE_C0BC09
	CMP.w #$003C
	BCC.b CODE_C0BC09
	LDX.b $1A,y
	LDA.w #$001F
	CPX.w #$0002
	BNE.b CODE_C0BBF0
	LDA.w #$0015
CODE_C0BBF0:
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	LDA.w #$0000
	STA.w $00FC,y
	RTS

CODE_C0BC09:
	LDY.b $90
	LDA.w $00B6,y
	BEQ.b CODE_C0BC15
	DEC
	STA.w $00B6,y
	RTS

CODE_C0BC15:
	LDA.w $00FA,y
	LSR
	LDX.w #$000A
	JSR.w CODE_C0E4DB
	STA.b $98
	JSR.w CODE_C0A69A
	AND.w #$000F
	CMP.w #$000A
	BCC.b CODE_C0BC2F
	SBC.w #$000A
CODE_C0BC2F:
	CLC
	ADC.b $98
	TAX
	LDA.l DATA_C0C6B0,x
	AND.w #$00FF
	BIT.w #$0080
	BNE.b CODE_C0BC61
	STA.b $68
	JSR.w CODE_C0BF42
	LDA.b $68
	CMP.w #$0015
	BNE.b CODE_C0BC53
	LDA.w #$0000
	STA.b $68
	JSR.w CODE_C0BF42
CODE_C0BC53:
	LDA.w $0052,y
	TAX
	LDA.w #$000A
	JSR.w CODE_C0E512
	STA.w $00B6,y
	RTS

CODE_C0BC61:
	LDY.b $90
	LDA.w $00C6,y
	STA.b $98
	LDA.w $00C8,y
	STA.b $9A
	LDX.b $C2,y
	LDA.b $20,x
	LDX.w #$000A
	JSR.w CODE_C0E4DB
	LDX.b $1E,y
	BNE.b CODE_C0BC7F
	CLC
	ADC.w #$0190
CODE_C0BC7F:
	CLC
	ADC.b $98
	STA.b $98
	LDA.w $004E,y
	STA.b $70
	LDY.b $90					;\ Glitch: This LDA.w $0126,x references various bits of code throughout bank 00 for some reason. It affects the demos/robot AI.
	LDA.w $00C2,y				;| Specifically, CODE_C08ED0+$01, CODE_C0901F, CODE_C0F190, and CODE_C0F2DE.
	STA.b $68					;| You can fix this by copying a similar string of code near "CODE_C0C13C:" over here.
	LDA.b $20,x					;|
	CLC							;|
	ADC.b $68					;|
	TAX							;|
	LDA.w $0126,x				;/
	AND.w #$00FF
	CLC
	ADC.w $004E,y
	LSR
	CMP.w #$0009
	BCC.b CODE_C0BCA9
	LDA.w #$0009
CODE_C0BCA9:
	DEC
	BPL.b CODE_C0BCAF
	LDA.w #$0000
CODE_C0BCAF:
	STA.b $70
	JSR.w CODE_C0A69A
	AND.w #$0003
	CMP.w #$0002
	BCC.b CODE_C0BCC0
	SEC
	SBC.w #$0002
CODE_C0BCC0:
	CLC
	ADC.b $70
	TAY
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	STA.b $84
	BIT.w #$0080
	BEQ.b CODE_C0BCD5
	JMP.w CODE_C0BDD7

CODE_C0BCD5:
	LDA.w #$0000
	STA.w $00FC,y
	LDX.b $90
	LDA.b $84
	JSR.w CODE_C0CB9A
	LDY.w #$0003
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	STA.b $68
	JSR.w CODE_C0C04C
	BEQ.b CODE_C0BCF9
	LDA.w #$0002
	JSR.w CODE_C0BF42
CODE_C0BCF9:
	LDA.b $84
	JSR.w CODE_C0BF42
	LDA.w #$0064
	LDY.b $90
	STA.w $00BA,y
	LDA.w $0010,y
	ORA.w #$0004
	STA.w $0010,y
	LDX.b $C2,y
	LDA.b $A2,x
	CLC
	ADC.w #$0028
	TAX
	LDA.w #$001B
	JSR.w CODE_C0E512
	STA.b $68
	LDY.b $90
	LDX.b $32,y
	STX.b $74
	LDA.w #$0003
	JSR.w CODE_C0E512
	STA.b $6C
	STA.b $70
	LDX.b $68
	JSR.w CODE_C0E4DB
	STA.b $6C
	JSR.w CODE_C0A69A
CODE_C0BD3A:
	CMP.b $70
	BCC.b CODE_C0BD43
	SEC
	SBC.b $70
	BRA.b CODE_C0BD3A

CODE_C0BD43:
	CLC
	ADC.b $6C
	STA.b $6C
	LDA.b $74
	SEC
	SBC.b $6C
	STA.w $00BA,y
	LDA.w $00FC,y
	ASL
	CLC
	ADC.b $90
	STA.b $9C
	LDA.w $00BE,y
	STA.b $98
	LDA.w $00C0,y
	STA.b $9A
	LDX.b $9C
	LDA.b $FC,x
	LDX.w #$000E
	JSR.w CODE_C0E4DB
	CLC
	ADC.b $98
	STA.b $98
	LDY.w #$0008
	LDA.b [$98],y
	AND.w #$00FF
	STA.b $7C
	LDY.w #$0007
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	STA.b $78
	BIT.w #$0080
	BNE.b CODE_C0BDD7
	JSR.w CODE_C0A69A
	AND.w #$000F
	CMP.w #$000A
	BCC.b CODE_C0BD9C
	SEC
	SBC.w #$000A
CODE_C0BD9C:
	CLC
	ADC.w $004E,y
	LSR
	CMP.w #$0009
	BCC.b CODE_C0BDA9
	LDA.w #$0009
CODE_C0BDA9:
	TAX
	LDA.l DATA_C00000,x
	AND.w #$00FF
	BEQ.b CODE_C0BDD7
	LDA.w #$0002
	STA.w $00BC,y
	LDA.w $0010,y
	ORA.w #$8008
	STA.w $0010,y
	LDA.b $78
	JSR.w CODE_C0BF42
	LDA.b $7C
	BIT.w #$0080
	BNE.b CODE_C0BDD7
	JSR.w CODE_C0BF42
	LDA.w #$0003
	STA.w $00BC,y
CODE_C0BDD7:
	RTS

CODE_C0BDD8:
	PHY
	STX.b $A0
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0003
	LDA.b [$98],y
	AND.w #$00FF
	STA.b $78
	LDX.b $A0
	LDA.b $1A,x
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $A4
	LDA.l DATA_C035E5+$02,x
	STA.b $A6
	LDY.w #$0030
	LDA.b [$A4],y
	TAX
	INY
	INY
	LDA.b [$A4],y
	STX.b $A4
	STA.b $A6
	LDX.b $A0
	LDA.b $20,x
	INC
	ASL
	ASL
	TAY
	LDA.b [$A4],y
	CLC
	ADC.b $A4
	STA.b $A8
	LDA.b $A6
	STA.b $AA
	LDY.b $A0
	LDX.b $32,y
	LDA.w #$0003
	JSR.w CODE_C0E512
	LDX.b $80,y
	JSR.w CODE_C0E512
	CMP.w #$0002
	BCC.b CODE_C0BE35
	LDA.w #$0002
CODE_C0BE35:
	ASL
	ASL
	TAY
	LDA.b [$A8],y
	CLC
	ADC.b $A4
	STA.b $A8
	LDY.w #$0000
CODE_C0BE42:
	LDA.b [$A8]
	AND.w #$00FF
	CMP.b $78
	BEQ.b CODE_C0BE57
	CMP.w #$00FF
	BEQ.b CODE_C0BE64
	INY
	INC.b $A8
	INC.b $A8
	BRA.b CODE_C0BE42

CODE_C0BE57:
	TYA
	LDX.b $A0
	SEC
	SBC.b $0E,x
	BPL.b CODE_C0BE6A
	LDA.w #$0000
	BRA.b CODE_C0BE6A

CODE_C0BE64:
	LDA.w #$FFFF
	STA.w $11E8
CODE_C0BE6A:
	PLY
	STA.b $7C
	RTS

CODE_C0BE6E:
	LDA.w $05FE
	BNE.b CODE_C0BE7A
	LDA.w $00FC,y
	STA.b $68
	BNE.b CODE_C0BE7B
CODE_C0BE7A:
	RTS

CODE_C0BE7B:
	LDA.w $00BA,y
	BEQ.b CODE_C0BE95
	LDA.w $0034,y
	CLC
	ADC.w $0030,y
	STA.w $0030,y
	LDA.w $0032,y
	CMP.w $0030,y
	BCS.b CODE_C0BE95
	STA.w $0030,y
CODE_C0BE95:
	LDA.w $0030,y
	STA.w $0080,y
	LDA.b $90
	INC
	INC
	STA.b $9C
	LDA.w $0010,y
	BIT.w #$0004
	BNE.b CODE_C0BEAA
	RTS

CODE_C0BEAA:
	LDX.b $9C
	LDA.b $FC,x
	LDX.b $90
	JSR.w CODE_C0CB9A
	LDY.w #$0001
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0BEC5
	ORA.w #$FF00
CODE_C0BEC5:
	ORA.w #$0000
	DEC
	DEC
	BMI.b CODE_C0BF16
	LDA.w $00BC,y
	BEQ.b CODE_C0BEEA
	LDA.w $0010,y
	BIT.w #$8000
	BNE.b CODE_C0BEE3
	LDA.w #$0000
	STA.w $00FC,y
	STA.w $00BC,y
	RTS

CODE_C0BEE3:
	LDA.w $00BC,y
	DEC
	STA.w $00BC,y
CODE_C0BEEA:
	LDY.w #$0003
	LDA.b [$98],y
	AND.w #$00FF
	LDY.b $90
	LDA.w $00BC,y
	BEQ.b CODE_C0BF01
	LDA.w $0010,y
	BIT.w #$0008
	BEQ.b CODE_C0BF07
CODE_C0BF01:
	LDA.w $0030,y
	CMP.w $00BA,y
CODE_C0BF07:
	LDA.w $0010,y
	AND.w #$FFF7
	STA.w $0010,y
	LDA.w #$0000
	STA.w $00BA,y
CODE_C0BF16:
	LDX.b $9C
	LDA.b $FC,x
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	LDX.b $90
	LDA.b $FC,x
	STA.b $68
	DEC
	STA.b $FC,x
CODE_C0BF35:
	INX
	INX
	LDA.b $FE,x
	STA.b $FC,x
	DEC.b $68
	BNE.b CODE_C0BF35
	RTS

CODE_C0BF40:
	NOP
	RTS

CODE_C0BF42:
	PHY
	STA.b $68
	LDX.w #$000E
	JSR.w CODE_C0E4DB
	STA.b $6C
	LDY.b $90
	LDA.w $00BE,y
	STA.b $98
	LDA.w $00C0,y
	STA.b $9A
	LDA.b $90
	STA.b $9C
	LDA.w $00FC,y
	STA.b $70
	BNE.b CODE_C0BF6F
	INC.b $9C
	INC.b $9C
	LDA.w $001E,y
	STA.b $70
	BRA.b CODE_C0BF96

CODE_C0BF6F:
	LDA.b $70
	CMP.w #$000A
	BCS.b CODE_C0BFE8
	ASL
	CLC
	ADC.b $9C
	STA.b $9C
	LDX.b $9C
	LDA.b $FC,x
	INC.b $9C
	INC.b $9C
	LDX.w #$000E
	JSR.w CODE_C0E4DB
	CLC
	ADC.w #$0005
	TAY
	LDA.b [$98],y
	AND.w #$00FF
	STA.b $70
CODE_C0BF96:
	LDA.b $6C
	CLC
	ADC.w #$0000
	TAY
	LDA.b [$98],y
	AND.w #$00FF
	LDY.b $90
	CMP.b $70
	BEQ.b CODE_C0BFD7
	LDA.b $70
	BEQ.b CODE_C0BFC5
	CMP.w #$0002
	BEQ.b CODE_C0BFE8
	LDA.w $00FC,y
	INC
	STA.w $00FC,y
	LDA.w #$0026
	LDX.b $9C
	STA.b $FC,x
	INC.b $9C
	INC.b $9C
	BRA.b CODE_C0BFD7

CODE_C0BFC5:
	LDA.w $00FC,y
	INC
	STA.w $00FC,y
	LDA.w #$0005
	LDX.b $9C
	STA.b $FC,x
	INC.b $9C
	INC.b $9C
CODE_C0BFD7:
	LDA.w $00FC,y
	INC
	STA.w $00FC,y
	LDA.b $68
	LDX.b $9C
	STA.b $FC,x
	INC.b $9C
	INC.b $9C
CODE_C0BFE8:
	PLY
	RTS

CODE_C0BFEA:
	LDY.b $90
	CPY.w #$1018
	BNE.b CODE_C0C038
	LDX.w $02E6
	JSR.w CODE_C0E4DB
	CLC
	LDX.b $C2,y
	CLC
	ADC.b $24,x
	ASL
	ASL
	CLC
	ADC.w #$000C
	TAX
	LDA.l $7F0000,x
	BEQ.b CODE_C0C042
	LDA.l $7F0002,x
	BEQ.b CODE_C0C042
	LDA.w $0ECA
	SEC
	SBC.w $1018
	BCS.b CODE_C0C01D
	EOR.w #$FFFF
	INC
CODE_C0C01D:
	SEC
	SBC.w $1174
	CMP.w #$00FF
	BCS.b CODE_C0C042
	AND.w #$00FF
	STA.b $70
	LDA.l $7F0000,x
	AND.w #$00FF
	STA.b $78
	CMP.b $70
	BCC.b CODE_C0C042
CODE_C0C038:
	LDY.b $90
	LDX.b $94
	LDA.w #$0000
	STA.b $68
	RTS

CODE_C0C042:
	LDY.b $90
	LDX.b $94
	LDA.w #$FFFF
	STA.b $68
	RTS

CODE_C0C04C:
	CPY.w #$1018
	BNE.b CODE_C0C09B
	STA.b $6C
	LDX.b $C2,y
	LDA.b $24,x
	LDX.w $02E6
	JSR.w CODE_C0E4DB
	CLC
	ADC.b $6C
	ASL
	ASL
	CLC
	ADC.w #$000C
	TAX
	LDA.l $7F0000,x
	BEQ.b CODE_C0C0A3
	LDA.l $7F0002,x
	BEQ.b CODE_C0C0A3
	LDA.w $0ECA
	SEC
	SBC.w $1018
	BCS.b CODE_C0C080
	EOR.w #$FFFF
	INC
CODE_C0C080:
	SEC
	SBC.w $1174
	CMP.w #$00FF
	BCS.b CODE_C0C0A3
	AND.w #$00FF
	STA.b $70
	LDA.l $7F0000,x
	AND.w #$00FF
	STA.b $78
	CMP.b $70
	BCC.b CODE_C0C0A3
CODE_C0C09B:
	LDY.b $90
	LDX.b $94
	LDA.w #$0000
	RTS

CODE_C0C0A3:
	LDY.b $90
	LDX.b $94
	LDA.w #$FFFF
	RTS

CODE_C0C0AB:
	LDY.b $90
	LDA.w $0020,y
	CMP.w #$0003
	BEQ.b CODE_C0C0BB
	CMP.w #$0010
	BEQ.b CODE_C0C0D1
	RTS

CODE_C0C0BB:
	LDX.b $C2,y
	LDA.b $10,x
	BIT.w #$0010
	BEQ.b CODE_C0C0D0
	LDA.w #$0010
	JSR.w CODE_C0C0E7
	LDA.w #$0001
	STA.w $0022,y
CODE_C0C0D0:
	RTS

CODE_C0C0D1:
	LDX.b $C2,y
	LDA.b $10,x
	BIT.w #$0010
	BNE.b CODE_C0C0E6
	LDA.w #$0003
	JSR.w CODE_C0C0E7
	LDA.w #$0000
	STA.w $0022,y
CODE_C0C0E6:
	RTS

CODE_C0C0E7:
	STA.w $0020,y
	LDA.w #$0000
	STA.w $0024,y
	STA.w $000E,y
	STA.w $0046,y
	LDA.w $0010,y
	AND.w #$FF7F
	STA.w $0010,y
	RTS

CODE_C0C100:
	LDY.b $90
	LDA.w $0020,y
	CMP.w #$001D
	BEQ.b CODE_C0C110
	CMP.w #$0007
	BEQ.b CODE_C0C126
	RTS

CODE_C0C110:
	LDX.b $C2,y
	LDA.b $10,x
	BIT.w #$0010
	BEQ.b CODE_C0C125
	LDA.w #$0007
	JSR.w CODE_C0C0E7
	LDA.w #$0001
	STA.w $0022,y
CODE_C0C125:
	RTS

CODE_C0C126:
	LDX.b $C2,y
	LDA.b $10,x
	BIT.w #$0010
	BNE.b CODE_C0C13B
	LDA.w #$0004
	JSR.w CODE_C0C0E7
	LDA.w #$0000
	STA.w $0022,y
CODE_C0C13B:
	RTS

CODE_C0C13C:
	LDX.b $90
	LDA.w #$0000
	STA.b $0E,x
	LDA.w #$0064
	STA.w $0EC6
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.b $90
	LDX.b $C2,y
	LDA.b $20,x
	CLC
	ADC.b $90
	TAX
	LDA.w $0126,x
	AND.w #$00FF
	CLC
	ADC.w $004E,y
	LSR
	CMP.w #$0009
	BCC.b CODE_C0C16B
	LDA.w #$0009
CODE_C0C16B:
	DEC
	BPL.b CODE_C0C171
	LDA.w #$0001
CODE_C0C171:
	STA.b $84
	LDA.w #$0003
	STA.b $70
	LDA.w $00C6,y
	STA.b $AC
	LDA.w $00C8,y
	STA.b $AE
	LDA.w $001E,y
	BNE.b CODE_C0C18F
	LDA.b $AC
	CLC
	ADC.w #$0190
	STA.b $AC
CODE_C0C18F:
	LDX.b $C2,y
	LDA.b $20,x
	LDX.w #$000A
	JSR.w CODE_C0E4DB
	STA.b $74
	CLC
	ADC.b $AC
	STA.b $AC
	LDA.w $0020,y
	STA.b $80
CODE_C0C1A5:
	LDY.b $84
	LDA.b [$AC],y
	LDY.b $90
	AND.w #$00FF
	STA.b $6C
	BIT.w #$0080
	BNE.b CODE_C0C1F1
	LDX.b $90
	JSR.w CODE_C0CB9A
	LDY.w #$0000
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	CMP.w $001E,y
	BNE.b CODE_C0C1F1
	LDA.b $6C
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	LDX.b $90
	JSR.w CODE_C0BDD8
	CMP.w $0EC6
	BEQ.b CODE_C0C1E9
	BCS.b CODE_C0C1F1
CODE_C0C1E9:
	STA.w $0EC6
	LDA.b $6C
	STA.w $0EC8
CODE_C0C1F1:
	INC.b $84
	DEC.b $70
	BNE.b CODE_C0C1A5
	LDA.b $80
	STA.w $0020,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0010,y
	AND.w #$FF7B
	STA.w $0010,y
	RTS

CODE_C0C20C:
	LDY.b $90
	LDA.w $0010,y
	BIT.w #$4000
	BEQ.b CODE_C0C217
	RTS

CODE_C0C217:
	LDA.w $00D2,y
	BEQ.b CODE_C0C220
	DEC
	STA.w $00D2,y
CODE_C0C220:
	LDA.w $00D6,y
	BEQ.b CODE_C0C229
	DEC
	STA.w $00D6,y
CODE_C0C229:
	LDA.w $00DA,y
	BEQ.b CODE_C0C232
	DEC
	STA.w $00DA,y
CODE_C0C232:
	LDA.w $00DE,y
	BEQ.b CODE_C0C23B
	DEC
	STA.w $00DE,y
CODE_C0C23B:
	LDA.w $0010,y
	BIT.w #$0002
	BNE.b CODE_C0C249
	JSR.w CODE_C0C0AB
	JSR.w CODE_C0C100
CODE_C0C249:
	LDY.b $90
	LDA.w $001A,y
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $A8
	LDA.l DATA_C035E5+$02,x
	STA.b $AA
	LDY.w #$0030
	LDA.b [$A8],y
	TAX
	INY
	INY
	LDA.b [$A8],y
	STX.b $A4
	STA.b $A6
	STX.b $A8
	STA.b $AA
	LDY.w #$0020
	LDA.b [$90],y
	CMP.w #$0028
	BCC.b CODE_C0C280
	LDA.w #$0002
	STA.w $11E8
	RTS

CODE_C0C280:
	INC
	ASL
	ASL
	TAY
	LDA.b [$A8],y
	CLC
	ADC.b $A8
	STA.b $A8
	LDY.b $90
	LDA.w $0036,y
	ASL
	ASL
	STA.b $68
	CLC
	ADC.w #$000C
	TAY
	LDA.b [$A8],y
	ORA.w #$0000
	BEQ.b CODE_C0C306
	STA.b $70
	LDY.w #$000E
	LDA.b [$90],y
	ASL
	CLC
	ADC.b $70
	TAY
	LDA.b [$A4],y
	LDY.b $90
	STA.b $6C
	ORA.w #$0000
	BMI.b CODE_C0C2BD
	LDA.w $0010,y
	BIT.w #$1000
CODE_C0C2BD:
	CPY.w #$0ECA
	BEQ.b CODE_C0C2CA
	LDA.b $6C
	EOR.w #$FFFF
	INC
	STA.b $6C
CODE_C0C2CA:
	LDA.w $002E,y
	BEQ.b CODE_C0C2D7
	LDA.b $6C
	EOR.w #$FFFF
	INC
	STA.b $6C
CODE_C0C2D7:
	LDA.w $0000,y
	STA.b $78
	CLC
	ADC.b $6C
	STA.w $0000,y
	SEC
	SBC.b $78
	BCS.b CODE_C0C2EB
	EOR.w #$FFFF
	INC
CODE_C0C2EB:
	CMP.w #$0014
	BCC.b CODE_C0C2F2
	NOP #2
CODE_C0C2F2:
	LDA.w $0020,y
	STA.b $84
	JSR.w CODE_C0C805
	LDY.w #$0020
	LDA.b [$90],y
	CMP.b $84
	BEQ.b CODE_C0C306
	JMP.w CODE_C0C249

CODE_C0C306:
	LDA.w #$0000
	CLC
	ADC.b $68
	TAY
	LDA.b [$A8],y
	CLC
	ADC.b $A4
	STA.b $94
	LDA.b $A6
	STA.b $96
	LDY.b $90
	LDA.w $000E,y
	ASL
	STA.b $68
	LDA.w $0010,y
	BIT.w #$0002
	BEQ.b CODE_C0C331
	LDX.b $C2,y
	LDA.b $10,x
	BIT.w #$0080
	BNE.b CODE_C0C331
CODE_C0C331:
	LDA.w $0010,y
	BIT.w #$0080
	BEQ.b CODE_C0C33C
	JMP.w CODE_C0C46A

CODE_C0C33C:
	ORA.w #$0080
	AND.w #$EFFF
	STA.w $0010,y
	LDA.w $0010,y
	AND.w #$FFFB
	LDX.b $20,y
	BNE.b CODE_C0C352
	ORA.w #$0004
CODE_C0C352:
	STA.w $0010,y
	LDA.w $00BE,y
	STA.b $9C
	LDA.w $00C0,y
	STA.b $9E
	LDA.w $0020,y
	LDX.w #$000E
	JSR.w CODE_C0E4DB
	CLC
	ADC.b $9C
	STA.b $9C
	LDY.w #$0001
	LDA.b [$9C],y
	LDY.b $90
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0C37F
	ORA.w #$FF00
CODE_C0C37F:
	ORA.w #$0000
	DEC
	BMI.b CODE_C0C3AD
	LDY.w #$0010
	LDA.b [$90],y
	AND.w #$FDFF
	STA.b [$90],y
	LDY.w #$0006
	LDA.b [$9C],y
	BIT.w #$0001
	BEQ.b CODE_C0C3A3
	LDY.w #$0010
	LDA.b [$90],y
	ORA.w #$0200
	STA.b [$90],y
CODE_C0C3A3:
	LDY.w #$0010
	LDA.b [$90],y
	ORA.w #$0100
	STA.b [$90],y
CODE_C0C3AD:
	LDY.w #$0005
	LDA.b [$9C],y
	AND.w #$00FF
	LDY.w #$001E
	STA.b [$90],y
	LDY.w #$001C
	LDA.b [$A8],y
	BIT.w #$0040
	BEQ.b CODE_C0C422
	LDY.w #$0002
	LDA.b [$90],y
	LDY.w #$000A
	CMP.b [$90],y
	BNE.b CODE_C0C422
	LDY.b $90
	LDA.w $001A,y
	CMP.w #$0005
	BNE.b CODE_C0C3E7
	LDA.w $0020,y
	CMP.w #$0023
	BNE.b CODE_C0C3E7
	LDA.w #$00F4
	BRA.b CODE_C0C404

CODE_C0C3E7:
	LDA.w $001A,y
	CMP.w #$0006
CODE_C0C3ED:
	BNE.b CODE_C0C3FF
	LDA.w $0020,y
	CMP.w #$001F
	CMP.w #$0023
	BNE.b CODE_C0C3FF
	LDA.w #$00F2
	BRA.b CODE_C0C404

CODE_C0C3FF:
	LDY.w #$001F
	LDA.b [$A8],y
CODE_C0C404:
	AND.w #$00FF
	XBA
	LDY.w #$000C
	STA.b [$90],y
	LDY.w #$0004
	LDA.b [$9C],y
	AND.w #$00FF
	ASL
	LDY.w #$004A
	STA.b [$90],y
	ASL
	ADC.b [$90],y
	LSR
	LSR
	STA.b [$90],y
CODE_C0C422:
	LDY.w #$0002
	LDA.b [$9C],y
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0C432
	ORA.w #$FF00
CODE_C0C432:
	STA.b $74
	LDY.w #$00A2
	LDA.b [$90],y
	SEC
	SBC.b $74
	STA.b [$90],y
	LDX.b $90
	JSR.w CODE_C0CEC8
	LDX.b $90
	LDA.b $10,x
	AND.w #$FFEF
	STA.b $10,x
	LDY.w #$0001
	LDA.b [$9C],y
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0C45C
	ORA.w #$FF00
CODE_C0C45C:
	ORA.w #$0000
	DEC
	DEC
	BMI.b CODE_C0C46A
	LDA.b $10,x
	ORA.w #$0010
	STA.b $10,x
CODE_C0C46A:
	LDY.b $68
	LDA.b [$94],y
	AND.w #$00FF
	CMP.w #$00FF
	BNE.b CODE_C0C480
	LDA.w $11E8
	ORA.w #$0001
	STA.w $11E8
	RTS

CODE_C0C480:
	LDY.w #$0024
	STA.b [$90],y
	LDY.b $68
	INY
	LDA.b [$94],y
	AND.w #$00FF
	LDY.w #$005A
	STA.b [$90],y
	LDY.b $90
	LDX.w #$0008
	LDA.w $0024,y
CODE_C0C49A:
	CMP.w $0092,y
	BEQ.b CODE_C0C4A6
	INY
	INY
	DEX
	BNE.b CODE_C0C49A
	BRA.b CODE_C0C4B0

CODE_C0C4A6:
	LDY.b $90
	LDA.w $0090,y
	INC
	INC
	STA.w $0090,y
CODE_C0C4B0:
	LDY.w #$000E
	LDA.b [$90],y
	INC
	STA.b [$90],y
	INC.b $68
	INC.b $68
	LDY.b $68
	LDA.b [$94],y
	AND.w #$00FF
	CMP.w #$00FF
	BEQ.b CODE_C0C4CB
CODE_C0C4C8:
	JMP.w CODE_C0C5BD

CODE_C0C4CB:
	LDY.b $90
	JSR.w CODE_C0CC9E
	LDY.w #$001C
	LDA.b [$A8],y
	STA.b $80
	LDY.b $90
	LDA.w $0020,y
	CMP.w #$0018
	BNE.b CODE_C0C4EA
	LDA.w $000E,y
	DEC
	STA.w $000E,y
	BRA.b CODE_C0C555

CODE_C0C4EA:
	LDA.b $80
	BIT.w #$0001
	BEQ.b CODE_C0C4F8
	LDA.w $000E,y
	DEC
	STA.w $000E,y
CODE_C0C4F8:
	LDA.b $80
	BIT.w #$0002
	BEQ.b CODE_C0C555
	BIT.w #$0004
	BEQ.b CODE_C0C50A
	LDA.w #$0000
	STA.w $0030,y
CODE_C0C50A:
	LDY.w #$001F
	LDA.b [$A8],y
	AND.w #$00FF
	BEQ.b CODE_C0C527
	LDY.w #$000A
	LDA.b [$90],y
	LDY.w #$0002
	CMP.b [$90],y
	BNE.b CODE_C0C4C8
	LDY.w #$000C
	LDA.b [$90],y
	BMI.b CODE_C0C4C8
CODE_C0C527:
	LDY.w #$000E
	LDA.w #$0000
	STA.b [$90],y
	LDY.w #$0046
	STA.b [$90],y
	LDY.w #$001D
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$0020
	STA.b [$90],y
	LDY.w #$0010
	LDA.b [$90],y
	AND.w #$FDFF
	STA.b [$90],y
	LDY.w #$0010
	LDA.b [$90],y
	AND.w #$FF7F
	STA.b [$90],y
CODE_C0C555:
	LDY.w #$0010
	LDA.b [$90],y
	ORA.w #$0004
	STA.b [$90],y
	LDA.b $80
	BIT.w #$0008
	BEQ.b CODE_C0C573
	LDY.w #$001E
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$000E
	STA.b [$90],y
CODE_C0C573:
	LDA.b $80
	BIT.w #$0010
	BEQ.b CODE_C0C5BD
	LDY.w #$0046
	LDA.b [$90],y
	CLC
	ADC.w #$0001
	STA.b [$90],y
	AND.w #$00FF
	LDY.w #$001F
	CMP.b [$A8],y
	BNE.b CODE_C0C5BD
	LDY.w #$001D
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$0020
	STA.b [$90],y
	LDY.w #$000E
	LDA.w #$0000
	STA.b [$90],y
	LDY.w #$0046
	STA.b [$90],y
	LDA.b $80
	BIT.w #$0008
	BEQ.b CODE_C0C5BD
	LDY.w #$001E
	LDA.b [$A8],y
	AND.w #$00FF
	LDY.w #$000E
	STA.b [$90],y
CODE_C0C5BD:
	LDY.w #$001C
	LDA.b [$A8],y
	BIT.w #$0020
	BEQ.b CODE_C0C5C7
CODE_C0C5C7:
	LDY.w #$0018
	LDA.b [$A8],y
	CLC
	ADC.b $A4
	STA.b $94
	LDA.b $A6
	ADC.w #$0000
	STA.b $96
	JMP.w CODE_C0C9A5

CODE_C0C5DB:
	PHX
	LDY.w #$1018
	STY.b $90
	LDX.b $C2,y
	STX.b $94
	LDA.b $20,x
	LDX.b $90
	JSR.w CODE_C0CB9A
	LDY.w #$0009
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	STA.b $74
	BEQ.b CODE_C0C618
	LDX.b $94
	LDA.b $20,x
	STA.b $7A
	STZ.b $78
	LDY.w #$0008
CODE_C0C605:
	LDA.b $EA,x
	CMP.b $7A
	BNE.b CODE_C0C60D
	INC.b $78
CODE_C0C60D:
	INX
	INX
	DEY
	BNE.b CODE_C0C605
	LDA.b $78
	CMP.b $74
	BCS.b CODE_C0C61B
CODE_C0C618:
	JMP.w CODE_C0C68E

CODE_C0C61B:
	LDY.b $90
	LDA.w #$0000
	STA.w $00FC,y
	LDY.w #$000A
	LDA.b [$98],y
	AND.w #$00FF
	LDX.b $90
	CLC
	ADC.b $E2,x
	STA.b $E4,x
	LDY.w #$000B
	LDA.b [$98],y
	AND.w #$00FF
	STA.b $E6,x
	LDA.b $1E,x
	CMP.w #$0003
	BNE.b CODE_C0C665
	LDA.b $20,x
	CMP.w #$0007
	BEQ.b CODE_C0C68E
	LDY.w #$000C
	LDA.b [$98],y
	AND.w #$00FF
	LDX.b $90
	CLC
	ADC.b $E2,x
	STA.b $E4,x
	LDY.w #$000D
	LDA.b [$98],y
	AND.w #$00FF
	STA.b $E6,x
	BRA.b CODE_C0C68C

CODE_C0C665:
	LDA.b $1E,x
	CMP.w #$0002
	BEQ.b CODE_C0C68E
	LDA.b $1E,x
	CMP.w #$0000
	BEQ.b CODE_C0C68E
	LDY.w #$000C
	LDA.b [$98],y
	AND.w #$00FF
	LDX.b $90
	CLC
	ADC.b $E2,x
	STA.b $E4,x
	LDY.w #$000D
	LDA.b [$98],y
	AND.w #$00FF
	STA.b $E6,x
CODE_C0C68C:
	PLX
	RTS

CODE_C0C68E:
	PLX
	RTS

CODE_C0C690:
	LDY.b $90
	LDA.w $00C2,y
	TAY
	STA.b $68
	LDA.w $00E8,y
	ASL
	CLC
	ADC.b $68
	TAX
	LDA.w $0020,y
	STA.b $EA,x
	LDA.w $00E8,y
	INC
	AND.w #$0007
	STA.w $00E8,y
	RTS

DATA_C0C6B0:
	db $00,$15,$FF,$00,$03,$00,$03,$FF,$02,$00,$00,$FF,$00,$00,$FF,$00
	db $00,$FF,$00,$00,$FF,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$FF
	db $00,$FF,$00,$FF,$00,$00,$FF,$00,$03,$00,$00,$FF,$00,$02,$FF,$00
	db $00,$FF,$03,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$02,$FF,$FF,$FF,$03
	db $FF,$FF,$00,$FF,$FF,$15,$FF,$03,$FF,$FF,$FF,$02,$FF,$15,$FF,$FF
	db $FF,$FF,$15,$FF,$FF,$03,$FF,$FF,$02,$FF,$FF,$03,$FF,$FF,$FF,$02
	db $FF,$FF,$FF,$FF

CODE_C0C714:
	LDY.b $90
	STY.b $98
	LDA.w $001A,y
	CMP.w #$0006
	BNE.b CODE_C0C72B
	LDA.w $0024,y
	CMP.w #$0083
	BNE.b CODE_C0C72B
	JSR.w CODE_C0A9F3
CODE_C0C72B:
	RTS

CODE_C0C72C:
	LDA.w $1170
	BMI.b CODE_C0C7A1
	STZ.b $68
	LDY.w $17F7
	LDX.b $C2,y
	LDA.w $0000,y
	SEC
	SBC.b $00,x
	BCS.b CODE_C0C746
	EOR.w #$FFFF
	INC
	INC.b $68
CODE_C0C746:
	CMP.w $1170
	BCS.b CODE_C0C7A1
	STZ.b $6C
	LDA.b $68
	BEQ.b CODE_C0C783
	LDA.b $00,x
	SEC
	SBC.w $1170
	STA.b $70
	BPL.b CODE_C0C766
	EOR.w #$FFFF
	INC
	ADC.w $0012,y
	STA.b $6C
	BRA.b CODE_C0C772

CODE_C0C766:
	SEC
	SBC.w $0012,y
	BCS.b CODE_C0C772
	EOR.w #$FFFF
	INC
	STA.b $6C
CODE_C0C772:
	LDA.b $70
	CLC
	ADC.b $6C
	STA.w $0000,y
	LDA.b $00,x
	CLC
	ADC.b $6C
	STA.b $00,x
	BRA.b CODE_C0C7A1

CODE_C0C783:
	LDA.b $00,x
	ADC.w $1170
	STA.b $70
	SEC
	SBC.w $0014,y
	BCC.b CODE_C0C792
	STA.b $6C
CODE_C0C792:
	LDA.b $70
	SEC
	SBC.b $6C
	STA.w $0000,y
	LDA.b $00,x
	SEC
	SBC.b $6C
	STA.b $00,x
CODE_C0C7A1:
	LDY.w #$0ECA
	JSR.w CODE_C0C7AE
	LDY.w #$1018
	JSR.w CODE_C0C7AE
	RTS

CODE_C0C7AE:
	LDX.b $C2,y
	LDA.w $0000,y
	BMI.b CODE_C0C7EA
	CMP.w $0012,y
	BCC.b CODE_C0C7D3
	CMP.w $0014,y
	BCC.b CODE_C0C7D2
	SEC
	SBC.w $0014,y
	STA.b $68
	LDA.w $0014,y
	STA.w $0000,y
	LDA.b $00,x
	SEC
	SBC.b $68
	STA.b $00,x
CODE_C0C7D2:
	RTS

CODE_C0C7D3:
	LDA.w $0012,y
	SEC
	SBC.w $0000,y
	STA.b $68
	LDA.w $0012,y
	STA.w $0000,y
	LDA.b $00,x
	CLC
	ADC.b $68
	STA.b $00,x
	RTS

CODE_C0C7EA:
	EOR.w #$FFFF
	INC
	CLC
	ADC.w $0012,y
	STA.b $68
	CLC
	ADC.w $0000,y
	STA.w $0000,y
	LDX.b $C2,y
	CLC
	LDA.b $00,x
	ADC.b $68
	STA.b $00,x
	RTS

CODE_C0C805:
	LDY.b $90
	LDA.w $0000,y
	BMI.b CODE_C0C811
	CMP.w $0012,y
	BCS.b CODE_C0C850
CODE_C0C811:
	LDA.w $0012,y
	STA.w $0000,y
	LDX.b $90
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $90
	BIT.w #$0002
	BNE.b CODE_C0C850
	LDA.w #$0000
	STA.w $0020,y
	LDA.w #$0000
	STA.w $0024,y
	STA.w $000E,y
	STA.w $0046,y
	LDA.w $0010,y
	AND.w #$DF7F
	STA.w $0010,y
	LDA.w $0030,y
	BEQ.b CODE_C0C850
	LDA.w #$000E
	STA.w $0020,y
CODE_C0C850:
	LDA.w $0014,y
	CMP.w $0000,y
	BCS.b CODE_C0C894
	STA.w $0000,y
	LDX.b $90
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $90
	BIT.w #$0002
	BNE.b CODE_C0C894
	LDA.w #$0000
	STA.w $0020,y
	LDA.w #$0000
	STA.w $0024,y
	STA.w $000E,y
	STA.w $0046,y
	LDA.w $0010,y
	AND.w #$DF7F
	STA.w $0010,y
	LDA.w $0030,y
	BEQ.b CODE_C0C894
	LDA.w #$000E
	STA.w $0020,y
CODE_C0C894:
	LDA.w $1172
	LSR
	STA.b $78
	LDX.b $C2,y
	STZ.b $6C
	LDA.w $0000,y
	SEC
	SBC.b $00,x
	BCS.b CODE_C0C8AC
	EOR.w #$FFFF
	INC
	DEC.b $6C
CODE_C0C8AC:
	STA.b $70
	LDA.w $001A,y
	CMP.w #$0004
	BNE.b CODE_C0C8BE
	LDA.w $0020,y
	CMP.w #$001E
	BEQ.b CODE_C0C8E2
CODE_C0C8BE:
	CMP.w #$0005
	BNE.b CODE_C0C8CB
	LDA.w $0020,y
	CMP.w #$0023
	BEQ.b CODE_C0C8E2
CODE_C0C8CB:
	LDA.w $001A,y
	CMP.w #$0006
	BNE.b CODE_C0C8E0
	LDA.w !RAM_ROTR_Global_InvincibilityCheatFlag
	BNE.b CODE_C0C8E0
	LDA.w $0020,y
	CMP.w #$0023
	BEQ.b CODE_C0C8E2
CODE_C0C8E0:
	BRA.b CODE_C0C903

CODE_C0C8E2:
	LDA.b $70
	CMP.b $78
	BCC.b CODE_C0C8EB
	JMP.w CODE_C0C9A4

CODE_C0C8EB:
	LDA.b $6C
	BNE.b CODE_C0C8F9
	LDA.b $00,x
	CLC
	ADC.b $78
	STA.w $0000,y
	BRA.b CODE_C0C941

CODE_C0C8F9:
	LDA.b $00,x
	SEC
	SBC.b $78
	STA.w $0000,y
	BRA.b CODE_C0C941

CODE_C0C903:
	LDA.w $1170
	STA.b $7C
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	CMP.w #!Const_ROTR_CharacterID_Supervisor
	BEQ.b CODE_C0C925
	LDA.w $0ECC
	CMP.w $0ED4
	BEQ.b CODE_C0C925
	LDA.w $101A
	CMP.w $1022
	BEQ.b CODE_C0C925
	LDA.w $1172
	STA.b $7C
CODE_C0C925:
	LDA.b $70
	CMP.b $7C
	BCS.b CODE_C0C9A4
	LDA.b $6C
	BNE.b CODE_C0C939
	LDA.b $00,x
	CLC
	ADC.b $7C
	STA.w $0000,y
	BRA.b CODE_C0C941

CODE_C0C939:
	LDA.b $00,x
	SEC
	SBC.b $7C
	STA.w $0000,y
CODE_C0C941:
	LDX.b $90
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $90
	BIT.w #$0002
	BNE.b CODE_C0C9A4
	LDA.w $001E,y
	CMP.w #$0001
	BNE.b CODE_C0C9A4
	LDX.b $C2,y
	LDA.w $0020,y
	CMP.w #$0002
	BNE.b CODE_C0C96D
	LDA.b $20,x
	CMP.w #$0003
	BEQ.b CODE_C0C9A4
CODE_C0C96D:
	LDX.b $C2,y
	LDA.w $0020,y
	CMP.w #$0003
	BNE.b CODE_C0C97E
	LDA.b $20,x
	CMP.w #$0002
	BEQ.b CODE_C0C9A4
CODE_C0C97E:
	LDA.w #$0000
	STA.w $0020,y
	LDA.w #$0000
	STA.w $0024,y
	STA.w $000E,y
	STA.w $0046,y
	LDA.w $0010,y
	AND.w #$DF7F
	STA.w $0010,y
	LDA.w $0030,y
	BEQ.b CODE_C0C9A4
	LDA.w #$000E
	STA.w $0020,y
CODE_C0C9A4:
	RTS

CODE_C0C9A5:
	LDY.b $90
	LDA.w $0010,y
	BIT.w #$0002
	BEQ.b CODE_C0C9B2
	JMP.w CODE_C0CA83

CODE_C0C9B2:
	LDA.w $0010,y
	BIT.w #$0800
	BEQ.b CODE_C0C9BD
	JMP.w CODE_C0CA83

CODE_C0C9BD:
	LDA.w $060A
	BNE.b CODE_C0CA31
	LDX.b $C2,y
	LDA.b $D6,x
	BNE.b CODE_C0CA31
	LDA.w $0002,y
	CMP.w $000A,y
	BNE.b CODE_C0CA31
	LDX.b $90
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	LDY.b $90
	BIT.w #$0020
	BNE.b CODE_C0CA31
	LDY.w #$0000
	LDA.b [$A4],y
	CLC
	ADC.b $A4
	STA.b $9C
	LDA.b $A6
	STA.b $9E
	LDY.w #$0000
	SEP.b #$20
CODE_C0C9F6:
	LDA.b [$9C],y
	CMP.b #$FF
	BEQ.b CODE_C0CA31
	LDX.b $90
CODE_C0C9FE:
	LDA.b [$9C],y
	INY
	INX
	CMP.b #$FF
	BEQ.b CODE_C0CA11
	CMP.b #$FE
	BEQ.b CODE_C0C9FE
	CMP.b $5F,x
	BNE.b CODE_C0CA24
	JMP.w CODE_C0C9FE

CODE_C0CA11:
	LDA.b #$02
	ASL
	TAX
	LDA.l DATA_C03D02,x
	LDX.b $90
	STA.b $30,x
	LDA.b [$9C],y
	REP.b #$20
	JMP.w CODE_C0CA95

CODE_C0CA24:
	SEP.b #$20
CODE_C0CA26:
	LDA.b [$9C],y
	INY
	CMP.b #$FF
	BNE.b CODE_C0CA26
	INY
	JMP.w CODE_C0C9F6

CODE_C0CA31:
	REP.b #$20
	LDY.b $90
	LDX.b $5C,y
	LDA.w $0002,x
	AND.w #$0021
	EOR.w #$003F
	AND.w $0000,x
	LDX.w #$0000
	BIT.w #$0001
	BEQ.b CODE_C0CA50
	LDX.w #$0001
	BRA.b CODE_C0CA58

CODE_C0CA50:
	BIT.w #$0020
	BEQ.b CODE_C0CA58
	LDX.w #$0002
CODE_C0CA58:
	STA.b $6C
CODE_C0CA5A:
	LDA.b [$94]
	ORA.w #$0000
	BMI.b CODE_C0CA83
	BIT.w #$0001
	BEQ.b CODE_C0CA6B
	CPX.w #$0001
	BEQ.b CODE_C0CA89
CODE_C0CA6B:
	BIT.w #$0020
	BEQ.b CODE_C0CA75
	CPX.w #$0002
	BEQ.b CODE_C0CA89
CODE_C0CA75:
	CMP.b $6C
	BEQ.b CODE_C0CA89
	LDA.b $94
	CLC
	ADC.w #$0004
	STA.b $94
	BRA.b CODE_C0CA5A

CODE_C0CA83:
	LDA.b $6C
	STA.w $0018,y
	RTS

CODE_C0CA89:
	INC.b $94
	INC.b $94
	LDA.w $0038,y
	STA.w $0036,y
	LDA.b [$94]
CODE_C0CA95:
	AND.w #$00FF
	STA.b $70
	BIT.w #$0080
	BNE.b CODE_C0CAF4
	LDX.b $90
	LDA.b $22,x
	BNE.b CODE_C0CAF0
	LDA.w $05FE
	BNE.b CODE_C0CAF0
	JSR.w CODE_C0CB9A
	LDY.w #$0001
	LDA.b [$98],y
	LDY.b $90
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0CABF
	ORA.w #$FF00
CODE_C0CABF:
	ORA.w #$0000
	DEC
	DEC
	BMI.b CODE_C0CACB
	LDA.b $6C
	CMP.w $0018,y
CODE_C0CACB:
	LDA.b $6C
	STA.w $0018,y
	LDA.w $0030,y
	STA.w $0080,y
	LDA.w #$0000
	STA.w $000E,y
	STA.w $0046,y
	LDA.w $0010,y
	AND.w #$FD7B
	STA.w $0010,y
	LDA.b $70
	STA.w $0020,y
	JSR.w CODE_C0ECC9
CODE_C0CAF0:
	RTS

ADDR_C0CAF1:
	JSR.w CODE_C0CCE9
CODE_C0CAF4:
	LDX.w !RAM_ROTR_MainMenu_PlayerSetting
	DEX
	BNE.b CODE_C0CAFD
CODE_C0CAFA:
	JMP.w CODE_C0CB35

CODE_C0CAFD:
	LDX.w !RAM_ROTR_Global_SuperMovesSetting
	DEX
	BNE.b CODE_C0CAFA
	PHA
	PHY
	LDY.b $90
	LDA.w #$0000
	LDX.w #$0004
CODE_C0CB0D:
	ORA.w $00D2,y
	INY
	INY
	INY
	INY
	DEX
	BNE.b CODE_C0CB0D
	PLY
	TAX
	PLA
	CPX.w #$0000
	BNE.b CODE_C0CB35
	LDY.b $90
	CMP.w #$0080
	BEQ.b CODE_C0CB37
	CMP.w #$0084
	BEQ.b CODE_C0CB61
	CMP.w #$0083
	BEQ.b CODE_C0CB87
	CMP.w #$0085
	BEQ.b CODE_C0CB74
CODE_C0CB35:
	RTS

CODE_C0CB36:
	RTS

CODE_C0CB37:
	LDA.w $00D4,y
	BMI.b CODE_C0CB36
	LDA.w #$00C8
	STA.w $00D2,y
	LDA.w #$8000
	STA.w $00D4,y
CODE_C0CB48:
	LDX.w #$0080
	CPY.w #$0ECA
	BNE.b CODE_C0CB58
	LDA.w #DATA_C04098
	JSR.w CODE_C0B10F
	BRA.b CODE_C0CB5E

CODE_C0CB58:
	LDA.w #DATA_C040AE
	JSR.w CODE_C0B10F
CODE_C0CB5E:
	LDY.b $90
	RTS

CODE_C0CB61:
	LDA.w $00DC,y
	BMI.b CODE_C0CB36
	LDA.w #$00C8
	STA.w $00DA,y
	LDA.w #$8000
	STA.w $00DC,y
	BRA.b CODE_C0CB48

CODE_C0CB74:
	LDA.w $00E0,y
	BMI.b CODE_C0CB36
	LDA.w #$00C8
	STA.w $00DE,y
	LDA.w #$8000
	STA.w $00E0,y
	BRA.b CODE_C0CB48

CODE_C0CB87:
	LDA.w $00D8,y
	BMI.b CODE_C0CB36
	LDA.w #$00C8
	STA.w $00D6,y
	LDA.w #$8000
	STA.w $00D8,y
	BRA.b CODE_C0CB48

CODE_C0CB9A:
	PHA
	LDA.b $BE,x
	STA.b $98
	LDA.b $C0,x
	STA.b $9A
	PLA
	PHX
	LDX.w #$000E
	JSR.w CODE_C0E4DB
	CLC
	ADC.b $98
	STA.b $98
	PLX
	RTS

CODE_C0CBB2:
	RTS

CODE_C0CBB3:
	LDY.b $90
	LDA.w $0020,y
	CMP.w #$0025
	BNE.b CODE_C0CBBF
	NOP #2
CODE_C0CBBF:
	LDA.w $0002,y
	CMP.w $000A,y
	BNE.b CODE_C0CBCF
	LDA.w $000C,y
	BNE.b CODE_C0CBCF
	JMP.w CODE_C0CC9D

CODE_C0CBCF:
	JSR.w CODE_C0CBB2
	LDY.b $90
	CLC
	LDA.w $004A,y
	ADC.w $000C,y
	STA.w $000C,y
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$00FF
	BIT.w #$0080
	BEQ.b CODE_C0CBF1
	ORA.w #$FF00
CODE_C0CBF1:
	CLC
	ADC.w $0002,y
	STA.w $0002,y
	BMI.b CODE_C0CC21
	CMP.w $000A,y
	BCC.b CODE_C0CC21
	LDA.w $000A,y
	STA.w $0002,y
	LDA.w $001A,y
	ASL
	TAX
	LDA.l DATA_C03D5E,x
	ASL
	DEC
	STA.w $11AA
	LDA.w $000C,y
	TAX
	DEX
	LDA.w #$0000
	STA.w $000C,y
	TXA
	BPL.b CODE_C0CC24
CODE_C0CC21:
	JMP.w CODE_C0CC9D

CODE_C0CC24:
	LDA.w $001A,y
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $A4
	LDA.l DATA_C035E5+$02,x
	STA.b $A6
	LDY.w #$0030
	LDA.b [$A4],y
	TAX
	INY
	INY
	LDA.b [$A4],y
	STX.b $94
	STX.b $A4
	STA.b $96
	STA.b $A6
	LDY.b $90
	LDA.w $0020,y
	INC
	ASL
	ASL
	TAY
	LDA.b [$94],y
	CLC
	ADC.b $A4
	STA.b $94
	LDA.b $A6
	ADC.w #$0000
	STA.b $96
	LDY.w #$001C
	LDA.b [$94],y
	BIT.w #$0002
	BEQ.b CODE_C0CC9A
	BIT.w #$0080
	BNE.b CODE_C0CC9A
	LDY.w #$001D
	LDA.b [$94],y
	AND.w #$00FF
	LDY.w #$0020
	STA.b [$90],y
	LDY.w #$001E
	LDA.b [$94],y
	AND.w #$00FF
	LDY.w #$000E
	STA.b [$90],y
	LDA.w #$0000
	LDY.w #$0046
	STA.b [$90],y
	LDY.w #$0010
	LDA.b [$90],y
	AND.w #$FF7F
	STA.b [$90],y
CODE_C0CC9A:
	JSR.w CODE_C0C805
CODE_C0CC9D:
	RTS

CODE_C0CC9E:
	LDY.b $90
	LDA.w $0002,y
	CMP.w $000A,y
	BNE.b CODE_C0CCE8
	LDX.b $C2,y
	LDA.b $02,x
	CMP.b $0A,x
	LDA.w $0020,y
	CMP.w #$0018
	BEQ.b CODE_C0CCE8
	CMP.w #$0019
	BEQ.b CODE_C0CCE8
	LDA.w $0010,y
	BIT.w #$0004
	LDA.w $0000,y
	SEC
	SBC.b $00,x
	STA.b $68
	CPY.w #$0ECA
	BNE.b CODE_C0CCD2
	EOR.w #$FFFF
	INC
CODE_C0CCD2:
	LDX.w #$0000
	ORA.w #$0000
	BPL.b CODE_C0CCDB
	DEX
CODE_C0CCDB:
	TXA
	EOR.w $002A,y
	STA.w $002C,y
	EOR.w $002A,y
	STA.w $002E,y
CODE_C0CCE8:
	RTS

CODE_C0CCE9:
	JSR.w CODE_C0D9DF
	LDA.w $0F74
	TAX
	BEQ.b CODE_C0CD19
	LDY.w #$6CA1
CODE_C0CCF5:
	STY.w !REGISTER_VRAMAddressLo
	LDA.w #$203E
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	TYA
	CLC
	ADC.w #$0020
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$2040
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	INY
	INY
	DEX
	BNE.b CODE_C0CCF5
CODE_C0CD19:
	LDA.w $10C2
	TAX
	BEQ.b CODE_C0CD46
	LDY.w #$6CBD
CODE_C0CD22:
	STY.w !REGISTER_VRAMAddressLo
	LDA.w #$203E
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	TYA
	CLC
	ADC.w #$0020
	STA.w !REGISTER_VRAMAddressLo
	LDA.w #$2040
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	DEY
	DEY
	DEX
	BNE.b CODE_C0CD22
CODE_C0CD46:
	RTS

CODE_C0CD47:
	LDA.b $E4
	ASL
	CLC
	ADC.w #$D8C0
	LSR
	STA.w !REGISTER_VRAMAddressLo
	RTS

CODE_C0CD53:
	LDA.b $E4
	ASL
	CLC
	ADC.w #$D900
	LSR
	STA.w !REGISTER_VRAMAddressLo
	RTS

CODE_C0CD5F:
	ASL
	CLC
	ADC.w #$D8C0
	LSR
	STA.w !REGISTER_VRAMAddressLo
	RTS

CODE_C0CD69:
	LDA.w $0000,y
	XBA
	PHA
	TAX
	LSR
	LSR
	LSR
	LSR
	JSR.w CODE_C0D338
	TXA
	JSR.w CODE_C0D338
	PLA
	XBA
	TAX
	LSR
	LSR
	LSR
	LSR
	JSR.w CODE_C0D338
	TXA
	JSR.w CODE_C0D338
	LDA.w #$0000
	JSR.w CODE_C0D338
	RTS

CODE_C0CD8F:
	LDA.w $063C
	BEQ.b CODE_C0CDB3
	LDA.w $0638
	BEQ.b CODE_C0CDB3
	SEP.b #$20
	DEC.w $0638
	BNE.b CODE_C0CDB3
	LDA.w $063A
	STA.w $0638
	LDA.w $0639
	BEQ.b CODE_C0CDB3
	SED
	SEC
	SBC.b #$01
	STA.w $0639
	CLD
CODE_C0CDB3:
	REP.b #$20
	RTS

CODE_C0CDB6:
	LDA.w #$000E
	STA.b $E4
	LDA.w $0646
	BNE.b CODE_C0CDE7
	JSR.w CODE_C0CD47
	LDA.w #$0000
	STA.w !REGISTER_WriteToVRAMPortLo
	STA.w !REGISTER_WriteToVRAMPortLo
	STA.w !REGISTER_WriteToVRAMPortLo
	STA.w !REGISTER_WriteToVRAMPortLo
	JSR.w CODE_C0CD53
	LDA.w #$0000
	STA.w !REGISTER_WriteToVRAMPortLo
	STA.w !REGISTER_WriteToVRAMPortLo
	STA.w !REGISTER_WriteToVRAMPortLo
	STA.w !REGISTER_WriteToVRAMPortLo
	JMP.w CODE_C0CE73

CODE_C0CDE7:
	LDY.w #$0ECA
	JSR.w CODE_C0CE74
	LDY.w #$1018
	JSR.w CODE_C0CE74
	LDA.w #$0007
	JSR.w CODE_C0CD5F
	LDY.w #$0F6E
	JSR.w CODE_C0CD69
	LDA.w #$0014
	JSR.w CODE_C0CD5F
	LDY.w #$10BC
	JSR.w CODE_C0CD69
	LDA.w $063C
	BNE.b CODE_C0CE13
	JMP.w CODE_C0CE73

CODE_C0CE13:
	LDA.w $060A
	BNE.b CODE_C0CE73
	JSR.w CODE_C0CD8F
	JSR.w CODE_C0CD47
	LDA.w $0638
	XBA
	AND.w #$00FF
	STA.b $E8
	LSR
	LSR
	LSR
	LSR
	STA.b $EC
	LDA.b $E8
	AND.w #$000F
	STA.b $E8
	LDA.b $EC
	ASL
	ASL
	CLC
	ADC.w #$2042
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	LDA.b $E8
	ASL
	ASL
	CLC
	ADC.w #$2042
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	JSR.w CODE_C0CD53
	LDA.b $EC
	ASL
	ASL
	CLC
	ADC.w #$2044
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
	LDA.b $E8
	ASL
	ASL
	CLC
	ADC.w #$2044
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.w !REGISTER_WriteToVRAMPortLo
CODE_C0CE73:
	RTS

CODE_C0CE74:
	LDA.w $00A6,y
	BEQ.b CODE_C0CE8C
	LDA.w $00A4,y
	SED
	CLC
	ADC.w #$0001
	CLD
	STA.w $00A4,y
	LDA.w $00A6,y
	DEC
	STA.w $00A6,y
CODE_C0CE8C:
	RTS

CODE_C0CE8D:
	LDA.w $0646
	AND.w #$00FF
	BEQ.b CODE_C0CEA4
	LDA.w #$0000
	STA.b $FE
	LDA.w #$0E40
	STA.b $FC
	JSR.w CODE_C0CEE2
	BRA.b CODE_C0CEAA

CODE_C0CEA4:
	STZ.w $0E42
	STZ.w $0E5E
CODE_C0CEAA:
	LDA.w $0646
	AND.w #$FF00
	BEQ.b CODE_C0CEC1
	LDA.w #$0000
	STA.b $FE
	LDA.w #$0E4E
	STA.b $FC
	JSR.w CODE_C0CEE2
	BRA.b CODE_C0CEC7

CODE_C0CEC1:
	STZ.w $0E50
	STZ.w $0E6C
CODE_C0CEC7:
	RTS

CODE_C0CEC8:
	LDA.b $A2,x
	BPL.b CODE_C0CED7
	CLC
	ADC.w #$0028
	BPL.b CODE_C0CEE1
	LDA.w #$FFD8
	STA.b $A2,x
CODE_C0CED7:
	CMP.w #$0028
	BCC.b CODE_C0CEE1
	LDA.w #$0028
	STA.b $A2,x
CODE_C0CEE1:
	RTS

CODE_C0CEE2:
	LDY.w #$000C
	LDA.b [$FC],y
	STA.b $F4
	LDY.w #$0004
	LDA.b [$FC],y
	LDY.w #$0002
	ORA.b [$FC],y
	BEQ.b CODE_C0CF03
	LDA.b [$FC],y
	CMP.w #$0014
	BCC.b CODE_C0CF04
	LDY.w #$0004
	CMP.b [$FC],y
	BNE.b CODE_C0CF04
CODE_C0CF03:
	RTS

CODE_C0CF04:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$20
	LDY.w #$0000
	LDA.b [$FC],y
	AND.w #$000F
	SEP.b #$20
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	LDY.w #$0002
	LDA.b [$FC],y
	CMP.w #$0014
	BCS.b CODE_C0CF2C
	LDA.w $0610
	AND.w #$000F
CODE_C0CF2C:
	LDY.w #$0006
	CLC
	ADC.b [$FC],y
	ASL
	STA.b $E4
	TAX
	LDA.l DATA_E5A592,x
	PHA
	STA.b $E4
	AND.w #$001F
	SEC
	SBC.w #$0005
	BCS.b CODE_C0CF49
	LDA.w #$0000
CODE_C0CF49:
	STA.b $E8
	LDA.b $E4
	AND.w #$03E0
	SEC
	SBC.w #$00A0
	BCS.b CODE_C0CF59
	LDA.w #$0000
CODE_C0CF59:
	STA.b $EC
	LDA.b $E4
	AND.w #$7C00
	SEC
	SBC.w #$1400
	BCS.b CODE_C0CF69
	LDA.w #$0000
CODE_C0CF69:
	STA.b $F0
	LDA.b $E8
	ORA.b $EC
	ORA.b $F0
	STA.b $E4
	PLA
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	REP.b #$20
	LDA.b $E4
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	REP.b #$20
	LDY.w #$0002
	LDA.b [$FC],y
	LSR
	LSR
	LSR
	STA.b $EC
	LDY.w #$0004
	LDA.b [$FC],y
	LSR
	LSR
	LSR
	SEC
	SBC.b $EC
	STA.b $EC
	LDY.w #$0002
	LDA.b [$FC],y
	LDY.w #$0004
	SEC
	SBC.b [$FC],y
	STA.b $F0
	PHP
	BCS.b CODE_C0CFBB
	EOR.w #$FFFF
	CLC
	ADC.w #$0001
CODE_C0CFBB:
	CMP.b $F4
	BCC.b CODE_C0CFC1
	LDA.b $F4
CODE_C0CFC1:
	STA.b $F2
	PLP
	BCS.b CODE_C0CFD9
	LDA.b $EC
	BEQ.b CODE_C0CFCD
	JSR.w CODE_C0D001
CODE_C0CFCD:
	LDY.w #$0002
	LDA.b [$FC],y
	CLC
	ADC.b $F2
	STA.b [$FC],y
	BRA.b CODE_C0D012

CODE_C0CFD9:
	CMP.b [$FC],y
	BEQ.b CODE_C0D012
	LDA.b $EC
	BEQ.b CODE_C0CFE4
	JSR.w CODE_C0CFF0
CODE_C0CFE4:
	LDY.w #$0002
	LDA.b [$FC],y
	SEC
	SBC.b $F2
	STA.b [$FC],y
	BRA.b CODE_C0D012

CODE_C0CFF0:
	LDY.w #$0002
	LDA.b [$FC],y
	LSR
	LSR
	LSR
	STA.b $E4
	LDX.w #$0000
	STX.b $E8
	BRA.b CODE_C0D023

CODE_C0D001:
	LDY.w #$0002
	LDA.b [$FC],y
	LSR
	LSR
	LSR
	STA.b $E4
	LDX.w #$0008
	STX.b $E8
	BRA.b CODE_C0D023

CODE_C0D012:
	LDY.w #$0002
	LDA.b [$FC],y
	PHA
	LSR
	LSR
	LSR
	STA.b $E4
	PLA
	AND.w #$0007
	STA.b $E8
CODE_C0D023:
	LDA.b $E4
	CMP.w #$000B
	BCS.b CODE_C0D04A
	LDY.w #$0000
	LDA.b [$FC],y
	BMI.b CODE_C0D04B
	LDY.w #$0008
	LDA.b [$FC],y
	CLC
	ADC.b $E4
	STA.w !REGISTER_VRAMAddressLo
	LDY.w #$000A
	LDA.b [$FC],y
	ORA.w #$2000
	CLC
	ADC.b $E8
	STA.w !REGISTER_WriteToVRAMPortLo
CODE_C0D04A:
	RTS

CODE_C0D04B:
	LDY.w #$0008
	LDA.b [$FC],y
	SEC
	SBC.b $E4
	STA.w !REGISTER_VRAMAddressLo
	LDY.w #$000A
	LDA.b [$FC],y
	ORA.w #$6000
	CLC
	ADC.b $E8
	STA.w !REGISTER_WriteToVRAMPortLo
	RTS

CODE_C0D065:
	LDA.w #DATA_C0EFC1>>16
	STA.b $92
	LDA.w #DATA_C0EFC1
	STA.b $90
	LDA.w #$000E40>>16
	STA.b $96
	LDA.w #$000E40
	STA.b $94
	JSR.w CODE_C0D0BB
	LDA.w #DATA_C0EFCF>>16
	STA.b $92
	LDA.w #DATA_C0EFCF
	STA.b $90
	LDA.w #$000E4E>>16
	STA.b $96
	LDA.w #$000E4E
	STA.b $94
	JSR.w CODE_C0D0BB
	LDA.w #$000E40>>16
	STA.b $96
	LDA.w #$000E40
	STA.b $94
	LDY.w #$0004
	LDA.w #$0000
	STA.b [$94],y
	LDA.w #$000E4E>>16
	STA.b $96
	LDA.w #$000E4E
	STA.b $94
	LDY.w #$0004
	LDA.w #$0056
	LDA.w #$0000
	STA.b [$94],y
	RTS

CODE_C0D0BB:
	LDY.w #$0000
	SEP.b #$20
CODE_C0D0C0:
	LDA.b [$90],y
	STA.b [$94],y
	INY
	CPY.w #$000E
	BNE.b CODE_C0D0C0
	REP.b #$20
	RTS

CODE_C0D0CD:
	JSR.w CODE_C0DA27
	JSR.w CODE_C0019A
	SEP.b #$20
	LDA.b #$60
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$6C
	STA.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$03
	STA.w !REGISTER_BGModeAndTileSizeSetting
	LDA.b #$70
	STA.w !REGISTER_BG1And2TileDataDesignation
	LDA.b #$03
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$00
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$00
	STA.w !REGISTER_ColorMathInitialSettings
	LDA.b #$FF
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$03
	STA.w !REGISTER_BG1And2WindowMaskSettings
	LDA.b #$33
	STA.w !REGISTER_ObjectAndColorWindowSettings
	LDA.b #$00
	STA.w !REGISTER_Window1LeftPositionDesignation
	LDA.b #$FF
	STA.w !REGISTER_Window1RightPositionDesignation
	LDA.b #$5F
	STA.w !REGISTER_Window2LeftPositionDesignation
	LDA.b #$9F
	STA.w !REGISTER_Window2RightPositionDesignation
	LDA.b #$11
	STA.w !REGISTER_MainScreenWindowMask
	STA.w !REGISTER_SubScreenWindowMask
	REP.b #$20
	JSR.w CODE_C0DA64
	LDA.w #$4000
	STA.b $26
	STZ.b $24
	JSR.w CODE_C0D363
	LDA.w #$4000
	STA.b $26
	LDA.w #$4000
	STA.b $24
	JSR.w CODE_C0D363
	LDA.w #$4000
	STA.b $26
	LDA.w #$8000
	STA.b $24
	JSR.w CODE_C0D363
	LDA.w #$4000
	STA.b $26
	LDA.w #$C000
	STA.b $24
	JSR.w CODE_C0D363
	RTS

CODE_C0D16A:
	RTS

CODE_C0D16B:
	JSR.w CODE_C0E4AA
	LDA.w #(DATA_CAEFCF+$02)>>16
	STA.b $22
	LDA.w #DATA_CAEFCF+$02
	STA.b $20
	LDA.l DATA_CAEFCF
	LSR
	LSR
	STA.b $26
	LDA.w #$7020
	STA.b $24
	JSR.w CODE_C0EC3E
	LDX.b $22
	STX.b $92
	LDA.b $26
	ASL
	ASL
	CLC
	ADC.b $20
	STA.b $90
	INC.b $90
	INC.b $90
	LDA.w #$0001
	LDX.w #$000F
	JSR.w CODE_C0D447
	RTS

CODE_C0D1A3:
	LDA.w #(DATA_E4FA8D+$02)>>16
	STA.b $22
	LDA.w #DATA_E4FA8D+$02
	STA.b $20
	LDA.l DATA_E4FA8D
	LSR
	STA.b $26
	LDA.w #$7420
	STA.b $24
	JSR.w CODE_C0EC3E
	RTS

CODE_C0D1BD:
	SEP.b #$20
	LDA.b #$61
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$6C
	STA.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$03
	STA.w !REGISTER_BGModeAndTileSizeSetting
	LDA.b #$70
	STA.w !REGISTER_BG1And2TileDataDesignation
	LDA.b #$13
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$01
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$90
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$02
	STA.w !REGISTER_ColorMathInitialSettings
	LDA.b #$FF
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$FF
	STA.w !REGISTER_BG2VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$20
	LDA.w #DATA_CFF1AA>>16
	STA.b $92
	LDA.w #DATA_CFF1AA
	STA.b $90
	LDA.w #$0001
	LDX.w #$000F
	JSR.w CODE_C0D447
	LDA.w #DATA_C035C5>>16
	STA.b $92
	LDA.w #DATA_C035C5
	STA.b $90
	LDA.w #$00D0
	LDX.w #$0010
	JSR.w CODE_C0D447
	LDA.w #DATA_C035C5>>16
	STA.b $92
	LDA.w #DATA_C035C5
	STA.b $90
	LDA.w #$00C0
	LDX.w #$0010
	JSR.w CODE_C0D447
	LDX.w !RAM_ROTR_Global_CurrentOpponent
	DEX
	LDA.l DATA_C035AC,x
	AND.w #$00FF
	BEQ.b CODE_C0D267
	LDA.w $0EE4
	JSR.w CODE_C0D2DA
	LDA.w #$00D0
	LDX.w #$0010
	JSR.w CODE_C0D447
	LDA.w $1032
	JSR.w CODE_C0D2DA
	LDA.w #$00C0
	LDX.w #$0010
	JSR.w CODE_C0D447
CODE_C0D267:
	LDX.w #$0000
	LDA.w #$7000
	STA.b $24
	LDA.w #$0800
	STA.b $26
	JSR.w CODE_C0D363
	LDA.w #DATA_CEF45F>>16
	STA.b $92
	LDA.w #DATA_CEF45F
	STA.b $90
	LDA.w #$0090
	LDX.w #$0010
	JSR.w CODE_C0D447
	LDA.l DATA_C812F9
	STA.b $26
	LDA.w #(DATA_C812F9+$02)>>16
	STA.b $22
	LDA.w #DATA_C812F9+$02
	STA.b $20
	LDA.w #$4000
	STA.b $24
	JSR.w CODE_C0EC3E
	LDA.l DATA_E5A190
	STA.b $26
	LDA.w #(DATA_E5A190+$02)>>16
	STA.b $22
	LDA.w #DATA_E5A190+$02
	STA.b $20
	LDA.w #$4200
	STA.b $24
	JSR.w CODE_C0EC3E
	LDA.l DATA_E4F60B
	LSR
	STA.b $26
	LDA.w #(DATA_E4F60B+$02)>>16
	STA.b $22
	LDA.w #DATA_E4F60B+$02
	STA.b $20
	LDA.w #$76A0
	STA.b $24
	JSR.w CODE_C0EC3E
	JSR.w CODE_C0D1A3
	JSR.w CODE_C0D16B
	RTS

CODE_C0D2DA:
	ASL
	ASL
	TAX
	LDA.l DATA_C035E5,x
	STA.b $90
	LDA.l DATA_C035E5+$02,x
	STA.b $92
	LDY.w #$002C
	LDA.b [$90],y
	TAX
	INY
	INY
	LDA.b [$90],y
	STX.b $90
	STA.b $92
	RTS

CODE_C0D2F8:
	ASL
	CLC
	ADC.w #$D9C0
	LSR
	STA.w !REGISTER_VRAMAddressLo
	RTS

CODE_C0D302:
	PHA
	TXA
	JSR.w CODE_C0D2F8
	PLA
	TAX
	LSR
	LSR
	LSR
	LSR
	JSR.w CODE_C0D338
	TXA
	JSR.w CODE_C0D338
	RTS

CODE_C0D315:
	PHA
	TXA
	JSR.w CODE_C0D2F8
	PLA
	XBA
	PHA
	TAX
	LSR
	LSR
	LSR
	LSR
	JSR.w CODE_C0D338
	TXA
	JSR.w CODE_C0D338
	PLA
	XBA
	TAX
	LSR
	LSR
	LSR
	LSR
	JSR.w CODE_C0D338
	TXA
	JSR.w CODE_C0D338
	RTS

CODE_C0D338:
	AND.w #$000F
	CLC
	ADC.w #$0030
	CMP.w #$003A
	BCC.b CODE_C0D348
	CLC
	ADC.w #$0007
CODE_C0D348:
	JSR.w CODE_C0D34C
	RTS

CODE_C0D34C:
	SEC
	SBC.w #$0020
	CLC
	ADC.w #$2002
	STA.w !REGISTER_WriteToVRAMPortLo
	RTS

CODE_C0D358:
	STX.b $24
	LDX.w #$0800
	STX.b $26
	JSR.w CODE_C0D363
	RTS

CODE_C0D363:
	JSR.w CODE_C0D9DF
	JSR.w CODE_C0E4AA
	JSR.w CODE_C0E468
	RTS

CODE_C0D36D:
	LDA.w $0648,y
	AND.w #$001F
	STA.w $0848,y
	INY
	INY
	DEX
	BNE.b CODE_C0D36D
	RTS

CODE_C0D37C:
	LDY.w #$0000
	LDX.w #$0100
	LDA.w #$0000
CODE_C0D385:
	STA.w $0648,y
	INY
	INY
	DEX
	BNE.b CODE_C0D385
	RTS

CODE_C0D38E:
	LDX.w #$0100
	LDY.w #$0000
	LDA.w #$0000
CODE_C0D397:
	STA.w $0848,y
	INY
	INY
	DEX
	BNE.b CODE_C0D397
	RTS

CODE_C0D3A0:
	STX.b $8C
	ASL
	TAX
	LDY.w #$0000
CODE_C0D3A7:
	LDA.b [$90],y
	STA.w $0848,x
	INY
	INY
	INX
	INX
	DEC.b $8C
	BNE.b CODE_C0D3A7
	RTS

CODE_C0D3B5:
	ASL
	TAY
CODE_C0D3B7:
	LDA.b [$90],y
	STA.w $0A48,y
	INY
	INY
	DEX
	BNE.b CODE_C0D3B7
	RTS

CODE_C0D3C2:
	LDX.w #$0100
	LDY.w #$0000
CODE_C0D3C8:
	LDA.w $0648,y
	STA.w $0848,y
	INY
	INY
	DEX
	BNE.b CODE_C0D3C8
	RTS

CODE_C0D3D4:
	LDX.w #$0100
	LDY.w #$0000
CODE_C0D3DA:
	LDA.w $0848,y
	STA.w $0648,y
	INY
	INY
	DEX
	BNE.b CODE_C0D3DA
	RTS

CODE_C0D3E6:
	STA.b $68
CODE_C0D3E8:
	LDA.w $0A48,y
	STA.w $0648,x
	INY
	INY
	INX
	INX
	DEC.b $68
	BNE.b CODE_C0D3E8
	RTS

CODE_C0D3F7:
	PHX
	PHA
	JSR.w CODE_C0D43D
	PLA
	STA.b $C6
	LDY.w #$0000
	LDA.w #$0000
CODE_C0D405:
	STA.w $0648,y
	INY
	INY
	DEX
	BNE.b CODE_C0D405
	PLX
	STX.b $C8
	RTS

CODE_C0D411:
	JSR.w CODE_C0D43D
	LDY.b $90
	PHY
	LDY.b $92
	PHY
	PHA
	ASL
	TAY
	LDX.w #$0010
CODE_C0D420:
	LDA.b [$90]
	STA.w $0648,y
	INC.b $90
	INC.b $90
	INY
	INY
	DEX
	BNE.b CODE_C0D420
	PLA
	STA.b $C6
	LDX.w #$0010
	STX.b $C8
	PLY
	STY.b $92
	PLY
	STY.b $90
	RTS

CODE_C0D43D:
	PHA
	LDA.b $C8
	BEQ.b CODE_C0D445
	JSR.w CODE_C0D9DF
CODE_C0D445:
	PLA
	RTS

CODE_C0D447:
	JSR.w CODE_C0D43D
	LDY.b $90
	PHY
	LDY.b $92
	PHY
	PHX
	PHA
	ASL
	TAY
CODE_C0D454:
	LDA.b [$90]
	STA.w $0648,y
	INC.b $90
	INC.b $90
	INY
	INY
	DEX
	BNE.b CODE_C0D454
	PLA
	PLX
	PLY
	STY.b $92
	PLY
	STY.b $90
CODE_C0D46A:
	JSR.w CODE_C0D43D
	STA.b $C6
	STX.b $C8
	RTS

CODE_C0D472:
	SEP.b #$20
	LDA.b #$61
	STA.w !REGISTER_BG1AddressAndSize
	LDA.b #$6C
	STA.w !REGISTER_BG2AddressAndSize
	STZ.w !REGISTER_BG1HorizScrollOffset
	STZ.w !REGISTER_BG1HorizScrollOffset
	LDA.b #$03
	STA.w !REGISTER_BGModeAndTileSizeSetting
	LDA.b #$70
	STA.w !REGISTER_BG1And2TileDataDesignation
	LDA.b #$13
	STA.w !REGISTER_MainScreenLayers
	LDA.b #$00
	STA.w !REGISTER_SubScreenLayers
	LDA.b #$50
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$02
	STA.w !REGISTER_ColorMathInitialSettings
	LDA.b #$FF
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$FF
	STA.w !REGISTER_BG2VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_BG2VertScrollOffset
	REP.b #$20
	RTS

CODE_C0D4B9:
	STZ.w $0636
	STZ.w $05F4
	STZ.w $05F8
	STZ.w $05FA
	STZ.w $02E4
	STZ.w $010C
	STZ.w $010E
	STZ.w $0114
	STZ.w $0116
	STZ.w $11E8
	STZ.w $11EA
	STZ.w $11AC
	LDA.w #$0000
	STA.w $0644
	STZ.w $060C
	STZ.w $0646
	LDY.w #$00D0
	LDX.w #$0C52
	LDA.w #$0000
CODE_C0D4F2:
	STA.b $00,x
	INX
	INX
	DEY
	BNE.b CODE_C0D4F2
	LDY.w #$0018
	LDX.w #$0DF2
	LDA.w #$0000
CODE_C0D502:
	STA.b $00,x
	INX
	INX
	DEY
	BNE.b CODE_C0D502
	JSR.w CODE_C0B17D
	RTS

CODE_C0D50D:
	LDX.w $0636
	CPX.w #$FFFF
	BEQ.b CODE_C0D516
	INX
CODE_C0D516:
	STX.w $0636
	CPX.w #$0004
	BCC.b CODE_C0D56A
	LDA.w #$002D
	STA.w $02DE
	INC.w $1072
	LDA.w $0F24
	SEC
	SBC.w $1072
	BCC.b CODE_C0D544
	LDY.w #$0132
	LDX.w #$0040
	JSR.w CODE_C0DDF9
	LDY.w #$0146
	LDX.w #$00A0
	JSR.w CODE_C0DDF9
	BRA.b CODE_C0D556

CODE_C0D544:
	LDY.w #$0146
	LDX.w #$00A0
	JSR.w CODE_C0DDF9
	LDY.w #$0132
	LDX.w #$0040
	JSR.w CODE_C0DDF9
CODE_C0D556:
	LDA.w $0610
	AND.w #$0001
	JSR.w CODE_C0D56B
	JSR.w CODE_C0D582
	BRA.b CODE_C0D56A

CODE_C0D564:
	JSR.w CODE_C0D582
	JSR.w CODE_C0D56B
CODE_C0D56A:
	RTS

CODE_C0D56B:
	LDX.w #$0040
	LDA.w $0ED4
	SEC
	SBC.w $0ECC
	LSR
	LSR
	STA.b $7C
	LDA.w #$000A
	LDY.w #$0132
	JMP.w CODE_C0DF21

CODE_C0D582:
	LDX.w #$00A0
	LDA.w $1022
	SEC
	SBC.w $101A
	LSR
	LSR
	STA.b $7C
	LDA.w #$0008
	LDY.w #$0146
	JMP.w CODE_C0DF21

CODE_C0D599:
	LDA.w $02F2
	BNE.b CODE_C0D5A7
	LDX.w #$0146
	LDY.w #$1018
	JSR.w CODE_C0D5E1
CODE_C0D5A7:
	RTS

CODE_C0D5A8:
	LDA.w $02F2
	BNE.b CODE_C0D5B6
	LDX.w #$0132
	LDY.w #$0ECA
	JSR.w CODE_C0D5E1
CODE_C0D5B6:
	RTS

CODE_C0D5B7:
	LDA.b $70
	CLC
	ADC.w #$FFE8
	STA.b $00,x
	LDA.b $74
	CLC
	ADC.w #$000F
	STA.b $02,x
	LDA.b $68
	STA.b $04,x
	LDA.b $6C
	STA.b $06,x
	LDA.b $78
	STA.b $0C,x
	LDA.b $94
	STA.b $10,x
	LDA.b $96
	STA.b $12,x
	LDA.w $00D2,y
	STA.b $0E,x
	RTS

CODE_C0D5E1:
	STY.b $98
	STX.b $90
	LDA.w $0000,y
	PHX
	TAX
	BMI.b CODE_C0D5FC
	CMP.w #$018F
	BCC.b CODE_C0D5F4
	LDA.w #$018F
CODE_C0D5F4:
	ASL
	TAX
	LDA.l DATA_C039D5,x
	BRA.b CODE_C0D612

CODE_C0D5FC:
	EOR.w #$FFFF
	INC
	CMP.w #$018F
	BCC.b CODE_C0D608
	LDA.w #$018F
CODE_C0D608:
	ASL
	TAX
	LDA.l DATA_C039D5,x
	EOR.w #$FFFF
	INC
CODE_C0D612:
	PLX
	STA.b $70
	LDA.w $0002,y
	CLC
	ADC.w $0044,y
	STA.b $74
	PHX
	LDX.w #$0000
CODE_C0D622:
	LDA.l DATA_C03D82,x
	BMI.b CODE_C0D649
	CMP.w $001A,y
	BNE.b CODE_C0D641
	LDA.l DATA_C03D82+$02,x
	CMP.w $0024,y
	BNE.b CODE_C0D641
	LDA.l DATA_C03D82+$04,x
	CLC
	ADC.b $74
	STA.b $74
	BRA.b CODE_C0D649

CODE_C0D641:
	TXA
	CLC
	ADC.w #$0006
	TAX
	BRA.b CODE_C0D622

CODE_C0D649:
	PLX
	LDA.w $002C,y
	AND.w #$0040
	ORA.w #$0031
	STA.b $78
	LDA.w $008A,y
	AND.w #$0007
	ASL
	ORA.b $78
	STA.b $78
	LDA.w $0026,y
	STA.b $9C
	LDA.w $0028,y
	STA.b $9E
	LDA.b [$9C]
	DEC
	STA.b $68
	INC.b $9C
	INC.b $9C
	LDY.w #$0008
	LDA.b [$9C],y
	STA.b $80
	LDY.w #$000A
	LDA.b [$9C],y
	STA.b $84
	LDY.w #$000E
	LDA.b [$9C],y
	STA.b $82
	LDY.w #$0004
	LDA.b [$9C],y
	ASL
	ASL
	ASL
	ASL
	STA.b $86
	LDY.b $98
	PHX
	LDX.w #$0000
	CPY.w #$0ECA
	BEQ.b CODE_C0D6A0
	INX
	INX
CODE_C0D6A0:
	LDA.l DATA_C03D7C,x
	PLX
	ORA.w #$0000
	BPL.b CODE_C0D6AD
	LDA.w $0024,y
CODE_C0D6AD:
	CMP.b $68
	BCC.b CODE_C0D6B3
	LDA.b $68
CODE_C0D6B3:
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.b $9C
	STA.b $9C
	LDY.w #$000C
	LDA.b [$9C],y
	LDY.b $98
	STA.w $0008,y
	LDY.w #$0000
	LDA.b [$9C],y
	STA.b $94
	INY
	INY
	LDA.b [$9C],y
	STA.b $96
	LDY.w #$0004
	LDA.b [$9C],y
	STA.b $68
	LDY.w #$0006
	LDA.b [$9C],y
	STA.b $6C
	LDY.b $98
	LDA.w $002C,y
	BEQ.b CODE_C0D715
	PHX
	LDX.b $1A,y
	LDA.l DATA_C03CF9,x
	AND.w #$00FF
	STA.b $72
	PLX
	LDY.w #$0004
	LDA.b [$9C],y
	ASL
	ASL
	ASL
	ASL
	STA.b $82
	EOR.w #$FFFF
	INC
	CLC
	ADC.b $70
	ADC.b $72
	ADC.b $80
	SEC
	LDY.w #$0008
	SBC.b [$9C],y
	STA.b $70
	BRA.b CODE_C0D722

CODE_C0D715:
	LDY.w #$0008
	LDA.b [$9C],y
	SEC
	SBC.b $80
	CLC
	ADC.b $70
	STA.b $70
CODE_C0D722:
	LDY.w #$000A
	LDA.b [$9C],y
	SEC
	SBC.b $84
	CLC
	ADC.b $74
	STA.b $74
	LDY.b $98
	LDA.b $70
	SEC
	SBC.w $0000,y
	STA.w $0040,y
	JSR.w CODE_C0D5B7
	RTS

CODE_C0D73E:
	SEP.b #$20
	PHB
	REP.b #$20
	STZ.w $03D2
	LDX.w #$03D2
	LDY.w #$03D3
	LDA.w #$021F
	MVN $000000>>16,$000000>>16
	SEP.b #$20
	PLB
	REP.b #$20
	LDA.w #$AAAA
	STA.w $05D4
	STA.w $05D6
	STA.w $05D8
	STA.w $05DA
	STA.w $05DC
	STA.w $05DE
	STA.w $05E0
	STA.w $05E2
	STA.w $05E4
	STA.w $05E6
	STA.w $05E8
	STA.w $05EA
	STA.w $05EC
	STA.w $05EE
	STA.w $05F0
	RTS

CODE_C0D788:
	JSR.w CODE_C0D78C
	RTS

CODE_C0D78C:
	REP.b #$20
	LDY.w #$001A
	LDA.b [$90],y
	LDX.w #!Joypad_DPadR
	LDY.w #!Joypad_DPadL
	CMP.w #$0000
	BEQ.b CODE_C0D7A4
	LDY.w #!Joypad_DPadR
	LDX.w #!Joypad_DPadL
CODE_C0D7A4:
	STX.b $68
	STY.b $6C
	LDY.w #$002E
	LDA.b [$90],y
	BEQ.b CODE_C0D7B7
	LDX.b $6C
	LDY.b $68
	STX.b $68
	STY.b $6C
CODE_C0D7B7:
	LDY.b $90
	LDX.b $C2,y
	LDA.b $DE,x
	BEQ.b CODE_C0D7C7
	LDX.b $6C
	LDY.b $68
	STX.b $68
	STY.b $6C
CODE_C0D7C7:
	LDY.b $90
	LDA.w $005C,y
	TAX
	LDA.b $00,x
	STA.b $02,x
	LDA.b $04,x
	STA.b $06,x
	LDA.w #$0000
	STA.b $00,x
	STZ.b $70
	LDA.b $04,x
	BIT.w $180D
	BNE.b CODE_C0D7F1
	INC.b $70
	BIT.w $180F
	BNE.b CODE_C0D7F1
	INC.b $70
	BIT.w $1811
	BEQ.b CODE_C0D82C
CODE_C0D7F1:
	LDA.w #$0001
	ORA.b $00,x
	STA.b $00,x
	LDY.b $90
	PHX
	LDX.b $90
	LDA.b $20,x
	JSR.w CODE_C0CB9A
	LDY.w #$0006
	LDA.b [$98],y
	PLX
	BIT.w #$0020
	BEQ.b CODE_C0D812
	LDA.w #$0002
	STA.b $70
CODE_C0D812:
	LDA.b $70
	PHX
	LDY.b $90
	STA.w $0038,y
	ASL
	TAX
	LDA.l DATA_C03D02,x
	STA.w $0030,y
	PLX
	LDA.b $00,x
	BIT.b $02,x
	BNE.b CODE_C0D82C
	BRA.b CODE_C0D86D

CODE_C0D82C:
	STZ.b $70
	LDA.b $04,x
	BIT.w $1813
	BNE.b CODE_C0D843
	INC.b $70
	BIT.w $1815
	BNE.b CODE_C0D843
	INC.b $70
	BIT.w $1817
	BEQ.b CODE_C0D85E
CODE_C0D843:
	LDA.w #$0020
	ORA.b $00,x
	STA.b $00,x
	LDA.b $70
	PHX
	LDY.b $90
	STA.w $0038,y
	ASL
	TAX
	LDA.l DATA_C03D02,x
	STA.w $0030,y
	PLX
	BRA.b CODE_C0D86D

CODE_C0D85E:
	LDA.w $0020,y
	CMP.w #$0000
	BEQ.b CODE_C0D86B
	CMP.w #$000E
	BNE.b CODE_C0D86D
CODE_C0D86B:
	LDY.b $90
CODE_C0D86D:
	LDA.b $68
	BIT.b $04,x
	BEQ.b CODE_C0D87A
	LDA.w #$0002
	ORA.b $00,x
	STA.b $00,x
CODE_C0D87A:
	LDA.b $6C
	BIT.b $04,x
	BEQ.b CODE_C0D887
	LDA.w #$0004
	ORA.b $00,x
	STA.b $00,x
CODE_C0D887:
	LDA.w #!Joypad_DPadU
	BIT.b $04,x
	BEQ.b CODE_C0D895
	LDA.w #$0008
	ORA.b $00,x
	STA.b $00,x
CODE_C0D895:
	LDA.w #!Joypad_DPadD
	BIT.b $04,x
	BEQ.b CODE_C0D8A3
	LDA.w #$0010
	ORA.b $00,x
	STA.b $00,x
CODE_C0D8A3:
	LDY.b $90
	LDA.w $0010,y
	BIT.w #$0A00
	BNE.b CODE_C0D8AD
CODE_C0D8AD:
	LDY.b $90
	LDA.w $005C,y
	TAX
	LDA.b $00,x
	AND.w #$FFDF
	STA.b $68
	LDA.b $04,x
	AND.w #!Joypad_A|!Joypad_B|!Joypad_Y|!Joypad_X|!Joypad_L|!Joypad_R
	BEQ.b CODE_C0D8C8
	LDA.w #$0001
	ORA.b $68
	STA.b $68
CODE_C0D8C8:
	LDA.w $005E,y
	INC
	STA.w $005E,y
	CMP.l DATA_C080F8
	BCS.b CODE_C0D8DE
	SEP.b #$20
	LDA.b $68
	CMP.w $0060,y
	BEQ.b CODE_C0D903
CODE_C0D8DE:
	REP.b #$20
	LDA.b $90
	CLC
	ADC.w #$000F
	TAX
	LDY.w #$000F
	SEP.b #$20
CODE_C0D8EC:
	LDA.b $5F,x
	STA.b $60,x
	DEX
	DEY
	BNE.b CODE_C0D8EC
	LDY.b $90
	LDA.b $68
	STA.w $0060,y
	REP.b #$20
	LDA.w #$0000
	STA.w $005E,y
CODE_C0D903:
	REP.b #$20
	RTS

CODE_C0D906:
	LDA.w $03CC
	BNE.b CODE_C0D935
	LDA.w $0610
	BIT.w #$0001
	BNE.b CODE_C0D925
	LDA.w #$0000
	STA.b $96
	LDA.w #$0132
	STA.b $94
	LDA.w #$0040
	JSR.w CODE_C0D936
	BRA.b CODE_C0D935

CODE_C0D925:
	LDA.w #$0000
	STA.b $96
	LDA.w #$0146
	STA.b $94
	LDA.w #$00A0
	JSR.w CODE_C0D936
CODE_C0D935:
	RTS

CODE_C0D936:
	PHA
	LDY.w #$0010
	LDA.b [$94],y
	TAX
	INY
	INY
	LDA.b [$94],y
	STX.b $94
	STA.b $96
	STX.b $98
	STA.b $9A
	LDA.b $36
	ASL
	ASL
	ASL
	STA.b $70
	TAX
	PLA
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$4000
	STA.b $68
	LDA.b [$94]
	AND.w #$00F8
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	STA.b $70
	LDA.b [$94]
	AND.w #$0007
	ASL
	ASL
	ASL
	ASL
	ASL
	STA.b $72
	CLC
	ADC.b $70
	ASL
	STA.b $3E,x
	LDY.w #$0002
	LDA.b [$94],y
	CLC
	ADC.b $94
	STA.b $94
	STA.b $38,x
	LDA.b $96
	STA.b $3A,x
	LDA.b $68
	STA.b $3C,x
	LDA.b $72
	BEQ.b CODE_C0D9B8
	ASL
	STA.b $46,x
	LDA.b $68
	CLC
	ADC.b $70
	ADC.w #$0100
	STA.b $44,x
	LDA.b $94
	CLC
	ADC.b $70
	ADC.b $70
	ADC.b $72
	ADC.b $72
	STA.b $40,x
	LDA.b $96
	STA.b $42,x
	LDA.b $36
	INC
	INC
	STA.b $36
	RTS

CODE_C0D9B8:
	INC.b $36
	RTS

CODE_C0D9BB:
	SEP.b #$20
	LDA.b #$00
	LDX.w #$0010
CODE_C0D9C2:
	JSR.w CODE_C0D9DF
	STA.w !REGISTER_ScreenDisplayRegister
	INC
	DEX
	BNE.b CODE_C0D9C2
	REP.b #$20
	RTS

CODE_C0D9CF:
	SEP.b #$20
	LDA.b #$0F
CODE_C0D9D3:
	JSR.w CODE_C0D9DF
	STA.w !REGISTER_ScreenDisplayRegister
	DEC
	BPL.b CODE_C0D9D3
	REP.b #$20
	RTS

CODE_C0D9DF:
	PHX
	PHA
	PHP
	REP.b #$20
	STZ.w $0308
	LDA.w $0308
CODE_C0D9EA:
	CMP.w $0308
	BEQ.b CODE_C0D9EA
	LDA.w !RAM_ROTR_Global_CanFreezeScreenWithSelectFlag
	BEQ.b CODE_C0DA0F
	LDA.w #!Joypad_Select
	BIT.w !RAM_ROTR_Global_HeldButtonsP1
	BNE.b CODE_C0DA03
	BIT.w !RAM_ROTR_Global_HeldButtonsP2
	BNE.b CODE_C0DA03
	BRA.b CODE_C0DA0F

CODE_C0DA03:
	LDA.w #$2000
	JSR.w CODE_C0898E
	LDA.w #$2000
	JSR.w CODE_C0898E
CODE_C0DA0F:
	PLP
	PLA
	PLX
	RTS

CODE_C0DA13:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	RTS

CODE_C0DA1D:
	SEP.b #$20
	LDA.b #$0F
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	RTS

CODE_C0DA27:
	SEP.b #$20
	LDA.b #$80
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	RTS

CODE_C0DA31:
	SEP.b #$20
	LDA.b #$0F
	STA.w !REGISTER_ScreenDisplayRegister
	REP.b #$20
	RTS

CODE_C0DA3B:
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_OAMSizeAndDataAreaDesignation
	REP.b #$20
	JSR.w CODE_C0D73E
	JSR.w CODE_C0D9DF
	LDA.w #$0000
	STA.b $22
	LDA.w #$03D2
	STA.b $20
	LDA.w #$0220
	STA.b $26
	LDA.w #$0000
	STA.b $24
	JSR.w CODE_C0DA9A
	REP.b #$20
	RTS

CODE_C0DA64:
	SEP.b #$20
	LDX.w #$0100
	STX.w !REGISTER_OAMAddressLo
	LDX.w #$0020
	LDA.b #$FF
CODE_C0DA71:
	STA.w !REGISTER_OAMDataWritePort
	DEX
	BNE.b CODE_C0DA71
	LDX.w #$0000
	STX.w !REGISTER_OAMAddressLo
	LDX.w #$0080
CODE_C0DA80:
	LDA.b #$00
	STA.w !REGISTER_OAMDataWritePort
	LDA.b #$00
	STA.w !REGISTER_OAMDataWritePort
	LDA.b #$00
	STA.w !REGISTER_OAMDataWritePort
	LDA.b #$00
	STA.w !REGISTER_OAMDataWritePort
	DEX
	BNE.b CODE_C0DA80
	REP.b #$20
	RTS

CODE_C0DA9A:
	SEP.b #$20
	STZ.w !REGISTER_DMAEnable
	LDA.b #$00
	STA.w DMA[$00].Parameters
	LDA.b #!REGISTER_OAMDataWritePort
	STA.w DMA[$00].Destination
	LDX.b $20
	STX.w DMA[$00].SourceLo
	LDA.b $22
	STA.w DMA[$00].SourceBank
	REP.b #$20
	LDA.b $26
	STA.w DMA[$00].SizeLo
	LDA.b $24
	STA.w !REGISTER_OAMAddressLo
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
	REP.b #$20
	RTS

CODE_C0DAC9:
	RTS

CODE_C0DACA:
	LDA.b $70
	ASL
	ASL
	TAX
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	AND.b #$01
	STA.w $03D5,x
	LDA.b $6C
	AND.b #$FE
	ORA.w $03D5,x
	STA.w $03D5,x
	LDA.b $7C
	STA.w $03D3,x
	LDA.b $78
	CLC
	ADC.w $0644
	STA.w $03D2,x
	REP.b #$20
	LDA.b $70
	LSR
	LSR
	TAX
	LDA.b $70
	AND.w #$0003
	TAY
	LDA.b $78
	CLC
	ADC.w $0644
	AND.w #$0100
	ORA.w #$0003
	CPY.w #$0000
	BEQ.b CODE_C0DB18
CODE_C0DB13:
	ASL
	ASL
	DEY
	BNE.b CODE_C0DB13
CODE_C0DB18:
	SEP.b #$20
	EOR.b #$FF
	AND.w $05D2,x
	STA.w $05D2,x
	XBA
	ORA.w $05D2,x
	STA.w $05D2,x
	REP.b #$20
	INC.b $70
	INC.b $74
	RTS

CODE_C0DB30:
	STZ.b $84
	LDA.w $0002,y
	STA.b $7C
	BRA.b CODE_C0DB4B

CODE_C0DB39:
	LDA.w $0644
	STA.b $84
	LDA.w $11AC
	EOR.w #$FFFF
	INC
	CLC
	ADC.w $0002,y
	STA.b $7C
CODE_C0DB4B:
	LDA.w $0004,y
	STA.b $6A
	LDA.w $0000,y
	CLC
	ADC.b $84
	STA.b $7A
	LDA.w $000C,y
	AND.w #$00FE
	STA.b $80
	LDA.w $000C,y
	BIT.w #$0040
	BEQ.b CODE_C0DB6C
	JMP.w CODE_C0DBE9

CODE_C0DB6B:
	RTS

CODE_C0DB6C:
	LDA.w $0006,y
	STA.b $6C
	LDA.w $0008,y
	STA.b $70
	LDA.w $000A,y
	STA.b $74
CODE_C0DB7B:
	LDA.b $7A
	STA.b $78
	LDA.b $6A
	STA.b $68
CODE_C0DB83:
	LDA.b $70
	CMP.w #$0080
	BCS.b CODE_C0DBE8
	ASL
	ASL
	TAX
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	ADC.b #$00
	AND.b #$01
	STA.w $03D5,x
	LDA.b $7C
	STA.w $03D3,x
	LDA.b $80
	ORA.w $03D5,x
	STA.w $03D5,x
	LDA.b $78
	STA.w $03D2,x
	LDA.b $79
	BEQ.b CODE_C0DBC6
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DBC6:
	REP.b #$20
	INC.b $70
	REP.b #$20
	INC.b $74
	INC.b $74
	CLC
	LDA.b $78
	ADC.w #$0010
	STA.b $78
	DEC.b $68
	BNE.b CODE_C0DB83
	LDA.b $7C
	CLC
	ADC.w #$0010
	STA.b $7C
	DEC.b $6C
	BNE.b CODE_C0DB7B
CODE_C0DBE8:
	RTS

CODE_C0DBE9:
	LDA.w $0006,y
	STA.b $6C
	LDA.w $0008,y
	STA.b $70
	LDA.w $000A,y
	STA.b $74
CODE_C0DBF8:
	LDA.b $7A
	STA.b $78
	LDA.b $6A
	STA.b $68
CODE_C0DC00:
	LDA.b $70
	CMP.w #$0080
	BCS.b CODE_C0DBE8
	ASL
	ASL
	TAX
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	ADC.b #$00
	AND.b #$01
	STA.w $03D5,x
	LDA.b $7C
	STA.w $03D3,x
	LDA.b $80
	ORA.w $03D5,x
	STA.w $03D5,x
	LDA.b $78
	STA.w $03D2,x
	LDA.b $79
	BEQ.b CODE_C0DC43
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DC43:
	REP.b #$20
	INC.b $70
	REP.b #$20
	CLC
	LDA.b $78
	ADC.w #$0010
	STA.b $78
	DEC.b $68
	BNE.b CODE_C0DC00
	LDA.b $7C
	CLC
	ADC.w #$0010
	STA.b $7C
	DEC.b $6C
	BEQ.b CODE_C0DC64
	JMP.w CODE_C0DBF8

CODE_C0DC64:
	RTS

CODE_C0DC65:
	STZ.b $84
	LDA.w $0002,y
	STA.b $7C
	BRA.b CODE_C0DC80

CODE_C0DC6E:
	LDA.w $0644
	STA.b $84
	LDA.w $11AC
	EOR.w #$FFFF
	INC
	CLC
	ADC.w $0002,y
	STA.b $7C
CODE_C0DC80:
	LDA.w $02DE
	STA.w $0008,y
	TXA
	STA.w $000A,y
	LDA.w $0010,y
	STA.b $94
	LDA.w $0012,y
	STA.b $96
	LDA.w $0004,y
	STA.b $6A
	LDA.w $0000,y
	CLC
	ADC.b $84
	STA.b $7A
	LDA.w $000C,y
	AND.w #$00FE
	STA.b $80
	LDA.b [$94]
	CLC
	ADC.w $02DE
	STA.w $02DE
	LDA.b $94
	CLC
	ADC.w #$000A
	STA.b $94
	LDA.w $000C,y
	BIT.w #$0040
	BEQ.b CODE_C0DCC6
	JMP.w CODE_C0DD48

CODE_C0DCC5:
	RTS

CODE_C0DCC6:
	LDA.w $0006,y
	STA.b $6C
	LDA.w $0008,y
	STA.b $70
	LDA.w $000A,y
	STA.b $74
CODE_C0DCD5:
	LDA.b $7A
	STA.b $78
	LDA.b $6A
	STA.b $68
CODE_C0DCDD:
	LDA.b $70
	CMP.w #$0080
	BCS.b CODE_C0DD47
	ASL
	ASL
	TAX
	SEP.b #$20
	LDA.b [$94]
	CMP.b #$FF
	BEQ.b CODE_C0DD2B
	CLC
	ADC.b $74
	STA.w $03D4,x
	LDA.b $75
	ADC.b #$00
	AND.b #$01
	STA.w $03D5,x
	LDA.b $7C
	STA.w $03D3,x
	LDA.b $80
	ORA.w $03D5,x
	STA.w $03D5,x
	LDA.b $78
	STA.w $03D2,x
	LDA.b $79
	BEQ.b CODE_C0DD27
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DD27:
	REP.b #$20
	INC.b $70
CODE_C0DD2B:
	REP.b #$20
	INC.b $94
	CLC
	LDA.b $78
	ADC.w #$0010
	STA.b $78
	DEC.b $68
	BNE.b CODE_C0DCDD
	LDA.b $7C
	CLC
	ADC.w #$0010
	STA.b $7C
	DEC.b $6C
	BNE.b CODE_C0DCD5
CODE_C0DD47:
	RTS

CODE_C0DD48:
	LDA.w $0006,y
	STA.b $6C
	LDA.w $0008,y
	STA.b $70
	LDA.w $000A,y
	STA.b $74
	CLC
	LDA.b $94
	ADC.w $0004,y
	SEC
	SBC.w #$0001
	STA.b $94
CODE_C0DD63:
	LDA.b $7A
	STA.b $78
	LDA.b $6A
	STA.b $68
CODE_C0DD6B:
	LDA.b $70
	CMP.w #$0080
	BCS.b CODE_C0DD47
	ASL
	ASL
	TAX
	SEP.b #$20
	LDA.b [$94]
	CMP.b #$FF
	BEQ.b CODE_C0DDC7
	BNE.b CODE_C0DD8B
	LDA.b #$02
	STA.w $03D4,x
	LDA.b #$00
	STA.w $03D5,x
	BRA.b CODE_C0DD9A

CODE_C0DD8B:
	CLC
	ADC.b $74
	STA.w $03D4,x
	LDA.b $75
	ADC.b #$00
	AND.b #$01
	STA.w $03D5,x
CODE_C0DD9A:
	LDA.b $7C
	STA.w $03D3,x
	LDA.b $80
	ORA.w $03D5,x
	STA.w $03D5,x
	LDA.b $78
	STA.w $03D2,x
	LDA.b $79
	BEQ.b CODE_C0DDC3
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DDC3:
	REP.b #$20
	INC.b $70
CODE_C0DDC7:
	REP.b #$20
	DEC.b $94
	CLC
	LDA.b $78
	ADC.w #$0010
	STA.b $78
	DEC.b $68
	BNE.b CODE_C0DD6B
	LDA.b $94
	CLC
	ADC.b $6A
	ADC.b $6A
	STA.b $94
	LDA.b $7C
	CLC
	ADC.w #$0010
	STA.b $7C
	DEC.b $6C
	BEQ.b CODE_C0DDEF
	JMP.w CODE_C0DD63

CODE_C0DDEF:
	RTS

CODE_C0DDF0:
	STZ.b $84
	LDA.w $0002,y
	STA.b $7C
	BRA.b CODE_C0DE07

CODE_C0DDF9:
	LDA.w $0644
	STA.b $84
	LDA.w $0002,y
	SEC
	SBC.w $11AC
	STA.b $7C
CODE_C0DE07:
	LDA.w $000E,y
	BNE.b CODE_C0DE4C
	STX.b $74
	LDA.w $02DE
	ASL
	ASL
	TAX
	LDA.w $0010,y
	STA.b $94
	LDA.w $0012,y
	STA.b $96
	LDA.w $0000,y
	CLC
	ADC.b $84
	STA.b $78
	LDA.w $000C,y
	AND.w #$00FE
	STA.b $80
	LDA.b [$94]
	STA.b $68
	CLC
	ADC.w $02DE
	STA.w $02DE
	LDA.b $94
	CLC
	ADC.w #$000A
	STA.b $94
	LDA.w $000C,y
	BIT.w #$0040
	BEQ.b CODE_C0DE4D
	JMP.w CODE_C0DEAF

CODE_C0DE4C:
	RTS

CODE_C0DE4D:
	CPX.w #$0200
	BCS.b CODE_C0DEAE
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	AND.b #$01
	ORA.b $80
	STA.w $03D5,x
	REP.b #$20
	INC.b $94
	LDA.b [$94]
	INC.b $94
	AND.w #$00FF
	CLC
	ADC.b $78
	SEP.b #$20
	STA.w $03D2,x
	XBA
	BEQ.b CODE_C0DE8B
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DE8B:
	LDA.b [$94]
	CLC
	ADC.b $7C
	STA.w $03D3,x
	REP.b #$20
	LDA.b $74
	INC
	INC
	BIT.w #$0010
	BEQ.b CODE_C0DEA2
	CLC
	ADC.w #$0010
CODE_C0DEA2:
	STA.b $74
	INC.b $94
	INX
	INX
	INX
	INX
	DEC.b $68
	BNE.b CODE_C0DE4D
CODE_C0DEAE:
	RTS

CODE_C0DEAF:
	LDA.w $0004,y
	DEC
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.b $78
	STA.b $78
CODE_C0DEBC:
	CPX.w #$0200
	BCS.b CODE_C0DF20
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	AND.b #$01
	ORA.b $80
	STA.w $03D5,x
	REP.b #$20
	INC.b $94
	LDA.b [$94]
	INC.b $94
	AND.w #$00FF
	EOR.w #$FFFF
	SEC
	ADC.b $78
	SEP.b #$20
	STA.w $03D2,x
	XBA
	BEQ.b CODE_C0DEFD
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DEFD:
	LDA.b [$94]
	CLC
	ADC.b $7C
	STA.w $03D3,x
	REP.b #$20
	LDA.b $74
	INC
	INC
	BIT.w #$0010
	BEQ.b CODE_C0DF14
	CLC
	ADC.w #$0010
CODE_C0DF14:
	STA.b $74
	INC.b $94
	INX
	INX
	INX
	INX
	DEC.b $68
	BNE.b CODE_C0DEBC
CODE_C0DF20:
	RTS

CODE_C0DF21:
	STY.b $90
	STZ.b $92
	STA.b $80
	LDA.w $000E,y
	BNE.b CODE_C0DF7D
	STX.b $74
	LDA.w $02DE
	ASL
	ASL
	TAX
	LDA.w $0010,y
	STA.b $94
	LDA.w $0012,y
	STA.b $96
	LDA.w $0000,y
	CLC
	ADC.w $0644
	STA.b $78
	LDA.b [$94]
	STA.b $68
	CLC
	ADC.w $02DE
	STA.w $02DE
	LDA.b $94
	CLC
	ADC.w #$000A
	STA.b $94
	LDA.l DATA_C080FC
	SEC
	SBC.w $11AC
	ADC.b $7C
	STA.b $7C
	LDA.w $0006,y
	DEC
	ASL
	ASL
	ASL
	CLC
	ADC.b $7C
	STA.b $7C
	LDA.w $000C,y
	BIT.w #$0040
	BEQ.b CODE_C0DF7E
	JMP.w CODE_C0DFF2

CODE_C0DF7D:
	RTS

CODE_C0DF7E:				; Note: Related to the shadow drawing.
	CPX.w #$0200
	BCS.b CODE_C0DFF1
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	AND.b #$01
	ORA.b #$B0
	ORA.b $80
	STA.w $03D5,x
	REP.b #$20
	INC.b $94
	LDA.b [$94]
	INC.b $94
	AND.w #$00FF
	CLC
	ADC.b $78
	SEP.b #$20
	STA.w $03D2,x
	XBA
	BEQ.b CODE_C0DFBE
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0DFBE:
	REP.b #$20
	LDA.b [$94]
	AND.w #$00FF
	LSR
	EOR.w #$FFFF
	SEC
	ADC.b $7C
	CMP.w #$00DA
	BCS.b CODE_C0DFDC
	SEP.b #$20
	STA.w $03D3,x
	REP.b #$20
	INX
	INX
	INX
	INX
CODE_C0DFDC:
	INC.b $94
	LDA.b $74
	INC
	INC
	BIT.w #$0010
	BEQ.b CODE_C0DFEB
	CLC
	ADC.w #$0010
CODE_C0DFEB:
	STA.b $74
	DEC.b $68
	BNE.b CODE_C0DF7E
CODE_C0DFF1:
	RTS

CODE_C0DFF2:
	LDA.w $0004,y
	DEC
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.b $78
	STA.b $78
CODE_C0DFFF:
	CPX.w #$0200
	BCS.b CODE_C0E077
	SEP.b #$20
	LDA.b $74
	STA.w $03D4,x
	LDA.b $75
	AND.b #$01
	ORA.b #$F0
	ORA.b $80
	STA.w $03D5,x
	REP.b #$20
	INC.b $94
	LDA.b [$94]
	INC.b $94
	AND.w #$00FF
	EOR.w #$FFFF
	SEC
	ADC.b $78
	SEP.b #$20
	STA.w $03D2,x
	XBA
	BEQ.b CODE_C0E042
	REP.b #$20
	LDA.l DATA_C033AA,x
	TAY
	SEP.b #$20
	LDA.l DATA_C033AA+$02,x
	ORA.w $0000,y
	STA.w $0000,y
CODE_C0E042:
	REP.b #$20
	LDA.b [$94]
	AND.w #$00FF
	LSR
	EOR.w #$FFFF
	SEC
	ADC.b $7C
	CMP.w #$00DA
	BCS.b CODE_C0E060
	SEP.b #$20
	STA.w $03D3,x
	REP.b #$20
	INX
	INX
	INX
	INX
CODE_C0E060:
	REP.b #$20
	INC.b $94
	LDA.b $74
	INC
	INC
	BIT.w #$0010
	BEQ.b CODE_C0E071
	CLC
	ADC.w #$0010
CODE_C0E071:
	STA.b $74
	DEC.b $68
	BNE.b CODE_C0DFFF
CODE_C0E077:
	RTS

CODE_C0E078:
	SEP.b #$20
	LDA.b #$81
	STA.w !REGISTER_IRQNMIAndJoypadEnableFlags
	REP.b #$20
	RTS

CODE_C0E082:
	SEI
	CLI
	RTS

CODE_C0E085:
	LDA.w !RAM_ROTR_Global_FrameCounter
	STA.w $03BE
	LDA.w $03B4
	CMP.w $03B6
	BCC.b CODE_C0E09C
	STA.w $03B6
	LDA.w $03B8
	STA.w $03BA
CODE_C0E09C:
	RTS

CODE_C0E09D:
	LDA.w #$0000
	STA.w $03B4
	STA.w $03B8
	STA.w !RAM_ROTR_Global_FrameCounter
	RTS

CODE_C0E0AA:
	SEI
	LDX.w #$0000
	TXA
CODE_C0E0AF:
	STA.w $0312,x
	INX
	INX
	CPX.w #$00A0
	BCC.b CODE_C0E0AF
	STZ.w $00C2
	STZ.w $00C4
	CLI
	RTS

CODE_C0E0C1:
	PHP
	SEI
	REP.b #$30
	PHA
	PHB
	PHD
	PHX
	PHY
	LDA.w #$0000
	TCD
	SEP.b #$20
	LDA.b #!REGISTER_ScreenDisplayRegister>>16
	PHA
	PLB
	REP.b #$20
	INC.w $0308
	INC.w !RAM_ROTR_Global_FrameCounter
	JSR.w CODE_C0E13B
	PLY
	PLX
	PLD
	PLB
	SEP.b #$20
	LDA.w !REGISTER_NMIEnable
	REP.b #$30
	PLA
	PLP
	RTI

CODE_C0E0ED:
	SEI
	REP.b #$20
	PHA
	SEP.b #$20
	LDA.l !REGISTER_IRQEnable
	BIT.b #$80
	BEQ.b CODE_C0E136
	PHB
	LDA.b #!REGISTER_ScreenDisplayRegister>>16
	PHA
	PLB
	LDA.w $11A8
	BEQ.b CODE_C0E10F
	LDA.b #$50
	STA.w !REGISTER_ColorMathSelectAndEnable
	LDA.b #$02
	STA.w !REGISTER_InitialScreenSettings
CODE_C0E10F:
	REP.b #$20
	REP.b #$20
	PHX
	LDX.w !REGISTER_Joypad1Lo
	TXA
	AND.w #$000F
	BEQ.b CODE_C0E120
	LDX.w #$0000
CODE_C0E120:
	STX.w !RAM_ROTR_Global_HeldButtonsP1
	LDX.w !REGISTER_Joypad2Lo
	TXA
	AND.w #$000F
	BEQ.b CODE_C0E12F
	LDX.w #$0000
CODE_C0E12F:
	STX.w !RAM_ROTR_Global_HeldButtonsP2
	PLX
	SEP.b #$20
	PLB
CODE_C0E136:
	REP.b #$20
	PLA
	CLI
	RTI

CODE_C0E13B:
	REP.b #$20
	PHP
	LDX.w $11B2
	BEQ.b CODE_C0E16A
	INC.w $11B6
	LDA.w $11B6
	LDX.w #$0000
	AND.w #$0010
	BEQ.b CODE_C0E154
	LDX.w $11B2
CODE_C0E154:
	SEP.b #$20
	LDA.w $11B4
	STA.w !REGISTER_CGRAMAddress
	REP.b #$20
	TXA
	SEP.b #$20
	STA.w !REGISTER_WriteToCGRAMPort
	XBA
	STA.w !REGISTER_WriteToCGRAMPort
	REP.b #$20
CODE_C0E16A:
	LDA.w $11AC
	EOR.w #$FFFF
	INC
	CLC
	ADC.l DATA_C080FE
	STA.w !REGISTER_VCountTimerLo
	SEP.b #$20
	LDA.w $11AC
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.w $11AD
	STA.w !REGISTER_BG1VertScrollOffset
	LDA.b #$00
	STA.w !REGISTER_InitialScreenSettings
	REP.b #$20
	LDA.w $11A8
	BEQ.b CODE_C0E19C
	SEP.b #$20
	LDA.b #$00
	STA.w !REGISTER_ColorMathSelectAndEnable
	REP.b #$20
CODE_C0E19C:
	LDA.b $C8
	BEQ.b CODE_C0E1D8
	TAX
	STZ.b $C8
	LDA.b $C6
	SEP.b #$20
	STZ.w !REGISTER_DMAEnable
	STA.w !REGISTER_CGRAMAddress
	LDA.b #$00
	STA.w DMA[$00].Parameters
	LDA.b #!REGISTER_WriteToCGRAMPort
	STA.w DMA[$00].Destination
	LDA.b #$000648>>16
	STA.w DMA[$00].SourceBank
	REP.b #$20
	LDA.b $C6
	ASL
	CLC
	ADC.w #$000648
	STA.w DMA[$00].SourceLo
	TXA
	ASL
	STA.w DMA[$00].SizeLo
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
	REP.b #$20
	BRA.b CODE_C0E1F4

CODE_C0E1D8:
	LDA.w $03CC
	BEQ.b CODE_C0E1E2
	DEC.w $03CC
	BRA.b CODE_C0E1F1

CODE_C0E1E2:
	LDA.b $34
	BNE.b CODE_C0E1EA
	LDA.b $36
	BEQ.b CODE_C0E1F1
CODE_C0E1EA:
	STZ.b $34
	JSR.w CODE_C0E1FA
	BRA.b CODE_C0E1F4

CODE_C0E1F1:
	JSR.w CODE_C0E390
CODE_C0E1F4:
	INC.w !RAM_ROTR_Global_LocalFrameCounter
	PLP
	RTS

CODE_C0E1F9:
	RTS

CODE_C0E1FA:
	LDA.w $0130
	BNE.b CODE_C0E231
	JSR.w CODE_C0DA27
	SEP.b #$20
	STZ.w !REGISTER_DMAEnable
	LDA.b #$00
	STA.w DMA[$00].Parameters
	LDA.b #!REGISTER_OAMDataWritePort
	STA.w DMA[$00].Destination
	LDX.w #$0003D2
	STX.w DMA[$00].SourceLo
	LDA.b #$0003D2>>16
	STA.w DMA[$00].SourceBank
	REP.b #$20
	LDA.w #$0220
	STA.w DMA[$00].SizeLo
	LDA.w #$0000
	STA.w !REGISTER_OAMAddressLo
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
CODE_C0E231:
	REP.b #$20
	LDA.b $36
	BEQ.b CODE_C0E27E
	LDX.w #$0000
CODE_C0E23A:
	LDA.b $38,x
	STA.b $28
	LDA.b $3A,x
	STA.b $2A
	LDA.b $3C,x
	STA.b $2C
	LDY.b $3E,x
	SEP.b #$20
	STZ.w !REGISTER_DMAEnable
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$00].Destination
	REP.b #$20
	LDA.b $2C
	STA.w !REGISTER_VRAMAddressLo
	LDA.b $28
	STA.w DMA[$00].SourceLo
	SEP.b #$20
	LDA.b $2A
	STA.w DMA[$00].SourceBank
	LDA.b #$01
	STA.w DMA[$00].Parameters
	STY.w DMA[$00].SizeLo
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
	REP.b #$20
	TXA
	CLC
	ADC.w #$0008
	TAX
	DEC.b $36
	BNE.b CODE_C0E23A
CODE_C0E27E:
	STZ.b $36
	LDA.w $0130
	BEQ.b CODE_C0E288
	DEC.w $0130
CODE_C0E288:
	LDA.w $11A8
	BEQ.b CODE_C0E290
	JSR.w CODE_C0A9F2
CODE_C0E290:
	JSR.w CODE_C0CE8D
	JSR.w CODE_C0CDB6
	JSR.w CODE_C0DA31
	RTS

CODE_C0E29A:
	STA.b $D2
	STX.b $D0
CODE_C0E29E:
	JSR.w CODE_C0D9DF
	LDA.b $D2
	LDX.b $D0
	BEQ.b CODE_C0E2AF
	JSR.w CODE_C0D46A
	JSR.w CODE_C0E2B0
	BRA.b CODE_C0E29E

CODE_C0E2AF:
	RTS

CODE_C0E2B0:
	LDX.b $D0
	STX.b $E2
	LDA.b $D2
	ASL
	TAY
CODE_C0E2B8:
	LDA.w $0848,y
	AND.w #$7FFF
	STA.w $0848,y
	LDA.w $0648,y
	AND.w #$7FFF
	CMP.w $0848,y
	BNE.b CODE_C0E2D6
	INY
	INY
	DEX
	BNE.b CODE_C0E2B8
	STZ.b $D0
	JMP.w CODE_C0E389

CODE_C0E2D6:
	LDA.b $D2
	ASL
	TAY
CODE_C0E2DA:
	LDA.w $0648,y
	AND.w #$001F
	STA.b $D4
	LDA.w $0648,y
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$001F
	STA.b $D6
	LDA.w $0648,y
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$001F
	STA.b $D8
	LDA.w $0848,y
	AND.w #$001F
	STA.b $DA
	LDA.w $0848,y
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$001F
	STA.b $DC
	LDA.w $0848,y
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	LSR
	AND.w #$001F
	STA.b $DE
	PHY
	LDY.w #$0000
CODE_C0E32C:
	LDA.w $00D4,y
	SEC
	SBC.w $00DA,y
	BCC.b CODE_C0E346
	BEQ.b CODE_C0E35A
	ASL
	TAX
	LDA.w $00D4,y
	SEC
	SBC.l DATA_C000DC,x
	STA.w $00D4,y
	BRA.b CODE_C0E35A

CODE_C0E346:
	LDA.w $00DA,y
	SEC
	SBC.w $00D4,y
	ASL
	TAX
	LDA.l DATA_C000DC,x
	CLC
	ADC.w $00D4,y
	STA.w $00D4,y
CODE_C0E35A:
	INY
	INY
	CPY.w #$0006
	BCC.b CODE_C0E32C
	PLY
	LDA.b $D6
	ASL
	ASL
	ASL
	ASL
	ASL
	ORA.b $D4
	STA.w $0648,y
	LDA.b $D8
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	ORA.w $0648,y
	STA.w $0648,y
	INY
	INY
	DEC.b $E2
	BEQ.b CODE_C0E389
	JMP.w CODE_C0E2DA

CODE_C0E389:
	RTS

CODE_C0E38A:
	LDA.w #$0001
	STA.b $34
	RTS

CODE_C0E390:
	LDA.w #$0014
	STA.b $E4
	LDA.w $03C4
	STA.b $E8
	SEP.b #$20
	STZ.w !REGISTER_DMAEnable
	LDA.b #$80
	STA.w !REGISTER_VRAMAddressIncrementValue
	REP.b #$20
	LDX.w $00C4
CODE_C0E3A9:
	LDA.w #$0001
	STA.w DMA[$00].Parameters
	LDA.w #!REGISTER_WriteToVRAMPortLo&$0000FF
	STA.w DMA[$00].Destination
	LDA.w $0312,x
	AND.w $0312,x
	BNE.b CODE_C0E3C0
	JMP.w CODE_C0E44F

CODE_C0E3C0:
	ASL
	STA.b $EC
	SEP.b #$20
	LDA.w $030E,x
	STA.w DMA[$00].SourceBank
	BNE.b CODE_C0E3E6
	LDA.b #$09
	STA.w DMA[$00].Parameters
	LDA.b #!REGISTER_WriteToVRAMPortLo
	STA.w DMA[$00].Destination
	LDA.b #DATA_C03D74>>16
	STA.w DMA[$00].SourceBank
	REP.b #$20
	LDA.w #DATA_C03D74
	STA.w DMA[$00].SourceLo
	BRA.b CODE_C0E3EE

CODE_C0E3E6:
	REP.b #$20
	LDA.w $030C,x
	STA.w DMA[$00].SourceLo
CODE_C0E3EE:
	LDA.b $EC
	CMP.b $E8
	BCC.b CODE_C0E42D
	LDA.w $0310,x
	STA.w !REGISTER_VRAMAddressLo
	STA.w !REGISTER_VRAMAddressLo
	LDA.b $E8
	LSR
	STA.b $EC
	LDA.b $E8
	STA.w DMA[$00].SizeLo
	LDA.w $0312,x
	SEC
	SBC.b $EC
	STA.w $0312,x
	LDA.b $E8
	CLC
	ADC.w $030C,x
	STA.w $030C,x
	LDA.b $EC
	CLC
	ADC.w $0310,x
	STA.w $0310,x
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
	REP.b #$20
	BRA.b CODE_C0E464

CODE_C0E42D:
	STA.w DMA[$00].SizeLo
	LDA.w $0310,x
	STA.w !REGISTER_VRAMAddressLo
	STA.w !REGISTER_VRAMAddressLo
	SEP.b #$20
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
	REP.b #$20
	LDA.w #$0000
	STA.w $0312,x
	LDA.b $E8
	SEC
	SBC.b $EC
	STA.b $E8
CODE_C0E44F:
	TXA
	CLC
	ADC.w #$0008
	CMP.w #$00A0
	BCC.b CODE_C0E45C
	LDA.w #$0000
CODE_C0E45C:
	TAX
	DEC.b $E4
	BEQ.b CODE_C0E464
	JMP.w CODE_C0E3A9

CODE_C0E464:
	STX.w $00C4
	RTS

CODE_C0E468:
	STZ.b $20
	STZ.b $22
CODE_C0E46C:
	JSR.w CODE_C0D43D
	PHY
	LDX.w $00C2
	LDY.w #$0014
CODE_C0E476:
	LDA.w $0312,x
	AND.w $0312,x
	BEQ.b CODE_C0E491
	TXA
	CLC
	ADC.w #$0008
	CMP.w #$00A0
	BCC.b CODE_C0E48B
	LDA.w #$0000
CODE_C0E48B:
	TAX
	DEY
	BRA.b CODE_C0E476

CODE_C0E48F:
	BRA.b CODE_C0E4A8

CODE_C0E491:
	LDA.b $20
	STA.w $030C,x
	LDA.b $22
	STA.w $030E,x
	LDA.b $24
	STA.w $0310,x
	LDA.b $26
	STA.w $0312,x
	STX.w $00C2
CODE_C0E4A8:
	PLY
	RTS

CODE_C0E4AA:
	LDX.w #$0000
CODE_C0E4AD:
	LDA.w $0312,x
	AND.w $0312,x
	BNE.b CODE_C0E4AD
	TXA
	CLC
	ADC.w #$0008
	CMP.w #$00A0
	BCS.b CODE_C0E4C2
	TAX
	BRA.b CODE_C0E4AD

CODE_C0E4C2:
	RTS

CODE_C0E4C3:
	PHP
	SEI
	LDA.b $90
	PHA
	LDA.b $92
	PHA
	LDA.b $94
	PHA
	LDA.b $96
	PHA
	JSL.l CODE_C0EFFB
	PLA
	PLA
	PLA
	PLA
	PLP
	RTS

CODE_C0E4DB:
	SEP.b #$20
	STA.w !REGISTER_Multiplicand
	TXA
	STA.w !REGISTER_Multiplier
	REP.b #$20
	NOP #10
	LDA.w !REGISTER_ProductOrRemainderLo
	RTS

CODE_C0E4F4:
	PHA
	TXA
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterA
	XBA
	STA.w !REGISTER_Mode7MatrixParameterA
	REP.b #$20
	PLA
	SEP.b #$20
	STA.w !REGISTER_Mode7MatrixParameterB
	NOP #5
	REP.b #$20
	LDA.w !REGISTER_PPUMultiplicationProductLo
	RTS

CODE_C0E512:
	SEP.b #$20
	PHA
	STX.w !REGISTER_DividendLo
	PLA
	STA.w !REGISTER_Divisor
	NOP #15
	REP.b #$20
	LDA.w !REGISTER_QuotientLo
	RTS

CODE_C0E531:
	LDA.w $13E0
	CMP.w $17B5
	BCS.b CODE_C0E560
	LDX.w #$0000
	LDY.w #$0000
CODE_C0E53F:
	LDA.w $13E4,x
	CLC
	ADC.w $13E2,x
	STA.w $13E2,x
	LDA.w $13E0,x
	ADC.w $13E6,x
	STA.w $13E0,x
	INX
	INX
	INX
	INX
	INX
	INX
	INX
	INX
	INY
	CPY.w #$0055
	BCC.b CODE_C0E53F
CODE_C0E560:
	RTS

CODE_C0E561:
	LDA.w $13E0
	CMP.w $17B3
	BCC.b CODE_C0E590
	LDX.w #$0000
	LDY.w #$0000
CODE_C0E56F:
	LDA.w $13E2,x
	SEC
	SBC.w $13E4,x
	STA.w $13E2,x
	LDA.w $13E0,x
	SBC.w $13E6,x
	STA.w $13E0,x
	INX
	INX
	INX
	INX
	INX
	INX
	INX
	INX
	INY
	CPY.w #$0055
	BCC.b CODE_C0E56F
CODE_C0E590:
	RTS

CODE_C0E591:
	LDA.w !RAM_ROTR_Global_CurrentOpponent
	DEC
	ASL
	ASL
	TAX
	LDA.l DATA_C0011C,x
	STA.b $90
	LDA.l DATA_C0011C+$02,x
	STA.b $92
	LDY.w #$0000
	LDA.b [$90],y
	STA.b $68
	INY
	INY
	LDA.b [$90],y
	STA.b $6C
	STA.w $17B1
	INY
	INY
	LDA.b [$90],y
	STA.b $70
	INY
	INY
	LDA.b [$90],y
	STA.b $74
	STZ.b $76
	INY
	INY
	LDA.b [$90],y
	STA.w $17B3
	INY
	INY
	LDA.b [$90],y
	STA.w $17B5
	INY
	INY
	LDA.b [$90],y
	STA.w $17B9
	LDX.w #$0000
	LDY.w #$0000
CODE_C0E5DD:
	LDA.b $68
	STA.w $13E0,x
	LDA.w #$0000
	STA.w $13E2,x
	LDA.b $74
	STA.w $13E4,x
	LDA.b $76
	STA.w $13E6,x
	LDA.b $74
	CLC
	ADC.b $70
	STA.b $74
	BCC.b CODE_C0E5FD
	INC.b $76
CODE_C0E5FD:
	INX
	INX
	INX
	INX
	INX
	INX
	INX
	INX
	INY
	CPY.w #$0055
	BCC.b CODE_C0E5DD
	LDA.b $68
	STA.w $17B7
	LDA.w #$0000
	STA.w $0644
	STA.w $17BB
	JSR.w CODE_C0E65E
	RTS

CODE_C0E61D:
	LDA.w $0ED4
	SEC
	SBC.w $0ECC
	LSR
	LSR
	LSR
	STA.b $68
	LDA.w $1022
	SEC
	SBC.w $101A
	LSR
	LSR
	LSR
	CMP.b $68
	BCS.b CODE_C0E639
	LDA.b $68
CODE_C0E639:
	STA.b $68
	LDA.w $11AA
	ASL
	TAX
	LDA.l DATA_C03D42,x
	CLC
	ADC.b $68
	EOR.w #$FFFF
	STA.w $11AC
	LDA.w $0610
	AND.w #$0003
	BNE.b CODE_C0E65D
	LDA.w $11AA
	BEQ.b CODE_C0E65D
	DEC.w $11AA
CODE_C0E65D:
	RTS

CODE_C0E65E:
	SEP.b #$20
	LDA.w $11AC
	EOR.b #$FF
	INC
	CLC
	ADC.b #$5F
	STA.w $16A8
	LDA.w $13E0
	STA.w $16A9
	LDA.w $13E1
	STA.w $16AA
	LDA.w $17B1
	STA.w $16AB
	LDA.w $13E0
	STA.w $16AC
	LDA.w $13E1
	STA.w $16AD
	LDA.b #$01
	STA.w $16AE
	LDA.w $13E8
	STA.w $16AF
	LDA.w $13E9
	STA.w $16B0
	LDA.b #$01
	STA.w $16B1
	LDA.w $13F0
	STA.w $16B2
	LDA.w $13F1
	STA.w $16B3
	LDA.b #$01
	STA.w $16B4
	LDA.w $13F8
	STA.w $16B5
	LDA.w $13F9
	STA.w $16B6
	LDA.b #$01
	STA.w $16B7
	LDA.w $1400
	STA.w $16B8
	LDA.w $1401
	STA.w $16B9
	LDA.b #$01
	STA.w $16BA
	LDA.w $1408
	STA.w $16BB
	LDA.w $1409
	STA.w $16BC
	LDA.b #$01
	STA.w $16BD
	LDA.w $1410
	STA.w $16BE
	LDA.w $1411
	STA.w $16BF
	LDA.b #$01
	STA.w $16C0
	LDA.w $1418
	STA.w $16C1
	LDA.w $1419
	STA.w $16C2
	LDA.b #$01
	STA.w $16C3
	LDA.w $1420
	STA.w $16C4
	LDA.w $1421
	STA.w $16C5
	LDA.b #$01
	STA.w $16C6
	LDA.w $1428
	STA.w $16C7
	LDA.w $1429
	STA.w $16C8
	LDA.b #$01
	STA.w $16C9
	LDA.w $1430
	STA.w $16CA
	LDA.w $1431
	STA.w $16CB
	LDA.b #$01
	STA.w $16CC
	LDA.w $1438
	STA.w $16CD
	LDA.w $1439
	STA.w $16CE
	LDA.b #$01
	STA.w $16CF
	LDA.w $1440
	STA.w $16D0
	LDA.w $1441
	STA.w $16D1
	LDA.b #$01
	STA.w $16D2
	LDA.w $1448
	STA.w $16D3
	LDA.w $1449
	STA.w $16D4
	LDA.b #$01
	STA.w $16D5
	LDA.w $1450
	STA.w $16D6
	LDA.w $1451
	STA.w $16D7
	LDA.b #$01
	STA.w $16D8
	LDA.w $1458
	STA.w $16D9
	LDA.w $1459
	STA.w $16DA
	LDA.b #$01
	STA.w $16DB
	LDA.w $1460
	STA.w $16DC
	LDA.w $1461
	STA.w $16DD
	LDA.b #$01
	STA.w $16DE
	LDA.w $1468
	STA.w $16DF
	LDA.w $1469
	STA.w $16E0
	LDA.b #$01
	STA.w $16E1
	LDA.w $1470
	STA.w $16E2
	LDA.w $1471
	STA.w $16E3
	LDA.b #$01
	STA.w $16E4
	LDA.w $1478
	STA.w $16E5
	LDA.w $1479
	STA.w $16E6
	LDA.b #$01
	STA.w $16E7
	LDA.w $1480
	STA.w $16E8
	LDA.w $1481
	STA.w $16E9
	LDA.b #$01
	STA.w $16EA
	LDA.w $1488
	STA.w $16EB
	LDA.w $1489
	STA.w $16EC
	LDA.b #$01
	STA.w $16ED
	LDA.w $1490
	STA.w $16EE
	LDA.w $1491
	STA.w $16EF
	LDA.b #$01
	STA.w $16F0
	LDA.w $1498
	STA.w $16F1
	LDA.w $1499
	STA.w $16F2
	LDA.b #$01
	STA.w $16F3
	LDA.w $14A0
	STA.w $16F4
	LDA.w $14A1
	STA.w $16F5
	LDA.b #$01
	STA.w $16F6
	LDA.w $14A8
	STA.w $16F7
	LDA.w $14A9
	STA.w $16F8
	LDA.b #$01
	STA.w $16F9
	LDA.w $14B0
	STA.w $16FA
	LDA.w $14B1
	STA.w $16FB
	LDA.b #$01
	STA.w $16FC
	LDA.w $14B8
	STA.w $16FD
	LDA.w $14B9
	STA.w $16FE
	LDA.b #$01
	STA.w $16FF
	LDA.w $14C0
	STA.w $1700
	LDA.w $14C1
	STA.w $1701
	LDA.b #$01
	STA.w $1702
	LDA.w $14C8
	STA.w $1703
	LDA.w $14C9
	STA.w $1704
	LDA.b #$01
	STA.w $1705
	LDA.w $14D0
	STA.w $1706
	LDA.w $14D1
	STA.w $1707
	LDA.b #$01
	STA.w $1708
	LDA.w $14D8
	STA.w $1709
	LDA.w $14D9
	STA.w $170A
	LDA.b #$01
	STA.w $170B
	LDA.w $14E0
	STA.w $170C
	LDA.w $14E1
	STA.w $170D
	LDA.b #$01
	STA.w $170E
	LDA.w $14E8
	STA.w $170F
	LDA.w $14E9
	STA.w $1710
	LDA.b #$01
	STA.w $1711
	LDA.w $14F0
	STA.w $1712
	LDA.w $14F1
	STA.w $1713
	LDA.b #$01
	STA.w $1714
	LDA.w $14F8
	STA.w $1715
	LDA.w $14F9
	STA.w $1716
	LDA.b #$01
	STA.w $1717
	LDA.w $1500
	STA.w $1718
	LDA.w $1501
	STA.w $1719
	LDA.b #$01
	STA.w $171A
	LDA.w $1508
	STA.w $171B
	LDA.w $1509
	STA.w $171C
	LDA.b #$01
	STA.w $171D
	LDA.w $1510
	STA.w $171E
	LDA.w $1511
	STA.w $171F
	LDA.b #$01
	STA.w $1720
	LDA.w $1518
	STA.w $1721
	LDA.w $1519
	STA.w $1722
	LDA.b #$01
	STA.w $1723
	LDA.w $1520
	STA.w $1724
	LDA.w $1521
	STA.w $1725
	LDA.b #$01
	STA.w $1726
	LDA.w $1528
	STA.w $1727
	LDA.w $1529
	STA.w $1728
	LDA.b #$01
	STA.w $1729
	LDA.w $1530
	STA.w $172A
	LDA.w $1531
	STA.w $172B
	LDA.b #$01
	STA.w $172C
	LDA.w $1538
	STA.w $172D
	LDA.w $1539
	STA.w $172E
	LDA.b #$01
	STA.w $172F
	LDA.w $1540
	STA.w $1730
	LDA.w $1541
	STA.w $1731
	LDA.b #$01
	STA.w $1732
	LDA.w $1548
	STA.w $1733
	LDA.w $1549
	STA.w $1734
	LDA.b #$01
	STA.w $1735
	LDA.w $1550
	STA.w $1736
	LDA.w $1551
	STA.w $1737
	LDA.b #$01
	STA.w $1738
	LDA.w $1558
	STA.w $1739
	LDA.w $1559
	STA.w $173A
	LDA.b #$01
	STA.w $173B
	LDA.w $1560
	STA.w $173C
	LDA.w $1561
	STA.w $173D
	LDA.b #$01
	STA.w $173E
	LDA.w $1568
	STA.w $173F
	LDA.w $1569
	STA.w $1740
	LDA.b #$01
	STA.w $1741
	LDA.w $1570
	STA.w $1742
	LDA.w $1571
	STA.w $1743
	LDA.b #$01
	STA.w $1744
	LDA.w $1578
	STA.w $1745
	LDA.w $1579
	STA.w $1746
	LDA.b #$01
	STA.w $1747
	LDA.w $1580
	STA.w $1748
	LDA.w $1581
	STA.w $1749
	LDA.b #$01
	STA.w $174A
	LDA.w $1588
	STA.w $174B
	LDA.w $1589
	STA.w $174C
	LDA.b #$01
	STA.w $174D
	LDA.w $1590
	STA.w $174E
	LDA.w $1591
	STA.w $174F
	LDA.b #$01
	STA.w $1750
	LDA.w $1598
	STA.w $1751
	LDA.w $1599
	STA.w $1752
	LDA.b #$01
	STA.w $1753
	LDA.w $15A0
	STA.w $1754
	LDA.w $15A1
	STA.w $1755
	LDA.b #$01
	STA.w $1756
	LDA.w $15A8
	STA.w $1757
	LDA.w $15A9
	STA.w $1758
	LDA.b #$01
	STA.w $1759
	LDA.w $15B0
	STA.w $175A
	LDA.w $15B1
	STA.w $175B
	LDA.b #$01
	STA.w $175C
	LDA.w $15B8
	STA.w $175D
	LDA.w $15B9
	STA.w $175E
	LDA.b #$01
	STA.w $175F
	LDA.w $15C0
	STA.w $1760
	LDA.w $15C1
	STA.w $1761
	LDA.b #$01
	STA.w $1762
	LDA.w $15C8
	STA.w $1763
	LDA.w $15C9
	STA.w $1764
	LDA.b #$01
	STA.w $1765
	LDA.w $15D0
	STA.w $1766
	LDA.w $15D1
	STA.w $1767
	LDA.b #$01
	STA.w $1768
	LDA.w $15D8
	STA.w $1769
	LDA.w $15D9
	STA.w $176A
	LDA.b #$01
	STA.w $176B
	LDA.w $15E0
	STA.w $176C
	LDA.w $15E1
	STA.w $176D
	LDA.b #$01
	STA.w $176E
	LDA.w $15E8
	STA.w $176F
	LDA.w $15E9
	STA.w $1770
	LDA.b #$01
	STA.w $1771
	LDA.w $15F0
	STA.w $1772
	LDA.w $15F1
	STA.w $1773
	LDA.b #$01
	STA.w $1774
	LDA.w $15F8
	STA.w $1775
	LDA.w $15F9
	STA.w $1776
	LDA.b #$01
	STA.w $1777
	LDA.w $1600
	STA.w $1778
	LDA.w $1601
	STA.w $1779
	LDA.b #$01
	STA.w $177A
	LDA.w $1608
	STA.w $177B
	LDA.w $1609
	STA.w $177C
	LDA.b #$01
	STA.w $177D
	LDA.w $1610
	STA.w $177E
	LDA.w $1611
	STA.w $177F
	LDA.b #$01
	STA.w $1780
	LDA.w $1618
	STA.w $1781
	LDA.w $1619
	STA.w $1782
	LDA.b #$01
	STA.w $1783
	LDA.w $1620
	STA.w $1784
	LDA.w $1621
	STA.w $1785
	LDA.b #$01
	STA.w $1786
	LDA.w $1628
	STA.w $1787
	LDA.w $1629
	STA.w $1788
	LDA.b #$01
	STA.w $1789
	LDA.w $1630
	STA.w $178A
	LDA.w $1631
	STA.w $178B
	LDA.b #$01
	STA.w $178C
	LDA.w $1638
	STA.w $178D
	LDA.w $1639
	STA.w $178E
	LDA.b #$01
	STA.w $178F
	LDA.w $1640
	STA.w $1790
	LDA.w $1641
	STA.w $1791
	LDA.b #$01
	STA.w $1792
	LDA.w $1648
	STA.w $1793
	LDA.w $1649
	STA.w $1794
	LDA.b #$01
	STA.w $1795
	LDA.w $1650
	STA.w $1796
	LDA.w $1651
	STA.w $1797
	LDA.b #$01
	STA.w $1798
	LDA.w $1658
	STA.w $1799
	LDA.w $1659
	STA.w $179A
	LDA.b #$01
	STA.w $179B
	LDA.w $1660
	STA.w $179C
	LDA.w $1661
	STA.w $179D
	LDA.b #$01
	STA.w $179E
	LDA.w $1668
	STA.w $179F
	LDA.w $1669
	STA.w $17A0
	LDA.b #$01
	STA.w $17A1
	LDA.w $1670
	STA.w $17A2
	LDA.w $1671
	STA.w $17A3
	LDA.b #$01
	STA.w $17A4
	LDA.w $1678
	STA.w $17A5
	LDA.w $1679
	STA.w $17A6
	LDA.b #$01
	STA.w $17A7
	LDA.w $1680
	STA.w $17A8
	LDA.w $1681
	STA.w $17A9
	LDA.b #$00
	STA.w $17AA
	REP.b #$20
	LDA.w $17B9
	ASL
	ASL
	ASL
	CLC
	ADC.w #$13E0
	TAX
	LDA.b $00,x
	SEC
	SBC.w $17B7
	EOR.w #$FFFF
	INC
	STA.w $0644
	RTS

CODE_C0EC3E:
	JSR.w CODE_C0E46C
	RTS

CODE_C0EC42:
	LDY.b $90
	LDA.w $0010,y
	BIT.w #$0040
	BEQ.b CODE_C0EC4E
	BRA.b CODE_C0EC80

CODE_C0EC4E:
	BIT.w #$0020
	BNE.b CODE_C0EC5F
	LDA.w $00FA,y
	INC
	CMP.w #$0013
	BCC.b CODE_C0EC5F
	LDA.w #$0012
CODE_C0EC5F:
	STA.w $00FA,y
	LDA.w $0052,y
	SEC
	SBC.w #$0003
	STA.w $0052,y
	BPL.b CODE_C0EC80
	LDA.w #$0000
	STA.w $0052,y
	LDA.w $0056,y
	CMP.w #$0001
	BEQ.b CODE_C0EC7D
	DEC
CODE_C0EC7D:
	STA.w $0056,y
CODE_C0EC80:
	LDA.w $00C2,y
	TAY
	LDA.w $0010,y
	BIT.w #$0040
	BNE.b CODE_C0EC8F
	LDY.b $90
	RTS

CODE_C0EC8F:
	BIT.w #$0020
	BEQ.b CODE_C0ECA3
	LDA.w $00FA,y
	SEC
	SBC.w #$0001
	BPL.b CODE_C0ECA0
	LDA.w #$0000
CODE_C0ECA0:
	STA.w $00FA,y
CODE_C0ECA3:
	LDA.w $0056,y
	CMP.w #$0009
	BCS.b CODE_C0ECB1
	INC
	STA.w $0056,y
	BRA.b CODE_C0ECC6

CODE_C0ECB1:
	LDA.w $0052,y
	CLC
	ADC.w #$0003
	STA.w $0052,y
	LDA.w $0054,y
	CMP.w $0052,y
	BCS.b CODE_C0ECC6
	STA.w $0052,y
CODE_C0ECC6:
	LDY.b $90
	RTS

CODE_C0ECC9:
	RTS

CODE_C0ECCA:
	LDY.b $90
	LDA.w $0020,y
	CLC
	ADC.b $90
	TAX
	SEP.b #$20
	LDA.w $0126,x
	INC
	CMP.b #$09
	BCC.b CODE_C0ECDF
	LDA.b #$09
CODE_C0ECDF:
	STA.w $0126,x
	REP.b #$20
	RTS

CODE_C0ECE5:
	PHY
	JSR.w CODE_C0A69A
	AND.w #$0007
	CLC
	ADC.w #$0009
	CMP.w #$000F
	BCC.b CODE_C0ECF9
	SEC
	SBC.w #$0003
CODE_C0ECF9:
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	PLY
	RTS

CODE_C0ED01:
	RTS

CODE_C0ED02:
	PHA
	ASL
	ASL
	TAX
	LDA.l DATA_C03D1E,x
	STA.w $11E0
	LDA.l DATA_C03D1E+$02,x
	STA.w $11E2
	JSR.w CODE_C0EED6
	PLA
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	RTS

CODE_C0ED1F:
	LDA.w #$0081
	JMP.w CODE_C0EE26

CODE_C0ED25:
	LDA.w #$0082
	JMP.w CODE_C0EE26

CODE_C0ED2B:
	JSR.w CODE_C0ED51
	LDA.w #$0006
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0ED3E:
	JSR.w CODE_C0ED51
	LDA.w #$000B
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0ED51:
	LDX.w #DATA_C11505
	LDA.w #DATA_C11505>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_C20000
	LDA.w #DATA_C20000>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_D2DFC6
	LDA.w #DATA_D2DFC6>>16
	JSR.w CODE_C0EED0
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0ED73:
	LDX.w #DATA_C3004A
	LDA.w #DATA_C3004A>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_C26E10
	LDA.w #DATA_C26E10>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_DFE772
	LDA.w #DATA_DFE772>>16
	JSR.w CODE_C0EED0
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0ED95:
	LDX.w #DATA_C544A5
	LDA.w #DATA_C544A5>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_C611F3
	LDA.w #DATA_C611F3>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_C8B25D
	LDA.w #DATA_C8B25D>>16
	JSR.w CODE_C0EED0
	LDA.w #$0000
	LDX.w #$0000
	JSR.w CODE_C0EE26
	LDA.w #$0001
	STA.w $11B8
	RTS

CODE_C0EDC0:
	LDX.w #DATA_C611F3
	LDA.w #DATA_C611F3>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_DBE9CF
	LDA.w #DATA_DBE9CF>>16
	JSR.w CODE_C0EED0
	LDA.w #$0001
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0EDE2:
	LDX.w #DATA_C711F3
	LDA.w #DATA_C711F3>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_DBE9CF
	LDA.w #DATA_DBE9CF>>16
	JSR.w CODE_C0EED0
	LDA.w #$0002
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0EE04:
	LDX.w #DATA_C65331
	LDA.w #DATA_C65331>>16
	JSR.w CODE_C0EED0
	LDX.w #DATA_DBE9CF
	LDA.w #DATA_DBE9CF>>16
	JSR.w CODE_C0EED0
	LDA.w #$0003
	LDX.w #$00FF
	JSR.w CODE_C0EE26
	LDA.w #$0000
	STA.w $11B8
	RTS

CODE_C0EE26:
	SEP.b #$30
	PHP
	SEI
	PHA
	LDA.l !REGISTER_APUPort0
	CMP.b $18
	BNE.b CODE_C0EE49
	PLA
	STA.l !REGISTER_APUPort0
	TXA
	STA.l !REGISTER_APUPort1
	INC.b $18
	LDA.b $18
	STA.l !REGISTER_APUPort3
	PLP
	REP.b #$30
	RTS

CODE_C0EE49:
	PLA
	PLP
	REP.b #$30
	RTS

CODE_C0EE4E:
	PHP
	SEI
	REP.b #$30
	LDA.w #DATA_DCFEE8
	STA.b $14
	LDA.w #DATA_DCFEE8>>16
	STA.b $16
	JSR.w CODE_C0EF41
	REP.b #$30
	LDA.w #DATA_D4F342
	STA.b $14
	LDA.w #DATA_D4F342>>16
	STA.b $16
	JSR.w CODE_C0EEBD
	SEP.b #$30
	LDA.b #$82
	STA.l !REGISTER_APUPort0
	REP.b #$30
	LDA.w $11E0
	STA.b $14
	LDA.w $11E2
	STA.b $16
	JSR.w CODE_C0EEBD
	SEP.b #$30
	LDA.b #$82
	STA.l !REGISTER_APUPort0
	REP.b #$30
	LDA.w $11D8
	STA.b $14
	LDA.w $11DA
	STA.b $16
	JSR.w CODE_C0EEBD
	SEP.b #$30
	LDA.b #$82
	STA.l !REGISTER_APUPort0
	REP.b #$30
	LDA.w $11DC
	STA.b $14
	LDA.w $11DE
	STA.b $16
	JSR.w CODE_C0EEBD
	SEP.b #$30
	STA.l !REGISTER_APUPort3
	PLP
	REP.b #$30
	RTS

CODE_C0EEBD:
	JSR.w CODE_C0EF41
	SEP.b #$30
CODE_C0EEC2:
	LDA.l !REGISTER_APUPort0
	BNE.b CODE_C0EEC2
	DEC
	STA.l !REGISTER_APUPort2
	STA.b $18
	RTS

CODE_C0EED0:
	STX.w $11E0
	STA.w $11E2
CODE_C0EED6:
	SEP.b #$30
	PHP
	SEI
CODE_C0EEDA:
	LDA.l !REGISTER_APUPort0
	CMP.b $18
	BNE.b CODE_C0EEDA
	LDA.b #$82
	STA.l !REGISTER_APUPort0
	INC.b $18
	LDA.b $18
	STA.l !REGISTER_APUPort3
	REP.b #$30
	LDA.w $11E0
	STA.b $14
	LDA.w $11E2
	STA.b $16
	JSR.w CODE_C0EEBD
	STA.l !REGISTER_APUPort3
	PLP
	REP.b #$30
	RTS

CODE_C0EF07:
	SEP.b #$30
	PHP
	SEI
CODE_C0EF0B:
	LDA.l !REGISTER_APUPort0
	CMP.b $18
	BNE.b CODE_C0EF0B
	LDA.b #$83
	STA.l !REGISTER_APUPort0
	LDA.b #$00
	STA.l !REGISTER_APUPort1
	INC.b $18
	LDA.b $18
	STA.l !REGISTER_APUPort3
	PLP
	REP.b #$30
	RTS

CODE_C0EF2B:
	REP.b #$20
	LDA.l !REGISTER_APUPort1
	STA.b $1C
	SEP.b #$20
	RTS

CODE_C0EF36:
	REP.b #$20
	LDA.l !REGISTER_APUPort1
	STA.b $1A
	SEP.b #$20
	RTS

CODE_C0EF41:
	PHP
	REP.b #$30
	LDY.w #$0000
	LDA.w #$BBAA
CODE_C0EF4A:
	CMP.l !REGISTER_APUPort0
	BNE.b CODE_C0EF4A
	SEP.b #$20
	LDA.b #$CC
	BRA.b CODE_C0EF7F

CODE_C0EF56:
	LDA.b [$14],y
	INY
	XBA
	LDA.b #$00
	BRA.b CODE_C0EF6A

CODE_C0EF5E:
	XBA
	LDA.b [$14],y
	INY
	XBA
CODE_C0EF63:
	CMP.l !REGISTER_APUPort0
	BNE.b CODE_C0EF63
	INC
CODE_C0EF6A:
	REP.b #$20
	STA.l !REGISTER_APUPort0
	SEP.b #$20
	DEX
	BNE.b CODE_C0EF5E
CODE_C0EF75:
	CMP.l !REGISTER_APUPort0
	BNE.b CODE_C0EF75
CODE_C0EF7B:
	ADC.b #$03
	BEQ.b CODE_C0EF7B
CODE_C0EF7F:
	PHA
	REP.b #$20
	LDA.b [$14],y
	INY
	INY
	TAX
	LDA.b [$14],y
	INY
	INY
	STA.l !REGISTER_APUPort2
	SEP.b #$20
	CPX.w #$0001
	LDA.b #$00
	ROL
	STA.l !REGISTER_APUPort1
	ADC.b #$7F
	PLA
	STA.l !REGISTER_APUPort0
CODE_C0EFA2:
	CMP.l !REGISTER_APUPort0
	BNE.b CODE_C0EFA2
	BVS.b CODE_C0EF56
	PLP
	RTS

CODE_C0EFAC:
	REP.b #$20
CODE_C0EFAE:
	PHA
	PHY
	LDA.w $11B8
	BEQ.b CODE_C0EFBE
	LDA.w #$000F
	LDX.w #$00FF
	JSR.w CODE_C0EE26
CODE_C0EFBE:
	PLY
	PLA
	RTS

DATA_C0EFC1:
	dw $000C,$0000,$0000,$0020,$6C83,$006A,$0001

DATA_C0EFCF:
	dw $800E,$0000,$0000,$0020,$6C9C,$0073,$0001

DATA_C0EFDD:
	db $17,$17,$0D,$21,$25,$25,$FF,$FF

DATA_C0EFE5:
	dw $0000,$0001,$0001,$0001,$0000,$0000,$0001,$0000
	dw $0000,$0005

CODE_C0EFF9:
	REP.b #$30
CODE_C0EFFB:
	REP.b #$38
	LDA.b $06,S
	STA.b $04
	LDA.b $08,S
	STA.b $02
	LDA.b $0A,S
	STA.b $00
	SEP.b #$21
	LDA.b $04,S
	PHB
	PHA
	PLB
	STZ.b $08
	STZ.b $0A
	LDX.w #$0000
	LDY.w #$0012
	LDA.b [$00],y
	INY
	ROL
	ASL
	JMP.w CODE_C0F125

CODE_C0F022:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F02E

CODE_C0F028:
	LDX.w #$0004
CODE_C0F02B:
	ASL
	BEQ.b CODE_C0F022
CODE_C0F02E:
	ROL.b $07
	DEX
	BNE.b CODE_C0F02B
	LDX.b $07
	INX
	INX
	INX
	PHA
	REP.b #$20
	TYA
	ADC.b $00
	STA.b $00
	LDY.w #$0000
CODE_C0F043:
	LDA.b [$00],y
	STA.b ($04),y
	INY
	INY
	LDA.b [$00],y
	STA.b ($04),y
	INY
	INY
	DEX
	BNE.b CODE_C0F043
	TYA
	ADC.b $04
	STA.b $04
	SEP.b #$20
	PLA
	JMP.w CODE_C0F125

CODE_C0F05D:
	LDA.b [$00],y
	INY
	ROL
	JMP.w CODE_C0F08E

CODE_C0F064:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F093

CODE_C0F06A:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F098

CODE_C0F070:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F0AC

CODE_C0F076:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F0B1

CODE_C0F07C:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F0B6

CODE_C0F082:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F0C4

CODE_C0F088:
	ASL
	BNE.b CODE_C0F08E
	JMP.w CODE_C0F05D

CODE_C0F08E:
	ROL.b $09
	ASL
	BEQ.b CODE_C0F064
CODE_C0F093:
	BCC.b CODE_C0F0A9
	ASL
	BEQ.b CODE_C0F06A
CODE_C0F098:
	DEC.b $09
	ROL.b $09
	LDX.b $09
	CPX.w #$0009
	BNE.b CODE_C0F0A6
	JMP.w CODE_C0F028

CODE_C0F0A6:
	LDX.w #$0000
CODE_C0F0A9:
	ASL
	BEQ.b CODE_C0F070
CODE_C0F0AC:
	BCC.b CODE_C0F0C6
	ASL
	BEQ.b CODE_C0F076
CODE_C0F0B1:
	ROL.b $07
	ASL
	BEQ.b CODE_C0F07C
CODE_C0F0B6:
	BCC.b CODE_C0F0BB
	JMP.w CODE_C0F173

CODE_C0F0BB:
	CPX.b $07
	BNE.b CODE_C0F0C6
	INC.b $07
CODE_C0F0C1:
	ASL
	BEQ.b CODE_C0F082
CODE_C0F0C4:
	ROL.b $07
CODE_C0F0C6:
	PHA
	LDA.b [$00],y
	INY
	STA.b $06
	PHY
	REP.b #$21
	LDA.b $06
	PHA
	LDA.b $04
	SBC.b $06
	STA.b $06
	LDY.w #$0000
	LSR.b $09
	LDX.b $09
	PLA
	BNE.b CODE_C0F0F4
	SEP.b #$20
	LDA.b ($06),y
	XBA
	LDA.b ($06),y
	REP.b #$20
CODE_C0F0EB:
	STA.b ($04),y
	INY
	INY
	DEX
	BNE.b CODE_C0F0EB
	BRA.b CODE_C0F0FD

CODE_C0F0F4:
	LDA.b ($06),y
	STA.b ($04),y
	INY
	INY
	DEX
	BNE.b CODE_C0F0F4
CODE_C0F0FD:
	SEP.b #$20
	BCC.b CODE_C0F105
	LDA.b ($06),y
	STA.b ($04),y
CODE_C0F105:
	TYA
	ADC.b $04
	STA.b $04
	BCC.b CODE_C0F10E
	INC.b $05
CODE_C0F10E:
	PLY
	PLA
	BRA.b CODE_C0F125

CODE_C0F112:
	LDA.b [$00],y
	INY
	ROL
	BCS.b CODE_C0F13A
CODE_C0F118:
	XBA
	LDA.b [$00],y
	INY
	STA.b ($04)
	INC.b $04
	BNE.b CODE_C0F124
	INC.b $05
CODE_C0F124:
	XBA
CODE_C0F125:
	ASL
	BCS.b CODE_C0F138
	XBA
	LDA.b [$00],y
	INY
	STA.b ($04)
	INC.b $04
	BNE.b CODE_C0F134
	INC.b $05
CODE_C0F134:
	XBA
	ASL
	BCC.b CODE_C0F118
CODE_C0F138:
	BEQ.b CODE_C0F112
CODE_C0F13A:
	STZ.b $07
	STZ.b $09
	INC.b $09
	INC.b $09
	ASL
	BEQ.b CODE_C0F18A
CODE_C0F145:
	BCS.b CODE_C0F14A
	JMP.w CODE_C0F088

CODE_C0F14A:
	ASL
	BEQ.b CODE_C0F190
CODE_C0F14D:
	BCS.b CODE_C0F152
	JMP.w CODE_C0F0C6

CODE_C0F152:
	INC.b $09
	ASL
	BEQ.b CODE_C0F197
CODE_C0F157:
	BCS.b CODE_C0F15C
	JMP.w CODE_C0F0A9

CODE_C0F15C:
	XBA
	LDA.b [$00],y
	INY
	STA.b $09
	XBA
	CPX.b $09
	BEQ.b CODE_C0F1AA
	XBA
	LDA.b $09
	CLC
	ADC.b #$08
	STA.b $09
	XBA
	JMP.w CODE_C0F0A9

CODE_C0F173:
	ASL
	BEQ.b CODE_C0F19E
CODE_C0F176:
	XBA
	LDA.b $07
	ROL
	ORA.b #$04
	STA.b $07
	XBA
	ASL
	BEQ.b CODE_C0F1A4
CODE_C0F182:
	BCC.b CODE_C0F187
	JMP.w CODE_C0F0C6

CODE_C0F187:
	JMP.w CODE_C0F0C1

CODE_C0F18A:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F145

CODE_C0F190:
	LDA.b [$00],y
	INY
	ROL
	JMP.w CODE_C0F14D

CODE_C0F197:
	LDA.b [$00],y
	INY
	ROL
	JMP.w CODE_C0F157

CODE_C0F19E:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F176

CODE_C0F1A4:
	LDA.b [$00],y
	INY
	ROL
	BRA.b CODE_C0F182

CODE_C0F1AA:
	ASL
	BNE.b CODE_C0F1B1
	LDA.b [$00],y
	INY
	ROL
CODE_C0F1B1:
	BCC.b CODE_C0F1B6
	JMP.w CODE_C0F125

CODE_C0F1B6:
	PLB
	REP.b #$30
	RTL

CODE_C0F1BA:
	LDX.w #$000C
	LDY.w #$0000
CODE_C0F1C0:
	LDA.b [$90],y
	STA.w $17BD,y
	INY
	INY
	DEX
	BNE.b CODE_C0F1C0
	LDA.w #$0000
	STA.w $11B2
	STA.w $11B4
	RTS

CODE_C0F1D4:
	JSR.w CODE_C0FEAF
	JSR.w CODE_C0FC68
	JSR.w CODE_C0FDBD
	LDA.w #$0000
	STA.w $0046,y
	LDA.w $0030,y
	DEC
	STA.w $0048,y
	LDA.w #$0001
	STA.w $004A,y
	JSR.w CODE_C0FC05
	RTS

CODE_C0F1F4:
	LDA.w $0032,y
	ASL
	ASL
	STA.b $78
	CLC
	LDA.w $000C,y
	LDX.b $68
CODE_C0F201:
	DEX
	BMI.b CODE_C0F208
	ADC.b $78
	BRA.b CODE_C0F201

CODE_C0F208:
	STA.b $9C
	LDA.b $6C
	STA.b $7C
CODE_C0F20E:
	LDA.w $0004,y
	STA.b $80
CODE_C0F213:
	LDX.b $9C
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	LDA.b #$01
	STA.b $72
	JSR.w CODE_C0F2F4
	INX
	JSR.w CODE_C0F2F4
	REP.b #$20
	TXA
	CLC
	ADC.w #$000F
	TAX
	SEP.b #$20
	JSR.w CODE_C0F2F4
	INX
	JSR.w CODE_C0F2F4
	PLB
	REP.b #$20
	LDA.b $9C
	CLC
	ADC.w #$0020
	STA.b $9C
	DEC.b $80
	BNE.b CODE_C0F213
	DEC.b $7C
	BNE.b CODE_C0F20E
	RTS

CODE_C0F24D:
	STY.b $94
	LDA.w $17C5
	STA.b $22
	LDA.w $0004,y
	LDX.b $06,y
	JSR.w CODE_C0E4DB
	STA.w $0030,y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA.w $002E,y
	LDA.w $0006,y
	STA.b $6C
	JSR.w CODE_C0FDBD
	LDA.w $000C,y
	STA.b $20
	LDA.w $002E,y
	LSR
	STA.b $26
	LDA.w $000E,y
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$7000
	STA.b $24
	JSR.w CODE_C0FF2B
	LDA.w $0002,y
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w $0000,y
	CLC
	ADC.w $17C9
	STA.b $24
	LDA.w $0004,y
	STA.b $26
	LDA.w $000E,y
	ORA.w #$2000
	STA.b $70
	LDA.w $000C,y
	CLC
	ADC.w $002E,y
	TAX
	STA.b $20
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	REP.b #$20
CODE_C0F2BD:
	LDA.b $26
	STA.b $68
	LDA.w #$0000
CODE_C0F2C4:
	STA.w $0000,x
	INC
	INX
	INX
	DEC.b $68
	BNE.b CODE_C0F2C4
	STA.b $70
	PHX
	JSR.w CODE_C0FF2B
	PLX
	LDA.b $20
	CLC
	ADC.b $26
	ADC.b $26
	STA.b $20
CODE_C0F2DE:
	LDA.b $24
	CLC
	ADC.w #$0020
	STA.b $24
	DEC.b $6C
	BNE.b CODE_C0F2BD
	SEP.b #$20
	PLB
	REP.b #$20
	JSR.w CODE_C0E4AA
	RTS

CODE_C0F2F3:
	RTS

CODE_C0F2F4:
	SEP.b #$20
	LDA.b $70
	BIT.b $72
	BEQ.b CODE_C0F300
	LDA.b #$FF
	BRA.b CODE_C0F302

CODE_C0F300:
	LDA.b #$00
CODE_C0F302:
	STA.w $0000,x
	STA.w $0002,x
	STA.w $0004,x
	STA.w $0006,x
	STA.w $0008,x
	STA.w $000A,x
	STA.w $000C,x
	STA.w $000E,x
	ASL.b $72
	REP.b #$20
	RTS

CODE_C0F31F:
	LDA.w $002A,y
	STA.b $90
	LDA.w $002C,y
	STA.b $92
	ORA.b $90
	BEQ.b CODE_C0F352
	LDA.w $0022,y
	STA.b $88
	STZ.b $A8
	STZ.b $AA
	LDA.w $001E,y
	STA.w $003C,y
	LDA.w $0020,y
	STA.w $003E,y
CODE_C0F342:
	LDA.w $0040,y
	STA.b $8A
	LDA.b [$90]
	JSR.w CODE_C0F860
	BMI.b CODE_C0F352
	INC.b $90
	BRA.b CODE_C0F342

CODE_C0F352:
	LDA.w $0008,y
	STA.w $003C,y
	LDA.w $000A,y
	STA.w $003E,y
	RTS

CODE_C0F35F:
	LDA.w $0008,y
	STA.w $003C,y
	LDA.w $003E,y
	CLC
	ADC.w $001A,y
	STA.w $003E,y
	CLC
	ADC.w $001A,y
	INC
	INC
	SEC
	SBC.w $0034,y
	BCC.b CODE_C0F392
	STA.b $78
	LDA.w $003E,y
	SEC
	SBC.b $78
	STA.w $003E,y
	LDA.b $78
	AND.w #$000F
	XBA
	ORA.w #$0002
	STA.w $003A,y
CODE_C0F392:
	RTS

CODE_C0F393:
	JSR.w CODE_C0F611
	JSR.w CODE_C0F813
	RTS

CODE_C0F39A:
	LDX.w #$0001
	LDA.w $002A,y
	ORA.w $002C,y
	BEQ.b CODE_C0F3A8
	LDX.w #$0009
CODE_C0F3A8:
	STX.b $80
	STX.b $6C
	LDA.w $0034,y
	SEC
	SBC.b $80
	STA.b $80
	LDA.b $6C
	AND.w #$0007
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0008
	STA.b $78
	LDA.b $6C
	AND.w #$0007
	ASL
	CLC
	ADC.w $000C,y
	STA.b $9C
	LDA.w $0032,y
	ASL
	ASL
	STA.b $7C
	LDA.b $6C
	LSR
	LSR
	LSR
	BEQ.b CODE_C0F3E8
	TAX
	LDA.b $9C
	CLC
CODE_C0F3E1:
	ADC.b $7C
	DEX
	BNE.b CODE_C0F3E1
	STA.b $9C
CODE_C0F3E8:
	LDA.w $0012,y
	ASL
	ASL
	TAX
	LDA.l DATA_C0FF46,x
	STA.b $70
	LDA.l DATA_C0FF46+$02,x
	STA.b $72
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	REP.b #$20
CODE_C0F404:
	LDA.w $0004,y
	STA.b $74
	LDX.b $9C
CODE_C0F40B:
	LDA.b $70
	STA.w $0000,x
	LDA.b $72
	STA.w $0010,x
	TXA
	CLC
	ADC.w #$0020
	TAX
	DEC.b $74
	BNE.b CODE_C0F40B
	INC.b $9C
	INC.b $9C
	DEC.b $80
	BEQ.b CODE_C0F43D
	DEC.b $78
	BNE.b CODE_C0F404
	LDA.w #$0008
	STA.b $78
	LDA.b $9C
	CLC
	ADC.b $7C
	SEC
	SBC.w #$0010
	STA.b $9C
	BRA.b CODE_C0F404

CODE_C0F43D:
	SEP.b #$20
	PLB
	REP.b #$20
	RTS

CODE_C0F443:
	PHA
	CMP.w #$005E
	BNE.b CODE_C0F45A
	INC.b $90
	LDA.b [$90]
	AND.w #$000F
	XBA
	ORA.w #$0002
	STA.w $003A,y
	JMP.w CODE_C0F4E5

CODE_C0F45A:
	CMP.w #$0060
	BNE.b CODE_C0F465
	JSR.w CODE_C0F393
	JMP.w CODE_C0F4E5

CODE_C0F465:
	CMP.w #$007E
	BNE.b CODE_C0F46F
	JSR.w CODE_C0F35F
	BRA.b CODE_C0F4E5

CODE_C0F46F:
	CMP.w #$0023
	BNE.b CODE_C0F480
	LDA.w #$000C
	XBA
	ORA.w #$0001
	STA.w $003A,y
	BRA.b CODE_C0F4E5

CODE_C0F480:
	CMP.w #$007C
	BNE.b CODE_C0F4A9
	JSR.w CODE_C0F4EE
	CMP.w $0032,y
	BCC.b CODE_C0F491
	LDA.w $0032,y
	DEC
CODE_C0F491:
	STA.w $003C,y
	JSR.w CODE_C0F4EE
	CMP.w $0034,y
	BCC.b CODE_C0F4A4
	LDA.w $0034,y
	DEC
	SEC
	SBC.w $001A,y
CODE_C0F4A4:
	STA.w $003E,y
	BRA.b CODE_C0F4E5

CODE_C0F4A9:
	CMP.w #$005F
	BNE.b CODE_C0F4B9
	LDA.w $0038,y
	EOR.w #$0001
	STA.w $0038,y
	BRA.b CODE_C0F4E5

CODE_C0F4B9:
	CMP.w #$00AA
	BNE.b CODE_C0F4CA
	INC.b $90
	LDA.b [$90]
	AND.w #$000F
	STA.w $0040,y
	BRA.b CODE_C0F4E5

CODE_C0F4CA:
	CMP.w #$005C
	BNE.b CODE_C0F4E3
	INC.b $90
	LDA.b [$90]
	AND.w #$000F
	STA.w $11B4
	ASL
	TAX
	LDA.w $17D5,x
	STA.w $11B2
	BRA.b CODE_C0F4E5

CODE_C0F4E3:
	BRA.b CODE_C0F4EA

CODE_C0F4E5:
	LDA.w #$0002
	STA.b $84
CODE_C0F4EA:
	PLA
	LDX.b $84
	RTS

CODE_C0F4EE:
	LDX.w #$0003
	STZ.w $011E
CODE_C0F4F4:
	ASL.w $011E
	LDA.w $011E
	PHA
	ASL.w $011E
	ASL.w $011E
	PLA
	CLC
	ADC.w $011E
	STA.w $011E
	INC.b $90
	LDA.b [$90]
	AND.w #$000F
	CLC
	ADC.w $011E
	STA.w $011E
	DEX
	BNE.b CODE_C0F4F4
	LDA.w $011E
	RTS

CODE_C0F51E:
	LDA.b $82
	BEQ.b CODE_C0F527
	DEC.b $82
	JSR.w CODE_C0F528
CODE_C0F527:
	RTS

CODE_C0F528:
	JSR.w CODE_C0F813
	JMP.w CODE_C0F637

CODE_C0F52E:
	LDX.w #$0001
	LDA.w $002A,y
	ORA.w $002C,y
	BEQ.b CODE_C0F542
	LDX.w #$0009
	LDA.w $0004,y
	STA.w $0046,y
CODE_C0F542:
	STX.b $6C
	TXA
	AND.w #$0007
	ASL
	CLC
	ADC.w $000C,y
	STA.b $9C
	LDA.b $6C
	AND.w #$0007
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0008
	STA.b $78
	STY.b $94
	LDA.w $0004,y
	STA.b $70
	LDA.w $0034,y
	SEC
	SBC.b $6C
	DEC
	STA.b $7C
	LDA.b $70
	ASL
	ASL
	ASL
	ASL
	ASL
	STA.b $74
	LDA.b $6C
	LSR
	LSR
	LSR
	TAX
	LDA.b $9C
	CLC
CODE_C0F580:
	DEX
	BMI.b CODE_C0F587
	ADC.b $74
	BRA.b CODE_C0F580

CODE_C0F587:
	STA.b $9C
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	REP.b #$20
CODE_C0F593:
	LDA.b $70
	STA.b $72
	LDX.b $9C
	DEC.b $7C
	BNE.b CODE_C0F5A0
	JMP.w CODE_C0F609

CODE_C0F5A0:
	DEC.b $78
	BEQ.b CODE_C0F5C1
	NOP
CODE_C0F5A5:
	LDA.w $0002,x
	STA.w $0000,x
	LDA.w $0012,x
	STA.w $0010,x
	TXA
	CLC
	ADC.w #$0020
	TAX
	DEC.b $72
	BNE.b CODE_C0F5A5
	INC.b $9C
	INC.b $9C
	BRA.b CODE_C0F593

CODE_C0F5C1:
	LDA.b $9C
	CLC
	ADC.b $74
	SEC
	SBC.w #$000E
	STA.b $A0
	LDA.w $17C5
	STA.b $A2
	LDX.b $9C
	LDY.w #$0000
CODE_C0F5D6:
	LDA.b [$A0],y
	STA.w $0000,x
	TYA
	CLC
	ADC.w #$0010
	TAY
	LDA.b [$A0],y
	STA.w $0010,x
	TXA
	CLC
	ADC.w #$0020
	TAX
	TYA
	CLC
	ADC.w #$0010
	TAY
	DEC.b $72
	BNE.b CODE_C0F5D6
	LDA.w #$0008
	STA.b $78
	LDA.b $9C
	CLC
	ADC.b $74
	SEC
	SBC.w #$000E
	STA.b $9C
	JMP.w CODE_C0F593

CODE_C0F609:
	SEP.b #$20
	PLB
	REP.b #$20
	LDY.b $94
	RTS

CODE_C0F611:
	STY.b $94
	LDA.w $002E,y
	DEC
	STA.b $68
	LDX.b $0C,y
	LDA.w #$0000
	STA.l $7E0000,x
	SEP.b #$20
	PHB
	REP.b #$20
	TXA
	TAY
	INY
	LDA.b $68
	MVN $7E0000>>16,$7E0000>>16
	LDY.b $94
	SEP.b #$20
	PLB
	REP.b #$20
	RTS

CODE_C0F637:
	STY.b $94
	LDA.w $0004,y
	STA.b $74
	LDA.w $0030,y
	SEC
	SBC.b $74
	STA.b $70
	LDA.w $0032,y
	ASL
	ASL
	SEC
	SBC.w #$0010
	STA.b $A0
	LDA.w $000C,y
	TAY
	SEP.b #$20
	PHB
	REP.b #$20
CODE_C0F65A:
	TYA
	TAX
	INX
	INX
	LDA.w #$000D
	MVN $7E0000>>16,$7E0000>>16
	TXA
	CLC
	ADC.b $A0
	TAX
	LDA.w #$0001
	MVN $7E0000>>16,$7E0000>>16
	TYA
	TAX
	INX
	INX
	LDA.w #$000D
	MVN $7E0000>>16,$7E0000>>16
	TXA
	CLC
	ADC.b $A0
	TAX
	LDA.w #$0001
	MVN $7E0000>>16,$7E0000>>16
	DEC.b $70
	BNE.b CODE_C0F65A
	TYA
	TAX
	INX
	INX
CODE_C0F68C:
	LDA.w #$000D
	MVN $7E0000>>16,$7E0000>>16
	INY
	INY
	INX
	INX
	LDA.w #$000D
	MVN $7E0000>>16,$7E0000>>16
	INY
	INY
	INX
	INX
	DEC.b $74
	BNE.b CODE_C0F68C
	LDY.b $94
	SEP.b #$20
	PLB
	REP.b #$20
	RTS

CODE_C0F6AC:
	LDA.b $82
	BEQ.b CODE_C0F6B2
	DEC.b $82
CODE_C0F6B2:
	RTS

CODE_C0F6B3:
	STZ.b $86
	LDA.w $003A,y
	XBA
	AND.w #$00FF
	STA.b $82
	LDA.w $003A,y
	AND.w #$00FF
	STA.b $80
	BEQ.b CODE_C0F6F7
	CMP.w #$0002
	BNE.b CODE_C0F6D2
	JSR.w CODE_C0F51E
	BRA.b CODE_C0F6DA

CODE_C0F6D2:
	CMP.w #$0001
	BNE.b CODE_C0F6DA
	JSR.w CODE_C0F6AC
CODE_C0F6DA:
	JSR.w CODE_C0FC05
	LDA.b $82
	AND.w #$00FF
	XBA
	STA.b $82
	LDA.w $003A,y
	AND.w #$00FF
	ORA.b $82
	STA.w $003A,y
	LDA.b $82
	BNE.b CODE_C0F6F7
	STA.w $003A,y
CODE_C0F6F7:
	LDA.b $80
	RTS

CODE_C0F6FA:
	LDA.w $0036,y
	BEQ.b CODE_C0F72A
	LDA.w $003A,y
	AND.w #$000F
	CMP.w #$0002
	BEQ.b CODE_C0F72A
	LDA.w $0012,y
	STA.b $70
	LDA.w $003C,y
	STA.b $68
	LDA.w $003E,y
	CLC
	ADC.w #$0005
	STA.b $6C
	JSR.w CODE_C0FD0E
	INC.b $68
	JSR.w CODE_C0FD0E
	INC.b $68
	JSR.w CODE_C0FD0E
CODE_C0F72A:
	RTS

CODE_C0F72B:
	LDA.w $0036,y
	BEQ.b CODE_C0F75B
	LDA.w $003A,y
	AND.w #$000F
	CMP.w #$0002
	BEQ.b CODE_C0F75B
	LDA.w #$000F
	STA.b $70
	LDA.w $003C,y
	STA.b $68
	LDA.w $003E,y
	CLC
	ADC.w #$0005
	STA.b $6C
	JSR.w CODE_C0FD0E
	INC.b $68
	JSR.w CODE_C0FD0E
	INC.b $68
	JSR.w CODE_C0FD0E
CODE_C0F75B:
	RTS

CODE_C0F75C:
	JSR.w CODE_C0F6B3
	BEQ.b CODE_C0F764
	JMP.w CODE_C0F80C

CODE_C0F764:
	LDA.w $0026,y
	STA.b $90
	LDA.w $0028,y
	STA.b $92
	ORA.b $90
	BNE.b CODE_C0F775
	JMP.w CODE_C0F7D9

CODE_C0F775:
	JSR.w CODE_C0F6FA
	LDA.w $0038,y
	STA.b $88
	LDA.w $001C,y
	BEQ.b CODE_C0F7C0
	AND.w #$00FF
	STA.b $8A
	LDA.w $001C,y
	XBA
	PHA
	LSR
	LSR
	LSR
	LSR
	AND.w #$000F
	BIT.w #$0008
	BEQ.b CODE_C0F79B
	ORA.w #$FFF0
CODE_C0F79B:
	STA.b $AA
	PLA
	AND.w #$000F
	BIT.w #$0008
	BEQ.b CODE_C0F7A9
	ORA.w #$FFF0
CODE_C0F7A9:
	STA.b $A8
	LDA.w $003E,y
	PHA
	LDA.b $90
	PHA
	LDA.b [$90]
	JSR.w CODE_C0F860
	PLA
	STA.b $90
	PLA
	STA.w $003E,y
	LDA.b $84
CODE_C0F7C0:
	STZ.b $A8
	STZ.b $AA
	LDA.w $0040,y
	STA.b $8A
	LDA.b [$90]
	JSR.w CODE_C0F860
	BPL.b CODE_C0F7F9
	LDA.w #$0000
	STA.w $0026,y
	STA.w $0028,y
CODE_C0F7D9:
	LDA.w $0042,y
	ORA.w $0044,y
	BEQ.b CODE_C0F812
	LDA.w $0042,y
	STA.w $0026,y
	LDA.w $0044,y
	STA.w $0028,y
	LDA.w #$0000
	STA.w $0042,y
	STA.w $0044,y
	JMP.w CODE_C0F812

CODE_C0F7F9:
	BEQ.b CODE_C0F805
	CMP.w #$0001
	BNE.b CODE_C0F803
	JMP.w CODE_C0F35F

CODE_C0F803:
	BRA.b CODE_C0F805

CODE_C0F805:
	INC.b $90
	LDA.b $90
	STA.w $0026,y
CODE_C0F80C:
	JSR.w CODE_C0F72B
	JSR.w CODE_C0FC05
CODE_C0F812:
	RTS

CODE_C0F813:
	LDA.w #$0000
	STA.w $0046,y
	LDA.w $0030,y
	DEC
	STA.w $0048,y
	LDA.w #$0001
	STA.w $004A,y
	RTS

CODE_C0F827:
	STA.b $8C
	LDA.b $68
	LSR
	LSR
	LSR
	STA.b $8E
	LDA.b $6C
	LSR
	LSR
	LSR
	TAX
	CLC
	LDA.w #$0000
CODE_C0F83A:
	DEX
	BMI.b CODE_C0F842
	ADC.w $0004,y
	BRA.b CODE_C0F83A

CODE_C0F842:
	ADC.b $8E
	CMP.w $0046,y
	BCS.b CODE_C0F84C
	STA.w $0046,y
CODE_C0F84C:
	INC
	CMP.w $0048,y
	BCC.b CODE_C0F855
	STA.w $0048,y
CODE_C0F855:
	LDA.b $8C
	CMP.w $004A,y
	BCC.b CODE_C0F85F
	STA.w $004A,y
CODE_C0F85F:
	RTS

CODE_C0F860:
	JSR.w CODE_C0EFAE
	STZ.b $84
	AND.w #$00FF
	BNE.b CODE_C0F872
	LDA.w #$8000
	STA.b $84
CODE_C0F86F:
	JMP.w CODE_C0F97E

CODE_C0F872:
	LDX.w $17BF
	BEQ.b CODE_C0F877
CODE_C0F877:
	JSR.w CODE_C0F443
	BNE.b CODE_C0F86F
	SEC
	SBC.w #$0020
	CMP.w #$0041
	BCC.b CODE_C0F88E
	CMP.w #$005B
	BCS.b CODE_C0F88E
	SEC
	SBC.w #$0020
CODE_C0F88E:
	STA.b $7A
	LDA.b $88
	BEQ.b CODE_C0F89C
	LDA.b $7A
	CLC
	ADC.w #$0040
	STA.b $7A
CODE_C0F89C:
	LDA.b $7A
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$C000
	STA.b $78
	LDA.w $0010,y
	SEP.b #$20
	STA.w $1889
	REP.b #$20
	LDA.w $0024,y
	SEP.b #$20
	STA.w $18C9
	REP.b #$20
	STY.b $94
	LDA.w $003C,y
	CLC
	ADC.b $A8
	STA.b $68
	LDA.w $003E,y
	CLC
	ADC.b $AA
	STA.b $6C
	LDA.b $A8
	ORA.b $AA
	BNE.b CODE_C0F8F2
	LDX.b $7A
	LDA.w $1889,x
	AND.w #$00FF
	CLC
	ADC.w $003C,y
	INC
	CMP.w $0032,y
	BCC.b CODE_C0F8EF
	LDA.w #$0001
	STA.b $84
	JMP.w CODE_C0F97E

CODE_C0F8EF:
	STA.w $003C,y
CODE_C0F8F2:
	LDA.b $68
	AND.w #$0007
	INC
	STA.b $6A
	LDA.w $000C,y
	STA.b $9C
	LDA.b $68
	AND.w #$FFF8
	ASL
	ASL
	CLC
	ADC.b $9C
	STA.b $9C
	LDA.b $6C
	AND.w #$0007
	ASL
	CLC
	ADC.b $9C
	STA.b $9C
	LDA.w #$0002
	JSR.w CODE_C0F827
	LDA.b $6C
	AND.w #$FFF8
	ASL
	ASL
	STA.b $6E
	CLC
	LDX.b $04,y
	LDA.b $9C
CODE_C0F92A:
	ADC.b $6E
	DEX
	BNE.b CODE_C0F92A
	STA.b $9C
	LDA.b $6C
	AND.w #$0007
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$0008
	STA.b $6E
	LDA.w #$0008
	STA.b $80
CODE_C0F945:
	DEC.b $6E
	BPL.b CODE_C0F95E
	LDA.w #$0007
	STA.b $6E
	LDY.b $94
	LDA.w $0032,y
	ASL
	ASL
	SEC
	SBC.w #$0010
	CLC
	ADC.b $9C
	STA.b $9C
CODE_C0F95E:
	LDA.b $8A
	CMP.w #$000F
	BNE.b CODE_C0F96A
	JSR.w CODE_C0FA67
	BRA.b CODE_C0F96D

CODE_C0F96A:
	JSR.w CODE_C0F981
CODE_C0F96D:
	LDY.b $94
	INC.b $9C
	INC.b $9C
	INC.b $78
	INC.b $78
	DEC.b $80
	BEQ.b CODE_C0F97E
	JMP.w CODE_C0F945

CODE_C0F97E:
	LDA.b $84
	RTS

CODE_C0F981:
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	LDX.b $78
	LDA.w $0000,x
	ORA.w $0001,x
	ORA.w $0010,x
	ORA.w $0011,x
	EOR.b #$FF
	STA.b $70
	LDA.b #$FF
	STA.b $71
	LDY.b $6A
CODE_C0F9A1:
	DEY
	BEQ.b CODE_C0F9AB
	SEC
	ROR.b $70
	ROR.b $71
	BRA.b CODE_C0F9A1

CODE_C0F9AB:
	LDA.b $70
	EOR.b #$FF
	STA.b $7C
	LDA.b $71
	EOR.b #$FF
	STA.b $7D
	LDA.b $8A
	STA.b $8B
	LDA.b $70
	LDX.b $9C
	AND.w $0000,x
	STA.w $0000,x
	LDA.b $71
	AND.w $0020,x
	STA.w $0020,x
	LSR.b $8B
	BCC.b CODE_C0F9E5
	LDA.b $7D
	XBA
	LDA.b $7C
	LDX.b $9C
	ORA.w $0000,x
	STA.w $0000,x
	XBA
	ORA.w $0020,x
	STA.w $0020,x
CODE_C0F9E5:
	LDA.b $70
	LDX.b $9C
	AND.w $0001,x
	STA.w $0001,x
	LDA.b $71
	AND.w $0021,x
	STA.w $0021,x
	LSR.b $8B
	BCC.b CODE_C0FA0F
	LDA.b $7D
	XBA
	LDA.b $7C
	LDX.b $9C
	ORA.w $0001,x
	STA.w $0001,x
	XBA
	ORA.w $0021,x
	STA.w $0021,x
CODE_C0FA0F:
	LDA.b $70
	LDX.b $9C
	AND.w $0010,x
	STA.w $0010,x
	LDA.b $71
	AND.w $0030,x
	STA.w $0030,x
	LSR.b $8B
	BCC.b CODE_C0FA39
	LDA.b $7D
	XBA
	LDA.b $7C
	LDX.b $9C
	ORA.w $0010,x
	STA.w $0010,x
	XBA
	ORA.w $0030,x
	STA.w $0030,x
CODE_C0FA39:
	LDA.b $70
	LDX.b $9C
	AND.w $0011,x
	STA.w $0011,x
	LDA.b $71
	AND.w $0031,x
	STA.w $0031,x
	LSR.b $8B
	BCC.b CODE_C0FA63
	LDA.b $7D
	XBA
	LDA.b $7C
	LDX.b $9C
	ORA.w $0011,x
	STA.w $0011,x
	XBA
	ORA.w $0031,x
	STA.w $0031,x
CODE_C0FA63:
	PLB
	REP.b #$20
	RTS

CODE_C0FA67:
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0000,x
	LDY.b $6A
CODE_C0FA79:
	DEY
	BEQ.b CODE_C0FA82
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FA79

CODE_C0FA82:
	LDX.b $9C
	ORA.w $0000,x
	STA.w $0000,x
	XBA
	ORA.w $0020,x
	STA.w $0020,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0001,x
	LDY.b $6A
CODE_C0FA9B:
	DEY
	BEQ.b CODE_C0FAA4
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FA9B

CODE_C0FAA4:
	LDX.b $9C
	ORA.w $0001,x
	STA.w $0001,x
	XBA
	ORA.w $0021,x
	STA.w $0021,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0010,x
	LDY.b $6A
CODE_C0FABD:
	DEY
	BEQ.b CODE_C0FAC6
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FABD

CODE_C0FAC6:
	LDX.b $9C
	ORA.w $0010,x
	STA.w $0010,x
	XBA
	ORA.w $0030,x
	STA.w $0030,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0011,x
	LDY.b $6A
CODE_C0FADF:
	DEY
	BEQ.b CODE_C0FAE8
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FADF

CODE_C0FAE8:
	LDX.b $9C
	ORA.w $0011,x
	STA.w $0011,x
	XBA
	ORA.w $0031,x
	STA.w $0031,x
	PLB
	REP.b #$20
	RTS

CODE_C0FAFB:
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	LDX.b $78
	LDA.w $0000,x
	ORA.w $0001,x
	ORA.w $0010,x
	ORA.w $0011,x
	EOR.b #$FF
	STA.b $70
	LDA.b #$FF
	STA.b $71
	LDY.b $6A
CODE_C0FB1B:
	DEY
	BEQ.b CODE_C0FB25
	SEC
	ROR.b $70
	ROR.b $71
	BRA.b CODE_C0FB1B

CODE_C0FB25:
	LDA.b $70
	EOR.b #$FF
	STA.b $7C
	LDA.b $71
	EOR.b #$FF
	STA.b $7D
	LDA.b $70
	LDX.b $9C
	AND.w $0000,x
	STA.w $0000,x
	LDA.b $71
	AND.w $0020,x
	STA.w $0020,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0000,x
	LDY.b $6A
CODE_C0FB4D:
	DEY
	BEQ.b CODE_C0FB56
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FB4D

CODE_C0FB56:
	LDX.b $9C
	ORA.w $0000,x
	STA.w $0000,x
	XBA
	ORA.w $0020,x
	STA.w $0020,x
	LDA.b $70
	LDX.b $9C
	AND.w $0001,x
	STA.w $0001,x
	LDA.b $71
	AND.w $0021,x
	STA.w $0021,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0001,x
	LDY.b $6A
CODE_C0FB81:
	DEY
	BEQ.b CODE_C0FB8A
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FB81

CODE_C0FB8A:
	LDX.b $9C
	ORA.w $0001,x
	STA.w $0001,x
	XBA
	ORA.w $0021,x
	STA.w $0021,x
	LDA.b $70
	LDX.b $9C
	AND.w $0010,x
	STA.w $0010,x
	LDA.b $71
	AND.w $0030,x
	STA.w $0030,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0010,x
	LDY.b $6A
CODE_C0FBB5:
	DEY
	BEQ.b CODE_C0FBBE
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FBB5

CODE_C0FBBE:
	LDX.b $9C
	ORA.w $0010,x
	STA.w $0010,x
	XBA
	ORA.w $0030,x
	STA.w $0030,x
	LDA.b $70
	LDX.b $9C
	AND.w $0011,x
	STA.w $0011,x
	LDA.b $71
	AND.w $0031,x
	STA.w $0031,x
	LDA.b #$00
	XBA
	LDX.b $78
	LDA.w $0011,x
	LDY.b $6A
CODE_C0FBE9:
	DEY
	BEQ.b CODE_C0FBF2
	LSR
	XBA
	ROR
	XBA
	BRA.b CODE_C0FBE9

CODE_C0FBF2:
	LDX.b $9C
	ORA.w $0011,x
	STA.w $0011,x
	XBA
	ORA.w $0031,x
	STA.w $0031,x
	PLB
	REP.b #$20
	RTS

CODE_C0FC05:
	LDA.w $004A,y
	BEQ.b CODE_C0FC67
	LDA.w $0048,y
	SEC
	SBC.w $0046,y
	INC
	ASL
	ASL
	ASL
	ASL
	STA.b $26
	LDA.w $0046,y
	CLC
	ADC.w $000E,y
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$7000
	STA.b $24
	LDA.w $17C5
	STA.b $22
	LDA.w $0046,y
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w $000C,y
	STA.b $20
CODE_C0FC3C:
	JSR.w CODE_C0FF2B
	LDA.w $004A,y
	DEC
	STA.w $004A,y
	BEQ.b CODE_C0FC5B
	LDA.w $0032,y
	ASL
	PHA
	CLC
	ADC.b $24
	STA.b $24
	PLA
	ASL
	CLC
	ADC.b $20
	STA.b $20
	BRA.b CODE_C0FC3C

CODE_C0FC5B:
	LDA.w #$0000
	STA.w $0046,y
	STA.w $0048,y
	STA.w $004A,y
CODE_C0FC67:
	RTS

CODE_C0FC68:
	STY.b $94
	LDA.w $17C5
	STA.b $22
	LDA.w $0004,y
	LDX.b $06,y
	JSR.w CODE_C0E4DB
	STA.w $0030,y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA.w $002E,y
	LDA.w $0006,y
	STA.b $6C
	JSR.w CODE_C0FDBD
	LDA.w $000C,y
	STA.b $20
	LDA.w $002E,y
	LSR
	STA.b $26
	LDA.w $000E,y
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w #$7000
	STA.b $24
	JSR.w CODE_C0FF2B
	LDA.w $0002,y
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC.w $0000,y
	CLC
	ADC.w $17C9
	STA.b $24
	LDA.w $0004,y
	STA.b $26
	LDA.w $000E,y
	ORA.w #$2000
	STA.b $70
	LDA.w $000C,y
	CLC
	ADC.w $002E,y
	TAX
	STA.b $20
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	REP.b #$20
CODE_C0FCD8:
	LDA.b $26
	STA.b $68
	LDA.b $70
CODE_C0FCDE:
	STA.w $0000,x
	INC
	INX
	INX
	DEC.b $68
	BNE.b CODE_C0FCDE
	STA.b $70
	PHX
	JSR.w CODE_C0FF2B
	PLX
	LDA.b $20
	CLC
	ADC.b $26
	ADC.b $26
	STA.b $20
	LDA.b $24
	CLC
	ADC.w #$0020
	STA.b $24
	DEC.b $6C
	BNE.b CODE_C0FCD8
	SEP.b #$20
	PLB
	REP.b #$20
	JSR.w CODE_C0E4AA
	RTS

CODE_C0FD0D:
	RTS

CODE_C0FD0E:
	LDA.w $000C,y
	STA.b $9C
	LDA.b $68
	AND.w #$0007
	STA.b $6A
	LDA.w $000C,y
	STA.b $9C
	LDA.b $68
	AND.w #$FFF8
	ASL
	ASL
	CLC
	ADC.b $9C
	STA.b $9C
	LDA.b $6C
	AND.w #$0007
	ASL
	CLC
	ADC.b $9C
	STA.b $9C
	LDA.b $6C
	AND.w #$FFF8
	ASL
	ASL
	STA.b $6E
	CLC
	LDX.b $04,y
	LDA.b $9C
CODE_C0FD44:
	ADC.b $6E
	DEX
	BNE.b CODE_C0FD44
	STA.b $9C
	SEP.b #$20
	PHB
	LDA.w $17C5
	PHA
	PLB
	LDX.b $6A
	LDA.l DATA_C0FF3E,x
	STA.b $72
	LDA.l DATA_C0FF36,x
	STA.b $73
	LDX.b $9C
	LDA.w $0000,x
	AND.b $72
	STA.w $0000,x
	LDA.w $0001,x
	AND.b $72
	STA.w $0001,x
	LDA.w $0010,x
	AND.b $72
	STA.w $0010,x
	LDA.w $0011,x
	AND.b $72
	STA.w $0011,x
	LDA.b $70
	STA.b $72
	LDX.b $9C
	LSR.b $72
	BCC.b CODE_C0FD95
	LDA.b $73
	ORA.w $0000,x
	STA.w $0000,x
CODE_C0FD95:
	LSR.b $72
	BCC.b CODE_C0FDA1
	LDA.b $73
	ORA.w $0001,x
	STA.w $0001,x
CODE_C0FDA1:
	LSR.b $72
	BCC.b CODE_C0FDAD
	LDA.b $73
	ORA.w $0010,x
	STA.w $0010,x
CODE_C0FDAD:
	LSR.b $72
	BCC.b CODE_C0FDB9
	LDA.b $73
	ORA.w $0011,x
	STA.w $0011,x
CODE_C0FDB9:
	PLB
	REP.b #$20
	RTS

CODE_C0FDBD:
	JMP.w CODE_C0F611

CODE_C0FDC0:
	LDA.b $90
	PHA
	LDA.b $92
	PHA
	LDA.b [$90]
	CLC
	ADC.b $90
	ADC.w #$0002
	STA.b $90
	LDY.w #$0000
	LDX.w #$0010
CODE_C0FDD6:
	LDA.b [$90],y
	STA.w $17D5,y
	INY
	INY
	DEX
	BNE.b CODE_C0FDD6
	INC.b $90
	INC.b $90
	LDA.w #$0001
	LDX.w #$000F
	JSR.w CODE_C0D447
	PLA
	STA.b $92
	PLA
	STA.b $90
	LDA.b [$90]
	LSR
	STA.b $70
	LSR
	LSR
	LSR
	LSR
	STA.w $17C1
	STA.b $6C
	STZ.b $68
	LDY.w #$0002
	LDX.w #$0000
CODE_C0FE09:
	LDA.b [$90],y
	STA.l $7EC000,x
	INY
	INY
	INX
	INX
	DEC.b $70
	BNE.b CODE_C0FE09
	LDX.w #$0020
	INC.b $68
CODE_C0FE1C:
	SEP.b #$20
	PHX
	LDY.w #$0008
	LDA.b #$00
CODE_C0FE24:
	ORA.l $7EC000,x
	ORA.l $7EC001,x
	ORA.l $7EC010,x
	ORA.l $7EC011,x
	INX
	INX
	DEY
	BNE.b CODE_C0FE24
	PLX
	STA.b $78
	LDY.w #$0000
CODE_C0FE3F:
	ASL
	BCS.b CODE_C0FE48
	INY
	CPY.w #$0008
	BCC.b CODE_C0FE3F
CODE_C0FE48:
	LDA.b #$08
	STA.b $74
	LDA.b $78
CODE_C0FE4E:
	LSR
	BCS.b CODE_C0FE55
	DEC.b $74
	BNE.b CODE_C0FE4E
CODE_C0FE55:
	TYA
	EOR.b #$FF
	INC
	CLC
	ADC.b $74
	PHX
	LDX.b $68
	STA.w $1889,x
	PLX
	CPY.w #$0000
	BEQ.b CODE_C0FE9D
	LDA.b #$08
	STA.b $70
	PHX
CODE_C0FE6D:
	PHY
CODE_C0FE6E:
	LDA.l $7EC000,x
	ASL
	STA.l $7EC000,x
	LDA.l $7EC001,x
	ASL
	STA.l $7EC001,x
	LDA.l $7EC010,x
	ASL
	STA.l $7EC010,x
	LDA.l $7EC011,x
	ASL
	STA.l $7EC011,x
	DEY
	BNE.b CODE_C0FE6E
	PLY
	INX
	INX
	DEC.b $70
	BNE.b CODE_C0FE6D
	PLX
CODE_C0FE9D:
	REP.b #$20
	TXA
	CLC
	ADC.w #$0020
	TAX
	INC.b $68
	DEC.b $6C
	BEQ.b CODE_C0FEAE
	JMP.w CODE_C0FE1C

CODE_C0FEAE:
	RTS

CODE_C0FEAF:
	PHY
	LDA.b $90
	PHA
	LDX.w #$0017
CODE_C0FEB6:
	LDA.b [$90]
	STA.w $0000,y
	INC.b $90
	INC.b $90
	INY
	INY
	DEX
	BNE.b CODE_C0FEB6
	PLA
	STA.b $90
	PLY
	LDA.w $000C,y
	CLC
	ADC.w $17C3
	STA.w $000C,y
	LDA.w $000E,y
	CLC
	ADC.w #$0002
	STA.w $000E,y
	LDA.w #$0000
	STA.w $003A,y
	LDA.w $0004,y
	ASL
	ASL
	ASL
	STA.w $0032,y
	LDA.w $0006,y
	ASL
	ASL
	ASL
	STA.w $0034,y
	LDA.w #$0000
	STA.w $0038,y
	STA.w $0036,y
	LDA.w $0008,y
	STA.w $003C,y
	LDA.w $000A,y
	STA.w $003E,y
	LDA.w $17BF
	EOR.w #$0001
	STA.w $0038,y
	LDA.w #$0000
	STA.w $0042,y
	STA.w $0044,y
	STA.w $0046,y
	STA.w $0048,y
	STA.w $004A,y
	LDA.w #$000F
	STA.w $0040,y
	RTS

CODE_C0FF2B:
	LDA.w $17C7
	BNE.b CODE_C0FF33
	JMP.w CODE_C0E46C

CODE_C0FF33:
	JMP.w CODE_C0EC3E

DATA_C0FF36:
	db $80,$40,$20,$10,$08,$04,$02,$01

DATA_C0FF3E:
	db $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE

DATA_C0FF46:
	dw $0000,$0000,$FF00,$0000,$00FF,$0000,$FFFF,$0000
	dw $0000,$FF00,$FF00,$FF00,$00FF,$FF00,$FFFF,$FF00
	dw $0000,$00FF,$FF00,$00FF,$00FF,$00FF,$FFFF,$00FF
	dw $0000,$FFFF,$FF00,$FFFF,$00FF,$FFFF,$FFFF,$FFFF

	base off
	%InsertGarbageData($C0FF86, incsrc, ADDR_C0FF86.asm)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC1Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C10000:
	db $29,$00,$85,$00,$01,$00,$0A,$00,$09,$08,$00,$42,$00,$02,$52,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$20,$30,$0E
	db $30,$30,$20,$40,$30,$22,$50,$30,$24,$60,$30,$26,$70,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$37,$40,$2E,$47,$40,$40,$57,$40,$42,$67,$40
	db $44,$77,$40,$46,$87,$40,$48,$15,$50,$4A,$25,$50,$4C,$35,$50,$4E
	db $45,$50,$60,$55,$50,$62,$65,$50,$64,$75,$50,$66,$85,$50,$68,$19
	db $60,$6A,$29,$60,$6C,$39,$60,$6E,$49,$60,$80,$59,$60,$82,$7A,$60
	db $84,$8A,$60,$86,$25,$70,$88,$35,$70,$8A,$45,$70,$8C,$55,$70,$8E
	db $65,$70,$A0,$8A,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu16.bin"	; GFXSize = $1480

DATA_C11505:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC11505_Main
.Block1Start:
	%ReadPreCompiledFilePointers(2, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C18E0B:
	dw $0005
	dd DATA_C39F54,DATA_C444E7,DATA_C4A231,DATA_C5A6F5,DATA_C18E21

DATA_C18E21:
	dw $6B40,$064A,$0001,$000A,$1920
	incbin "Tilemaps/TM_Layer1_TitleScreen_Cyborg_Frame5.bin"	; $C18E2B
	incbin "Graphics/GFX_Layer1_TitleScreen_Cyborg_Frame5.bin"	; $C1946B

	%InsertGarbageData($C1FFAB, incbin, UNK_C1FFAB.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC2Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C20000:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC20000_Main
.Block1Start:
	%ReadPreCompiledFilePointers(3, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C26E10:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC26E10_Main
.Block1Start:
	%ReadPreCompiledFilePointers(4, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C2CFBF:
	incbin "Graphics/Compressed/GFX_Layer1_MilitarysArena.rnc"

UNK_C2FF20:
	dw $000E

DATA_C2FF22:
	dd DATA_CBCB84,DATA_D592EC,DATA_CCF228,DATA_D59F3A,DATA_CBDB53,DATA_D9CBC0,DATA_CBEB20,DATA_E5A992
	dd DATA_CDFD11,DATA_E5ACFB,DATA_E0FA06,DATA_DDFD69,DATA_C541FC,DATA_E5B05E

	%InsertGarbageData($C2FF5A, incbin, UNK_C2FF5A.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC3Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C30000:
	dw $0012

DATA_C30002:
	dd DATA_C50000,DATA_C912F9,DATA_C8147B,DATA_C82B09,DATA_C8421A,DATA_C8592B,DATA_C86F36,DATA_C88541
	dd DATA_C89BCF,DATA_C92881,DATA_C93E8C,DATA_C95414,DATA_C9699C,DATA_C97F24,DATA_C994AC,DATA_C9AA34
	dd DATA_C10000,DATA_C9BFBC

DATA_C3004A:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC3004A_Main
.Block1Start:
	%ReadPreCompiledFilePointers(5, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

UNK_C360F6:
	incbin "Graphics/Compressed/GFX_Layer1_PrototypeTitleScreen.rnc"

DATA_C39F54:
	dw $5740,$064A,$0001,$000A,$1920
	incbin "Tilemaps/TM_Layer1_TitleScreen_Cyborg_Frame1.bin"		; $C39F5E
	incbin "Graphics/GFX_Layer1_TitleScreen_Cyborg_Frame1.bin"		; $C3A5AE
	incbin "Palettes/PAL_Layer1_TitleScreen_Cyborg.tpl":$04..$0204	; $C3FCDE

	%InsertGarbageData($C3FEDE, incbin, UNK_C3FEDE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC4Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C40000:
	incbin "Palettes/PAL_Sprite_Crusher.tpl":$04..$24

DATA_C40020:
	incbin "Palettes/PAL_Sprite_Sentry.tpl":$04..$24

DATA_C40040:
	incbin "Graphics/Compressed/GFX_Layer1_CyborgArena.rnc"

DATA_C444E7:
	dw $5700,$064A,$0001,$000A,$1920
	incbin "Tilemaps/TM_Layer1_TitleScreen_Cyborg_Frame2.bin"	; $C444F1
	incbin "Graphics/GFX_Layer1_TitleScreen_Cyborg_Frame2.bin"	; $C44B31

DATA_C4A231:
	dw $5780,$064A,$0001,$000A,$1920
	incbin "Tilemaps/TM_Layer1_TitleScreen_Cyborg_Frame3.bin"	; $C4A23B
	incbin "Graphics/GFX_Layer1_TitleScreen_Cyborg_Frame3.bin"	; $C4A87B

	%InsertGarbageData($C4FFFB, incbin, UNK_C4FFFB.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC5Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C50000:
	incbin "Graphics/Compressed/GFX_Layer1_MainMenu.rnc"

DATA_C541FC:
	incbin "Graphics/Compressed/GFX_Layer1_SuperMovesMonitorText.rnc"

DATA_C544A5:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC544A5_Main
.Block1Start:
	%ReadPreCompiledFilePointers(6, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C58E2B:
	dw $1700,$01AA,$0001,$000A,$081A
	incbin "Tilemaps/TM_Layer2_TitleScreen_Title.bin"				; $C58E35
	incbin "Graphics/GFX_Layer2_TitleScreen_Title.bin"				; $C58FD5
	incbin "Palettes/PAL_Layer2_TitleScreen_Title.tpl":$04..$24	; $C5A6D5

DATA_C5A6F5:
	dw $52C0,$064A,$0001,$000A,$1920
	incbin "Tilemaps/TM_Layer1_TitleScreen_Cyborg_Frame4.bin"	; $C5A6FF
	incbin "Graphics/GFX_Layer1_TitleScreen_Cyborg_Frame4.bin"	; $C5AD3F

	%FREE_BYTES($C5FFFF, 1, $00)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC6Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C60000:
	db $23,$00,$73,$00,$01,$00,$0A,$00,$08,$07,$00,$6C,$00,$02,$32,$10
	db $04,$42,$10,$06,$61,$10,$08,$72,$10,$0A,$06,$20,$0C,$2A,$20,$0E
	db $3A,$20,$20,$4A,$20,$22,$5A,$20,$24,$6A,$20,$26,$7A,$20,$28,$06
	db $30,$2A,$16,$30,$2C,$26,$30,$2E,$36,$30,$40,$46,$30,$42,$56,$30
	db $44,$66,$30,$46,$76,$30,$48,$04,$40,$4A,$14,$40,$4C,$24,$40,$4E
	db $3A,$40,$60,$65,$40,$62,$75,$40,$64,$00,$50,$66,$10,$50,$68,$20
	db $50,$6A,$30,$50,$6C,$4C,$50,$6E,$5C,$50,$80,$6C,$50,$82,$41,$60
	db $84,$51,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarKick3.bin"	; GFXSize = $1180

DATA_C611F3:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC611F3_Main
.Block1Start:
	%ReadPreCompiledFilePointers(7, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C65331:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC65331_Main
.Block1Start:
	%ReadPreCompiledFilePointers(8, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C68ADF:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC68ADF_Main
.Block1Start:
	%ReadPreCompiledFilePointers(9, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C6C2B6:
	incbin "Graphics/Compressed/GFX_Layer1_SentrysArena.rnc"

	%InsertGarbageData($C6FFFC, incbin, UNK_C6FFFC.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC7Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C70000:
	db $23,$00,$73,$00,$01,$00,$0A,$00,$07,$06,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$5A,$00,$0C,$08,$10,$0E
	db $18,$10,$20,$28,$10,$22,$38,$10,$24,$48,$10,$26,$58,$10,$28,$00
	db $20,$2A,$10,$20,$2C,$20,$20,$2E,$30,$20,$40,$40,$20,$42,$50,$20
	db $44,$60,$20,$46,$00,$30,$48,$10,$30,$4A,$20,$30,$4C,$30,$30,$4E
	db $40,$30,$60,$03,$40,$62,$13,$40,$64,$23,$40,$66,$33,$40,$68,$43
	db $40,$6A,$53,$40,$6C,$12,$50,$6E,$22,$50,$80,$32,$50,$82,$42,$50
	db $84,$52,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarKick2.bin"	; GFXSize = $1180

DATA_C711F3:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC711F3_Main
.Block1Start:
	%ReadPreCompiledFilePointers(10, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C74364:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC74364_Main
.Block1Start:
	%ReadPreCompiledFilePointers(11, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C77675:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SampleBankC77675_Main
.Block1Start:
	%ReadPreCompiledFilePointers(12, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C7A234:
	incbin "Graphics/Compressed/GFX_Layer1_ApesArena.rnc"

DATA_C7D47B:
	incbin "Graphics/Compressed/GFX_Layer1_SupervisorsArena.rnc"

	%InsertGarbageData($C7FFFA, incbin, UNK_C7FFFA.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC8Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C80000:
	db $25,$00,$79,$00,$01,$00,$0A,$00,$0A,$07,$00,$87,$00,$02,$49,$10
	db $04,$59,$10,$06,$7A,$10,$08,$8A,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $22,$20,$20,$32,$20,$22,$42,$20,$24,$52,$20,$26,$62,$20,$28,$72
	db $20,$2A,$82,$20,$2C,$92,$20,$2E,$04,$30,$40,$14,$30,$42,$24,$30
	db $44,$34,$30,$46,$44,$30,$48,$54,$30,$4A,$64,$30,$4C,$74,$30,$4E
	db $84,$30,$60,$0D,$40,$62,$1D,$40,$64,$2D,$40,$66,$3D,$40,$68,$77
	db $40,$6A,$87,$40,$6C,$2A,$50,$6E,$3A,$50,$80,$4A,$50,$82,$62,$50
	db $84,$72,$50,$86,$58,$60,$88,$68,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarKick4.bin"	; GFXSize = $1280

DATA_C812F9:
	dw $0180
	incbin "Graphics/GFX_Sprite_MetalParticles.bin"

DATA_C8147B:
	db $2C,$00,$8E,$00,$01,$00,$0A,$00,$09,$08,$00,$42,$00,$02,$52,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$14
	db $40,$2A,$24,$40,$2C,$34,$40,$2E,$44,$40,$40,$54,$40,$42,$64,$40
	db $44,$74,$40,$46,$84,$40,$48,$12,$50,$4A,$22,$50,$4C,$32,$50,$4E
	db $42,$50,$60,$52,$50,$62,$62,$50,$64,$72,$50,$66,$82,$50,$68,$10
	db $60,$6A,$20,$60,$6C,$35,$60,$6E,$45,$60,$80,$55,$60,$82,$65,$60
	db $84,$76,$60,$86,$86,$60,$88,$17,$70,$8A,$27,$70,$8C,$37,$70,$8E
	db $47,$70,$A0,$57,$70,$A2,$67,$70,$A4,$7F,$70,$A6,$8F,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu2.bin"	; GFXSize = $1600

DATA_C82B09:
	db $2D,$00,$91,$00,$01,$00,$0A,$00,$09,$08,$00,$43,$00,$02,$53,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$13
	db $40,$2A,$23,$40,$2C,$33,$40,$2E,$43,$40,$40,$53,$40,$42,$63,$40
	db $44,$73,$40,$46,$83,$40,$48,$0E,$50,$4A,$1E,$50,$4C,$2E,$50,$4E
	db $3E,$50,$60,$4E,$50,$62,$5E,$50,$64,$6E,$50,$66,$7E,$50,$68,$8E
	db $50,$6A,$0C,$60,$6C,$1C,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$75,$60,$88,$85,$60,$8A,$11,$70,$8C,$21,$70,$8E
	db $35,$70,$A0,$45,$70,$A2,$55,$70,$A4,$65,$70,$A6,$7D,$70,$A8,$8D
	db $70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu3.bin"	; GFXSize = $1680

DATA_C8421A:
	db $2D,$00,$91,$00,$01,$00,$0A,$00,$09,$08,$00,$43,$00,$02,$53,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$12
	db $40,$2A,$22,$40,$2C,$32,$40,$2E,$42,$40,$40,$52,$40,$42,$62,$40
	db $44,$72,$40,$46,$82,$40,$48,$0B,$50,$4A,$1B,$50,$4C,$2B,$50,$4E
	db $3B,$50,$60,$4B,$50,$62,$5B,$50,$64,$6B,$50,$66,$7B,$50,$68,$8B
	db $50,$6A,$09,$60,$6C,$19,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$75,$60,$88,$85,$60,$8A,$0B,$70,$8C,$1B,$70,$8E
	db $35,$70,$A0,$45,$70,$A2,$55,$70,$A4,$65,$70,$A6,$7E,$70,$A8,$8E
	db $70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu4.bin"	; GFXSize = $1680

DATA_C8592B:
	db $2B,$00,$8B,$00,$01,$00,$0A,$00,$09,$08,$00,$43,$00,$02,$53,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$11
	db $40,$2A,$21,$40,$2C,$31,$40,$2E,$41,$40,$40,$51,$40,$42,$61,$40
	db $44,$71,$40,$46,$81,$40,$48,$08,$50,$4A,$18,$50,$4C,$28,$50,$4E
	db $38,$50,$60,$48,$50,$62,$58,$50,$64,$68,$50,$66,$78,$50,$68,$88
	db $50,$6A,$07,$60,$6C,$17,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$75,$60,$88,$85,$60,$8A,$07,$70,$8C,$35,$70,$8E
	db $45,$70,$A0,$55,$70,$A2,$65,$70,$A4,$81,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu5.bin"	; GFXSize = $1580

DATA_C86F36:
	db $2B,$00,$8B,$00,$01,$00,$0A,$00,$09,$08,$00,$43,$00,$02,$53,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$11
	db $40,$2A,$21,$40,$2C,$31,$40,$2E,$41,$40,$40,$51,$40,$42,$61,$40
	db $44,$71,$40,$46,$81,$40,$48,$08,$50,$4A,$18,$50,$4C,$28,$50,$4E
	db $38,$50,$60,$48,$50,$62,$58,$50,$64,$68,$50,$66,$78,$50,$68,$88
	db $50,$6A,$06,$60,$6C,$16,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$76,$60,$88,$86,$60,$8A,$05,$70,$8C,$35,$70,$8E
	db $45,$70,$A0,$55,$70,$A2,$65,$70,$A4,$84,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu6.bin"	; GFXSize = $1580

DATA_C88541:
	db $2C,$00,$8E,$00,$01,$00,$0A,$00,$09,$08,$00,$44,$00,$02,$54,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$12
	db $40,$2A,$22,$40,$2C,$32,$40,$2E,$42,$40,$40,$52,$40,$42,$62,$40
	db $44,$72,$40,$46,$82,$40,$48,$09,$50,$4A,$19,$50,$4C,$29,$50,$4E
	db $39,$50,$60,$49,$50,$62,$59,$50,$64,$69,$50,$66,$79,$50,$68,$89
	db $50,$6A,$06,$60,$6C,$16,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$77,$60,$88,$87,$60,$8A,$04,$70,$8C,$14,$70,$8E
	db $35,$70,$A0,$45,$70,$A2,$55,$70,$A4,$65,$70,$A6,$88,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu7.bin"	; GFXSize = $1600

DATA_C89BCF:
	db $2C,$00,$8E,$00,$01,$00,$0A,$00,$09,$08,$00,$44,$00,$02,$54,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$13
	db $40,$2A,$23,$40,$2C,$33,$40,$2E,$43,$40,$40,$53,$40,$42,$63,$40
	db $44,$73,$40,$46,$83,$40,$48,$0D,$50,$4A,$1D,$50,$4C,$2D,$50,$4E
	db $3D,$50,$60,$4D,$50,$62,$5D,$50,$64,$6D,$50,$66,$7D,$50,$68,$8D
	db $50,$6A,$07,$60,$6C,$17,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$78,$60,$88,$88,$60,$8A,$04,$70,$8C,$14,$70,$8E
	db $35,$70,$A0,$45,$70,$A2,$55,$70,$A4,$65,$70,$A6,$8C,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu8.bin"	; GFXSize = $1600

DATA_C8B25D:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_DATA_C8B25D_Main
.Block1Start:
	%ReadPreCompiledFilePointers(13, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_C8D49A:
	incbin "Graphics/Compressed/GFX_Layer1_LoadersArena.rnc"

	%FREE_BYTES($C8FFFF, 1, $00)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankC9Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_C90000:
	db $25,$00,$79,$00,$01,$00,$0A,$00,$0B,$06,$00,$47,$00,$02,$61,$00
	db $04,$71,$00,$06,$94,$00,$08,$A4,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$38,$10,$22,$48,$10,$24,$58,$10,$26,$68,$10,$28,$78
	db $10,$2A,$88,$10,$2C,$98,$10,$2E,$A8,$10,$40,$01,$20,$42,$11,$20
	db $44,$21,$20,$46,$31,$20,$48,$41,$20,$4A,$51,$20,$4C,$61,$20,$4E
	db $71,$20,$60,$81,$20,$62,$91,$20,$64,$A1,$20,$66,$43,$30,$68,$53
	db $30,$6A,$63,$30,$6C,$90,$30,$6E,$A0,$30,$80,$60,$40,$82,$7C,$40
	db $84,$8C,$40,$86,$72,$50,$88,$82,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarKick5.bin"	; GFXSize = $1280

DATA_C912F9:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$42,$00,$02,$52,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$20,$30,$0E
	db $30,$30,$20,$40,$30,$22,$50,$30,$24,$60,$30,$26,$70,$30,$28,$16
	db $40,$2A,$26,$40,$2C,$36,$40,$2E,$46,$40,$40,$56,$40,$42,$66,$40
	db $44,$76,$40,$46,$86,$40,$48,$14,$50,$4A,$24,$50,$4C,$34,$50,$4E
	db $44,$50,$60,$54,$50,$62,$64,$50,$64,$74,$50,$66,$84,$50,$68,$14
	db $60,$6A,$24,$60,$6C,$35,$60,$6E,$45,$60,$80,$55,$60,$82,$65,$60
	db $84,$77,$60,$86,$87,$60,$88,$1D,$70,$8A,$35,$70,$8C,$45,$70,$8E
	db $55,$70,$A0,$65,$70,$A2,$83,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu1.bin"	; GFXSize = $1500

DATA_C92881:
	db $2B,$00,$8B,$00,$01,$00,$0A,$00,$09,$08,$00,$44,$00,$02,$54,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$14
	db $40,$2A,$24,$40,$2C,$34,$40,$2E,$44,$40,$40,$54,$40,$42,$64,$40
	db $44,$74,$40,$46,$84,$40,$48,$0F,$50,$4A,$1F,$50,$4C,$2F,$50,$4E
	db $3F,$50,$60,$4F,$50,$62,$5F,$50,$64,$6F,$50,$66,$7F,$50,$68,$8F
	db $50,$6A,$09,$60,$6C,$19,$60,$6E,$35,$60,$80,$45,$60,$82,$55,$60
	db $84,$65,$60,$86,$79,$60,$88,$89,$60,$8A,$06,$70,$8C,$16,$70,$8E
	db $35,$70,$A0,$45,$70,$A2,$55,$70,$A4,$65,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu9.bin"	; GFXSize = $1580

DATA_C93E8C:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$44,$00,$02,$54,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$15
	db $40,$2A,$25,$40,$2C,$35,$40,$2E,$45,$40,$40,$55,$40,$42,$65,$40
	db $44,$75,$40,$46,$85,$40,$48,$11,$50,$4A,$21,$50,$4C,$31,$50,$4E
	db $41,$50,$60,$51,$50,$62,$61,$50,$64,$71,$50,$66,$81,$50,$68,$0C
	db $60,$6A,$1C,$60,$6C,$35,$60,$6E,$45,$60,$80,$55,$60,$82,$65,$60
	db $84,$7A,$60,$86,$8A,$60,$88,$09,$70,$8A,$19,$70,$8C,$35,$70,$8E
	db $45,$70,$A0,$55,$70,$A2,$65,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu10.bin"	; GFXSize = $1500

DATA_C95414:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$44,$00,$02,$54,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$15
	db $40,$2A,$25,$40,$2C,$35,$40,$2E,$45,$40,$40,$55,$40,$42,$65,$40
	db $44,$75,$40,$46,$85,$40,$48,$11,$50,$4A,$21,$50,$4C,$31,$50,$4E
	db $41,$50,$60,$51,$50,$62,$61,$50,$64,$71,$50,$66,$81,$50,$68,$0C
	db $60,$6A,$1C,$60,$6C,$35,$60,$6E,$45,$60,$80,$55,$60,$82,$65,$60
	db $84,$7A,$60,$86,$8A,$60,$88,$09,$70,$8A,$19,$70,$8C,$35,$70,$8E
	db $45,$70,$A0,$55,$70,$A2,$65,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu11.bin"	; GFXSize = $1500

DATA_C9699C:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$43,$00,$02,$53,$00
	db $04,$42,$10,$06,$52,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$16
	db $40,$2A,$26,$40,$2C,$36,$40,$2E,$46,$40,$40,$56,$40,$42,$66,$40
	db $44,$76,$40,$46,$86,$40,$48,$12,$50,$4A,$22,$50,$4C,$32,$50,$4E
	db $42,$50,$60,$52,$50,$62,$62,$50,$64,$72,$50,$66,$82,$50,$68,$0F
	db $60,$6A,$1F,$60,$6C,$35,$60,$6E,$45,$60,$80,$55,$60,$82,$65,$60
	db $84,$7A,$60,$86,$8A,$60,$88,$0F,$70,$8A,$1F,$70,$8C,$35,$70,$8E
	db $45,$70,$A0,$55,$70,$A2,$65,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu12.bin"	; GFXSize = $1500

DATA_C97F24:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$43,$00,$02,$53,$00
	db $04,$41,$10,$06,$51,$10,$08,$3E,$20,$0A,$4E,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$37,$40,$2E,$47,$40,$40,$57,$40,$42,$67,$40
	db $44,$77,$40,$46,$87,$40,$48,$14,$50,$4A,$24,$50,$4C,$34,$50,$4E
	db $44,$50,$60,$54,$50,$62,$64,$50,$64,$74,$50,$66,$84,$50,$68,$13
	db $60,$6A,$23,$60,$6C,$35,$60,$6E,$45,$60,$80,$55,$60,$82,$65,$60
	db $84,$7A,$60,$86,$8A,$60,$88,$15,$70,$8A,$25,$70,$8C,$35,$70,$8E
	db $45,$70,$A0,$55,$70,$A2,$65,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu13.bin"	; GFXSize = $1500

DATA_C994AC:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$42,$00,$02,$52,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$37,$40,$2E,$47,$40,$40,$57,$40,$42,$67,$40
	db $44,$77,$40,$46,$87,$40,$48,$15,$50,$4A,$25,$50,$4C,$35,$50,$4E
	db $45,$50,$60,$55,$50,$62,$65,$50,$64,$75,$50,$66,$85,$50,$68,$16
	db $60,$6A,$26,$60,$6C,$36,$60,$6E,$46,$60,$80,$56,$60,$82,$66,$60
	db $84,$7A,$60,$86,$8A,$60,$88,$1C,$70,$8A,$35,$70,$8C,$45,$70,$8E
	db $55,$70,$A0,$65,$70,$A2,$8E,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu14.bin"	; GFXSize = $1500

DATA_C9AA34:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$42,$00,$02,$52,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$1F,$30,$0E
	db $2F,$30,$20,$3F,$30,$22,$4F,$30,$24,$5F,$30,$26,$6F,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$37,$40,$2E,$47,$40,$40,$57,$40,$42,$67,$40
	db $44,$77,$40,$46,$87,$40,$48,$15,$50,$4A,$25,$50,$4C,$35,$50,$4E
	db $45,$50,$60,$55,$50,$62,$65,$50,$64,$75,$50,$66,$85,$50,$68,$18
	db $60,$6A,$28,$60,$6C,$38,$60,$6E,$48,$60,$80,$58,$60,$82,$68,$60
	db $84,$7A,$60,$86,$8A,$60,$88,$22,$70,$8A,$35,$70,$8C,$45,$70,$8E
	db $55,$70,$A0,$65,$70,$A2,$8C,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu15.bin"	; GFXSize = $1500

DATA_C9BFBC:
	db $2A,$00,$88,$00,$01,$00,$0A,$00,$09,$08,$00,$42,$00,$02,$52,$00
	db $04,$41,$10,$06,$51,$10,$08,$3F,$20,$0A,$4F,$20,$0C,$20,$30,$0E
	db $30,$30,$20,$40,$30,$22,$50,$30,$24,$60,$30,$26,$70,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$37,$40,$2E,$47,$40,$40,$57,$40,$42,$67,$40
	db $44,$77,$40,$46,$87,$40,$48,$15,$50,$4A,$25,$50,$4C,$35,$50,$4E
	db $45,$50,$60,$55,$50,$62,$65,$50,$64,$75,$50,$66,$85,$50,$68,$17
	db $60,$6A,$27,$60,$6C,$37,$60,$6E,$47,$60,$80,$57,$60,$82,$67,$60
	db $84,$79,$60,$86,$89,$60,$88,$22,$70,$8A,$35,$70,$8C,$45,$70,$8E
	db $55,$70,$A0,$65,$70,$A2,$87,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_MainMenu17.bin"	; GFXSize = $1500

DATA_C9D544:
	incbin "Graphics/Compressed/GFX_Layer1_MirageScreen.rnc"

DATA_C9EB1A:
	dw $0090 : dd DATA_E35AB0 : dw $0002,$0006,$0070,$003A,$0060
	dw $008F : dd DATA_E41321 : dw $0003,$0005,$0070,$004A,$0050
	dw $0091 : dd DATA_E41849 : dw $0003,$0005,$0070,$004A,$0050
	dw $0091 : dd DATA_E3605B : dw $0003,$0005,$0070,$004A,$0050
	dw $0092 : dd DATA_E41D71 : dw $0003,$0005,$0070,$004A,$0050
	dw $0091 : dd DATA_E42299 : dw $0002,$0005,$006B,$0049,$0050
	dw $008B : dd DATA_E36606 : dw $0003,$0005,$0065,$0048,$0050
	dw $0089 : dd DATA_E28FAB : dw $0003,$0006,$005C,$0038,$0060
	dw $0089 : dd DATA_E295D9 : dw $0005,$0005,$003E,$0049,$0050
	dw $0089 : dd DATA_E1EA33 : dw $0006,$0005,$0036,$004A,$0050
	dw $0087 : dd DATA_E427C1 : dw $0002,$0005,$006E,$0047,$0050
	dw $008B : dd DATA_E42CE9 : dw $0003,$0005,$0065,$0046,$0050
	dw $008C : dd DATA_E29C8A : dw $0004,$0005,$0057,$0047,$0050
	dw $008B : dd DATA_DE9414 : dw $0006,$0005,$002E,$004A,$0050
	dw $008A : dd DATA_DE9C4E : dw $0007,$0004,$0021,$005C,$0040
	dw $0085 : dd DATA_E36BB1 : dw $0003,$0006,$006A,$003A,$0060
	dw $008F : dd DATA_E2A2B8 : dw $0004,$0005,$005E,$004A,$0050
	dw $0094 : dd DATA_E0DB2A : dw $0005,$0005,$004E,$004A,$0050
	dw $0092 : dd DATA_E0E2E1 : dw $0007,$0005,$0031,$0047,$0050
	dw $0092 : dd DATA_E0EA98 : dw $0008,$0004,$001D,$0059,$0040
	dw $008F : dd DATA_E3715C : dw $0002,$0006,$0076,$003A,$0060
	dw $0090 : dd DATA_E37707 : dw $0002,$0006,$0072,$0039,$0060
	dw $008C : dd DATA_E37CB2 : dw $0003,$0006,$0061,$0039,$0060
	dw $008C : dd DATA_E2A8E6 : dw $0005,$0006,$004B,$0039,$0060
	dw $008F : dd DATA_E3825D : dw $0006,$0006,$004A,$0038,$0060
	dw $009E : dd DATA_E2AF14 : dw $0006,$0006,$0064,$0037,$0060
	dw $00B7 : dd DATA_E38808 : dw $0002,$0006,$0076,$0036,$0060
	dw $0093 : dd DATA_E1F167 : dw $0005,$0007,$004C,$0026,$0070
	dw $009C : dd DATA_E2B542 : dw $0005,$0007,$004A,$0027,$0070
	dw $0098 : dd DATA_E43211 : dw $0005,$0006,$0056,$0037,$0060
	dw $0098 : dd DATA_E43739 : dw $0003,$0006,$0064,$0037,$0060
	dw $0090 : dd DATA_E530C8 : dw $0002,$0004,$006D,$0059,$0040
	dw $008D : dd DATA_E53467 : dw $0003,$0004,$0066,$0058,$0040
	dw $008B : dd DATA_E53889 : dw $0003,$0004,$0060,$0059,$0040
	dw $008A : dd DATA_E43C61 : dw $0004,$0003,$005A,$0068,$0030
	dw $008C : dd DATA_E1F89B : dw $0005,$0003,$004A,$0066,$0030
	dw $0099 : dd DATA_DDF4AC : dw $0008,$0005,$002B,$0046,$0050
	dw $00A5 : dd DATA_D8E269 : dw $0009,$0007,$0011,$002E,$0070
	dw $009F : dd DATA_D7DE5B : dw $0009,$0007,$0012,$0029,$0070
	dw $009E : dd DATA_E44106 : dw $0003,$0005,$0070,$0042,$0050
	dw $0091 : dd DATA_E2BB70 : dw $0003,$0006,$006A,$0036,$0060
	dw $008C : dd DATA_E0F24F : dw $0004,$0007,$005F,$0031,$0070
	dw $0099 : dd DATA_D9C17A : dw $0007,$0007,$0051,$003A,$0070
	dw $00B6 : dd DATA_D7E9A7 : dw $0009,$0006,$0045,$004D,$0060
	dw $00D0 : dd DATA_D2D26E : dw $000A,$0006,$003E,$004F,$0060
	dw $00D3 : dd DATA_D57A48 : dw $0009,$0006,$003E,$004C,$0060
	dw $00CB : dd DATA_D5869A : dw $0009,$0006,$0043,$0047,$0060
	dw $00C9 : dd DATA_E53CAB : dw $0003,$0004,$006E,$004F,$0040
	dw $0092 : dd DATA_E4462E : dw $0003,$0005,$0065,$003B,$0050
	dw $0092 : dd DATA_E2C19E : dw $0004,$0006,$0062,$0035,$0060
	dw $0095 : dd DATA_DEA488 : dw $0005,$0005,$004A,$0048,$0050
	dw $009A : dd DATA_DBE00C : dw $0008,$0004,$0028,$004C,$0040
	dw $009F : dd DATA_DCF5A8 : dw $0007,$0004,$003A,$0050,$0040
	dw $00A0 : dd DATA_E44AD3 : dw $0003,$0005,$0068,$0049,$0050
	dw $008B : dd DATA_E2C7CC : dw $0005,$0005,$003E,$0049,$0050
	dw $0082 : dd DATA_DEACC2 : dw $0007,$0005,$001F,$0049,$0050
	dw $0084 : dd DATA_DEB57F : dw $0007,$0005,$0014,$0047,$0050
	dw $0078 : dd DATA_E44F78 : dw $0002,$0005,$0074,$004B,$0050
	dw $0090 : dd DATA_E454A0 : dw $0002,$0005,$0074,$004B,$0050
	dw $0090 : dd DATA_E45945 : dw $0002,$0006,$0074,$003B,$0060
	dw $0090 : dd DATA_E540CD : dw $0002,$0005,$0074,$004A,$0050
	dw $008F : dd DATA_E45DEA : dw $0002,$0006,$0074,$0039,$0060
	dw $008F : dd DATA_E38DB3 : dw $0002,$0006,$0073,$0038,$0060
	dw $008F : dd DATA_E3935E : dw $0002,$0006,$0072,$0038,$0060
	dw $008F : dd DATA_E46312 : dw $0003,$0006,$006E,$0038,$0060
	dw $0090 : dd DATA_E39909 : dw $0003,$0006,$006E,$0036,$0060
	dw $0090 : dd DATA_E2CE7D : dw $0003,$0006,$006D,$0035,$0060
	dw $0090 : dd DATA_E4683A : dw $0003,$0005,$006B,$0042,$0050
	dw $0091 : dd DATA_E46D62 : dw $0003,$0005,$006A,$003F,$0050
	dw $0091 : dd DATA_E47207 : dw $0003,$0005,$0068,$003E,$0050
	dw $0092 : dd DATA_E4772F : dw $0003,$0005,$0067,$003E,$0050
	dw $0092 : dd DATA_E47C57 : dw $0002,$0005,$006E,$0047,$0050
	dw $008B : dd DATA_E4817F : dw $0002,$0006,$0068,$0037,$0060
	dw $0087 : dd DATA_E544EF : dw $0002,$0006,$0066,$0037,$0060
	dw $0084 : dd DATA_E54911 : dw $0002,$0006,$0068,$0038,$0060
	dw $007F : dd DATA_E54D33 : dw $0001,$0006,$006D,$0037,$0060
	dw $007A : dd DATA_E39EB4 : dw $0002,$0006,$0070,$003A,$0060
	dw $008E : dd DATA_E3A45F : dw $0003,$0005,$0071,$0049,$0050
	dw $0093 : dd DATA_E3AA0A : dw $0003,$0005,$0071,$0049,$0050
	dw $0097 : dd DATA_E2D4AB : dw $0003,$0006,$0069,$003A,$0060
	dw $008D : dd DATA_E3AFB5 : dw $0003,$0005,$0064,$004A,$0050
	dw $008F : dd DATA_E3B560 : dw $0003,$0005,$0066,$0049,$0050
	dw $0090 : dd DATA_E3BB0B : dw $0003,$0005,$0068,$0049,$0050
	dw $0091 : dd DATA_E486A7 : dw $0002,$0005,$0072,$004A,$0050
	dw $008D : dd DATA_E48BCF : dw $0002,$0005,$0072,$0049,$0050
	dw $008D : dd DATA_E490F7 : dw $0002,$0005,$0072,$0049,$0050
	dw $008D : dd DATA_E3C0B6 : dw $0003,$0005,$006E,$004A,$0050
	dw $0091 : dd DATA_E4961F : dw $0003,$0005,$006E,$004A,$0050
	dw $0091 : dd DATA_E49B47 : dw $0003,$0004,$006E,$005A,$0040
	dw $0091 : dd DATA_E5504F : dw $0003,$0004,$006F,$005A,$0040
	dw $0090 : dd DATA_E55471 : dw $0002,$0004,$0070,$005A,$0040
	dw $008F : dd DATA_E55810 : dw $0001,$0005,$006D,$0048,$0050
	dw $007B : dd DATA_E55AA9 : dw $0001,$0005,$006C,$0048,$0050
	dw $007C : dd DATA_E55D42 : dw $0002,$0004,$006C,$0058,$0040
	dw $007D : dd DATA_E55F58 : dw $0002,$0004,$006B,$0058,$0040
	dw $007F : dd DATA_E561F1 : dw $0002,$0004,$006A,$0058,$0040
	dw $0081 : dd DATA_E56590 : dw $0002,$0004,$0069,$0059,$0040
	dw $0083 : dd DATA_E5692F : dw $0002,$0004,$0068,$0059,$0040
	dw $0086 : dd DATA_E56CCE : dw $0003,$0003,$0067,$0069,$0030
	dw $0088 : dd DATA_E56FEA : dw $0003,$0003,$0066,$0069,$0030
	dw $008A : dd DATA_E57306 : dw $0003,$0003,$0065,$006A,$0030
	dw $008C : dd DATA_E576A5 : dw $0003,$0003,$0064,$006A,$0030
	dw $008E : dd DATA_E57A44 : dw $0003,$0003,$0063,$006B,$0030
	dw $008F : dd DATA_E57E66 : dw $0003,$0003,$0062,$006B,$0030
	dw $0091 : dd DATA_E58288 : dw $0003,$0003,$0062,$006B,$0030
	dw $0092 : dd DATA_E586AA : dw $0004,$0003,$0061,$006C,$0030
	dw $0093 : dd DATA_E58ACC : dw $0004,$0003,$0060,$006C,$0030
	dw $0095 : dd DATA_E58EEE : dw $0004,$0003,$005F,$006D,$0030
	dw $0096 : dd DATA_E59310 : dw $0004,$0002,$005E,$007D,$0020
	dw $0097 : dd DATA_E596AF : dw $0004,$0002,$005C,$007E,$0020
	dw $0099 : dd DATA_E4A06F : dw $0005,$0002,$0059,$007E,$0020
	dw $009A : dd DATA_E4A514 : dw $0005,$0002,$0057,$007F,$0020
	dw $009B : dd DATA_E4A9B9 : dw $0005,$0002,$0055,$0080,$0020
	dw $009D : dd DATA_E4AE5E : dw $0005,$0002,$0053,$0080,$0020
	dw $009E : dd DATA_E4B303 : dw $0005,$0002,$0052,$0081,$0020
	dw $009F : dd DATA_E4B7A8 : dw $0005,$0002,$0050,$0081,$0020
	dw $00A0 : dd DATA_E3C661 : dw $0006,$0002,$004E,$0082,$0020
	dw $00A1 : dd DATA_E3CC0C : dw $0006,$0002,$004D,$0082,$0020
	dw $00A2 : dd DATA_E3D1B7 : dw $0006,$0002,$004C,$0082,$0020
	dw $00A3 : dd DATA_E3D762 : dw $0006,$0002,$004B,$0083,$0020
	dw $00A3 : dd DATA_E3DD0D : dw $0006,$0002,$004A,$0083,$0020
	dw $00A4 : dd DATA_E3E2B8 : dw $0006,$0002,$0049,$0083,$0020
	dw $00A5 : dd DATA_E3E863 : dw $0006,$0002,$0049,$0083,$0020
	dw $00A5 : dd DATA_E3EE0E : dw $0006,$0002,$0048,$0083,$0020
	dw $00A6 : dd DATA_E3F3B9 : dw $0006,$0002,$0048,$0084,$0020
	dw $00A6 : dd DATA_E3F964 : dw $0006,$0002,$0047,$0084,$0020
	dw $00A7 : dd DATA_E2DAD9 : dw $0007,$0002,$0046,$0084,$0020
	dw $00A7 : dd DATA_E2E107 : dw $0007,$0002,$0046,$0084,$0020
	dw $00A7 : dd DATA_E2E735 : dw $0007,$0002,$0046,$0084,$0020
	dw $00A7 : dd DATA_E2ED63 : dw $0007,$0002,$0046,$0084,$0020
	dw $00A8 : dd DATA_E2F391 : dw $0007,$0002,$0045,$0084,$0020
	dw $00A8 : dd DATA_E2F9BF : dw $0007,$0002,$0045,$0084,$0020
	dw $00A8 : dd DATA_E4BC4D : dw $0003,$0005,$006C,$004B,$0050
	dw $0095 : dd DATA_E4C1F8 : dw $0004,$0005,$0065,$0048,$0050
	dw $009B : dd DATA_E4C7A3 : dw $0004,$0004,$005F,$0050,$0040
	dw $009F : dd DATA_E4CD4E : dw $0005,$0003,$005F,$0061,$0030
	dw $00A2 : dd DATA_E4D2F9 : dw $0005,$0003,$0062,$0067,$0030
	dw $00A4 : dd DATA_E4D821 : dw $0005,$0003,$0066,$006A,$0030
	dw $00A9 : dd DATA_E4DD49 : dw $0005,$0003,$0069,$0061,$0030
	dw $00B5 : dd DATA_E4E1EE : dw $0006,$0002,$006A,$006F,$0020
	dw $00BB : dd DATA_E59A4E : dw $0006,$0002,$0068,$006E,$0020
	dw $00BD : dd DATA_E4E693 : dw $0006,$0002,$0065,$0073,$0020
	dw $00B8 : dd DATA_E4EBBB : dw $0006,$0002,$0065,$0077,$0020
	dw $00B8 : dd DATA_E4F0E3 : dw $0006,$0002,$0064,$007E,$0020
	dw $00B9

DATA_C9F41C:
	incbin "Graphics/Compressed/GFX_Sprite_Battle2Text.bin"

	%InsertGarbageData($C9F64A, incbin, UNK_C9F64A.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankCAMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_CA0000:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$12,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$08,$30,$0E
	db $18,$30,$20,$28,$30,$22,$07,$40,$24,$22,$40,$26,$05,$50,$28,$23
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandIdle2.bin"	; GFXSize = $680

DATA_CA06B1:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$0A,$05,$00,$39,$00,$02,$76,$00
	db $04,$2F,$10,$06,$3F,$10,$08,$4F,$10,$0A,$5F,$10,$0C,$6F,$10,$0E
	db $81,$10,$20,$91,$10,$22,$1C,$20,$24,$2C,$20,$26,$3C,$20,$28,$4C
	db $20,$2A,$5C,$20,$2C,$6C,$20,$2E,$7C,$20,$40,$8C,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $60,$30,$60,$70,$30,$62,$00,$40,$64,$10,$40,$66,$20,$40,$68,$30
	db $40,$6A,$55,$40,$6C,$65,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckKick3.bin"	; GFXSize = $F80

DATA_CA1698:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$08,$06,$00,$62,$00,$02,$31,$10
	db $04,$41,$10,$06,$51,$10,$08,$61,$10,$0A,$71,$10,$0C,$09,$20,$0E
	db $24,$20,$20,$34,$20,$22,$44,$20,$24,$54,$20,$26,$64,$20,$28,$74
	db $20,$2A,$0D,$30,$2C,$1D,$30,$2E,$2D,$30,$40,$3D,$30,$42,$4D,$30
	db $44,$5D,$30,$46,$6D,$30,$48,$7D,$30,$4A,$00,$40,$4C,$10,$40,$4E
	db $33,$40,$60,$43,$40,$62,$53,$40,$64,$63,$40,$66,$32,$50,$68,$42
	db $50,$6A,$57,$50,$6C,$67,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckPunch2.bin"	; GFXSize = $F80

DATA_CA267F:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$09,$06,$00,$6D,$00,$02,$0F,$10
	db $04,$3D,$10,$06,$4D,$10,$08,$6B,$10,$0A,$7B,$10,$0C,$0F,$20,$0E
	db $27,$20,$20,$37,$20,$22,$47,$20,$24,$57,$20,$26,$67,$20,$28,$77
	db $20,$2A,$87,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$60,$30,$4A,$73,$30,$4C,$83,$30,$4E
	db $3B,$40,$60,$4B,$40,$62,$5B,$40,$64,$6B,$40,$66,$45,$50,$68,$55
	db $50,$6A,$65,$50,$6C,$75,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckPunch3.bin"	; GFXSize = $F80

DATA_CA3666:
	db $21,$00,$6D,$00,$01,$00,$0A,$00,$09,$06,$00,$57,$00,$02,$71,$00
	db $04,$11,$10,$06,$32,$10,$08,$42,$10,$0A,$52,$10,$0C,$6A,$10,$0E
	db $7A,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$60,$20,$2E,$70,$20,$40,$80,$20,$42,$00,$30
	db $44,$10,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$60,$30,$4E
	db $71,$30,$60,$81,$30,$62,$3A,$40,$64,$4A,$40,$66,$5A,$40,$68,$6A
	db $40,$6A,$7A,$40,$6C,$53,$50,$6E,$63,$50,$80,$73,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckPunch4.bin"	; GFXSize = $1080

DATA_CA4753:
	db $20,$00,$6A,$00,$01,$00,$0A,$00,$0A,$05,$00,$42,$00,$02,$52,$00
	db $04,$74,$00,$06,$84,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$60,$10,$26,$70,$10,$28,$80
	db $10,$2A,$90,$10,$2C,$00,$20,$2E,$10,$20,$40,$20,$20,$42,$30,$20
	db $44,$40,$20,$46,$50,$20,$48,$60,$20,$4A,$70,$20,$4C,$80,$20,$4E
	db $90,$20,$60,$3A,$30,$62,$4A,$30,$64,$5A,$30,$66,$6A,$30,$68,$7A
	db $30,$6A,$53,$40,$6C,$64,$40,$6E,$74,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckPunch5.bin"	; GFXSize = $1000

DATA_CA57BD:
	db $21,$00,$6D,$00,$01,$00,$0A,$00,$07,$07,$00,$4E,$00,$02,$5E,$00
	db $04,$2A,$10,$06,$42,$10,$08,$55,$10,$0A,$1A,$20,$0C,$2A,$20,$0E
	db $3A,$20,$20,$4A,$20,$22,$5A,$20,$24,$6A,$20,$26,$01,$30,$28,$11
	db $30,$2A,$21,$30,$2C,$31,$30,$2E,$41,$30,$40,$51,$30,$42,$61,$30
	db $44,$00,$40,$46,$10,$40,$48,$20,$40,$4A,$57,$40,$4C,$67,$40,$4E
	db $02,$50,$60,$12,$50,$62,$22,$50,$64,$34,$50,$66,$44,$50,$68,$54
	db $50,$6A,$01,$60,$6C,$11,$60,$6E,$29,$60,$80,$39,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarKick2.bin"	; GFXSize = $1080

DATA_CA68AA:
	db $21,$00,$6D,$00,$01,$00,$0A,$00,$07,$06,$00,$3E,$00,$02,$4E,$00
	db $04,$23,$10,$06,$33,$10,$08,$43,$10,$0A,$53,$10,$0C,$63,$10,$0E
	db $06,$20,$20,$16,$20,$22,$26,$20,$24,$36,$20,$26,$46,$20,$28,$56
	db $20,$2A,$66,$20,$2C,$09,$30,$2E,$19,$30,$40,$29,$30,$42,$39,$30
	db $44,$56,$30,$46,$02,$40,$48,$12,$40,$4A,$22,$40,$4C,$32,$40,$4E
	db $48,$40,$60,$58,$40,$62,$68,$40,$64,$00,$50,$66,$10,$50,$68,$20
	db $50,$6A,$30,$50,$6C,$48,$50,$6E,$58,$50,$80,$68,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Dead5.bin"	; GFXSize = $1080

DATA_CA7997:
	db $22,$00,$70,$00,$01,$00,$0A,$00,$07,$06,$00,$3A,$00,$02,$4A,$00
	db $04,$5A,$00,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$50,$10,$0E
	db $60,$10,$20,$15,$20,$22,$25,$20,$24,$35,$20,$26,$45,$20,$28,$55
	db $20,$2A,$65,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$58,$30,$48,$04,$40,$4A,$14,$40,$4C,$24,$40,$4E
	db $34,$40,$60,$4B,$40,$62,$5B,$40,$64,$6B,$40,$66,$02,$50,$68,$12
	db $50,$6A,$22,$50,$6C,$32,$50,$6E,$4B,$50,$80,$5B,$50,$82,$6E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Dead6.bin"	; GFXSize = $1100

DATA_CA8B07:
	db $20,$00,$6A,$00,$01,$00,$0A,$00,$09,$05,$00,$32,$00,$02,$42,$00
	db $04,$52,$00,$06,$62,$00,$08,$72,$00,$0A,$2A,$10,$0C,$3A,$10,$0E
	db $4A,$10,$20,$5A,$10,$22,$6A,$10,$24,$7A,$10,$26,$0D,$20,$28,$1D
	db $20,$2A,$2D,$20,$2C,$3D,$20,$2E,$4D,$20,$40,$5D,$20,$42,$6D,$20
	db $44,$00,$30,$46,$10,$30,$48,$20,$30,$4A,$30,$30,$4C,$4E,$30,$4E
	db $5E,$30,$60,$6E,$30,$62,$7E,$30,$64,$06,$40,$66,$1A,$40,$68,$4E
	db $40,$6A,$5E,$40,$6C,$71,$40,$6E,$81,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch6.bin"	; GFXSize = $1000

DATA_CA9B71:
	db $21,$00,$6D,$00,$01,$00,$0A,$00,$09,$05,$00,$39,$00,$02,$49,$00
	db $04,$59,$00,$06,$69,$00,$08,$79,$00,$0A,$2F,$10,$0C,$3F,$10,$0E
	db $4F,$10,$20,$5F,$10,$22,$6F,$10,$24,$7F,$10,$26,$0E,$20,$28,$1E
	db $20,$2A,$2E,$20,$2C,$3E,$20,$2E,$4E,$20,$40,$5E,$20,$42,$6E,$20
	db $44,$00,$30,$46,$10,$30,$48,$20,$30,$4A,$30,$30,$4C,$54,$30,$4E
	db $64,$30,$60,$74,$30,$62,$84,$30,$64,$02,$40,$66,$12,$40,$68,$22
	db $40,$6A,$54,$40,$6C,$64,$40,$6E,$77,$40,$80,$87,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch7.bin"	; GFXSize = $1080

DATA_CAAC5E:
	db $22,$00,$70,$00,$01,$00,$0A,$00,$09,$05,$00,$3A,$00,$02,$4A,$00
	db $04,$5A,$00,$06,$6A,$00,$08,$7A,$00,$0A,$30,$10,$0C,$40,$10,$0E
	db $50,$10,$20,$60,$10,$22,$70,$10,$24,$80,$10,$26,$0D,$20,$28,$1D
	db $20,$2A,$2D,$20,$2C,$3D,$20,$2E,$4D,$20,$40,$5D,$20,$42,$6D,$20
	db $44,$7D,$20,$46,$00,$30,$48,$10,$30,$4A,$20,$30,$4C,$30,$30,$4E
	db $55,$30,$60,$65,$30,$62,$75,$30,$64,$85,$30,$66,$02,$40,$68,$12
	db $40,$6A,$22,$40,$6C,$56,$40,$6E,$66,$40,$80,$78,$40,$82,$88,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch8.bin"	; GFXSize = $1100

DATA_CABDCE:
	db $20,$00,$6A,$00,$01,$00,$0A,$00,$06,$06,$00,$3A,$00,$02,$4A,$00
	db $04,$07,$10,$06,$17,$10,$08,$27,$10,$0A,$37,$10,$0C,$47,$10,$0E
	db $57,$10,$20,$02,$20,$22,$12,$20,$24,$22,$20,$26,$32,$20,$28,$42
	db $20,$2A,$52,$20,$2C,$01,$30,$2E,$11,$30,$40,$21,$30,$42,$31,$30
	db $44,$41,$30,$46,$51,$30,$48,$00,$40,$4A,$10,$40,$4C,$27,$40,$4E
	db $37,$40,$60,$47,$40,$62,$57,$40,$64,$03,$50,$66,$13,$50,$68,$23
	db $50,$6A,$33,$50,$6C,$45,$50,$6E,$55,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarKick1.bin"	; GFXSize = $1000

DATA_CACE38:
	db $21,$00,$6D,$00,$01,$00,$0A,$00,$08,$07,$00,$3A,$00,$02,$2E,$10
	db $04,$3E,$10,$06,$4E,$10,$08,$5E,$10,$0A,$6E,$10,$0C,$0C,$20,$0E
	db $1C,$20,$20,$2C,$20,$22,$3C,$20,$24,$4C,$20,$26,$5C,$20,$28,$6C
	db $20,$2A,$7C,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$60,$30,$4A,$70,$30,$4C,$01,$40,$4E
	db $45,$40,$60,$55,$40,$62,$65,$40,$64,$44,$50,$66,$5E,$50,$68,$6E
	db $50,$6A,$3C,$60,$6C,$4C,$60,$6E,$60,$60,$80,$70,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarKick4.bin"	; GFXSize = $1080

DATA_CADF25:
	db $20,$00,$6A,$00,$01,$00,$0A,$00,$08,$07,$00,$44,$00,$02,$37,$10
	db $04,$47,$10,$06,$57,$10,$08,$67,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$60,$20,$28,$70
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$40,$30
	db $44,$50,$30,$46,$60,$30,$48,$70,$30,$4A,$41,$40,$4C,$51,$40,$4E
	db $61,$40,$60,$71,$40,$62,$4C,$50,$64,$67,$50,$66,$77,$50,$68,$44
	db $60,$6A,$54,$60,$6C,$68,$60,$6E,$78,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarKick5.bin"	; GFXSize = $1000

DATA_CAEF8F:
	incbin "Palettes/PAL_Sprite_Ape.tpl":$04..$24

DATA_CAEFAF:
	incbin "Palettes/PAL_Sprite_Military.tpl":$04..$24

DATA_CAEFCF:
	dw $1000
	incbin "Graphics/GFX_Layer2_SmallFonts.bin"

	%InsertGarbageData($CAFFF1, incbin, UNK_CAFFF1.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankCBMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_CB0000:
	incbin "UnknownData/DATA_CB0000.rnc"

DATA_CB0F82:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$09,$06,$00,$50,$00,$02,$77,$00
	db $04,$00,$10,$06,$10,$10,$08,$3D,$10,$0A,$4D,$10,$0C,$5D,$10,$0E
	db $6D,$10,$20,$7D,$10,$22,$0D,$20,$24,$1D,$20,$26,$2D,$20,$28,$3D
	db $20,$2A,$4D,$20,$2C,$5D,$20,$2E,$6D,$20,$40,$7D,$20,$42,$07,$30
	db $44,$17,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$60,$30,$4E
	db $70,$30,$60,$80,$30,$62,$43,$40,$64,$53,$40,$66,$63,$40,$68,$73
	db $40,$6A,$53,$50,$6C,$63,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarPunch3.bin"	; GFXSize = $F80

DATA_CB1F69:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$06,$00,$26,$00,$02,$06,$10
	db $04,$17,$10,$06,$27,$10,$08,$37,$10,$0A,$47,$10,$0C,$57,$10,$0E
	db $67,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$60,$20,$2E,$09,$30,$40,$1D,$30,$42,$2D,$30
	db $44,$3D,$30,$46,$4D,$30,$48,$5D,$30,$4A,$0F,$40,$4C,$1F,$40,$4E
	db $36,$40,$60,$46,$40,$62,$56,$40,$64,$10,$50,$66,$2F,$50,$68,$3F
	db $50,$6A,$4F,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_LowBlowHurt4.bin"	; GFXSize = $F00

DATA_CB2ECD:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$08,$06,$00,$61,$00,$02,$2E,$10
	db $04,$3E,$10,$06,$4E,$10,$08,$5E,$10,$0A,$6E,$10,$0C,$21,$20,$0E
	db $31,$20,$20,$41,$20,$22,$51,$20,$24,$61,$20,$26,$71,$20,$28,$01
	db $30,$2A,$11,$30,$2C,$21,$30,$2E,$31,$30,$40,$41,$30,$42,$51,$30
	db $44,$61,$30,$46,$71,$30,$48,$00,$40,$4A,$10,$40,$4C,$20,$40,$4E
	db $30,$40,$60,$40,$40,$62,$50,$40,$64,$60,$40,$66,$19,$50,$68,$35
	db $50,$6A,$45,$50,$6C,$55,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Dead3.bin"	; GFXSize = $F80

DATA_CB3EB4:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$08,$06,$00,$36,$00,$02,$05,$10
	db $04,$1A,$10,$06,$2A,$10,$08,$3A,$10,$0A,$4A,$10,$0C,$5A,$10,$0E
	db $6C,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$60,$20,$2E,$70,$20,$40,$04,$30,$42,$14,$30
	db $44,$24,$30,$46,$34,$30,$48,$44,$30,$4A,$59,$30,$4C,$69,$30,$4E
	db $25,$40,$60,$35,$40,$62,$45,$40,$64,$55,$40,$66,$65,$40,$68,$26
	db $50,$6A,$36,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandBlock2.bin"	; GFXSize = $F00

DATA_CB4E18:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$09,$06,$00,$4A,$00,$02,$34,$10
	db $04,$44,$10,$06,$54,$10,$08,$64,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $27,$20,$20,$37,$20,$22,$47,$20,$24,$57,$20,$26,$67,$20,$28,$77
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$40,$30
	db $44,$50,$30,$46,$60,$30,$48,$70,$30,$4A,$80,$30,$4C,$07,$40,$4E
	db $17,$40,$60,$39,$40,$62,$49,$40,$64,$59,$40,$66,$69,$40,$68,$39
	db $50,$6A,$49,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab6.bin"	; GFXSize = $F00

DATA_CB5D7C:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$08,$08,$00,$35,$00,$02,$45,$00
	db $04,$64,$00,$06,$36,$10,$08,$46,$10,$0A,$56,$10,$0C,$66,$10,$0E
	db $1F,$20,$20,$2F,$20,$22,$3F,$20,$24,$4F,$20,$26,$5F,$20,$28,$6F
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$40,$30
	db $44,$50,$30,$46,$60,$30,$48,$70,$30,$4A,$02,$40,$4C,$12,$40,$4E
	db $22,$40,$60,$4E,$40,$62,$5E,$40,$64,$56,$50,$66,$55,$60,$68,$50
	db $70,$6A,$60,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarKick4.bin"	; GFXSize = $F00

DATA_CB6CE0:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$07,$07,$00,$28,$00,$02,$3F,$00
	db $04,$4F,$00,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$4C,$10,$0E
	db $5C,$10,$20,$01,$20,$22,$11,$20,$24,$21,$20,$26,$31,$20,$28,$41
	db $20,$2A,$51,$20,$2C,$61,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$64,$30,$4C,$06,$40,$4E
	db $3C,$40,$60,$4C,$40,$62,$67,$40,$64,$3A,$50,$66,$4A,$50,$68,$5A
	db $50,$6A,$3C,$60,$6C,$4C,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick6.bin"	; GFXSize = $F80

DATA_CB7CC7:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$05,$00,$0B,$00,$02,$1B,$00
	db $04,$2B,$00,$06,$3B,$00,$08,$4B,$00,$0A,$08,$10,$0C,$18,$10,$0E
	db $28,$10,$20,$38,$10,$22,$48,$10,$24,$58,$10,$26,$01,$20,$28,$11
	db $20,$2A,$21,$20,$2C,$31,$20,$2E,$41,$20,$40,$51,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $60,$30,$60,$01,$40,$62,$11,$40,$64,$21,$40,$66,$31,$40,$68,$4D
	db $40,$6A,$5D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarPunch1.bin"	; GFXSize = $F00

DATA_CB8C2B:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$05,$00,$16,$00,$02,$26,$00
	db $04,$36,$00,$06,$46,$00,$08,$56,$00,$0A,$0D,$10,$0C,$1D,$10,$0E
	db $2D,$10,$20,$3D,$10,$22,$4D,$10,$24,$5D,$10,$26,$04,$20,$28,$14
	db $20,$2A,$24,$20,$2C,$34,$20,$2E,$44,$20,$40,$54,$20,$42,$01,$30
	db $44,$11,$30,$46,$2A,$30,$48,$3A,$30,$4A,$4A,$30,$4C,$5A,$30,$4E
	db $00,$40,$60,$10,$40,$62,$2A,$40,$64,$3A,$40,$66,$4A,$40,$68,$5A
	db $40,$6A,$6A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk1.bin"	; GFXSize = $F00

DATA_CB9B8F:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$06,$06,$00,$0B,$00,$02,$1B,$00
	db $04,$2B,$00,$06,$3B,$00,$08,$0A,$10,$0A,$1A,$10,$0C,$2A,$10,$0E
	db $3A,$10,$20,$0A,$20,$22,$1A,$20,$24,$2A,$20,$26,$3A,$20,$28,$4A
	db $20,$2A,$01,$30,$2C,$11,$30,$2E,$21,$30,$40,$31,$30,$42,$41,$30
	db $44,$51,$30,$46,$00,$40,$48,$10,$40,$4A,$20,$40,$4C,$30,$40,$4E
	db $44,$40,$60,$54,$40,$62,$08,$50,$64,$18,$50,$66,$28,$50,$68,$38
	db $50,$6A,$48,$50,$6C,$58,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch14.bin"	; GFXSize = $F80

DATA_CBAB76:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$06,$06,$00,$1E,$00,$02,$36,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $50,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$03,$40,$4A,$13,$40,$4C,$23,$40,$4E
	db $33,$40,$60,$43,$40,$62,$53,$40,$64,$07,$50,$66,$17,$50,$68,$27
	db $50,$6A,$41,$50,$6C,$51,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Jump1.bin"	; GFXSize = $F80

DATA_CBBB5D:
	db $1F,$00,$67,$00,$01,$00,$0A,$00,$07,$06,$00,$02,$00,$02,$12,$00
	db $04,$4A,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $40,$10,$20,$50,$10,$22,$60,$10,$24,$02,$20,$26,$12,$20,$28,$22
	db $20,$2A,$32,$20,$2C,$42,$20,$2E,$52,$20,$40,$62,$20,$42,$07,$30
	db $44,$17,$30,$46,$27,$30,$48,$37,$30,$4A,$47,$30,$4C,$57,$30,$4E
	db $2B,$40,$60,$3B,$40,$62,$4B,$40,$64,$5B,$40,$66,$2C,$50,$68,$3C
	db $50,$6A,$4E,$50,$6C,$5E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_ClosePunch5.bin"	; GFXSize = $F80

DATA_CBCB44:
	incbin "Palettes/PAL_Sprite_Loader.tpl":$04..$24

DATA_CBCB64:
	incbin "Palettes/PAL_Sprite_Supervisor.tpl":$04..$24

DATA_CBCB84:
	incbin "Graphics/Compressed/GFX_Layer1_LoaderProfileImage.rnc"

DATA_CBDB53:
	incbin "Graphics/Compressed/GFX_Layer1_SentryProfileImage.rnc"

DATA_CBEB20:
	incbin "Graphics/Compressed/GFX_Layer1_CyborgProfileImage.rnc"

DATA_CBFAC7:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame5.bin"

	%InsertGarbageData($CBFFFB, incbin, UNK_CBFFFB.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankCCMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_CC0000:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$05,$00,$33,$00,$02,$44,$00
	db $04,$71,$00,$06,$2B,$10,$08,$3B,$10,$0A,$4B,$10,$0C,$5B,$10,$0E
	db $6B,$10,$20,$0E,$20,$22,$1E,$20,$24,$2E,$20,$26,$3E,$20,$28,$4E
	db $20,$2A,$5E,$20,$2C,$6E,$20,$2E,$07,$30,$40,$17,$30,$42,$27,$30
	db $44,$37,$30,$46,$47,$30,$48,$57,$30,$4A,$67,$30,$4C,$77,$30,$4E
	db $00,$40,$60,$10,$40,$62,$20,$40,$64,$50,$40,$66,$60,$40,$68,$70
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckKick2.bin"	; GFXSize = $E80

DATA_CC0EE1:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$07,$06,$00,$14,$00,$02,$24,$00
	db $04,$50,$00,$06,$17,$10,$08,$27,$10,$0A,$37,$10,$0C,$47,$10,$0E
	db $57,$10,$20,$0A,$20,$22,$1A,$20,$24,$2A,$20,$26,$3A,$20,$28,$4A
	db $20,$2A,$5A,$20,$2C,$03,$30,$2E,$13,$30,$40,$23,$30,$42,$33,$30
	db $44,$43,$30,$46,$53,$30,$48,$63,$30,$4A,$00,$40,$4C,$10,$40,$4E
	db $20,$40,$60,$30,$40,$62,$40,$40,$64,$16,$50,$66,$26,$50,$68,$36
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Jump2.bin"	; GFXSize = $E80

DATA_CC1DC2:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$07,$06,$00,$21,$00,$02,$31,$00
	db $04,$48,$00,$06,$58,$00,$08,$1F,$10,$0A,$2F,$10,$0C,$3F,$10,$0E
	db $4F,$10,$20,$5F,$10,$22,$13,$20,$24,$23,$20,$26,$33,$20,$28,$43
	db $20,$2A,$53,$20,$2C,$63,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$01,$40,$4C,$11,$40,$4E
	db $21,$40,$60,$31,$40,$62,$41,$40,$64,$51,$40,$66,$19,$50,$68,$29
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Jump3.bin"	; GFXSize = $E80

DATA_CC2CA3:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$07,$05,$00,$12,$00,$02,$22,$00
	db $04,$32,$00,$06,$42,$00,$08,$52,$00,$0A,$62,$00,$0C,$00,$10,$0E
	db $10,$10,$20,$20,$10,$22,$30,$10,$24,$40,$10,$26,$50,$10,$28,$60
	db $10,$2A,$09,$20,$2C,$19,$20,$2E,$29,$20,$40,$39,$20,$42,$49,$20
	db $44,$59,$20,$46,$14,$30,$48,$24,$30,$4A,$3B,$30,$4C,$4B,$30,$4E
	db $5B,$30,$60,$12,$40,$62,$22,$40,$64,$34,$40,$66,$44,$40,$68,$54
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_LowBlowHurt3.bin"	; GFXSize = $E80

DATA_CC3B84:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$07,$05,$00,$26,$00,$02,$36,$00
	db $04,$46,$00,$06,$56,$00,$08,$67,$00,$0A,$03,$10,$0C,$13,$10,$0E
	db $23,$10,$20,$33,$10,$22,$43,$10,$24,$53,$10,$26,$63,$10,$28,$05
	db $20,$2A,$15,$20,$2C,$25,$20,$2E,$35,$20,$40,$45,$20,$42,$55,$20
	db $44,$65,$20,$46,$00,$30,$48,$10,$30,$4A,$20,$30,$4C,$34,$30,$4E
	db $44,$30,$60,$54,$30,$62,$64,$30,$64,$34,$40,$66,$44,$40,$68,$54
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Dead2.bin"	; GFXSize = $E80

DATA_CC4A65:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$06,$00,$56,$00,$02,$3E,$10
	db $04,$4E,$10,$06,$5E,$10,$08,$1E,$20,$0A,$2E,$20,$0C,$3E,$20,$0E
	db $4E,$20,$20,$5E,$20,$22,$6E,$20,$24,$14,$30,$26,$24,$30,$28,$34
	db $30,$2A,$44,$30,$2C,$54,$30,$2E,$64,$30,$40,$04,$40,$42,$14,$40
	db $44,$24,$40,$46,$34,$40,$48,$44,$40,$4A,$54,$40,$4C,$00,$50,$4E
	db $10,$50,$60,$20,$50,$62,$30,$50,$64,$47,$50,$66,$57,$50,$68,$67
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Dead4.bin"	; GFXSize = $E80

DATA_CC5946:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$06,$00,$3A,$00,$02,$26,$10
	db $04,$36,$10,$06,$46,$10,$08,$56,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$60,$20,$28,$70
	db $20,$2A,$0F,$30,$2C,$1F,$30,$2E,$2F,$30,$40,$3F,$30,$42,$4F,$30
	db $44,$5F,$30,$46,$6F,$30,$48,$07,$40,$4A,$17,$40,$4C,$2E,$40,$4E
	db $3E,$40,$60,$4E,$40,$62,$5E,$40,$64,$08,$50,$66,$2E,$50,$68,$3E
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab2.bin"	; GFXSize = $E80

DATA_CC6827:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$06,$00,$3E,$00,$02,$2A,$10
	db $04,$3A,$10,$06,$4A,$10,$08,$5A,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$60,$20,$28,$70
	db $20,$2A,$0C,$30,$2C,$1C,$30,$2E,$2C,$30,$40,$3C,$30,$42,$4C,$30
	db $44,$63,$30,$46,$73,$30,$48,$01,$40,$4A,$11,$40,$4C,$32,$40,$4E
	db $42,$40,$60,$52,$40,$62,$62,$40,$64,$0A,$50,$66,$33,$50,$68,$43
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab3.bin"	; GFXSize = $E80

DATA_CC7708:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$06,$00,$3C,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$3F,$10,$0A,$4F,$10,$0C,$0A,$20,$0E
	db $1A,$20,$20,$2A,$20,$22,$3A,$20,$24,$4A,$20,$26,$5A,$20,$28,$05
	db $30,$2A,$15,$30,$2C,$25,$30,$2E,$35,$30,$40,$45,$30,$42,$55,$30
	db $44,$00,$40,$46,$10,$40,$48,$2B,$40,$4A,$3B,$40,$4C,$4B,$40,$4E
	db $5B,$40,$60,$01,$50,$62,$11,$50,$64,$2D,$50,$66,$3D,$50,$68,$58
	db $50,$6A,$68,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk2.bin"	; GFXSize = $F00

DATA_CC866C:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$06,$00,$26,$00,$02,$36,$00
	db $04,$46,$00,$06,$0B,$10,$08,$1B,$10,$0A,$2B,$10,$0C,$3B,$10,$0E
	db $4B,$10,$20,$08,$20,$22,$18,$20,$24,$28,$20,$26,$38,$20,$28,$48
	db $20,$2A,$06,$30,$2C,$16,$30,$2E,$26,$30,$40,$36,$30,$42,$46,$30
	db $44,$56,$30,$46,$00,$40,$48,$10,$40,$4A,$2B,$40,$4C,$3B,$40,$4E
	db $4B,$40,$60,$5B,$40,$62,$02,$50,$64,$12,$50,$66,$37,$50,$68,$47
	db $50,$6A,$57,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk3.bin"	; GFXSize = $F00

DATA_CC95D0:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$08,$05,$00,$24,$00,$02,$34,$00
	db $04,$44,$00,$06,$54,$00,$08,$64,$00,$0A,$1F,$10,$0C,$2F,$10,$0E
	db $3F,$10,$20,$4F,$10,$22,$5F,$10,$24,$6F,$10,$26,$0A,$20,$28,$1A
	db $20,$2A,$2A,$20,$2C,$3A,$20,$2E,$4A,$20,$40,$5A,$20,$42,$6A,$20
	db $44,$00,$30,$46,$10,$30,$48,$20,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $60,$30,$60,$70,$30,$62,$03,$40,$64,$41,$40,$66,$51,$40,$68,$65
	db $40,$6A,$75,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch5.bin"	; GFXSize = $F00

DATA_CCA534:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$05,$00,$0F,$00,$02,$1F,$00
	db $04,$2F,$00,$06,$3F,$00,$08,$4F,$00,$0A,$08,$10,$0C,$18,$10,$0E
	db $28,$10,$20,$38,$10,$22,$48,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$60,$30,$4E
	db $00,$40,$60,$10,$40,$62,$20,$40,$64,$30,$40,$66,$40,$40,$68,$50
	db $40,$6A,$60,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch1.bin"	; GFXSize = $F00

DATA_CCB498:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$06,$06,$00,$07,$00,$02,$17,$00
	db $04,$27,$00,$06,$37,$00,$08,$47,$00,$0A,$57,$00,$0C,$07,$10,$0E
	db $17,$10,$20,$27,$10,$22,$37,$10,$24,$47,$10,$26,$57,$10,$28,$00
	db $20,$2A,$10,$20,$2C,$20,$20,$2E,$30,$20,$40,$40,$20,$42,$50,$20
	db $44,$00,$30,$46,$10,$30,$48,$21,$30,$4A,$31,$30,$4C,$41,$30,$4E
	db $20,$40,$60,$39,$40,$62,$49,$40,$64,$18,$50,$66,$28,$50,$68,$3C
	db $50,$6A,$4C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarKick3.bin"	; GFXSize = $F00

DATA_CCC3FC:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$06,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$58,$00,$0C,$05,$10,$0E
	db $15,$10,$20,$25,$10,$22,$35,$10,$24,$45,$10,$26,$55,$10,$28,$04
	db $20,$2A,$14,$20,$2C,$24,$20,$2E,$34,$20,$40,$44,$20,$42,$54,$20
	db $44,$00,$30,$46,$10,$30,$48,$25,$30,$4A,$35,$30,$4C,$45,$30,$4E
	db $55,$30,$60,$02,$40,$62,$12,$40,$64,$26,$40,$66,$36,$40,$68,$4C
	db $40,$6A,$5C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Ducking1.bin"	; GFXSize = $F00

DATA_CCD360:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$06,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$58,$00,$0C,$02,$10,$0E
	db $12,$10,$20,$22,$10,$22,$32,$10,$24,$42,$10,$26,$52,$10,$28,$02
	db $20,$2A,$12,$20,$2C,$22,$20,$2E,$32,$20,$40,$42,$20,$42,$52,$20
	db $44,$00,$30,$46,$10,$30,$48,$2C,$30,$4A,$3C,$30,$4C,$4C,$30,$4E
	db $5C,$30,$60,$02,$40,$62,$12,$40,$64,$24,$40,$66,$34,$40,$68,$44
	db $40,$6A,$54,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Ducking2.bin"	; GFXSize = $F00

DATA_CCE2C4:
	db $1E,$00,$64,$00,$01,$00,$0A,$00,$07,$06,$00,$00,$00,$02,$10,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$31,$10,$0C,$41,$10,$0E
	db $51,$10,$20,$61,$10,$22,$03,$20,$24,$13,$20,$26,$23,$20,$28,$33
	db $20,$2A,$43,$20,$2C,$53,$20,$2E,$63,$20,$40,$0E,$30,$42,$1E,$30
	db $44,$2E,$30,$46,$3E,$30,$48,$4E,$30,$4A,$5E,$30,$4C,$30,$40,$4E
	db $40,$40,$60,$50,$40,$62,$60,$40,$64,$33,$50,$66,$43,$50,$68,$55
	db $50,$6A,$65,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_ClosePunch4.bin"	; GFXSize = $F00

DATA_CCF228:
	incbin "Graphics/Compressed/GFX_Layer1_CrusherProfileImage.rnc"

	%InsertGarbageData($CCFFE9, incbin, UNK_CCFFE9.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankCDMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_CD0000:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$06,$00,$41,$00,$02,$2D,$10
	db $04,$3D,$10,$06,$4D,$10,$08,$5D,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $21,$20,$20,$31,$20,$22,$41,$20,$24,$51,$20,$26,$61,$20,$28,$71
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$41,$30
	db $44,$51,$30,$46,$65,$30,$48,$75,$30,$4A,$03,$40,$4C,$13,$40,$4E
	db $34,$40,$60,$44,$40,$62,$54,$40,$64,$64,$40,$66,$35,$50,$68,$45
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab4.bin"	; GFXSize = $E80

DATA_CD0EE1:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$09,$06,$00,$47,$00,$02,$31,$10
	db $04,$41,$10,$06,$51,$10,$08,$61,$10,$0A,$10,$20,$0C,$25,$20,$0E
	db $35,$20,$20,$45,$20,$22,$55,$20,$24,$65,$20,$26,$75,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$50,$30
	db $44,$69,$30,$46,$79,$30,$48,$03,$40,$4A,$13,$40,$4C,$23,$40,$4E
	db $37,$40,$60,$47,$40,$62,$57,$40,$64,$67,$40,$66,$37,$50,$68,$47
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab5.bin"	; GFXSize = $E80

DATA_CD1DC2:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$09,$06,$00,$4B,$00,$02,$34,$10
	db $04,$44,$10,$06,$54,$10,$08,$64,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $27,$20,$20,$37,$20,$22,$47,$20,$24,$57,$20,$26,$67,$20,$28,$77
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$40,$30
	db $44,$50,$30,$46,$60,$30,$48,$70,$30,$4A,$80,$30,$4C,$0C,$40,$4E
	db $38,$40,$60,$48,$40,$62,$58,$40,$64,$68,$40,$66,$38,$50,$68,$48
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab7.bin"	; GFXSize = $E80

DATA_CD2CA3:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$09,$05,$00,$36,$00,$02,$46,$00
	db $04,$56,$00,$06,$66,$00,$08,$02,$10,$0A,$12,$10,$0C,$22,$10,$0E
	db $32,$10,$20,$42,$10,$22,$52,$10,$24,$62,$10,$26,$72,$10,$28,$82
	db $10,$2A,$00,$20,$2C,$10,$20,$2E,$20,$20,$40,$30,$20,$42,$40,$20
	db $44,$50,$20,$46,$60,$20,$48,$70,$20,$4A,$80,$20,$4C,$14,$30,$4E
	db $3A,$30,$60,$4A,$30,$62,$5A,$30,$64,$6A,$30,$66,$3A,$40,$68,$4A
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab9.bin"	; GFXSize = $E80

DATA_CD3B84:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$09,$06,$00,$4B,$00,$02,$34,$10
	db $04,$44,$10,$06,$54,$10,$08,$64,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$33,$20,$22,$43,$20,$24,$53,$20,$26,$63,$20,$28,$73
	db $20,$2A,$83,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$60,$30,$4A,$70,$30,$4C,$80,$30,$4E
	db $39,$40,$60,$49,$40,$62,$59,$40,$64,$69,$40,$66,$39,$50,$68,$49
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab10.bin"	; GFXSize = $E80

DATA_CD4A65:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$09,$06,$00,$47,$00,$02,$32,$10
	db $04,$42,$10,$06,$52,$10,$08,$62,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$33,$20,$22,$43,$20,$24,$53,$20,$26,$63,$20,$28,$73
	db $20,$2A,$83,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$6A,$30,$4A,$7A,$30,$4C,$01,$40,$4E
	db $38,$40,$60,$48,$40,$62,$58,$40,$64,$68,$40,$66,$38,$50,$68,$48
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab11.bin"	; GFXSize = $E80

DATA_CD5946:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$06,$00,$42,$00,$02,$2E,$10
	db $04,$3E,$10,$06,$4E,$10,$08,$5E,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $22,$20,$20,$32,$20,$22,$42,$20,$24,$52,$20,$26,$62,$20,$28,$72
	db $20,$2A,$0A,$30,$2C,$1A,$30,$2E,$2A,$30,$40,$3A,$30,$42,$4A,$30
	db $44,$5A,$30,$46,$6A,$30,$48,$7A,$30,$4A,$00,$40,$4C,$10,$40,$4E
	db $35,$40,$60,$45,$40,$62,$55,$40,$64,$65,$40,$66,$36,$50,$68,$46
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab12.bin"	; GFXSize = $E80

DATA_CD6827:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$06,$00,$3E,$00,$02,$2A,$10
	db $04,$3A,$10,$06,$4A,$10,$08,$5A,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$60,$20,$28,$70
	db $20,$2A,$0C,$30,$2C,$1C,$30,$2E,$2C,$30,$40,$3C,$30,$42,$4C,$30
	db $44,$62,$30,$46,$72,$30,$48,$01,$40,$4A,$11,$40,$4C,$32,$40,$4E
	db $42,$40,$60,$52,$40,$62,$62,$40,$64,$0A,$50,$66,$32,$50,$68,$42
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab13.bin"	; GFXSize = $E80

DATA_CD7708:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$08,$00,$3C,$00,$02,$4C,$00
	db $04,$5C,$00,$06,$02,$10,$08,$12,$10,$0A,$22,$10,$0C,$32,$10,$0E
	db $42,$10,$20,$52,$10,$22,$62,$10,$24,$72,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$60,$20
	db $44,$70,$20,$46,$43,$30,$48,$53,$30,$4A,$63,$30,$4C,$73,$30,$4E
	db $52,$40,$60,$62,$40,$62,$56,$50,$64,$51,$60,$66,$4E,$70,$68,$5E
	db $70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarKick5.bin"	; GFXSize = $E80

DATA_CD85E9:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$08,$07,$00,$39,$00,$02,$49,$00
	db $04,$5B,$00,$06,$00,$10,$08,$10,$10,$0A,$23,$10,$0C,$33,$10,$0E
	db $43,$10,$20,$53,$10,$22,$65,$10,$24,$01,$20,$26,$11,$20,$28,$21
	db $20,$2A,$31,$20,$2C,$41,$20,$2E,$51,$20,$40,$61,$20,$42,$71,$20
	db $44,$05,$30,$46,$2B,$30,$48,$3B,$30,$4A,$4B,$30,$4C,$5B,$30,$4E
	db $6B,$30,$60,$4E,$40,$62,$67,$40,$64,$4B,$50,$66,$5B,$50,$68,$4D
	db $60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick5.bin"	; GFXSize = $E80

DATA_CD94CA:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$05,$06,$00,$07,$00,$02,$17,$00
	db $04,$27,$00,$06,$37,$00,$08,$47,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$02,$20,$26,$12,$20,$28,$22
	db $20,$2A,$32,$20,$2C,$42,$20,$2E,$09,$30,$40,$19,$30,$42,$29,$30
	db $44,$39,$30,$46,$49,$30,$48,$05,$40,$4A,$15,$40,$4C,$25,$40,$4E
	db $35,$40,$60,$45,$40,$62,$06,$50,$64,$16,$50,$66,$3D,$50,$68,$4D
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk7.bin"	; GFXSize = $E80

DATA_CDA3AB:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$06,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$06,$10,$0C,$16,$10,$0E
	db $26,$10,$20,$36,$10,$22,$46,$10,$24,$56,$10,$26,$04,$20,$28,$14
	db $20,$2A,$24,$20,$2C,$34,$20,$2E,$44,$20,$40,$54,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $00,$40,$60,$10,$40,$62,$21,$40,$64,$31,$40,$66,$41,$40,$68,$51
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch1.bin"	; GFXSize = $E80

DATA_CDB28C:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$06,$05,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$49,$00,$0A,$07,$10,$0C,$17,$10,$0E
	db $27,$10,$20,$37,$10,$22,$47,$10,$24,$57,$10,$26,$03,$20,$28,$13
	db $20,$2A,$23,$20,$2C,$33,$20,$2E,$43,$20,$40,$53,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $00,$40,$60,$10,$40,$62,$22,$40,$64,$32,$40,$66,$42,$40,$68,$52
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch2.bin"	; GFXSize = $E80

DATA_CDC16D:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$07,$05,$00,$0F,$00,$02,$1F,$00
	db $04,$2F,$00,$06,$3F,$00,$08,$4F,$00,$0A,$0D,$10,$0C,$1D,$10,$0E
	db $2D,$10,$20,$3D,$10,$22,$4D,$10,$24,$5D,$10,$26,$08,$20,$28,$18
	db $20,$2A,$28,$20,$2C,$38,$20,$2E,$48,$20,$40,$58,$20,$42,$01,$30
	db $44,$11,$30,$46,$29,$30,$48,$39,$30,$4A,$49,$30,$4C,$59,$30,$4E
	db $00,$40,$60,$10,$40,$62,$2A,$40,$64,$3A,$40,$66,$4A,$40,$68,$5A
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch3.bin"	; GFXSize = $E80

DATA_CDD04E:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$06,$05,$00,$12,$00,$02,$22,$00
	db $04,$32,$00,$06,$42,$00,$08,$52,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$00,$30
	db $44,$10,$30,$46,$28,$30,$48,$38,$30,$4A,$48,$30,$4C,$58,$30,$4E
	db $02,$40,$60,$12,$40,$62,$22,$40,$64,$32,$40,$66,$42,$40,$68,$52
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Ducking3.bin"	; GFXSize = $E80

DATA_CDDF2F:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$06,$05,$00,$18,$00,$02,$28,$00
	db $04,$38,$00,$06,$48,$00,$08,$58,$00,$0A,$02,$10,$0C,$12,$10,$0E
	db $22,$10,$20,$32,$10,$22,$42,$10,$24,$52,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$01,$30
	db $44,$11,$30,$46,$23,$30,$48,$33,$30,$4A,$43,$30,$4C,$53,$30,$4E
	db $04,$40,$60,$14,$40,$62,$24,$40,$64,$34,$40,$66,$44,$40,$68,$54
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Ducking4.bin"	; GFXSize = $E80

DATA_CDEE10:
	db $1D,$00,$61,$00,$01,$00,$0A,$00,$06,$05,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$09,$10,$0C,$19,$10,$0E
	db $29,$10,$20,$39,$10,$22,$49,$10,$24,$59,$10,$26,$05,$20,$28,$15
	db $20,$2A,$25,$20,$2C,$35,$20,$2E,$45,$20,$40,$55,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $02,$40,$60,$12,$40,$62,$22,$40,$64,$32,$40,$66,$49,$40,$68,$59
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_ClosePunch1.bin"	; GFXSize = $E80

	%InsertGarbageData($CDFCF1, incbin, UNK_CDFCF1.bin)

DATA_CDFD11:
	incbin "Graphics/Compressed/GFX_Layer1_MissionBriefAndTrainingMonitorText.rnc"

	%InsertGarbageData($CDFFF0, incbin, UNK_CDFFF0.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankCEMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_CE0000:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$07,$05,$00,$1A,$00,$02,$2A,$00
	db $04,$3A,$00,$06,$53,$00,$08,$63,$00,$0A,$07,$10,$0C,$17,$10,$0E
	db $27,$10,$20,$37,$10,$22,$47,$10,$24,$57,$10,$26,$67,$10,$28,$00
	db $20,$2A,$10,$20,$2C,$20,$20,$2E,$30,$20,$40,$40,$20,$42,$50,$20
	db $44,$60,$20,$46,$01,$30,$48,$11,$30,$4A,$21,$30,$4C,$31,$30,$4E
	db $41,$30,$60,$51,$30,$62,$25,$40,$64,$35,$40,$66,$45,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Ducking4.bin"	; GFXSize = $E00

DATA_CE0E5E:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$0A,$05,$00,$7C,$00,$02,$8C,$00
	db $04,$37,$10,$06,$47,$10,$08,$57,$10,$0A,$67,$10,$0C,$77,$10,$0E
	db $87,$10,$20,$2C,$20,$22,$3C,$20,$24,$4C,$20,$26,$5C,$20,$28,$6C
	db $20,$2A,$7C,$20,$2C,$03,$30,$2E,$13,$30,$40,$23,$30,$42,$33,$30
	db $44,$43,$30,$46,$53,$30,$48,$63,$30,$4A,$73,$30,$4C,$00,$40,$4E
	db $10,$40,$60,$31,$40,$62,$41,$40,$64,$5C,$40,$66,$6C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckKick4.bin"	; GFXSize = $E00

DATA_CE1CBC:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$09,$06,$00,$82,$00,$02,$7A,$10
	db $04,$8A,$10,$06,$37,$20,$08,$4C,$20,$0A,$5C,$20,$0C,$6C,$20,$0E
	db $7C,$20,$20,$2C,$30,$22,$3C,$30,$24,$4C,$30,$26,$5C,$30,$28,$6C
	db $30,$2A,$7C,$30,$2C,$06,$40,$2E,$16,$40,$40,$26,$40,$42,$3A,$40
	db $44,$4A,$40,$46,$5A,$40,$48,$6B,$40,$4A,$7B,$40,$4C,$00,$50,$4E
	db $10,$50,$60,$3B,$50,$62,$4B,$50,$64,$5B,$50,$66,$6B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckKick5.bin"	; GFXSize = $E00

DATA_CE2B1A:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$08,$06,$00,$6C,$00,$02,$23,$10
	db $04,$33,$10,$06,$43,$10,$08,$59,$10,$0A,$6B,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$60
	db $20,$2A,$70,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$5A,$30,$48,$6A,$30,$4A,$1F,$40,$4C,$2F,$40,$4E
	db $4C,$40,$60,$5C,$40,$62,$2A,$50,$64,$44,$50,$66,$54,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandBlock4.bin"	; GFXSize = $E00

DATA_CE3978:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$07,$00,$2C,$00,$02,$22,$10
	db $04,$32,$10,$06,$10,$20,$08,$20,$20,$0A,$30,$20,$0C,$40,$20,$0E
	db $05,$30,$20,$15,$30,$22,$25,$30,$24,$35,$30,$26,$45,$30,$28,$05
	db $40,$2A,$15,$40,$2C,$25,$40,$2E,$35,$40,$40,$45,$40,$42,$55,$40
	db $44,$03,$50,$46,$13,$50,$48,$23,$50,$4A,$33,$50,$4C,$43,$50,$4E
	db $53,$50,$60,$00,$60,$62,$10,$60,$64,$22,$60,$66,$32,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk6.bin"	; GFXSize = $E00

DATA_CE47D6:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$07,$06,$00,$29,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$50,$10,$0E
	db $09,$20,$20,$19,$20,$22,$29,$20,$24,$39,$20,$26,$49,$20,$28,$59
	db $20,$2A,$0D,$30,$2C,$1D,$30,$2E,$2D,$30,$40,$3D,$30,$42,$4D,$30
	db $44,$5D,$30,$46,$04,$40,$48,$14,$40,$4A,$24,$40,$4C,$34,$40,$4E
	db $44,$40,$60,$54,$40,$62,$07,$50,$64,$1C,$50,$66,$2C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab1.bin"	; GFXSize = $E00

DATA_CE5634:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$08,$06,$00,$38,$00,$02,$56,$00
	db $04,$1B,$10,$06,$32,$10,$08,$42,$10,$0A,$52,$10,$0C,$62,$10,$0E
	db $72,$10,$20,$0E,$20,$22,$1E,$20,$24,$2E,$20,$26,$3E,$20,$28,$4E
	db $20,$2A,$5E,$20,$2C,$6E,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$60,$30,$4C,$05,$40,$4E
	db $3E,$40,$60,$4E,$40,$62,$3D,$50,$64,$4D,$50,$66,$5D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_JumpKick2.bin"	; GFXSize = $E00

DATA_CE6492:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$05,$08,$00,$0D,$00,$02,$24,$00
	db $04,$34,$00,$06,$08,$10,$08,$18,$10,$0A,$28,$10,$0C,$38,$10,$0E
	db $48,$10,$20,$08,$20,$22,$18,$20,$24,$28,$20,$26,$38,$20,$28,$08
	db $30,$2A,$18,$30,$2C,$28,$30,$2E,$38,$30,$40,$08,$40,$42,$18,$40
	db $44,$28,$40,$46,$38,$40,$48,$08,$50,$4A,$31,$50,$4C,$00,$60,$4E
	db $10,$60,$60,$2E,$60,$62,$00,$70,$64,$10,$70,$66,$2F,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk8.bin"	; GFXSize = $E00

DATA_CE72F0:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$05,$08,$00,$1F,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$3D,$10,$0A,$08,$20,$0C,$18,$20,$0E
	db $28,$20,$20,$38,$20,$22,$05,$30,$24,$17,$30,$26,$27,$30,$28,$37
	db $30,$2A,$00,$40,$2C,$10,$40,$2E,$20,$40,$40,$30,$40,$42,$40,$40
	db $44,$01,$50,$46,$11,$50,$48,$28,$50,$4A,$38,$50,$4C,$01,$60,$4E
	db $11,$60,$60,$2C,$60,$62,$00,$70,$64,$10,$70,$66,$2E,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_HighBlowHurt2.bin"	; GFXSize = $E00

DATA_CE814E:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$05,$00,$20,$00,$02,$35,$00
	db $04,$45,$00,$06,$55,$00,$08,$06,$10,$0A,$16,$10,$0C,$26,$10,$0E
	db $36,$10,$20,$46,$10,$22,$56,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$01,$30,$42,$11,$30
	db $44,$21,$30,$46,$31,$30,$48,$41,$30,$4A,$51,$30,$4C,$06,$40,$4E
	db $16,$40,$60,$26,$40,$62,$36,$40,$64,$46,$40,$66,$56,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandBlock1.bin"	; GFXSize = $E00

DATA_CE8FAC:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$05,$00,$21,$00,$02,$31,$00
	db $04,$41,$00,$06,$51,$00,$08,$04,$10,$0A,$14,$10,$0C,$24,$10,$0E
	db $34,$10,$20,$44,$10,$22,$54,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$02,$40,$4E
	db $12,$40,$60,$2A,$40,$62,$3A,$40,$64,$4A,$40,$66,$5A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandBlock2.bin"	; GFXSize = $E00

DATA_CE9E0A:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$07,$06,$00,$20,$00,$02,$30,$00
	db $04,$40,$00,$06,$50,$00,$08,$0A,$10,$0A,$1A,$10,$0C,$2A,$10,$0E
	db $3A,$10,$20,$4A,$10,$22,$08,$20,$24,$18,$20,$26,$28,$20,$28,$38
	db $20,$2A,$48,$20,$2C,$06,$30,$2E,$16,$30,$40,$2F,$30,$42,$3F,$30
	db $44,$4F,$30,$46,$00,$40,$48,$10,$40,$4A,$2D,$40,$4C,$3D,$40,$4E
	db $4D,$40,$60,$5D,$40,$62,$01,$50,$64,$11,$50,$66,$56,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk4.bin"	; GFXSize = $E00

DATA_CEAC68:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$07,$00,$2C,$00,$02,$3C,$00
	db $04,$17,$10,$06,$27,$10,$08,$37,$10,$0A,$47,$10,$0C,$05,$20,$0E
	db $15,$20,$20,$25,$20,$22,$35,$20,$24,$45,$20,$26,$05,$30,$28,$15
	db $30,$2A,$25,$30,$2C,$35,$30,$2E,$45,$30,$40,$05,$40,$42,$15,$40
	db $44,$2B,$40,$46,$3B,$40,$48,$4B,$40,$4A,$00,$50,$4C,$10,$50,$4E
	db $30,$50,$60,$40,$50,$62,$50,$50,$64,$01,$60,$66,$11,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk5.bin"	; GFXSize = $E00

DATA_CEBAC6:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$07,$00,$24,$00,$02,$34,$00
	db $04,$44,$00,$06,$0E,$10,$08,$1E,$10,$0A,$2E,$10,$0C,$3E,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$06,$40
	db $44,$24,$40,$46,$34,$40,$48,$44,$40,$4A,$01,$50,$4C,$11,$50,$4E
	db $22,$50,$60,$32,$50,$62,$42,$50,$64,$02,$60,$66,$12,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk6.bin"	; GFXSize = $E00

DATA_CEC924:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$07,$05,$00,$18,$00,$02,$28,$00
	db $04,$38,$00,$06,$48,$00,$08,$58,$00,$0A,$14,$10,$0C,$24,$10,$0E
	db $34,$10,$20,$44,$10,$22,$54,$10,$24,$64,$10,$26,$08,$20,$28,$18
	db $20,$2A,$28,$20,$2C,$38,$20,$2E,$48,$20,$40,$58,$20,$42,$00,$30
	db $44,$10,$30,$46,$33,$30,$48,$43,$30,$4A,$53,$30,$4C,$63,$30,$4E
	db $00,$40,$60,$34,$40,$62,$44,$40,$64,$54,$40,$66,$64,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_DuckPunch4.bin"	; GFXSize = $E00

DATA_CED782:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$05,$00,$22,$00,$02,$32,$00
	db $04,$42,$00,$06,$52,$00,$08,$0A,$10,$0A,$1A,$10,$0C,$2A,$10,$0E
	db $3A,$10,$20,$4A,$10,$22,$5A,$10,$24,$01,$20,$26,$11,$20,$28,$21
	db $20,$2A,$31,$20,$2C,$41,$20,$2E,$51,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$03,$40,$4E
	db $13,$40,$60,$23,$40,$62,$33,$40,$64,$44,$40,$66,$54,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_LowBlowHurt4.bin"	; GFXSize = $E00

DATA_CEE5E0:
	incbin "UnknownData/DATA_CEE5E0.rnc"

DATA_CEF45F:
	incbin "Palettes/PAL_Sprite_Sparks.tpl":$04..$24

DATA_CEF47F:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$29,$00,$01,$03,$0A,$23,$02,$01,$1F,$01,$1F,$01,$01,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$FF,$FF,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$03,$02,$1B,$00,$00,$01,$0C,$0C,$02,$01,$1F
	db $01,$1F,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$03,$04,$4F
	db $00,$01,$03,$0F,$23,$02,$01,$1F,$01,$23,$01,$03,$03,$0C,$00,$01
	db $03,$01,$0C,$02,$01,$1F,$01,$23,$00,$02,$02,$20,$00,$00,$03,$06
	db $06,$02,$01,$1F,$01,$1E,$01,$00,$00,$00,$00,$01,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$01,$04,$00,$69,$00,$01,$2A,$23,$0A,$01,$01,$1F,$01,$23
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$01,$00,$00
	db $F8,$02,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$3D,$F8,$02,$0B,$23
	db $0A,$02,$01,$1F,$01,$23,$01,$01,$00,$00,$F8,$02,$0A,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$F8,$02,$0A,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$02,$00,$54,$00,$01,$23,$FF,$FF,$01,$01,$1F
	db $01,$23,$01,$02,$00,$3D,$F8,$02,$0F,$0A,$01,$02,$01,$1F,$01,$23
	db $01,$02,$00,$3D,$F8,$02,$0F,$1F,$0A,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$02,$48,$F8,$02
	db $2B,$0A,$0F,$01,$01,$1F,$01,$23,$01,$02,$01,$07,$00,$01,$01,$0C
	db $23,$02,$01,$1F,$01,$23,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$02,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00

	%InsertGarbageData($CEF6AF, incbin, UNK_CEF6AF.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankCFMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_CF0000:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$06,$00,$2C,$00,$02,$14,$10
	db $04,$24,$10,$06,$34,$10,$08,$44,$10,$0A,$54,$10,$0C,$64,$10,$0E
	db $06,$20,$20,$16,$20,$22,$26,$20,$24,$36,$20,$26,$46,$20,$28,$56
	db $20,$2A,$66,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$60,$30,$4A,$1C,$40,$4C,$2C,$40,$4E
	db $3C,$40,$60,$4C,$40,$62,$30,$50,$64,$40,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Ducking3.bin"	; GFXSize = $D80

DATA_CF0DDB:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$05,$00,$23,$00,$02,$33,$00
	db $04,$5E,$00,$06,$15,$10,$08,$25,$10,$0A,$35,$10,$0C,$45,$10,$0E
	db $55,$10,$20,$65,$10,$22,$06,$20,$24,$16,$20,$26,$26,$20,$28,$36
	db $20,$2A,$46,$20,$2C,$56,$20,$2E,$66,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$60,$30,$4E
	db $1E,$40,$60,$2E,$40,$62,$3E,$40,$64,$4E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Ducking5.bin"	; GFXSize = $D80

DATA_CF1BB6:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$05,$00,$38,$00,$02,$5D,$00
	db $04,$17,$10,$06,$27,$10,$08,$37,$10,$0A,$4C,$10,$0C,$5C,$10,$0E
	db $6C,$10,$20,$05,$20,$22,$15,$20,$24,$25,$20,$26,$35,$20,$28,$45
	db $20,$2A,$55,$20,$2C,$65,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$60,$30,$4C,$05,$40,$4E
	db $1F,$40,$60,$2F,$40,$62,$42,$40,$64,$52,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Ducking6.bin"	; GFXSize = $D80

DATA_CF2991:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$08,$05,$00,$67,$00,$02,$1F,$10
	db $04,$2F,$10,$06,$3F,$10,$08,$51,$10,$0A,$61,$10,$0C,$71,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$50
	db $20,$2A,$60,$20,$2C,$70,$20,$2E,$01,$30,$40,$11,$30,$42,$21,$30
	db $44,$31,$30,$46,$41,$30,$48,$55,$30,$4A,$65,$30,$4C,$1D,$40,$4E
	db $2D,$40,$60,$3D,$40,$62,$4E,$40,$64,$5E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckBlock1.bin"	; GFXSize = $D80

DATA_CF376C:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$08,$05,$00,$33,$00,$02,$66,$00
	db $04,$20,$10,$06,$30,$10,$08,$40,$10,$0A,$50,$10,$0C,$60,$10,$0E
	db $70,$10,$20,$06,$20,$22,$1A,$20,$24,$2A,$20,$26,$3A,$20,$28,$4A
	db $20,$2A,$5A,$20,$2C,$6A,$20,$2E,$02,$30,$40,$12,$30,$42,$22,$30
	db $44,$32,$30,$46,$42,$30,$48,$52,$30,$4A,$62,$30,$4C,$00,$40,$4E
	db $10,$40,$60,$3D,$40,$62,$4D,$40,$64,$5D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckKick1.bin"	; GFXSize = $D80

DATA_CF4547:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$08,$05,$00,$38,$00,$02,$48,$00
	db $04,$5A,$00,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$4C,$10,$0E
	db $5C,$10,$20,$6C,$10,$22,$06,$20,$24,$16,$20,$26,$26,$20,$28,$36
	db $20,$2A,$46,$20,$2C,$56,$20,$2E,$66,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$60,$30,$4E
	db $22,$40,$60,$32,$40,$62,$42,$40,$64,$52,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckPunch1.bin"	; GFXSize = $D80

DATA_CF5322:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$05,$00,$35,$00,$02,$49,$00
	db $04,$59,$00,$06,$16,$10,$08,$26,$10,$0A,$36,$10,$0C,$47,$10,$0E
	db $57,$10,$20,$67,$10,$22,$07,$20,$24,$17,$20,$26,$27,$20,$28,$37
	db $20,$2A,$47,$20,$2C,$57,$20,$2E,$67,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$1B,$40,$4E
	db $2B,$40,$60,$3B,$40,$62,$4B,$40,$64,$5B,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckHurt1.bin"	; GFXSize = $D80

DATA_CF60FD:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$06,$00,$0F,$00,$02,$25,$00
	db $04,$0A,$10,$06,$1A,$10,$08,$2A,$10,$0A,$3A,$10,$0C,$4A,$10,$0E
	db $5A,$10,$20,$05,$20,$22,$15,$20,$24,$25,$20,$26,$35,$20,$28,$45
	db $20,$2A,$55,$20,$2C,$00,$30,$2E,$12,$30,$40,$22,$30,$42,$32,$30
	db $44,$42,$30,$46,$52,$30,$48,$0F,$40,$4A,$1F,$40,$4C,$2F,$40,$4E
	db $3F,$40,$60,$4F,$40,$62,$1D,$50,$64,$2D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarPunch1.bin"	; GFXSize = $D80

DATA_CF6ED8:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$06,$00,$06,$00,$02,$32,$00
	db $04,$03,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$50,$10,$0E
	db $60,$10,$20,$02,$20,$22,$12,$20,$24,$22,$20,$26,$32,$20,$28,$42
	db $20,$2A,$52,$20,$2C,$62,$20,$2E,$00,$30,$40,$22,$30,$42,$32,$30
	db $44,$42,$30,$46,$52,$30,$48,$62,$30,$4A,$21,$40,$4C,$31,$40,$4E
	db $41,$40,$60,$51,$40,$62,$30,$50,$64,$40,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarPunch2.bin"	; GFXSize = $D80

DATA_CF7CB3:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$07,$00,$2E,$00,$02,$1F,$10
	db $04,$2F,$10,$06,$0B,$20,$08,$1B,$20,$0A,$2B,$20,$0C,$3B,$20,$0E
	db $4B,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$50,$30,$2C,$00,$40,$2E,$10,$40,$40,$20,$40,$42,$45,$40
	db $44,$55,$40,$46,$02,$50,$48,$12,$50,$4A,$22,$50,$4C,$32,$50,$4E
	db $42,$50,$60,$01,$60,$62,$11,$60,$64,$21,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarKick1.bin"	; GFXSize = $D80

DATA_CF8A8E:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$08,$05,$00,$23,$00,$02,$33,$00
	db $04,$43,$00,$06,$53,$00,$08,$6C,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10,$28,$70
	db $10,$2A,$02,$20,$2C,$12,$20,$2E,$22,$20,$40,$32,$20,$42,$42,$20
	db $44,$5A,$20,$46,$6A,$20,$48,$23,$30,$4A,$33,$30,$4C,$48,$30,$4E
	db $58,$30,$60,$2A,$40,$62,$40,$40,$64,$50,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandBlock3.bin"	; GFXSize = $D80

DATA_CF9869:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$07,$00,$25,$00,$02,$1E,$10
	db $04,$2E,$10,$06,$0D,$20,$08,$1D,$20,$0A,$2D,$20,$0C,$3D,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$40,$30,$28,$50
	db $30,$2A,$0B,$40,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$4B,$40
	db $44,$5B,$40,$46,$04,$50,$48,$14,$50,$4A,$24,$50,$4C,$34,$50,$4E
	db $44,$50,$60,$06,$60,$62,$16,$60,$64,$26,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk2.bin"	; GFXSize = $D80

DATA_CFA644:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$06,$05,$00,$20,$00,$02,$30,$00
	db $04,$40,$00,$06,$50,$00,$08,$0C,$10,$0A,$1C,$10,$0C,$2C,$10,$0E
	db $3C,$10,$20,$4C,$10,$22,$5C,$10,$24,$02,$20,$26,$12,$20,$28,$22
	db $20,$2A,$32,$20,$2C,$42,$20,$2E,$52,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$04,$40,$4E
	db $14,$40,$60,$24,$40,$62,$34,$40,$64,$47,$40,$66,$57,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_LowBlowHurt5.bin"	; GFXSize = $E00

DATA_CFB4A2:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$07,$05,$00,$2D,$00,$02,$3E,$00
	db $04,$4E,$00,$06,$5E,$00,$08,$13,$10,$0A,$23,$10,$0C,$33,$10,$0E
	db $43,$10,$20,$53,$10,$22,$63,$10,$24,$08,$20,$26,$18,$20,$28,$28
	db $20,$2A,$38,$20,$2C,$48,$20,$2E,$58,$20,$40,$68,$20,$42,$04,$30
	db $44,$14,$30,$46,$24,$30,$48,$34,$30,$4A,$44,$30,$4C,$54,$30,$4E
	db $64,$30,$60,$00,$40,$62,$10,$40,$64,$4F,$40,$66,$5F,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Dead2.bin"	; GFXSize = $E00

DATA_CFC300:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$08,$05,$00,$13,$00,$02,$27,$00
	db $04,$37,$00,$06,$07,$10,$08,$17,$10,$0A,$27,$10,$0C,$37,$10,$0E
	db $47,$10,$20,$57,$10,$22,$67,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$60,$20,$42,$70,$20
	db $44,$01,$30,$46,$11,$30,$48,$21,$30,$4A,$31,$30,$4C,$46,$30,$4E
	db $56,$30,$60,$66,$30,$62,$45,$40,$64,$55,$40,$66,$65,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Dead5.bin"	; GFXSize = $E00

DATA_CFD15E:
	db $1C,$00,$5E,$00,$01,$00,$0A,$00,$07,$05,$00,$13,$00,$02,$23,$00
	db $04,$33,$00,$06,$43,$00,$08,$53,$00,$0A,$0D,$10,$0C,$1D,$10,$0E
	db $2D,$10,$20,$3D,$10,$22,$4D,$10,$24,$5D,$10,$26,$01,$20,$28,$11
	db $20,$2A,$23,$20,$2C,$33,$20,$2E,$43,$20,$40,$53,$20,$42,$00,$30
	db $44,$10,$30,$46,$27,$30,$48,$37,$30,$4A,$47,$30,$4C,$57,$30,$4E
	db $14,$40,$60,$2C,$40,$62,$3C,$40,$64,$50,$40,$66,$60,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_ClosePunch2.bin"	; GFXSize = $E00

DATA_CFDFBC:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$03,$03,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$04,$20,$0C,$14,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault9.bin"	; GFXSize = $380

;--------------------------------------------------------------------

DATA_CFE35B:
	dd DATA_CFF157-DATA_CFE35B,DATA_CFE403-DATA_CFE35B,DATA_CFE4FB-DATA_CFE35B,DATA_CFE5A7-DATA_CFE35B
	dd DATA_CFE5E5-DATA_CFE35B,DATA_CFE64D-DATA_CFE35B,DATA_CFE671-DATA_CFE35B,DATA_CFE69B-DATA_CFE35B
	dd DATA_CFE871-DATA_CFE35B,DATA_CFE895-DATA_CFE35B,DATA_CFE491-DATA_CFE35B,DATA_CFE6FD-DATA_CFE35B
	dd DATA_CFE795-DATA_CFE35B,DATA_CFE7EB-DATA_CFE35B,DATA_CFEAA3-DATA_CFE35B,DATA_CFE46D-DATA_CFE35B
	dd DATA_CFE35B-DATA_CFE35B,DATA_CFE8B9-DATA_CFE35B,DATA_CFE8E1-DATA_CFE35B,DATA_CFE909-DATA_CFE35B
	dd DATA_CFE35B-DATA_CFE35B,DATA_CFE9D9-DATA_CFE35B,DATA_CFE939-DATA_CFE35B,DATA_CFE989-DATA_CFE35B
	dd DATA_CFEADD-DATA_CFE35B,DATA_CFEB3D-DATA_CFE35B,DATA_CFEC69-DATA_CFE35B,DATA_CFE35B-DATA_CFE35B
	dd DATA_CFE35B-DATA_CFE35B,DATA_CFE35B-DATA_CFE35B,DATA_CFEE8B-DATA_CFE35B,DATA_CFE35B-DATA_CFE35B
	dd DATA_CFEA07-DATA_CFE35B,DATA_CFEA55-DATA_CFE35B,DATA_CFEB01-DATA_CFE35B,DATA_CFE35B-DATA_CFE35B
	dd DATA_CFEEAF-DATA_CFE35B,DATA_CFE551-DATA_CFE35B,DATA_CFEE11-DATA_CFE35B,DATA_CFE623-DATA_CFE35B
	dd DATA_CFEF35-DATA_CFE35B,$FFFFFFFF

DATA_CFE403:
	db $C8,$00,$00,$00,$C8,$00,$00,$00,$C8,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0C,$00,$00,$02,$00,$00,$00
	db $00,$FB,$00,$FB,$00,$FB,$00,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $02,$FB,$02,$FB,$02,$FB,$02,$FB,$03,$FB,$03,$FB,$03,$FB,$03,$FB
	db $04,$FB,$04,$FB,$04,$FB,$04,$FB,$03,$FB,$03,$FB,$03,$FB,$03,$FB
	db $02,$FB,$02,$FB,$02,$FB,$02,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $00,$FB,$00,$FB,$00,$FB,$00,$FB,$FF,$00

DATA_CFE46D:
	db $32,$01,$00,$00,$32,$01,$00,$00,$32,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$28,$0D,$00,$00,$11,$00,$00,$05
	db $00,$FF,$FF,$00

DATA_CFE491:
	db $56,$01,$00,$00,$56,$01,$00,$00,$56,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$52,$0D,$00,$00,$02,$09,$00,$00
	db $00,$FB,$00,$FB,$00,$FB,$00,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $02,$FB,$02,$FB,$02,$FB,$02,$FB,$03,$FB,$03,$FB,$03,$FB,$03,$FB
	db $04,$FB,$04,$FB,$04,$FB,$04,$FB,$03,$FB,$03,$FB,$03,$FB,$03,$FB
	db $02,$FB,$02,$FB,$02,$FB,$02,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $00,$FB,$00,$FB,$00,$FB,$00,$FB,$FF,$00

DATA_CFE4FB:
	db $C0,$01,$00,$00,$D2,$01,$00,$00,$E4,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$06,$00,$00,$00
	db $35,$05,$36,$05,$37,$06,$38,$0A,$38,$0A,$37,$04,$36,$04,$35,$04
	db $FF,$00,$35,$05,$36,$05,$37,$06,$38,$0A,$38,$0A,$37,$04,$36,$04
	db $35,$04,$FF,$00,$35,$05,$36,$05,$37,$06,$38,$0A,$38,$0A,$37,$04
	db $36,$04,$35,$04,$FF,$00

DATA_CFE551:
	db $16,$02,$00,$00,$24,$02,$00,$00,$36,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$06,$00,$00,$00
	db $05,$05,$07,$06,$09,$0A,$09,$0A,$07,$04,$05,$06,$FF,$00,$05,$05
	db $06,$05,$07,$06,$09,$0A,$09,$0A,$07,$04,$06,$04,$05,$06,$FF,$00
	db $05,$05,$06,$05,$07,$06,$08,$06,$09,$0A,$09,$0A,$08,$04,$07,$04
	db $06,$04,$05,$06,$FF,$00

DATA_CFE5A7:
	db $6C,$02,$00,$00,$6C,$02,$00,$00,$6C,$02,$00,$00,$7C,$02,$00,$00
	db $7C,$02,$00,$00,$7C,$02,$00,$00,$54,$0D,$00,$00,$08,$00,$00,$00
	db $39,$FB,$3A,$FB,$3B,$FB,$3C,$FB,$3D,$FB,$3E,$FB,$3F,$FB,$FF,$00
	db $03,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00

DATA_CFE5E5:
	db $AA,$02,$00,$00,$AA,$02,$00,$00,$AA,$02,$00,$00,$BA,$02,$00,$00
	db $BA,$02,$00,$00,$BA,$02,$00,$00,$7E,$0D,$00,$00,$08,$00,$00,$00
	db $3F,$FB,$3E,$FB,$3D,$FB,$3C,$FB,$3B,$FB,$3A,$FB,$39,$FB,$FF,$00
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FD,$FF

DATA_CFE623:
	db $E8,$02,$00,$00,$E8,$02,$00,$00,$E8,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$02,$04,$00,$00
	db $56,$FB,$57,$FB,$58,$FB,$59,$FB,$FF,$00

DATA_CFE64D:
	db $12,$03,$00,$00,$12,$03,$00,$00,$12,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$A8,$0D,$00,$00,$01,$00,$00,$00
	db $5A,$FB,$FF,$00

DATA_CFE671:
	db $36,$03,$00,$00,$36,$03,$00,$00,$36,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$02,$00,$00,$00
	db $59,$FB,$58,$FB,$57,$FB,$56,$FB,$FF,$00

DATA_CFE69B:
	db $60,$03,$00,$00,$76,$03,$00,$00,$8C,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$0E,$04,$00,$00
	db $0F,$FB,$10,$05,$11,$05,$12,$05,$13,$0A,$13,$0A,$12,$05,$11,$05
	db $10,$05,$0F,$05,$FF,$00,$0F,$FB,$10,$05,$11,$05,$12,$05,$13,$0A
	db $13,$0A,$12,$05,$11,$05,$10,$05,$0F,$05,$FF,$00,$0F,$FB,$10,$05
	db $11,$05,$12,$05,$13,$0A,$13,$0A,$12,$05,$11,$05,$10,$05,$0F,$05
	db $FF,$00

DATA_CFE6FD:
	db $C2,$03,$00,$00,$DA,$03,$00,$00,$02,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$26,$00,$00,$00
	db $14,$06,$15,$06,$16,$06,$17,$06,$18,$06,$19,$06,$1A,$06,$1B,$06
	db $1C,$06,$1D,$06,$1E,$06,$FF,$00,$14,$06,$15,$06,$16,$06,$17,$06
	db $18,$06,$19,$06,$1A,$06,$1B,$06,$1C,$06,$15,$06,$16,$06,$17,$06
	db $18,$06,$19,$06,$1A,$06,$1B,$06,$1C,$06,$1D,$06,$1E,$06,$FF,$00
	db $14,$06,$15,$06,$16,$06,$17,$06,$18,$06,$19,$06,$1A,$06,$1B,$06
	db $1C,$06,$15,$06,$16,$06,$17,$06,$18,$06,$19,$06,$1A,$06,$1B,$06
	db $1C,$06,$15,$06,$16,$06,$17,$06,$18,$06,$19,$06,$1A,$06,$1B,$06
	db $1C,$06,$1D,$06,$1E,$06,$FF,$00

DATA_CFE795:
	db $5A,$04,$00,$00,$68,$04,$00,$00,$7A,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$06,$00,$00,$00
	db $0A,$05,$0C,$06,$0E,$0A,$0E,$0A,$0C,$04,$0A,$06,$FF,$00,$0A,$05
	db $0B,$05,$0C,$06,$0E,$0A,$0E,$0A,$0C,$04,$0B,$04,$0A,$06,$FF,$00
	db $0A,$05,$0B,$05,$0C,$06,$0D,$06,$0E,$0A,$0E,$0A,$0D,$04,$0C,$04
	db $0B,$04,$0A,$06,$FF,$00

DATA_CFE7EB:
	db $B0,$04,$00,$00,$D2,$04,$00,$00,$F4,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$0E,$04,$00,$00
	db $1F,$06,$20,$06,$21,$06,$22,$06,$23,$06,$24,$06,$25,$06,$26,$0A
	db $26,$0A,$25,$04,$24,$04,$23,$04,$22,$04,$21,$04,$20,$04,$1F,$04
	db $FF,$00,$1F,$06,$20,$06,$21,$06,$22,$06,$23,$06,$24,$06,$25,$06
	db $26,$0A,$26,$0A,$25,$04,$24,$04,$23,$04,$22,$04,$21,$04,$20,$04
	db $1F,$04,$FF,$00,$1F,$06,$20,$06,$21,$06,$22,$06,$23,$06,$24,$06
	db $25,$06,$26,$0A,$26,$0A,$25,$04,$24,$04,$23,$04,$22,$04,$21,$04
	db $20,$04,$1F,$04,$FF,$00

DATA_CFE871:
	db $36,$05,$00,$00,$36,$05,$00,$00,$36,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$D8,$0D,$00,$00,$01,$00,$00,$00
	db $5A,$FB,$FF,$00

DATA_CFE895:
	db $5A,$05,$00,$00,$5A,$05,$00,$00,$5A,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$0A,$04,$00,$00
	db $5A,$FE,$FF,$00

DATA_CFE8B9:
	db $7E,$05,$00,$00,$7E,$05,$00,$00,$7E,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$D2,$0D,$00,$00,$01,$00,$00,$00
	db $53,$FB,$54,$FB,$55,$FB,$FF,$00

DATA_CFE8E1:
	db $A6,$05,$00,$00,$A6,$05,$00,$00,$A6,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$02,$00,$00,$00
	db $55,$FB,$54,$FB,$53,$FB,$FF,$00

DATA_CFE909:
	db $CE,$05,$00,$00,$CE,$05,$00,$00,$CE,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DE,$0D,$00,$00,$4B,$04,$00,$EE
	db $40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$FF,$00

DATA_CFE939:
	db $FE,$05,$00,$00,$FE,$05,$00,$00,$FE,$05,$00,$00,$0E,$06,$00,$00
	db $0E,$06,$00,$00,$0E,$06,$00,$00,$E8,$0D,$00,$00,$4B,$04,$00,$EE
	db $40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$FF,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00

DATA_CFE989:
	db $4E,$06,$00,$00,$4E,$06,$00,$00,$4E,$06,$00,$00,$5E,$06,$00,$00
	db $5E,$06,$00,$00,$5E,$06,$00,$00,$F2,$0D,$00,$00,$4B,$04,$00,$EE
	db $40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$FF,$00
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF

DATA_CFE9D9:
	db $9E,$06,$00,$00,$9E,$06,$00,$00,$9E,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$4F,$04,$00,$EE
	db $2F,$06,$30,$06,$31,$0A,$32,$0A,$33,$0A,$34,$0A,$FF,$00

DATA_CFEA07:
	db $CC,$06,$00,$00,$CC,$06,$00,$00,$CC,$06,$00,$00,$DA,$06,$00,$00
	db $DA,$06,$00,$00,$DA,$06,$00,$00,$FC,$0C,$00,$00,$4F,$04,$00,$EE
	db $2F,$06,$30,$06,$31,$0A,$32,$0A,$33,$0A,$34,$0A,$FF,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00

DATA_CFEA55:
	db $1A,$07,$00,$00,$1A,$07,$00,$00,$1A,$07,$00,$00,$28,$07,$00,$00
	db $28,$07,$00,$00,$28,$07,$00,$00,$FC,$0C,$00,$00,$4F,$04,$00,$EE
	db $2F,$06,$30,$06,$31,$0A,$32,$0A,$33,$0A,$34,$0A,$FF,$00,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF

DATA_CFEAA3:
	db $68,$07,$00,$00,$68,$07,$00,$00,$68,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$06,$00,$00,$00
	db $4C,$00,$4D,$00,$4D,$00,$4E,$00,$4E,$00,$4E,$00,$4E,$00,$4E,$00
	db $4E,$00,$4D,$00,$4D,$00,$4C,$00,$FF,$00

DATA_CFEADD:
	db $A2,$07,$00,$00,$A2,$07,$00,$00,$A2,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$0E,$04,$00,$00
	db $5A,$00,$FF,$00

DATA_CFEB01:
	db $C6,$07,$00,$00,$C6,$07,$00,$00,$C6,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$06,$00,$00,$00
	db $4F,$00,$50,$00,$51,$00,$51,$00,$52,$00,$52,$00,$52,$00,$52,$00
	db $52,$00,$51,$00,$51,$00,$50,$00,$4F,$00,$FF,$00

DATA_CFEB3D:
	db $02,$08,$00,$00,$02,$08,$00,$00,$02,$08,$00,$00,$6A,$08,$00,$00
	db $6A,$08,$00,$00,$6A,$08,$00,$00,$FC,$0C,$00,$00,$E3,$00,$00,$EF
	db $84,$00,$84,$00,$85,$00,$85,$00,$86,$00,$86,$00,$87,$00,$87,$00
	db $88,$00,$88,$00,$89,$00,$89,$00,$8A,$00,$8A,$00,$8B,$00,$8B,$00
	db $8C,$00,$8C,$00,$8D,$00,$8D,$00,$8E,$00,$8E,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$FF,$00,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF
	db $F8,$FF,$F8,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FD,$FF,$FE,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_CFEC69:
	db $2E,$09,$00,$00,$2E,$09,$00,$00,$2E,$09,$00,$00,$E6,$09,$00,$00
	db $E6,$09,$00,$00,$E6,$09,$00,$00,$FC,$0C,$00,$00,$C3,$00,$00,$EF
	db $84,$00,$84,$00,$85,$00,$85,$00,$86,$00,$86,$00,$87,$00,$87,$00
	db $88,$00,$88,$00,$89,$00,$89,$00,$8A,$00,$8A,$00,$8B,$00,$8B,$00
	db $8C,$00,$8C,$00,$8D,$00,$8D,$00,$8E,$00,$8E,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00
	db $8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$8F,$00,$59,$FB,$58,$FB
	db $57,$FB,$56,$FB,$FF,$00,$FF,$00,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF
	db $FD,$FF,$FD,$FF,$FE,$FF,$FE,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00

DATA_CFEE11:
	db $D6,$0A,$00,$00,$D6,$0A,$00,$00,$D6,$0A,$00,$00,$00,$0B,$00,$00
	db $00,$0B,$00,$00,$00,$0B,$00,$00,$FC,$0C,$00,$00,$0B,$17,$00,$00
	db $86,$00,$86,$00,$86,$00,$86,$00,$86,$00,$86,$00,$86,$00,$86,$00
	db $86,$00,$86,$00,$86,$00,$86,$00,$86,$00,$86,$00,$86,$00,$86,$00
	db $86,$00,$86,$00,$86,$00,$86,$00,$FF,$00,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_CFEE8B:
	db $50,$0B,$00,$00,$50,$0B,$00,$00,$50,$0B,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$A8,$0D,$00,$00,$01,$00,$00,$00
	db $5A,$FB,$FF,$00

DATA_CFEEAF:
	db $74,$0B,$00,$00,$74,$0B,$00,$00,$74,$0B,$00,$00,$9A,$0B,$00,$00
	db $9A,$0B,$00,$00,$9A,$0B,$00,$00,$FC,$0C,$00,$00,$4F,$04,$00,$EE
	db $27,$FB,$28,$0A,$29,$0A,$2A,$0A,$2B,$0A,$2C,$0A,$2D,$0A,$2E,$0A
	db $2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A
	db $2E,$0A,$2E,$0A,$FF,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00

DATA_CFEF35:
	db $FA,$0B,$00,$00,$FA,$0B,$00,$00,$FA,$0B,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0C,$00,$00,$02,$00,$00,$00
	db $47,$FB,$48,$FB,$49,$FB,$4A,$FB,$4B,$FB,$5B,$FB,$5C,$FB,$5D,$FB
	db $5E,$FB,$5F,$FB,$60,$FB,$61,$FB,$62,$FB,$63,$FB,$64,$FB,$65,$FB
	db $66,$FB,$67,$FB,$68,$FB,$69,$FB,$6A,$FB,$6B,$FB,$6C,$FB,$6D,$FB
	db $6E,$FB,$6F,$FB,$70,$FB,$71,$FB,$72,$FB,$73,$FB,$74,$FB,$75,$FB
	db $76,$FB,$77,$FB,$78,$FB,$79,$FB,$7A,$FB,$7B,$FB,$7C,$FB,$7D,$FB
	db $7E,$FB,$7F,$FB,$80,$FB,$81,$FB,$82,$FB,$83,$FB,$83,$FB,$83,$FB
	db $83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB
	db $83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB
	db $83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB
	db $83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB,$83,$FB
	db $83,$FB,$83,$FB,$83,$FB,$83,$FB,$82,$FB,$81,$FB,$80,$FB,$7F,$FB
	db $7E,$FB,$7D,$FB,$7C,$FB,$7B,$FB,$7A,$FB,$79,$FB,$78,$FB,$77,$FB
	db $76,$FB,$75,$FB,$74,$FB,$73,$FB,$72,$FB,$71,$FB,$70,$FB,$6F,$FB
	db $6E,$FB,$6D,$FB,$6C,$FB,$6B,$FB,$6A,$FB,$69,$FB,$67,$FB,$66,$FB
	db $65,$FB,$64,$FB,$63,$FB,$62,$FB,$61,$FB,$60,$FB,$5F,$FB,$5E,$FB
	db $5D,$FB,$5C,$FB,$5B,$FB,$4B,$FB,$4A,$FB,$49,$FB,$48,$FB,$47,$FB
	db $FF,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00
	db $10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00,$03,$00
	db $02,$00,$02,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$08,$00
	db $12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00
	db $26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$02,$00,$02,$00,$01,$00
	db $24,$00,$20,$00,$0B,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$08,$00
	db $12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00
	db $26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$01,$00,$01,$00,$20,$00
	db $0A,$00,$FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00,$0C,$00,$16,$00
	db $0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00
	db $02,$00,$02,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$00,$00
	db $05,$00,$10,$00,$04,$00,$14,$00,$1D,$00,$08,$00,$05,$00,$0A,$00
	db $05,$00,$0C,$00,$05,$00,$02,$00,$05,$00,$04,$00,$05,$00,$01,$00
	db $06,$00,$20,$00,$0C,$00,$FF,$FF,$00,$00,$11,$00,$FF,$FF,$00,$00
	db $08,$00,$FF,$FF,$20,$00,$14,$00,$01,$00,$14,$00,$FF,$FF,$20,$00
	db $1F,$00,$01,$00,$1F,$00,$FF,$FF,$20,$00,$20,$00,$01,$00,$20,$00
	db $FF,$FF

DATA_CFF157:
	db $08,$00,$02,$00,$10,$00,$FF,$23,$08,$FE,$02,$FE,$10,$02,$FF,$23
	db $08,$00,$04,$00,$10,$00,$FF,$27,$08,$FE,$04,$FE,$10,$02,$FF,$27
	db $01,$00,$10,$00,$10,$00,$10,$00,$10,$00,$FF,$83,$01,$00,$08,$00
	db $08,$00,$08,$00,$08,$00,$FF,$80,$01,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$FF,$84,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$FF,$85
	db $FF,$00,$00

;--------------------------------------------------------------------

DATA_CFF1AA:
	incbin "Palettes/PAL_Layer1_Unknown.tpl":$04..$22

DATA_CFF1C8:
	dw $006E : dd DATA_D40000 : dw $0003,$0006,$0068,$003C,$0060
	dw $0097 : dd DATA_CA0000 : dw $0003,$0006,$0068,$003C,$0060
	dw $0097 : dd DATA_E10000 : dw $0003,$0006,$0068,$003C,$0060
	dw $0097 : dd DATA_E106B1 : dw $0003,$0006,$0068,$003C,$0060
	dw $0097 : dd DATA_E00000 : dw $0003,$0006,$006B,$003C,$0060
	dw $0099 : dd DATA_DF0000 : dw $0004,$0006,$006E,$003C,$0060
	dw $00A2 : dd DATA_DF07B7 : dw $0004,$0006,$006F,$003C,$0060
	dw $00A9 : dd DATA_D90000 : dw $0004,$0006,$006F,$003C,$0060
	dw $00AD : dd DATA_E30000 : dw $0003,$0006,$006C,$0038,$0060
	dw $0095 : dd DATA_E305AB : dw $0002,$0006,$0073,$0037,$0060
	dw $0091 : dd DATA_E20000 : dw $0003,$0006,$0072,$0037,$0060
	dw $0096 : dd DATA_E00734 : dw $0004,$0006,$0070,$0037,$0060
	dw $00AB : dd DATA_DF0F6E : dw $0005,$0006,$0070,$0038,$0060
	dw $00B3 : dd DATA_E10D62 : dw $0003,$0006,$0069,$003D,$0060
	dw $0098 : dd DATA_E11413 : dw $0003,$0006,$006C,$003C,$0060
	dw $0098 : dd DATA_E11AC4 : dw $0003,$0006,$006A,$003A,$0060
	dw $0097 : dd DATA_E12175 : dw $0003,$0005,$006C,$004A,$0050
	dw $0098 : dd DATA_E12826 : dw $0003,$0005,$006C,$004A,$0050
	dw $009A : dd DATA_E12ED7 : dw $0004,$0005,$006C,$004A,$0050
	dw $009D : dd DATA_E30B56 : dw $0004,$0004,$006C,$005A,$0040
	dw $00A0 : dd DATA_E31101 : dw $0004,$0004,$006C,$005B,$0040
	dw $00A0 : dd DATA_E316AC : dw $0003,$0004,$006C,$005B,$0040
	dw $009B : dd DATA_E2062E : dw $0003,$0005,$006C,$004A,$0050
	dw $009B : dd DATA_E31C57 : dw $0004,$0004,$006C,$0059,$0040
	dw $009F : dd DATA_E20C5C : dw $0004,$0005,$006C,$0049,$0050
	dw $00A1 : dd DATA_E00E68 : dw $0004,$0005,$006C,$0048,$0050
	dw $00AA : dd DATA_DF1725 : dw $0005,$0005,$006C,$0048,$0050
	dw $00AF : dd DATA_DF1EDC : dw $0005,$0005,$006C,$0048,$0050
	dw $00B1 : dd DATA_E2128A : dw $0004,$0004,$006E,$005A,$0040
	dw $00A5 : dd DATA_E32202 : dw $0003,$0004,$0074,$005A,$0040
	dw $00A1 : dd DATA_E327AD : dw $0003,$0005,$0081,$0051,$0050
	dw $00A7 : dd DATA_E13588 : dw $0004,$0005,$007C,$0059,$0050
	dw $00B9 : dd DATA_DF2693 : dw $0005,$0004,$007A,$0058,$0040
	dw $00C2 : dd DATA_E32D58 : dw $0003,$0004,$006E,$005A,$0040
	dw $009B : dd DATA_E33303 : dw $0003,$0004,$006E,$005A,$0040
	dw $0099 : dd DATA_E40000 : dw $0003,$0004,$006D,$005A,$0040
	dw $009B : dd DATA_E218B8 : dw $0004,$0004,$006C,$005B,$0040
	dw $009F : dd DATA_E13C39 : dw $0003,$0006,$006D,$003D,$0060
	dw $0098 : dd DATA_E21EE6 : dw $0003,$0006,$006F,$003D,$0060
	dw $0098 : dd DATA_E22514 : dw $0003,$0006,$0070,$003D,$0060
	dw $0099 : dd DATA_DF2E4A : dw $0004,$0006,$006E,$003C,$0060
	dw $00A9 : dd DATA_DC0000 : dw $0005,$0006,$006E,$003C,$0060
	dw $00AF : dd DATA_E40528 : dw $0001,$0001,$008F,$0069,$0010
	dw $0098 : dd DATA_E50000 : dw $0001,$0001,$0090,$006A,$0010
	dw $0095 : dd DATA_E5008D : dw $0001,$0001,$0091,$006A,$0010
	dw $0098 : dd DATA_E142EA : dw $0003,$0006,$0068,$003B,$0060
	dw $0096 : dd DATA_E0159C : dw $0003,$0006,$0068,$003A,$0060
	dw $0095 : dd DATA_E1499B : dw $0003,$0006,$0069,$0039,$0060
	dw $0095 : dd DATA_E22B42 : dw $0003,$0006,$006A,$0038,$0060
	dw $0095 : dd DATA_E23170 : dw $0003,$0006,$006A,$0038,$0060
	dw $0095 : dd DATA_E01CD0 : dw $0003,$0006,$0068,$003D,$0060
	dw $0095 : dd DATA_E1504C : dw $0003,$0006,$0068,$003C,$0060
	dw $0090 : dd DATA_E156FD : dw $0003,$0006,$0068,$003D,$0060
	dw $008E : dd DATA_E15DAE : dw $0003,$0006,$0068,$003D,$0060
	dw $008E : dd DATA_E1645F : dw $0003,$0006,$0068,$003D,$0060
	dw $008E : dd DATA_E16B10 : dw $0003,$0006,$0069,$003C,$0060
	dw $0090 : dd DATA_E02404 : dw $0003,$0006,$0069,$003C,$0060
	dw $0092 : dd DATA_E02B38 : dw $0003,$0006,$0069,$003C,$0060
	dw $0095 : dd DATA_E171C1 : dw $0003,$0006,$0066,$003E,$0060
	dw $0094 : dd DATA_E0326C : dw $0004,$0006,$0064,$0037,$0060
	dw $0097 : dd DATA_E17872 : dw $0005,$0005,$0062,$0041,$0050
	dw $00A3 : dd DATA_DF3601 : dw $0006,$0005,$0061,$003C,$0050
	dw $00B2 : dd DATA_E17F23 : dw $0003,$0006,$0069,$003D,$0060
	dw $0098 : dd DATA_E185D4 : dw $0003,$0006,$0068,$003D,$0060
	dw $0096 : dd DATA_E18C85 : dw $0003,$0006,$0068,$003C,$0060
	dw $0095 : dd DATA_E19336 : dw $0003,$0006,$0067,$003C,$0060
	dw $0097 : dd DATA_E039A0 : dw $0003,$0006,$006A,$003D,$0060
	dw $0099 : dd DATA_DF3DB8 : dw $0004,$0006,$0069,$0039,$0060
	dw $009B : dd DATA_DF456F : dw $0003,$0006,$0066,$0032,$0060
	dw $0096 : dd DATA_DF4D26 : dw $0004,$0006,$0063,$002E,$0060
	dw $0095 : dd DATA_E199E7 : dw $0004,$0006,$0064,$0032,$0060
	dw $009D : dd DATA_E1A098 : dw $0004,$0005,$0068,$0045,$0050
	dw $00A6 : dd DATA_E338AE : dw $0005,$0005,$0064,$004C,$0050
	dw $00A8 : dd DATA_E33E59 : dw $0004,$0005,$006C,$004E,$0050		;\ Note: Unused?
	dw $00A5 : dd DATA_E2379E : dw $0003,$0006,$006D,$003E,$0060		;/
	dw $0093 : dd DATA_E1A749 : dw $0003,$0006,$006D,$0039,$0060
	dw $0099 : dd DATA_E34404 : dw $0002,$0006,$007C,$0038,$0060
	dw $009C : dd DATA_E1ADFA : dw $0003,$0006,$007A,$003A,$0060
	dw $00A7 : dd DATA_E040D4 : dw $0005,$0006,$0072,$003A,$0060
	dw $00BF : dd DATA_DF54DD : dw $0006,$0006,$0070,$0039,$0060
	dw $00C5 : dd DATA_E1B4AB : dw $0003,$0006,$006B,$0039,$0060
	dw $0094 : dd DATA_E23DCC : dw $0003,$0005,$006C,$0047,$0050
	dw $0099 : dd DATA_E1BB5C : dw $0004,$0004,$006A,$0057,$0040
	dw $00A5 : dd DATA_E243FA : dw $0005,$0004,$0066,$0058,$0040
	dw $00AE : dd DATA_E1C20D : dw $0005,$0004,$0066,$0057,$0040
	dw $00B4 : dd DATA_E24A28 : dw $0003,$0006,$0067,$003C,$0060		; Note: Unused?
	dw $0097 : dd DATA_E250D9 : dw $0004,$0006,$0061,$003C,$0060
	dw $009B : dd DATA_E04808 : dw $0004,$0006,$0062,$003C,$0060
	dw $00A2 : dd DATA_DF5C94 : dw $0005,$0005,$005E,$004D,$0050
	dw $00A3 : dd DATA_E04F3C : dw $0005,$0005,$0058,$004E,$0050
	dw $00A3 : dd DATA_DE0000 : dw $0005,$0005,$0057,$004F,$0050
	dw $00A7 : dd DATA_DF644B : dw $0006,$0004,$0056,$005F,$0040
	dw $00AB : dd DATA_E2578A : dw $0006,$0004,$0051,$005E,$0040
	dw $00A7 : dd DATA_E05670 : dw $0006,$0003,$004D,$006E,$0030
	dw $00A5 : dd DATA_E349AF : dw $0006,$0002,$004A,$007D,$0020
	dw $00A3 : dd DATA_E34F5A : dw $0006,$0002,$0045,$0082,$0020
	dw $009D : dd DATA_E05DA4 : dw $0004,$0006,$0068,$003C,$0060
	dw $0099 : dd DATA_E064D8 : dw $0004,$0006,$0068,$003B,$0060
	dw $009D : dd DATA_DF6C02 : dw $0004,$0006,$0064,$003D,$0060
	dw $00A2 : dd DATA_DF73B9 : dw $0005,$0005,$0061,$004C,$0050
	dw $00A5 : dd DATA_E06C0C : dw $0005,$0005,$005D,$004C,$0050
	dw $00A5 : dd DATA_E07340 : dw $0005,$0005,$0062,$004B,$0050
	dw $00A5 : dd DATA_E07A74 : dw $0004,$0005,$006A,$004A,$0050
	dw $00A6 : dd DATA_E081A8 : dw $0004,$0006,$0069,$003D,$0060
	dw $00A5 : dd DATA_DF7B70 : dw $0005,$0005,$0066,$004D,$0050
	dw $00A9 : dd DATA_DF8327 : dw $0005,$0005,$0066,$004D,$0050
	dw $00AB : dd DATA_DF8ADE : dw $0005,$0005,$0065,$004E,$0050
	dw $00A7 : dd DATA_DE083A : dw $0004,$0006,$0066,$003E,$0060
	dw $00A1 : dd DATA_E088DC : dw $0004,$0006,$0068,$003D,$0060
	dw $009C : dd DATA_E09010 : dw $0003,$0006,$006A,$003C,$0060

	%InsertGarbageData($CFF8A8, incbin, UNK_CFF8A8.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD0Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D00000:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$07,$00,$2B,$00,$02,$3B,$00
	db $04,$21,$10,$06,$31,$10,$08,$0F,$20,$0A,$1F,$20,$0C,$2F,$20,$0E
	db $3F,$20,$20,$03,$30,$22,$13,$30,$24,$23,$30,$26,$33,$30,$28,$43
	db $30,$2A,$02,$40,$2C,$12,$40,$2E,$22,$40,$40,$32,$40,$42,$42,$40
	db $44,$52,$40,$46,$04,$50,$48,$14,$50,$4A,$24,$50,$4C,$34,$50,$4E
	db $44,$50,$60,$00,$60,$62,$10,$60,$64,$21,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk5.bin"	; GFXSize = $D80

DATA_D00DDB:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$07,$00,$25,$00,$02,$20,$10
	db $04,$30,$10,$06,$13,$20,$08,$23,$20,$0A,$33,$20,$0C,$05,$30,$0E
	db $15,$30,$20,$25,$30,$22,$35,$30,$24,$45,$30,$26,$0A,$40,$28,$1A
	db $40,$2A,$2A,$40,$2C,$3A,$40,$2E,$4A,$40,$40,$5A,$40,$42,$03,$50
	db $44,$13,$50,$46,$23,$50,$48,$33,$50,$4A,$43,$50,$4C,$53,$50,$4E
	db $00,$60,$60,$10,$60,$62,$20,$60,$64,$30,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk7.bin"	; GFXSize = $D80

DATA_D01BB6:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$09,$05,$00,$35,$00,$02,$45,$00
	db $04,$55,$00,$06,$65,$00,$08,$00,$10,$0A,$10,$10,$0C,$28,$10,$0E
	db $38,$10,$20,$48,$10,$22,$58,$10,$24,$68,$10,$26,$78,$10,$28,$01
	db $20,$2A,$11,$20,$2C,$21,$20,$2E,$31,$20,$40,$41,$20,$42,$51,$20
	db $44,$61,$20,$46,$71,$20,$48,$81,$20,$4A,$39,$30,$4C,$49,$30,$4E
	db $59,$30,$60,$69,$30,$62,$39,$40,$64,$49,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_BallGrab8.bin"	; GFXSize = $D80

DATA_D02991:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$05,$08,$00,$1F,$00,$02,$05,$10
	db $04,$15,$10,$06,$25,$10,$08,$35,$10,$0A,$45,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$32,$20,$24,$42,$20,$26,$01,$30,$28,$11
	db $30,$2A,$21,$30,$2C,$31,$30,$2E,$41,$30,$40,$00,$40,$42,$10,$40
	db $44,$20,$40,$46,$30,$40,$48,$06,$50,$4A,$16,$50,$4C,$2D,$50,$4E
	db $0C,$60,$60,$2B,$60,$62,$0D,$70,$64,$2C,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_CloseKick1.bin"	; GFXSize = $D80

DATA_D0376C:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$08,$00,$32,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20,$22,$33,$20,$24,$43,$20,$26,$23,$30,$28,$33
	db $30,$2A,$43,$30,$2C,$17,$40,$2E,$27,$40,$40,$37,$40,$42,$47,$40
	db $44,$1B,$50,$46,$2B,$50,$48,$3C,$50,$4A,$4C,$50,$4C,$1F,$60,$4E
	db $2F,$60,$60,$46,$60,$62,$56,$60,$64,$50,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarPunch5.bin"	; GFXSize = $D80

DATA_D04547:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$05,$08,$00,$24,$00,$02,$34,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$2B,$10,$0A,$3B,$10,$0C,$4B,$10,$0E
	db $09,$20,$20,$19,$20,$22,$29,$20,$24,$39,$20,$26,$09,$30,$28,$19
	db $30,$2A,$29,$30,$2C,$39,$30,$2E,$0A,$40,$40,$1A,$40,$42,$2A,$40
	db $44,$3A,$40,$46,$09,$50,$48,$31,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $32,$60,$60,$00,$70,$62,$10,$70,$64,$34,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk2.bin"	; GFXSize = $D80

DATA_D05322:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$07,$00,$32,$00,$02,$25,$10
	db $04,$35,$10,$06,$45,$10,$08,$0F,$20,$0A,$1F,$20,$0C,$2F,$20,$0E
	db $3F,$20,$20,$4F,$20,$22,$0F,$30,$24,$1F,$30,$26,$2F,$30,$28,$3F
	db $30,$2A,$4F,$30,$2C,$0F,$40,$2E,$1F,$40,$40,$2F,$40,$42,$3F,$40
	db $44,$52,$40,$46,$04,$50,$48,$14,$50,$4A,$29,$50,$4C,$39,$50,$4E
	db $49,$50,$60,$00,$60,$62,$2B,$60,$64,$3B,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick7.bin"	; GFXSize = $D80

DATA_D060FD:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$05,$08,$00,$1E,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$3D,$10,$0A,$07,$20,$0C,$17,$20,$0E
	db $27,$20,$20,$37,$20,$22,$07,$30,$24,$17,$30,$26,$27,$30,$28,$37
	db $30,$2A,$04,$40,$2C,$14,$40,$2E,$24,$40,$40,$34,$40,$42,$02,$50
	db $44,$12,$50,$46,$2D,$50,$48,$3D,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $2D,$60,$60,$00,$70,$62,$10,$70,$64,$2F,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_HighBlowHurt3.bin"	; GFXSize = $D80

DATA_D06ED8:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$07,$10,$0C,$17,$10,$0E
	db $27,$10,$20,$37,$10,$22,$47,$10,$24,$04,$20,$26,$1B,$20,$28,$2B
	db $20,$2A,$3B,$20,$2C,$4B,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$01,$40,$4C,$11,$40,$4E
	db $21,$40,$60,$31,$40,$62,$47,$40,$64,$57,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandIdle1.bin"	; GFXSize = $D80

DATA_D07CB3:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$06,$10,$0C,$16,$10,$0E
	db $26,$10,$20,$36,$10,$22,$46,$10,$24,$03,$20,$26,$13,$20,$28,$23
	db $20,$2A,$33,$20,$2C,$43,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$00,$40,$4C,$10,$40,$4E
	db $24,$40,$60,$34,$40,$62,$47,$40,$64,$57,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandIdle2.bin"	; GFXSize = $D80

DATA_D08A8E:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$07,$10,$0C,$17,$10,$0E
	db $27,$10,$20,$37,$10,$22,$47,$10,$24,$04,$20,$26,$1B,$20,$28,$2B
	db $20,$2A,$3B,$20,$2C,$4B,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$01,$40,$4C,$11,$40,$4E
	db $24,$40,$60,$34,$40,$62,$47,$40,$64,$57,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandIdle3.bin"	; GFXSize = $D80

DATA_D09869:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$09,$05,$00,$30,$00,$02,$40,$00
	db $04,$50,$00,$06,$60,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$60,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$60,$20
	db $44,$70,$20,$46,$54,$30,$48,$64,$30,$4A,$74,$30,$4C,$84,$30,$4E
	db $4A,$40,$60,$5A,$40,$62,$70,$40,$64,$80,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarPunch4.bin"	; GFXSize = $D80

DATA_D0A644:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$06,$00,$35,$00,$02,$01,$10
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$41,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$02,$30,$28,$12
	db $30,$2A,$22,$30,$2C,$32,$30,$2E,$42,$30,$40,$00,$40,$42,$10,$40
	db $44,$20,$40,$46,$30,$40,$48,$40,$40,$4A,$02,$50,$4C,$12,$50,$4E
	db $22,$50,$60,$32,$50,$62,$42,$50,$64,$52,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk8.bin"	; GFXSize = $D80

DATA_D0B41F:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$03,$00,$02,$13,$00
	db $04,$23,$00,$06,$33,$00,$08,$43,$00,$0A,$02,$10,$0C,$12,$10,$0E
	db $22,$10,$20,$32,$10,$22,$42,$10,$24,$03,$20,$26,$13,$20,$28,$23
	db $20,$2A,$33,$20,$2C,$43,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$03,$40,$4C,$13,$40,$4E
	db $23,$40,$60,$33,$40,$62,$44,$40,$64,$54,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Walk9.bin"	; GFXSize = $D80

DATA_D0C1FA:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$05,$00,$13,$00,$02,$23,$00
	db $04,$33,$00,$06,$43,$00,$08,$53,$00,$0A,$05,$10,$0C,$15,$10,$0E
	db $25,$10,$20,$35,$10,$22,$45,$10,$24,$55,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$0B,$30
	db $44,$1B,$30,$46,$2B,$30,$48,$3B,$30,$4A,$4B,$30,$4C,$5B,$30,$4E
	db $35,$40,$60,$45,$40,$62,$56,$40,$64,$66,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch2.bin"	; GFXSize = $D80

DATA_D0CFD5:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$07,$00,$03,$00,$02,$13,$00
	db $04,$23,$00,$06,$33,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$08,$20,$24,$18,$20,$26,$28,$20,$28,$38
	db $20,$2A,$48,$20,$2C,$22,$30,$2E,$32,$30,$40,$42,$30,$42,$2E,$40
	db $44,$3E,$40,$46,$4E,$40,$48,$2C,$50,$4A,$47,$50,$4C,$57,$50,$4E
	db $24,$60,$60,$34,$60,$62,$48,$60,$64,$58,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch11.bin"	; GFXSize = $D80

DATA_D0DDB0:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$06,$00,$1A,$00,$02,$2A,$00
	db $04,$3A,$00,$06,$18,$10,$08,$28,$10,$0A,$38,$10,$0C,$48,$10,$0E
	db $14,$20,$20,$24,$20,$22,$34,$20,$24,$44,$20,$26,$02,$30,$28,$12
	db $30,$2A,$22,$30,$2C,$32,$30,$2E,$42,$30,$40,$52,$30,$42,$00,$40
	db $44,$10,$40,$46,$20,$40,$48,$30,$40,$4A,$4A,$40,$4C,$5A,$40,$4E
	db $27,$50,$60,$37,$50,$62,$4E,$50,$64,$5E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch13.bin"	; GFXSize = $D80

DATA_D0EB8B:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$20,$00,$02,$32,$00
	db $04,$42,$00,$06,$52,$00,$08,$06,$10,$0A,$16,$10,$0C,$26,$10,$0E
	db $36,$10,$20,$46,$10,$22,$56,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$07,$40,$4E
	db $17,$40,$60,$27,$40,$62,$41,$40,$64,$51,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_LowBlowHurt1.bin"	; GFXSize = $D80

DATA_D0F966:
	incbin "Palettes/PAL_Sprite_MainMenuCyborg.tpl":$04..$24

DATA_D0F986:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame6.bin"

	%InsertGarbageData($D0FFBC, incbin, UNK_D0FFBC.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD1Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

;--------------------------------------------------------------------

DATA_D10000:
	dd DATA_D10CFE-DATA_D10000,DATA_D100A4-DATA_D10000,DATA_D10204-DATA_D10000,DATA_D1013C-DATA_D10000
	dd DATA_D1017E-DATA_D10000,DATA_D102A8-DATA_D10000,DATA_D102F0-DATA_D10000,DATA_D1031C-DATA_D10000
	dd DATA_D104AC-DATA_D10000,DATA_D104D2-DATA_D10000,DATA_D10102-DATA_D10000,DATA_D10366-DATA_D10000
	dd DATA_D103BE-DATA_D10000,DATA_D10434-DATA_D10000,DATA_D106DE-DATA_D10000,DATA_D100DE-DATA_D10000
	dd DATA_D10B74-DATA_D10000,DATA_D104F8-DATA_D10000,DATA_D1051E-DATA_D10000,DATA_D10544-DATA_D10000
	dd DATA_D10000-DATA_D10000,DATA_D105F6-DATA_D10000,DATA_D1056A-DATA_D10000,DATA_D105B0-DATA_D10000
	dd DATA_D1076A-DATA_D10000,DATA_D1081E-DATA_D10000,DATA_D10908-DATA_D10000,DATA_D10000-DATA_D10000
	dd DATA_D10000-DATA_D10000,DATA_D10000-DATA_D10000,DATA_D102CC-DATA_D10000,DATA_D10B2A-DATA_D10000
	dd DATA_D10626-DATA_D10000,DATA_D10682-DATA_D10000,DATA_D10722-DATA_D10000,DATA_D10000-DATA_D10000
	dd DATA_D10AB4-DATA_D10000,DATA_D101C0-DATA_D10000,DATA_D107AC-DATA_D10000,DATA_D1027A-DATA_D10000
	dd $FFFFFFFF

DATA_D100A4:
	db $C4,$00,$00,$00,$C4,$00,$00,$00,$C4,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$02,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00
	db $02,$00,$03,$00,$03,$00,$03,$00,$FF,$00

DATA_D100DE:
	db $FE,$00,$00,$00,$FE,$00,$00,$00,$FE,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$2A,$0C,$00,$00,$11,$00,$00,$05
	db $00,$00,$FF,$00

DATA_D10102:
	db $22,$01,$00,$00,$22,$01,$00,$00,$22,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$54,$0C,$00,$00,$02,$09,$00,$00
	db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00
	db $02,$00,$03,$00,$03,$00,$03,$00,$FF,$00

DATA_D1013C:
	db $5C,$01,$00,$00,$5C,$01,$00,$00,$5C,$01,$00,$00,$6E,$01,$00,$00
	db $6E,$01,$00,$00,$6E,$01,$00,$00,$56,$0C,$00,$00,$08,$00,$00,$00
	db $32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$37,$00,$38,$00,$39,$00
	db $FF,$00,$05,$00,$07,$00,$07,$00,$07,$00,$04,$00,$03,$00,$04,$00
	db $04,$00

DATA_D1017E:
	db $9E,$01,$00,$00,$9E,$01,$00,$00,$9E,$01,$00,$00,$B0,$01,$00,$00
	db $B0,$01,$00,$00,$B0,$01,$00,$00,$80,$0C,$00,$00,$08,$00,$00,$00
	db $39,$00,$38,$00,$37,$00,$36,$00,$35,$00,$34,$00,$33,$00,$32,$00
	db $FF,$00,$FE,$FF,$FE,$FF,$01,$00,$FE,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FD,$FF

DATA_D101C0:
	db $E0,$01,$00,$00,$E8,$01,$00,$00,$F4,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$06,$00,$00,$00
	db $05,$06,$07,$0A,$05,$06,$FF,$00,$05,$06,$06,$0A,$07,$0A,$06,$04
	db $05,$04,$FF,$00,$04,$06,$05,$06,$06,$06,$07,$0A,$06,$04,$05,$04
	db $04,$04,$FF,$00

DATA_D10204:
	db $24,$02,$00,$00,$2E,$02,$00,$00,$3C,$02,$00,$00,$52,$02,$00,$00
	db $5A,$02,$00,$00,$66,$02,$00,$00,$FE,$0B,$00,$00,$06,$00,$00,$00
	db $26,$06,$29,$0A,$29,$0A,$26,$04,$FF,$00,$25,$06,$27,$06,$29,$0A
	db $29,$0A,$27,$04,$26,$04,$FF,$00,$25,$06,$26,$06,$27,$06,$28,$06
	db $29,$0A,$29,$0A,$28,$04,$27,$04,$26,$04,$25,$04,$FF,$00,$01,$00
	db $02,$00,$00,$00,$00,$00,$01,$00,$02,$00,$03,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00

DATA_D1027A:
	db $9A,$02,$00,$00,$9A,$02,$00,$00,$9A,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$02,$04,$00,$00
	db $0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00,$FF,$00

DATA_D102A8:
	db $C8,$02,$00,$00,$C8,$02,$00,$00,$C8,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$AA,$0C,$00,$00,$01,$00,$00,$00
	db $14,$00,$FF,$00

DATA_D102CC:
	db $EC,$02,$00,$00,$EC,$02,$00,$00,$EC,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$AA,$0C,$00,$00,$01,$00,$00,$00
	db $14,$00,$FF,$00

DATA_D102F0:
	db $10,$03,$00,$00,$10,$03,$00,$00,$10,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$02,$00,$00,$00
	db $13,$00,$12,$00,$11,$00,$10,$00,$0F,$00,$FF,$00

DATA_D1031C:
	db $3C,$03,$00,$00,$46,$03,$00,$00,$52,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$0E,$04,$00,$00
	db $19,$06,$1B,$0A,$19,$06,$14,$00,$FF,$00,$17,$06,$19,$06,$1B,$0A
	db $19,$06,$17,$06,$FF,$00,$17,$06,$18,$06,$19,$06,$1A,$06,$1B,$0A
	db $1A,$06,$19,$06,$18,$06,$17,$06,$FF,$00

DATA_D10366:
	db $86,$03,$00,$00,$96,$03,$00,$00,$A8,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$06,$00,$00,$00
	db $4B,$06,$4D,$06,$4F,$0A,$4F,$0A,$4D,$04,$4B,$04,$00,$00,$FF,$00
	db $4B,$06,$4C,$06,$4D,$06,$4F,$0A,$4F,$0A,$4D,$04,$4C,$04,$4B,$04
	db $FF,$00,$4B,$06,$4C,$06,$4D,$06,$4E,$06,$4F,$0A,$4F,$0A,$4E,$04
	db $4D,$04,$4C,$04,$4B,$04,$FF,$00

DATA_D103BE:
	db $DE,$03,$00,$00,$F0,$03,$00,$00,$0A,$04,$00,$00,$E8,$03,$00,$00
	db $FE,$03,$00,$00,$20,$04,$00,$00,$FE,$0B,$00,$00,$06,$00,$00,$00
	db $09,$06,$0C,$0A,$0C,$0A,$09,$06,$FF,$00,$08,$00,$00,$00,$00,$00
	db $F8,$FF,$08,$06,$0A,$06,$0C,$0A,$0C,$0A,$0A,$04,$08,$04,$FF,$00
	db $07,$00,$08,$00,$00,$00,$00,$00,$F8,$FF,$F9,$FF,$08,$06,$09,$06
	db $0A,$06,$0B,$06,$0C,$0A,$0C,$0A,$0B,$04,$0A,$04,$09,$04,$08,$04
	db $FF,$00,$07,$00,$08,$00,$08,$00,$06,$00,$00,$00,$00,$00,$FA,$FF
	db $F8,$FF,$F8,$FF,$F9,$FF

DATA_D10434:
	db $7C,$04,$00,$00,$88,$04,$00,$00,$96,$04,$00,$00,$54,$04,$00,$00
	db $5C,$04,$00,$00,$68,$04,$00,$00,$FE,$0B,$00,$00,$0E,$04,$00,$00
	db $07,$00,$00,$00,$00,$00,$F9,$FF,$03,$00,$07,$00,$00,$00,$00,$00
	db $F9,$FF,$FD,$FF,$03,$00,$07,$00,$07,$00,$06,$00,$00,$00,$00,$00
	db $FA,$FF,$F9,$FF,$F9,$FF,$FD,$FF,$1D,$06,$20,$0C,$20,$0C,$1D,$04
	db $14,$00,$FF,$00,$1C,$06,$1E,$0C,$20,$0C,$20,$0C,$1E,$0C,$1C,$04
	db $FF,$00,$1C,$06,$1D,$06,$1E,$0C,$1F,$0C,$20,$0C,$20,$0C,$1F,$0C
	db $1E,$0C,$1D,$04,$1C,$04,$FF,$00

DATA_D104AC:
	db $CC,$04,$00,$00,$CC,$04,$00,$00,$CC,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0C,$00,$00,$01,$00,$00,$00
	db $15,$FD,$16,$FD,$FF,$00

DATA_D104D2:
	db $F2,$04,$00,$00,$F2,$04,$00,$00,$F2,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$0A,$04,$00,$00
	db $16,$FE,$15,$FE,$FF,$00

DATA_D104F8:
	db $18,$05,$00,$00,$18,$05,$00,$00,$18,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$D4,$0C,$00,$00,$01,$00,$00,$00
	db $0D,$00,$0E,$00,$FF,$00

DATA_D1051E:
	db $3E,$05,$00,$00,$3E,$05,$00,$00,$3E,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$02,$00,$00,$00
	db $0E,$00,$0D,$00,$FF,$00

DATA_D10544:
	db $64,$05,$00,$00,$64,$05,$00,$00,$64,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$E0,$0C,$00,$00,$4B,$04,$00,$F0
	db $3A,$00,$3B,$00,$FF,$00

DATA_D1056A:
	db $8A,$05,$00,$00,$8A,$05,$00,$00,$8A,$05,$00,$00,$90,$05,$00,$00
	db $90,$05,$00,$00,$90,$05,$00,$00,$EA,$0C,$00,$00,$4B,$04,$00,$F0
	db $3A,$00,$3B,$00,$FF,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00
	db $06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00
	db $06,$00,$06,$00,$06,$00

DATA_D105B0:
	db $D0,$05,$00,$00,$D0,$05,$00,$00,$D0,$05,$00,$00,$D6,$05,$00,$00
	db $D6,$05,$00,$00,$D6,$05,$00,$00,$F4,$0C,$00,$00,$4B,$04,$00,$F0
	db $3A,$00,$3B,$00,$FF,$00,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF

DATA_D105F6:
	db $16,$06,$00,$00,$16,$06,$00,$00,$16,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$4F,$04,$00,$F0
	db $3C,$04,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$FF,$00

DATA_D10626:
	db $46,$06,$00,$00,$46,$06,$00,$00,$46,$06,$00,$00,$62,$06,$00,$00
	db $62,$06,$00,$00,$62,$06,$00,$00,$FE,$0B,$00,$00,$4F,$04,$00,$F0
	db $3C,$04,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B
	db $3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$FF,$00,$06,$00,$06,$00
	db $06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00
	db $06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00

DATA_D10682:
	db $A2,$06,$00,$00,$A2,$06,$00,$00,$A2,$06,$00,$00,$BE,$06,$00,$00
	db $BE,$06,$00,$00,$BE,$06,$00,$00,$FE,$0B,$00,$00,$4F,$04,$00,$F0
	db $3C,$04,$3D,$04,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B
	db $3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$3D,$0B,$FF,$00,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF

DATA_D106DE:
	db $FE,$06,$00,$00,$FE,$06,$00,$00,$FE,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$06,$00,$00,$00
	db $3E,$00,$3F,$00,$40,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00
	db $41,$00,$41,$00,$41,$00,$41,$00,$40,$00,$40,$00,$3F,$00,$3F,$00
	db $3E,$00,$FF,$00

DATA_D10722:
	db $42,$07,$00,$00,$42,$07,$00,$00,$42,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$06,$00,$00,$00
	db $2D,$00,$2E,$00,$2F,$00,$30,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$30,$00,$30,$00,$2F,$00,$2F,$00
	db $2E,$00,$2E,$00,$2D,$00,$FF,$00

DATA_D1076A:
	db $8A,$07,$00,$00,$8A,$07,$00,$00,$8A,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FE,$0B,$00,$00,$0E,$04,$00,$00
	db $21,$00,$22,$00,$23,$00,$24,$00,$24,$00,$24,$00,$24,$00,$24,$00
	db $24,$00,$24,$00,$24,$00,$23,$00,$23,$00,$22,$00,$22,$00,$21,$00
	db $FF,$00

DATA_D107AC:
	db $CC,$07,$00,$00,$CC,$07,$00,$00,$CC,$07,$00,$00,$EE,$07,$00,$00
	db $EE,$07,$00,$00,$EE,$07,$00,$00,$FE,$0B,$00,$00,$0B,$17,$06,$00
	db $58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00
	db $58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00,$58,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_D1081E:
	db $3E,$08,$00,$00,$3E,$08,$00,$00,$3E,$08,$00,$00,$9C,$08,$00,$00
	db $9C,$08,$00,$00,$9C,$08,$00,$00,$FE,$0B,$00,$00,$E3,$00,$00,$F0
	db $56,$00,$56,$00,$57,$00,$57,$00,$58,$00,$58,$00,$59,$00,$59,$00
	db $5A,$00,$5A,$00,$5B,$00,$5B,$00,$5C,$00,$5C,$00,$5D,$00,$5E,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$FF,$00,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FB,$FF,$FB,$FF,$FC,$FF
	db $FC,$FF,$FD,$FF,$FD,$FF,$FE,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_D10908:
	db $28,$09,$00,$00,$28,$09,$00,$00,$28,$09,$00,$00,$E8,$09,$00,$00
	db $E8,$09,$00,$00,$E8,$09,$00,$00,$FE,$0B,$00,$00,$C3,$00,$00,$F0
	db $56,$00,$56,$00,$57,$00,$57,$00,$58,$00,$58,$00,$59,$00,$59,$00
	db $5A,$00,$5A,$00,$5B,$00,$5B,$00,$5C,$00,$5C,$00,$5D,$00,$5E,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00
	db $24,$00,$24,$00,$23,$00,$23,$00,$22,$00,$22,$00,$21,$00,$21,$00
	db $14,$00,$13,$00,$12,$00,$11,$00,$10,$00,$0F,$00,$0F,$00,$FF,$00
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FB,$FF,$FB,$FF
	db $FC,$FF,$FC,$FF,$FD,$FF,$FD,$FF,$FE,$FF,$FF,$FF,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_D10AB4:
	db $10,$0B,$00,$00,$10,$0B,$00,$00,$10,$0B,$00,$00,$D4,$0A,$00,$00
	db $D4,$0A,$00,$00,$D4,$0A,$00,$00,$FE,$0B,$00,$00,$47,$04,$00,$F0
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$06,$00
	db $06,$00,$05,$00,$05,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$04,$00,$03,$00,$03,$00,$02,$00,$02,$00,$42,$06,$43,$06
	db $44,$06,$45,$0A,$45,$0A,$45,$0A,$46,$0A,$47,$0A,$48,$0A,$48,$0A
	db $48,$0A,$48,$0A,$FF,$00

DATA_D10B2A:
	db $4A,$0B,$00,$00,$4A,$0B,$00,$00,$4A,$0B,$00,$00,$60,$0B,$00,$00
	db $60,$0B,$00,$00,$60,$0B,$00,$00,$FE,$0B,$00,$00,$0F,$00,$00,$00
	db $50,$00,$51,$00,$52,$08,$53,$08,$54,$0A,$54,$0A,$53,$08,$52,$08
	db $51,$00,$50,$00,$FF,$00,$04,$00,$03,$00,$02,$00,$01,$00,$00,$00
	db $00,$00,$FF,$FF,$FE,$FF,$FD,$FF,$FC,$FF

DATA_D10B74:
	db $C8,$0B,$00,$00,$C8,$0B,$00,$00,$C8,$0B,$00,$00,$94,$0B,$00,$00
	db $94,$0B,$00,$00,$94,$0B,$00,$00,$FE,$0B,$00,$00,$07,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$00
	db $0C,$00,$0C,$00,$0C,$00,$0C,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $08,$00,$08,$00,$08,$00,$06,$00,$06,$00,$06,$00,$04,$00,$04,$00
	db $02,$00,$02,$00,$60,$06,$61,$06,$62,$06,$63,$06,$64,$06,$65,$06
	db $66,$06,$67,$06,$68,$06,$69,$06,$69,$06,$69,$06,$69,$06,$69,$06
	db $69,$06,$69,$06,$69,$06,$69,$06,$69,$06,$69,$06,$69,$06,$69,$06
	db $6A,$06,$6B,$06,$6C,$06,$6D,$06,$FF,$00,$FF,$FF,$08,$00,$12,$00
	db $0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00
	db $12,$00,$26,$00,$04,$00,$03,$00,$02,$00,$02,$00,$01,$00,$01,$00
	db $20,$00,$0A,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00
	db $15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00
	db $03,$00,$02,$00,$02,$00,$01,$00,$24,$00,$20,$00,$0B,$00,$FF,$FF
	db $FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00
	db $15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00
	db $03,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$00,$00,$00,$00
	db $08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00
	db $14,$00,$26,$00,$12,$00,$26,$00,$02,$00,$02,$00,$01,$00,$01,$00
	db $20,$00,$0A,$00,$FF,$FF,$00,$00,$05,$00,$10,$00,$04,$00,$14,$00
	db $1D,$00,$08,$00,$05,$00,$0A,$00,$05,$00,$0C,$00,$05,$00,$02,$00
	db $05,$00,$04,$00,$05,$00,$01,$00,$06,$00,$20,$00,$0C,$00,$FF,$FF
	db $00,$00,$11,$00,$FF,$FF,$00,$00,$08,$00,$FF,$FF,$20,$00,$14,$00
	db $01,$00,$14,$00,$FF,$FF,$20,$00,$1F,$00,$01,$00,$1F,$00,$FF,$FF
	db $20,$00,$20,$00,$01,$00,$20,$00,$FF,$FF

DATA_D10CFE:
	db $01,$00,$08,$00,$10,$00,$FF,$23,$01,$FE,$08,$FE,$10,$FE,$FF,$23
	db $01,$00,$02,$00,$04,$00,$FF,$0F,$01,$FE,$02,$FE,$04,$FE,$FF,$0F
	db $10,$00,$02,$00,$04,$00,$FF,$1E,$10,$FE,$02,$FE,$04,$FE,$FF,$1E
	db $01,$00,$10,$00,$10,$00,$10,$00,$10,$00,$FF,$83,$01,$00,$08,$00
	db $08,$00,$08,$00,$08,$00,$FF,$80,$01,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$FF,$84,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$FF,$85
	db $FF

;--------------------------------------------------------------------

DATA_D10D5F:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$07,$06,$00,$3E,$00,$02,$4E,$00
	db $04,$2A,$10,$06,$3A,$10,$08,$4A,$10,$0A,$5A,$10,$0C,$19,$20,$0E
	db $29,$20,$20,$39,$20,$22,$49,$20,$24,$59,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$40,$30,$40,$50,$30,$42,$02,$40
	db $44,$12,$40,$46,$22,$40,$48,$32,$40,$4A,$42,$40,$4C,$52,$40,$4E
	db $14,$50,$60,$24,$50,$62,$34,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Jump4.bin"	; GFXSize = $D00

DATA_D11AB7:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$09,$06,$00,$51,$00,$02,$75,$00
	db $04,$0D,$10,$06,$3D,$10,$08,$4D,$10,$0A,$5D,$10,$0C,$6D,$10,$0E
	db $7D,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$60,$20,$2E,$70,$20,$40,$80,$20,$42,$42,$30
	db $44,$52,$30,$46,$62,$30,$48,$72,$30,$4A,$44,$40,$4C,$56,$40,$4E
	db $66,$40,$60,$56,$50,$62,$66,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_FarPunch4.bin"	; GFXSize = $D00

DATA_D1280F:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$07,$05,$00,$17,$00,$02,$27,$00
	db $04,$37,$00,$06,$64,$00,$08,$0B,$10,$0A,$1B,$10,$0C,$2B,$10,$0E
	db $3B,$10,$20,$4B,$10,$22,$5B,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$60,$20,$42,$1E,$30
	db $44,$2E,$30,$46,$3E,$30,$48,$4E,$30,$4A,$5E,$30,$4C,$14,$40,$4E
	db $24,$40,$60,$34,$40,$62,$44,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_LowBlowHurt2.bin"	; GFXSize = $D00

DATA_D13567:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$07,$06,$00,$0A,$00,$02,$2D,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$4C,$10,$0E
	db $0B,$20,$20,$1B,$20,$22,$2B,$20,$24,$3B,$20,$26,$4B,$20,$28,$5B
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$40,$30
	db $44,$50,$30,$46,$60,$30,$48,$1E,$40,$4A,$2E,$40,$4C,$3E,$40,$4E
	db $4E,$40,$60,$1D,$50,$62,$2D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandBlock1.bin"	; GFXSize = $D00

DATA_D142BF:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$07,$00,$29,$00,$02,$1E,$10
	db $04,$2E,$10,$06,$0E,$20,$08,$1E,$20,$0A,$2E,$20,$0C,$3E,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$40,$30,$28,$54
	db $30,$2A,$0A,$40,$2C,$1A,$40,$2E,$2A,$40,$40,$3A,$40,$42,$4A,$40
	db $44,$04,$50,$46,$14,$50,$48,$24,$50,$4A,$34,$50,$4C,$44,$50,$4E
	db $02,$60,$60,$12,$60,$62,$22,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk3.bin"	; GFXSize = $D00

DATA_D15017:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$07,$00,$2A,$00,$02,$1F,$10
	db $04,$2F,$10,$06,$0C,$20,$08,$1C,$20,$0A,$2C,$20,$0C,$3C,$20,$0E
	db $01,$30,$20,$11,$30,$22,$21,$30,$24,$31,$30,$26,$41,$30,$28,$07
	db $40,$2A,$17,$40,$2C,$27,$40,$2E,$37,$40,$40,$47,$40,$42,$57,$40
	db $44,$02,$50,$46,$12,$50,$48,$22,$50,$4A,$32,$50,$4C,$42,$50,$4E
	db $00,$60,$60,$10,$60,$62,$20,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk4.bin"	; GFXSize = $D00

DATA_D15D6F:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$07,$06,$00,$42,$00,$02,$52,$00
	db $04,$62,$00,$06,$34,$10,$08,$44,$10,$0A,$54,$10,$0C,$64,$10,$0E
	db $2A,$20,$20,$3A,$20,$22,$4A,$20,$24,$5B,$20,$26,$6B,$20,$28,$21
	db $30,$2A,$31,$30,$2C,$41,$30,$2E,$51,$30,$40,$61,$30,$42,$06,$40
	db $44,$16,$40,$46,$26,$40,$48,$36,$40,$4A,$46,$40,$4C,$00,$50,$4E
	db $10,$50,$60,$2F,$50,$62,$3F,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_JumpKick1.bin"	; GFXSize = $D00

DATA_D16AC7:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$05,$08,$00,$0F,$00,$02,$1F,$00
	db $04,$2F,$00,$06,$07,$10,$08,$17,$10,$0A,$27,$10,$0C,$37,$10,$0E
	db $47,$10,$20,$07,$20,$22,$17,$20,$24,$27,$20,$26,$37,$20,$28,$47
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$40,$30
	db $44,$05,$40,$46,$15,$40,$48,$2D,$40,$4A,$15,$50,$4C,$2F,$50,$4E
	db $2B,$60,$60,$3B,$60,$62,$2B,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_CloseKick2.bin"	; GFXSize = $D00

DATA_D1781F:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$08,$00,$18,$00,$02,$28,$00
	db $04,$38,$00,$06,$18,$10,$08,$28,$10,$0A,$38,$10,$0C,$48,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$41,$20,$28,$51
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$30,$30,$42,$42,$30
	db $44,$09,$40,$46,$19,$40,$48,$31,$40,$4A,$41,$40,$4C,$16,$50,$4E
	db $34,$50,$60,$2F,$60,$62,$2F,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Jump1.bin"	; GFXSize = $D00

DATA_D18577:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$07,$00,$25,$00,$02,$3A,$00
	db $04,$1C,$10,$06,$2C,$10,$08,$3C,$10,$0A,$4C,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$41,$20,$26,$51,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$09,$40
	db $44,$19,$40,$46,$2A,$40,$48,$3A,$40,$4A,$0A,$50,$4C,$29,$50,$4E
	db $39,$50,$60,$28,$60,$62,$38,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_JumpKick1.bin"	; GFXSize = $D00

DATA_D192CF:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$08,$00,$33,$00,$02,$15,$10
	db $04,$25,$10,$06,$35,$10,$08,$45,$10,$0A,$11,$20,$0C,$21,$20,$0E
	db $31,$20,$20,$41,$20,$22,$51,$20,$24,$10,$30,$26,$22,$30,$28,$32
	db $30,$2A,$42,$30,$2C,$10,$40,$2E,$20,$40,$40,$30,$40,$42,$40,$40
	db $44,$0D,$50,$46,$1D,$50,$48,$38,$50,$4A,$09,$60,$4C,$38,$60,$4E
	db $00,$70,$60,$10,$70,$62,$3A,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_StandBlock1.bin"	; GFXSize = $D00

DATA_D1A027:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$08,$00,$2D,$00,$02,$21,$10
	db $04,$31,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $40,$20,$20,$18,$30,$22,$28,$30,$24,$38,$30,$26,$12,$40,$28,$22
	db $40,$2A,$32,$40,$2C,$42,$40,$2E,$16,$50,$40,$26,$50,$42,$38,$50
	db $44,$48,$50,$46,$19,$60,$48,$29,$60,$4A,$40,$60,$4C,$50,$60,$4E
	db $27,$70,$60,$4A,$70,$62,$5A,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarPunch4.bin"	; GFXSize = $D00

DATA_D1AD7F:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$31,$00,$02,$41,$00
	db $04,$51,$00,$06,$09,$10,$08,$19,$10,$0A,$29,$10,$0C,$39,$10,$0E
	db $49,$10,$20,$59,$10,$22,$01,$20,$24,$11,$20,$26,$21,$20,$28,$31
	db $20,$2A,$41,$20,$2C,$51,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$06,$40,$4C,$16,$40,$4E
	db $26,$40,$60,$36,$40,$62,$46,$40,$64,$56,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_LowBlowHurt2.bin"	; GFXSize = $D80

DATA_D1BB5A:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$30,$00,$02,$40,$00
	db $04,$50,$00,$06,$0A,$10,$08,$1A,$10,$0A,$2A,$10,$0C,$3A,$10,$0E
	db $4A,$10,$20,$5A,$10,$22,$01,$20,$24,$11,$20,$26,$21,$20,$28,$31
	db $20,$2A,$41,$20,$2C,$51,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$04,$40,$4C,$14,$40,$4E
	db $24,$40,$60,$34,$40,$62,$44,$40,$64,$54,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_LowBlowHurt3.bin"	; GFXSize = $D80

DATA_D1C935:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$06,$05,$00,$1E,$00,$02,$2E,$00
	db $04,$3E,$00,$06,$4E,$00,$08,$0A,$10,$0A,$1A,$10,$0C,$2A,$10,$0E
	db $3A,$10,$20,$4A,$10,$22,$5A,$10,$24,$01,$20,$26,$11,$20,$28,$21
	db $20,$2A,$31,$20,$2C,$41,$20,$2E,$51,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$04,$40,$4E
	db $14,$40,$60,$24,$40,$62,$4C,$40,$64,$5C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Dead1.bin"	; GFXSize = $D80

DATA_D1D710:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$08,$05,$00,$52,$00,$02,$62,$00
	db $04,$1D,$10,$06,$2D,$10,$08,$3D,$10,$0A,$4D,$10,$0C,$5D,$10,$0E
	db $6D,$10,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$50
	db $20,$2A,$60,$20,$2C,$70,$20,$2E,$02,$30,$40,$12,$30,$42,$24,$30
	db $44,$34,$30,$46,$44,$30,$48,$54,$30,$4A,$64,$30,$4C,$74,$30,$4E
	db $00,$40,$60,$10,$40,$62,$54,$40,$64,$64,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Dead3.bin"	; GFXSize = $D80

DATA_D1E4EB:
	db $1B,$00,$5B,$00,$01,$00,$0A,$00,$07,$05,$00,$09,$00,$02,$1D,$00
	db $04,$2D,$00,$06,$3D,$00,$08,$4D,$00,$0A,$5D,$00,$0C,$00,$10,$0E
	db $10,$10,$20,$20,$10,$22,$30,$10,$24,$40,$10,$26,$50,$10,$28,$60
	db $10,$2A,$0F,$20,$2C,$1F,$20,$2E,$2F,$20,$40,$3F,$20,$42,$4F,$20
	db $44,$5F,$20,$46,$31,$30,$48,$41,$30,$4A,$51,$30,$4C,$61,$30,$4E
	db $36,$40,$60,$46,$40,$62,$58,$40,$64,$68,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_ClosePunch3.bin"	; GFXSize = $D80

;--------------------------------------------------------------------

DATA_D1F2C6:
	dd DATA_D1FFA0-DATA_D1F2C6,DATA_D1F36A-DATA_D1F2C6,DATA_D1F432-DATA_D1F2C6,DATA_D1F486-DATA_D1F2C6
	dd DATA_D1F4C8-DATA_D1F2C6,DATA_D1F536-DATA_D1F2C6,DATA_D1F57E-DATA_D1F2C6,DATA_D1F5AA-DATA_D1F2C6
	dd DATA_D1F76E-DATA_D1F2C6,DATA_D1F794-DATA_D1F2C6,DATA_D1F3E0-DATA_D1F2C6,DATA_D1F61A-DATA_D1F2C6
	dd DATA_D1F668-DATA_D1F2C6,DATA_D1F6C0-DATA_D1F2C6,DATA_D1F9A6-DATA_D1F2C6,DATA_D1F3BC-DATA_D1F2C6
	dd DATA_D1F718-DATA_D1F2C6,DATA_D1F7BA-DATA_D1F2C6,DATA_D1F7E0-DATA_D1F2C6,DATA_D1F806-DATA_D1F2C6
	dd DATA_D1F2C6-DATA_D1F2C6,DATA_D1F8B8-DATA_D1F2C6,DATA_D1F82C-DATA_D1F2C6,DATA_D1F872-DATA_D1F2C6
	dd DATA_D1F9E6-DATA_D1F2C6,DATA_D1FA76-DATA_D1F2C6,DATA_D1FBDC-DATA_D1F2C6,DATA_D1F2C6-DATA_D1F2C6
	dd DATA_D1F2C6-DATA_D1F2C6,DATA_D1F2C6-DATA_D1F2C6,DATA_D1F55A-DATA_D1F2C6,DATA_D1FDF4-DATA_D1F2C6
	dd DATA_D1F8EA-DATA_D1F2C6,DATA_D1F948-DATA_D1F2C6,DATA_D1FA2E-DATA_D1F2C6,DATA_D1F2C6-DATA_D1F2C6
	dd DATA_D1FE62-DATA_D1F2C6,DATA_D1F2C6-DATA_D1F2C6,DATA_D1FD82-DATA_D1F2C6,DATA_D1F50A-DATA_D1F2C6
	dd $FFFFFFFF

DATA_D1F36A:
	db $C4,$00,$00,$00,$C4,$00,$00,$00,$C4,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DC,$0B,$00,$00,$02,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$02,$00
	db $02,$00,$02,$00,$02,$00,$02,$00,$01,$00,$01,$00,$01,$00,$01,$00
	db $01,$00,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00
	db $FF,$00

DATA_D1F3BC:
	db $16,$01,$00,$00,$16,$01,$00,$00,$16,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$06,$0C,$00,$00,$11,$00,$00,$05
	db $00,$00,$FF,$00

DATA_D1F3E0:
	db $3A,$01,$00,$00,$3A,$01,$00,$00,$3A,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$30,$0C,$00,$00,$02,$09,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$02,$00
	db $02,$00,$02,$00,$02,$00,$02,$00,$01,$00,$01,$00,$01,$00,$01,$00
	db $01,$00,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00
	db $FF,$00

DATA_D1F432:
	db $8C,$01,$00,$00,$9A,$01,$00,$00,$AC,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$06,$00,$00,$00
	db $05,$06,$07,$06,$09,$0A,$09,$0A,$07,$04,$05,$04,$FF,$00,$05,$06
	db $06,$06,$08,$06,$09,$0A,$09,$0A,$08,$04,$06,$04,$05,$04,$FF,$00
	db $05,$06,$06,$06,$07,$06,$08,$06,$09,$0A,$08,$0A,$07,$04,$06,$04
	db $05,$04,$FF,$00

DATA_D1F486:
	db $E0,$01,$00,$00,$E0,$01,$00,$00,$E0,$01,$00,$00,$F2,$01,$00,$00
	db $F2,$01,$00,$00,$F2,$01,$00,$00,$32,$0C,$00,$00,$08,$00,$00,$00
	db $3C,$00,$3D,$00,$3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00
	db $FF,$00,$05,$00,$07,$00,$07,$00,$05,$00,$02,$00,$00,$00,$03,$00
	db $03,$00

DATA_D1F4C8:
	db $22,$02,$00,$00,$22,$02,$00,$00,$22,$02,$00,$00,$34,$02,$00,$00
	db $34,$02,$00,$00,$34,$02,$00,$00,$5C,$0C,$00,$00,$08,$00,$00,$00
	db $43,$00,$42,$00,$41,$00,$40,$00,$3F,$00,$3E,$00,$3D,$00,$3C,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$00,$00,$FE,$FF,$FB,$FF,$F9,$FF,$F9,$FF
	db $FB,$FF

DATA_D1F50A:
	db $64,$02,$00,$00,$64,$02,$00,$00,$64,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$02,$04,$00,$00
	db $0A,$00,$0B,$00,$0C,$00,$0D,$00,$0E,$00,$FF,$00

DATA_D1F536:
	db $90,$02,$00,$00,$90,$02,$00,$00,$90,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$86,$0C,$00,$00,$01,$00,$00,$00
	db $0E,$00,$FF,$00

DATA_D1F55A:
	db $B4,$02,$00,$00,$B4,$02,$00,$00,$B4,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$86,$0C,$00,$00,$01,$00,$00,$00
	db $0E,$00,$FF,$00

DATA_D1F57E:
	db $D8,$02,$00,$00,$D8,$02,$00,$00,$D8,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$02,$00,$00,$00
	db $0E,$00,$0D,$00,$0C,$00,$0B,$00,$0A,$00,$FF,$00

DATA_D1F5AA:
	db $04,$03,$00,$00,$18,$03,$00,$00,$32,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$0E,$04,$00,$00
	db $62,$00,$64,$00,$66,$00,$68,$09,$68,$09,$66,$00,$64,$00,$62,$00
	db $0E,$00,$FF,$00,$61,$00,$62,$00,$64,$00,$65,$00,$66,$00,$68,$09
	db $68,$09,$66,$00,$65,$00,$64,$00,$62,$00,$61,$00,$FF,$00,$61,$00
	db $62,$00,$63,$00,$64,$00,$65,$00,$66,$00,$67,$00,$68,$09,$68,$09
	db $67,$00,$66,$00,$65,$00,$64,$00,$63,$00,$62,$00,$61,$00,$FF,$00

DATA_D1F61A:
	db $74,$03,$00,$00,$74,$03,$00,$00,$74,$03,$00,$00,$8C,$03,$00,$00
	db $8C,$03,$00,$00,$8C,$03,$00,$00,$DA,$0B,$00,$00,$06,$00,$00,$00
	db $1B,$09,$1C,$09,$1D,$09,$1E,$09,$1F,$09,$20,$09,$21,$0A,$22,$0A
	db $23,$0A,$24,$09,$25,$09,$FF,$00,$0F,$00,$12,$00,$0A,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D5,$FF

DATA_D1F668:
	db $C2,$03,$00,$00,$D2,$03,$00,$00,$E4,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$06,$00,$00,$00
	db $26,$06,$27,$06,$2A,$0A,$2A,$0A,$27,$04,$26,$04,$00,$00,$FF,$00
	db $26,$06,$27,$06,$28,$06,$2A,$0A,$2A,$0A,$28,$04,$27,$04,$26,$04
	db $FF,$00,$26,$06,$27,$06,$28,$06,$29,$06,$2A,$0A,$2A,$0A,$29,$04
	db $28,$04,$27,$04,$26,$04,$FF,$00

DATA_D1F6C0:
	db $1A,$04,$00,$00,$2A,$04,$00,$00,$3C,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$0E,$04,$00,$00
	db $11,$06,$12,$06,$15,$0A,$15,$0A,$12,$04,$11,$04,$0E,$00,$FF,$00
	db $11,$06,$12,$06,$13,$06,$15,$0A,$15,$0A,$13,$04,$12,$06,$11,$04
	db $FF,$00,$11,$06,$12,$06,$13,$06,$14,$06,$15,$0A,$15,$0A,$14,$04
	db $13,$04,$12,$04,$11,$04,$FF,$00

DATA_D1F718:
	db $94,$04,$00,$00,$94,$04,$00,$00,$94,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$06,$00,$00,$00
	db $2F,$06,$30,$06,$31,$0A,$31,$0A,$30,$06,$2F,$04,$00,$00,$FF,$00
	db $2F,$06,$30,$06,$31,$06,$32,$0A,$32,$0A,$31,$04,$30,$04,$2F,$04
	db $FF,$00,$2F,$06,$30,$06,$31,$0A,$32,$0A,$33,$0A,$32,$0A,$31,$0A
	db $30,$04,$2F,$04,$FF,$00

DATA_D1F76E:
	db $C8,$04,$00,$00,$C8,$04,$00,$00,$C8,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B6,$0C,$00,$00,$01,$00,$00,$00
	db $0F,$FD,$10,$FD,$FF,$00

DATA_D1F794:
	db $EE,$04,$00,$00,$EE,$04,$00,$00,$EE,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$0A,$04,$00,$00
	db $10,$FE,$0F,$FE,$FF,$00

DATA_D1F7BA:
	db $14,$05,$00,$00,$14,$05,$00,$00,$14,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0C,$00,$00,$01,$00,$00,$00
	db $03,$00,$04,$00,$FF,$00

DATA_D1F7E0:
	db $3A,$05,$00,$00,$3A,$05,$00,$00,$3A,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$02,$00,$00,$00
	db $04,$00,$03,$00,$FF,$00

DATA_D1F806:
	db $60,$05,$00,$00,$60,$05,$00,$00,$60,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$BC,$0C,$00,$00,$4B,$04,$00,$EE
	db $2B,$00,$2C,$00,$FF,$00

DATA_D1F82C:
	db $86,$05,$00,$00,$86,$05,$00,$00,$86,$05,$00,$00,$8C,$05,$00,$00
	db $8C,$05,$00,$00,$8C,$05,$00,$00,$C6,$0C,$00,$00,$4B,$04,$00,$EE
	db $2B,$00,$2C,$00,$FF,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00

DATA_D1F872:
	db $CC,$05,$00,$00,$CC,$05,$00,$00,$CC,$05,$00,$00,$D2,$05,$00,$00
	db $D2,$05,$00,$00,$D2,$05,$00,$00,$D0,$0C,$00,$00,$4B,$04,$00,$EE
	db $2B,$00,$2C,$00,$FF,$00,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF

DATA_D1F8B8:
	db $12,$06,$00,$00,$12,$06,$00,$00,$12,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$4F,$04,$00,$EE
	db $2D,$04,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A
	db $FF,$00

DATA_D1F8EA:
	db $44,$06,$00,$00,$44,$06,$00,$00,$44,$06,$00,$00,$62,$06,$00,$00
	db $62,$06,$00,$00,$62,$06,$00,$00,$DA,$0B,$00,$00,$4F,$04,$00,$EE
	db $2D,$04,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A
	db $2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$FF,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00

DATA_D1F948:
	db $A2,$06,$00,$00,$A2,$06,$00,$00,$A2,$06,$00,$00,$C0,$06,$00,$00
	db $C0,$06,$00,$00,$C0,$06,$00,$00,$DA,$0B,$00,$00,$4F,$04,$00,$EE
	db $2D,$04,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A
	db $2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$2E,$0A,$FF,$00,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF

DATA_D1F9A6:
	db $00,$07,$00,$00,$00,$07,$00,$00,$00,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$06,$00,$00,$00
	db $34,$00,$35,$00,$36,$00,$37,$00,$37,$00,$37,$00,$37,$00,$37,$00
	db $37,$00,$37,$00,$36,$00,$36,$00,$35,$00,$35,$00,$34,$00,$FF,$00

DATA_D1F9E6:
	db $40,$07,$00,$00,$40,$07,$00,$00,$40,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$0E,$04,$00,$00
	db $16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00
	db $1A,$00,$1A,$00,$1A,$00,$1A,$00,$19,$00,$19,$00,$18,$00,$18,$00
	db $17,$00,$17,$00,$16,$00,$FF,$00

DATA_D1FA2E:
	db $88,$07,$00,$00,$88,$07,$00,$00,$88,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DA,$0B,$00,$00,$06,$00,$00,$00
	db $44,$00,$45,$00,$46,$00,$47,$00,$48,$00,$48,$00,$48,$00,$48,$00
	db $48,$00,$48,$00,$48,$00,$48,$00,$47,$00,$47,$00,$46,$00,$46,$00
	db $45,$00,$45,$00,$44,$00,$FF,$00

DATA_D1FA76:
	db $D0,$07,$00,$00,$D0,$07,$00,$00,$D0,$07,$00,$00,$62,$08,$00,$00
	db $62,$08,$00,$00,$62,$08,$00,$00,$DA,$0B,$00,$00,$C3,$00,$00,$F0
	db $39,$00,$39,$00,$39,$00,$39,$00,$3A,$00,$3A,$00,$3A,$00,$3A,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $FF,$00,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF,$F9,$FF
	db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FD,$FF,$FE,$FF
	db $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00

DATA_D1FBDC:
	db $36,$09,$00,$00,$36,$09,$00,$00,$36,$09,$00,$00,$EC,$09,$00,$00
	db $EC,$09,$00,$00,$EC,$09,$00,$00,$DA,$0B,$00,$00,$C3,$00,$00,$F0
	db $39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00
	db $3A,$00,$3A,$00,$3A,$00,$3A,$00,$3A,$00,$3A,$00,$3A,$00,$3A,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00,$3B,$00
	db $1A,$00,$19,$00,$18,$00,$17,$00,$16,$00,$0E,$00,$0D,$00,$0C,$00
	db $0B,$00,$0A,$00,$FF,$00,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF,$FD,$FF
	db $FD,$FF,$FE,$FF,$FE,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00

DATA_D1FD82:
	db $DC,$0A,$00,$00,$DC,$0A,$00,$00,$DC,$0A,$00,$00,$FE,$0A,$00,$00
	db $FE,$0A,$00,$00,$FE,$0A,$00,$00,$DA,$0B,$00,$00,$0B,$17,$06,$00
	db $39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00
	db $39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00,$39,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_D1FDF4:
	db $4E,$0B,$00,$00,$4E,$0B,$00,$00,$4E,$0B,$00,$00,$72,$0B,$00,$00
	db $72,$0B,$00,$00,$72,$0B,$00,$00,$DA,$0B,$00,$00,$4F,$04,$00,$F2
	db $4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00,$4F,$00,$50,$00,$51,$00
	db $52,$00,$53,$00,$54,$00,$55,$00,$56,$00,$57,$00,$58,$00,$59,$00
	db $5A,$00,$FF,$00,$02,$00,$04,$00,$06,$00,$08,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00

DATA_D1FE62:
	db $BC,$0B,$00,$00,$BC,$0B,$00,$00,$BC,$0B,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$D8,$0B,$00,$00,$06,$00,$00,$00
	db $5B,$09,$5C,$09,$5D,$09,$5E,$09,$5F,$09,$60,$0A,$60,$0A,$60,$0A
	db $5F,$09,$5E,$09,$5D,$03,$5C,$04,$5B,$01,$FF,$00,$FF,$FF,$FF,$FF
	db $08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00
	db $14,$00,$26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$02,$00,$02,$00
	db $01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00
	db $16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00
	db $26,$00,$04,$00,$03,$00,$02,$00,$02,$00,$01,$00,$0F,$00,$20,$00
	db $0B,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00,$0C,$00
	db $16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00
	db $26,$00,$04,$00,$03,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF
	db $00,$00,$00,$00,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00
	db $10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$02,$00,$02,$00
	db $01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$00,$00,$05,$00,$10,$00
	db $04,$00,$14,$00,$1D,$00,$08,$00,$05,$00,$0A,$00,$05,$00,$0C,$00
	db $05,$00,$02,$00,$05,$00,$04,$00,$05,$00,$01,$00,$06,$00,$20,$00
	db $0C,$00,$FF,$FF,$00,$00,$11,$00,$FF,$FF,$00,$00,$08,$00,$FF,$FF
	db $20,$00,$14,$00,$01,$00,$14,$00,$FF,$FF,$20,$00,$1F,$00,$01,$00
	db $1F,$00,$FF,$FF,$20,$00,$20,$00,$01,$00,$20,$00,$FF,$FF

DATA_D1FFA0:
	db $01,$00,$08,$00,$10,$00,$FF,$1E,$01,$FE,$08,$FE,$10,$FE,$FF,$1E
	db $01,$00,$02,$00,$04,$00,$FF,$23,$01,$FE,$02,$FE,$04,$FE,$FF,$23
	db $01,$00,$10,$00,$10,$00,$10,$00,$10,$00,$FF,$83,$01,$00,$08,$00
	db $08,$00,$08,$00,$08,$00,$FF,$80,$01,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$FF,$84,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$FF,$85
	db $FF,$38,$1B,$0F,$C9,$FC,$58,$80,$7F,$7F,$BF,$60,$85,$3F,$1F,$00

;--------------------------------------------------------------------

%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD2Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D20000:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$06,$00,$16,$00,$02,$26,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$05
	db $30,$2A,$15,$30,$2C,$25,$30,$2E,$35,$30,$40,$45,$30,$42,$55,$30
	db $44,$03,$40,$46,$13,$40,$48,$23,$40,$4A,$33,$40,$4C,$43,$40,$4E
	db $12,$50,$60,$22,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandIdle1.bin"	; GFXSize = $C80

DATA_D20CD5:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$06,$00,$10,$00,$02,$20,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$2B,$10,$0A,$3B,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$50,$30
	db $44,$05,$40,$46,$15,$40,$48,$25,$40,$4A,$35,$40,$4C,$45,$40,$4E
	db $11,$50,$60,$21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandIdle3.bin"	; GFXSize = $C80

DATA_D219AA:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$05,$00,$0F,$00,$02,$1F,$00
	db $04,$2F,$00,$06,$3F,$00,$08,$03,$10,$0A,$13,$10,$0C,$23,$10,$0E
	db $33,$10,$20,$43,$10,$22,$53,$10,$24,$63,$10,$26,$02,$20,$28,$12
	db $20,$2A,$22,$20,$2C,$32,$20,$2E,$47,$20,$40,$57,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30,$4E
	db $17,$40,$60,$27,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Ducking1.bin"	; GFXSize = $C80

DATA_D2267F:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$05,$00,$13,$00,$02,$23,$00
	db $04,$33,$00,$06,$60,$00,$08,$07,$10,$0A,$17,$10,$0C,$27,$10,$0E
	db $37,$10,$20,$47,$10,$22,$57,$10,$24,$06,$20,$26,$16,$20,$28,$26
	db $20,$2A,$36,$20,$2C,$4B,$20,$2E,$5B,$20,$40,$00,$30,$42,$1A,$30
	db $44,$2A,$30,$46,$3A,$30,$48,$4A,$30,$4A,$5A,$30,$4C,$1B,$40,$4E
	db $2B,$40,$60,$3B,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Ducking2.bin"	; GFXSize = $C80

DATA_D23354:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$05,$00,$10,$00,$02,$20,$00
	db $04,$58,$00,$06,$0B,$10,$08,$1B,$10,$0A,$2B,$10,$0C,$3B,$10,$0E
	db $4B,$10,$20,$5B,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$50,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$02,$40,$4C,$12,$40,$4E
	db $22,$40,$60,$32,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Jump1.bin"	; GFXSize = $C80

DATA_D24029:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$05,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$64,$00,$0C,$0E,$10,$0E
	db $1E,$10,$20,$2E,$10,$22,$3E,$10,$24,$4E,$10,$26,$5E,$10,$28,$00
	db $20,$2A,$10,$20,$2C,$20,$20,$2E,$30,$20,$40,$40,$20,$42,$50,$20
	db $44,$60,$20,$46,$25,$30,$48,$35,$30,$4A,$45,$30,$4C,$55,$30,$4E
	db $2A,$40,$60,$3A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Dead1.bin"	; GFXSize = $C80

DATA_D24CFE:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$05,$08,$00,$0B,$00,$02,$20,$00
	db $04,$31,$00,$06,$06,$10,$08,$16,$10,$0A,$26,$10,$0C,$36,$10,$0E
	db $46,$10,$20,$06,$20,$22,$16,$20,$24,$26,$20,$26,$36,$20,$28,$06
	db $30,$2A,$16,$30,$2C,$26,$30,$2E,$36,$30,$40,$08,$40,$42,$18,$40
	db $44,$28,$40,$46,$38,$40,$48,$08,$50,$4A,$2E,$50,$4C,$00,$60,$4E
	db $10,$60,$60,$33,$60,$62,$34,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk3.bin"	; GFXSize = $D00

DATA_D25A56:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$05,$08,$00,$02,$00,$02,$1D,$00
	db $04,$2E,$00,$06,$02,$10,$08,$12,$10,$0A,$22,$10,$0C,$32,$10,$0E
	db $42,$10,$20,$02,$20,$22,$12,$20,$24,$22,$20,$26,$32,$20,$28,$03
	db $30,$2A,$13,$30,$2C,$23,$30,$2E,$33,$30,$40,$03,$40,$42,$13,$40
	db $44,$23,$40,$46,$33,$40,$48,$06,$50,$4A,$2B,$50,$4C,$00,$60,$4E
	db $10,$60,$60,$2C,$60,$62,$2C,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk5.bin"	; GFXSize = $D00

DATA_D267AE:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$05,$08,$00,$03,$00,$02,$1D,$00
	db $04,$2E,$00,$06,$02,$10,$08,$12,$10,$0A,$22,$10,$0C,$32,$10,$0E
	db $42,$10,$20,$03,$20,$22,$13,$20,$24,$23,$20,$26,$33,$20,$28,$02
	db $30,$2A,$12,$30,$2C,$22,$30,$2E,$32,$30,$40,$02,$40,$42,$12,$40
	db $44,$22,$40,$46,$32,$40,$48,$05,$50,$4A,$29,$50,$4C,$00,$60,$4E
	db $10,$60,$60,$26,$60,$62,$27,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk6.bin"	; GFXSize = $D00

DATA_D27506:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$05,$08,$00,$06,$00,$02,$1F,$00
	db $04,$30,$00,$06,$04,$10,$08,$14,$10,$0A,$24,$10,$0C,$34,$10,$0E
	db $44,$10,$20,$04,$20,$22,$14,$20,$24,$24,$20,$26,$34,$20,$28,$04
	db $30,$2A,$14,$30,$2C,$24,$30,$2E,$34,$30,$40,$04,$40,$42,$14,$40
	db $44,$24,$40,$46,$34,$40,$48,$05,$50,$4A,$2C,$50,$4C,$00,$60,$4E
	db $10,$60,$60,$29,$60,$62,$29,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk7.bin"	; GFXSize = $D00

DATA_D2825E:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$05,$08,$00,$2A,$00,$02,$0E,$10
	db $04,$1E,$10,$06,$2E,$10,$08,$3E,$10,$0A,$4E,$10,$0C,$0C,$20,$0E
	db $1C,$20,$20,$2C,$20,$22,$3C,$20,$24,$0C,$30,$26,$1C,$30,$28,$2C
	db $30,$2A,$3C,$30,$2C,$0C,$40,$2E,$1C,$40,$40,$2C,$40,$42,$3C,$40
	db $44,$0B,$50,$46,$35,$50,$48,$04,$60,$4A,$14,$60,$4C,$34,$60,$4E
	db $00,$70,$60,$10,$70,$62,$35,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk9.bin"	; GFXSize = $D00

DATA_D28FB6:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$07,$08,$00,$4E,$00,$02,$5E,$00
	db $04,$04,$10,$06,$36,$10,$08,$46,$10,$0A,$56,$10,$0C,$66,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$50
	db $20,$2A,$60,$20,$2C,$05,$30,$2E,$15,$30,$40,$25,$30,$42,$35,$30
	db $44,$45,$30,$46,$55,$30,$48,$65,$30,$4A,$0B,$40,$4C,$51,$40,$4E
	db $51,$50,$60,$51,$60,$62,$51,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick4.bin"	; GFXSize = $D00

DATA_D29D0E:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$06,$00,$1F,$00,$02,$2F,$00
	db $04,$3F,$00,$06,$4F,$00,$08,$0B,$10,$0A,$1B,$10,$0C,$2B,$10,$0E
	db $3B,$10,$20,$4B,$10,$22,$0B,$20,$24,$1B,$20,$26,$2B,$20,$28,$3B
	db $20,$2A,$4B,$20,$2C,$5B,$20,$2E,$00,$30,$40,$10,$30,$42,$20,$30
	db $44,$30,$30,$46,$40,$30,$48,$50,$30,$4A,$34,$40,$4C,$44,$40,$4E
	db $54,$40,$60,$2E,$50,$62,$3E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick11.bin"	; GFXSize = $D00

DATA_D2AA66:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$09,$05,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$30,$00,$08,$40,$00,$0A,$50,$00,$0C,$60,$00,$0E
	db $00,$10,$20,$10,$10,$22,$20,$10,$24,$30,$10,$26,$40,$10,$28,$50
	db $10,$2A,$60,$10,$2C,$0E,$20,$2E,$48,$20,$40,$58,$20,$42,$68,$20
	db $44,$58,$30,$46,$68,$30,$48,$78,$30,$4A,$88,$30,$4C,$4E,$40,$4E
	db $5E,$40,$60,$75,$40,$62,$85,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarPunch5.bin"	; GFXSize = $D00

DATA_D2B7BE:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$06,$06,$00,$1D,$00,$02,$2D,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$0A
	db $30,$2A,$1A,$30,$2C,$2A,$30,$2E,$3A,$30,$40,$4A,$30,$42,$0A,$40
	db $44,$1A,$40,$46,$2A,$40,$48,$3A,$40,$4A,$4A,$40,$4C,$1C,$50,$4E
	db $2F,$50,$60,$45,$50,$62,$55,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Jump2.bin"	; GFXSize = $D00

DATA_D2C516:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$08,$04,$00,$1C,$00,$02,$2C,$00
	db $04,$3C,$00,$06,$4C,$00,$08,$5C,$00,$0A,$6C,$00,$0C,$0E,$10,$0E
	db $1E,$10,$20,$2E,$10,$22,$3E,$10,$24,$4E,$10,$26,$5E,$10,$28,$6E
	db $10,$2A,$00,$20,$2C,$10,$20,$2E,$20,$20,$40,$30,$20,$42,$40,$20
	db $44,$50,$20,$46,$60,$20,$48,$70,$20,$4A,$01,$30,$4C,$11,$30,$4E
	db $2C,$30,$60,$4F,$30,$62,$5F,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_Dead4.bin"	; GFXSize = $D00

DATA_D2D26E:
	db $1A,$00,$58,$00,$01,$00,$0A,$00,$0A,$06,$00,$26,$00,$02,$36,$00
	db $04,$46,$00,$06,$5B,$00,$08,$22,$10,$0A,$32,$10,$0C,$42,$10,$0E
	db $52,$10,$20,$62,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$67,$20,$2E,$77,$20,$40,$06,$30,$42,$1B,$30
	db $44,$2B,$30,$46,$3B,$30,$48,$76,$30,$4A,$86,$30,$4C,$27,$40,$4E
	db $82,$40,$60,$84,$50,$62,$94,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack6.bin"	; GFXSize = $D00

DATA_D2DFC6:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_DATA_D2DFC6_Main
.Block1Start:
	%ReadPreCompiledFilePointers(14, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_D2E5AE:
	dw $0069 : dd DATA_DB1280 : dw $0005,$0006,$0058,$003B,$0060
	dw $00A6 : dd DATA_DB1BC0 : dw $0005,$0006,$0058,$003A,$0060
	dw $00A7 : dd DATA_DA44E6 : dw $0005,$0006,$0058,$003B,$0060
	dw $00A7 : dd DATA_D840A2 : dw $0005,$0006,$005A,$003C,$0060
	dw $009D : dd DATA_DA4EA9 : dw $0005,$0006,$005A,$003B,$0060
	dw $009B : dd DATA_DB2500 : dw $0005,$0007,$005F,$002A,$0070
	dw $00A1 : dd DATA_DE1074 : dw $0004,$0006,$005F,$003B,$0060
	dw $009C : dd DATA_DE18AE : dw $0005,$0006,$004D,$003D,$0060
	dw $009C : dd DATA_DB2E40 : dw $0006,$0006,$0042,$003E,$0060
	dw $009A : dd DATA_DA586C : dw $0006,$0006,$0043,$003E,$0060
	dw $0097 : dd DATA_DA622F : dw $0005,$0006,$0059,$003C,$0060
	dw $00A6 : dd DATA_DC1A37 : dw $0005,$0006,$005A,$003D,$0060
	dw $00A3 : dd DATA_DE20E8 : dw $0004,$0005,$005C,$004C,$0050
	dw $009B : dd DATA_DF9295 : dw $0004,$0005,$005E,$004C,$0050
	dw $0099 : dd DATA_DF9A4C : dw $0004,$0005,$005E,$004C,$0050
	dw $009A : dd DATA_DFA203 : dw $0004,$0005,$0066,$004C,$0050
	dw $009C : dd DATA_DC22F4 : dw $0004,$0005,$0065,$004C,$0050
	dw $009B : dd DATA_DFA9BA : dw $0004,$0005,$005D,$004C,$0050
	dw $0099 : dd DATA_DB3780 : dw $0005,$0005,$005D,$004C,$0050
	dw $00A1 : dd DATA_D91280 : dw $0005,$0005,$005F,$004B,$0050
	dw $00A2 : dd DATA_DB40C0 : dw $0005,$0005,$0056,$004A,$0050
	dw $00A4 : dd DATA_D84B6B : dw $0007,$0005,$0047,$004A,$0050
	dw $00B4 : dd DATA_DE2922 : dw $0005,$0005,$005B,$004C,$0050
	dw $009C : dd DATA_DE315C : dw $0005,$0005,$0057,$004C,$0050
	dw $009C : dd DATA_DC2BB1 : dw $0005,$0005,$0053,$004B,$0050
	dw $009C : dd DATA_DC346E : dw $0005,$0005,$0051,$004C,$0050
	dw $009D : dd DATA_DC3D2B : dw $0005,$0005,$0050,$004B,$0050
	dw $009E : dd DATA_D91CC6 : dw $0005,$0006,$005B,$0038,$0060
	dw $00A2 : dd DATA_DFB171 : dw $0004,$0006,$005E,$0038,$0060
	dw $0096 : dd DATA_E25E3B : dw $0003,$0006,$0065,$0038,$0060
	dw $008B : dd DATA_E264EC : dw $0003,$0006,$0066,$0037,$0060
	dw $008B : dd DATA_E26B9D : dw $0005,$0006,$004A,$0038,$0060
	dw $008E : dd DATA_DB4A00 : dw $0006,$0006,$0048,$0039,$0060
	dw $009B : dd DATA_DE3996 : dw $0005,$0006,$0050,$0039,$0060
	dw $00A0 : dd DATA_DFB928 : dw $0004,$0006,$0062,$003A,$0060
	dw $00A2 : dd DATA_E2724E : dw $0003,$0006,$006F,$003A,$0060
	dw $0098 : dd DATA_DFC0DF : dw $0004,$0007,$0074,$002B,$0070
	dw $00A5 : dd DATA_D9270C : dw $0005,$0006,$005D,$0039,$0060
	dw $00A7 : dd DATA_D93152 : dw $0005,$0006,$0058,$003B,$0060
	dw $00A5 : dd DATA_DA6BF2 : dw $0005,$0007,$0056,$002B,$0070
	dw $00A0 : dd DATA_DD0000 : dw $0005,$0007,$0056,$002B,$0070
	dw $009B : dd DATA_D93B98 : dw $0006,$0007,$0042,$002B,$0070
	dw $0099 : dd DATA_DA75B5 : dw $0006,$0007,$003E,$0029,$0070
	dw $009E : dd DATA_DE41D0 : dw $0004,$0006,$0064,$002E,$0060
	dw $00A4 : dd DATA_DFC896 : dw $0004,$0005,$0062,$0032,$0050
	dw $009F : dd DATA_E09744 : dw $0005,$0004,$0050,$003E,$0040
	dw $009D : dd DATA_DD08BD : dw $0006,$0005,$0040,$0030,$0050
	dw $009E : dd DATA_DA7F78 : dw $0005,$0006,$0054,$003B,$0060
	dw $0099 : dd DATA_D945DE : dw $0006,$0006,$0045,$0039,$0060
	dw $009A : dd DATA_D85634 : dw $0006,$0006,$0042,$003A,$0060
	dw $009B : dd DATA_D95024 : dw $0005,$0006,$004D,$003D,$0060
	dw $0099 : dd DATA_D860FD : dw $0004,$0007,$0055,$002E,$0070
	dw $0095 : dd DATA_D86BC6 : dw $0005,$0006,$0059,$0039,$0060
	dw $00A7 : dd DATA_D95A6A : dw $0005,$0006,$0058,$0039,$0060
	dw $00A5 : dd DATA_D964B0 : dw $0005,$0006,$0056,$003A,$0060
	dw $00A2 : dd DATA_DA893B : dw $0005,$0006,$0054,$003B,$0060
	dw $009E : dd DATA_D96EF6 : dw $0005,$0006,$0054,$003C,$0060		; Note: Unused?
	dw $009D : dd DATA_D8768F : dw $0006,$0006,$0052,$003D,$0060
	dw $00A5 : dd DATA_DA92FE : dw $0007,$0005,$004D,$0042,$0050
	dw $00B6 : dd DATA_DFD04D : dw $0006,$0003,$0043,$0076,$0030
	dw $00A3 : dd DATA_DB5340 : dw $0005,$0006,$005C,$003A,$0060
	dw $00A8 : dd DATA_DB5C80 : dw $0005,$0006,$005C,$0039,$0060
	dw $00A8 : dd DATA_DD117A : dw $0005,$0006,$005D,$0039,$0060
	dw $00A9 : dd DATA_DD1A37 : dw $0005,$0006,$005C,$0039,$0060
	dw $00A7 : dd DATA_DD22F4 : dw $0005,$0006,$005C,$003A,$0060
	dw $00A8 : dd DATA_DD2BB1 : dw $0005,$0006,$005B,$003A,$0060
	dw $00A7 : dd DATA_DB65C0 : dw $0005,$0006,$005B,$003A,$0060
	dw $00A7 : dd DATA_DB6F00 : dw $0005,$0006,$005C,$003A,$0060
	dw $00A8 : dd DATA_DB7840 : dw $0005,$0006,$005B,$003A,$0060
	dw $00A8 : dd DATA_DD346E : dw $0005,$0006,$0058,$003B,$0060
	dw $00A7 : dd DATA_DA9CC1 : dw $0005,$0006,$005A,$003B,$0060
	dw $00A6 : dd DATA_DAA684 : dw $0005,$0006,$005C,$003C,$0060
	dw $00A2 : dd DATA_DB8180 : dw $0004,$0006,$0062,$003D,$0060
	dw $009E : dd DATA_DE4A0A : dw $0004,$0006,$0065,$003D,$0060
	dw $0099 : dd DATA_DAB047 : dw $0005,$0006,$005C,$0039,$0060
	dw $00A5 : dd DATA_DB8AC0 : dw $0004,$0006,$0061,$0034,$0060
	dw $009D : dd DATA_E09E78 : dw $0004,$0005,$0062,$003D,$0050
	dw $0093 : dd DATA_E35505 : dw $0003,$0004,$0062,$0046,$0040
	dw $008B : dd DATA_E405B5 : dw $0003,$0004,$0062,$003F,$0040
	dw $008B : dd DATA_E1C8BE : dw $0003,$0003,$0061,$004A,$0030
	dw $008B : dd DATA_E40ADD : dw $0003,$0003,$0062,$0046,$0030
	dw $008B : dd DATA_E40EFF : dw $0003,$0003,$0068,$0048,$0030
	dw $008F : dd DATA_CFDFBC : dw $0003,$0003,$0069,$0047,$0030
	dw $008B : dd DATA_E50D9A : dw $0003,$0003,$0068,$0040,$0030
	dw $008F : dd DATA_E511BC : dw $0003,$0003,$0065,$003F,$0030
	dw $0090 : dd DATA_E515DE : dw $0003,$0003,$0062,$0041,$0030
	dw $0089 : dd DATA_E51A00 : dw $0003,$0003,$0061,$0041,$0030
	dw $0086 : dd DATA_E51E22 : dw $0003,$0003,$0067,$0044,$0030
	dw $0088 : dd DATA_E52244 : dw $0003,$0003,$0062,$0046,$0030
	dw $0088 : dd DATA_E2787C : dw $0003,$0003,$0060,$0047,$0030
	dw $0089 : dd DATA_E52666 : dw $0003,$0003,$0062,$0046,$0030
	dw $008B : dd DATA_D88158 : dw $0005,$0006,$0058,$003A,$0060
	dw $00A4 : dd DATA_D9793C : dw $0005,$0007,$0057,$002B,$0070
	dw $009A : dd DATA_DB9400 : dw $0004,$0007,$0058,$002B,$0070
	dw $0093 : dd DATA_DB9D40 : dw $0005,$0007,$004B,$002A,$0070
	dw $0091 : dd DATA_DABA0A : dw $0007,$0005,$0030,$0048,$0050
	dw $0095 : dd DATA_DAC3CD : dw $0007,$0005,$0030,$0047,$0050
	dw $009A : dd DATA_DFD804 : dw $0004,$0005,$005C,$004C,$0050
	dw $009A : dd DATA_DE5244 : dw $0004,$0005,$005E,$004C,$0050
	dw $009C : dd DATA_DE5A7E : dw $0004,$0005,$0064,$004C,$0050
	dw $00A3 : dd DATA_DE62B8 : dw $0004,$0005,$0065,$004D,$0050
	dw $00A5 : dd DATA_DD3D2B : dw $0004,$0006,$0066,$003D,$0060
	dw $00A2 : dd DATA_E0A5AC : dw $0003,$0005,$0067,$004E,$0050
	dw $0097 : dd DATA_E1CD63 : dw $0005,$0005,$0055,$004E,$0050
	dw $0098 : dd DATA_DFDFBB : dw $0005,$0005,$004E,$004E,$0050
	dw $0099

DATA_D2EC40:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$09,$00,$01,$01,$1F,$1E,$02,$01,$1F,$01,$1F,$01,$00,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$03,$02,$68,$00,$00,$01,$1E,$0C,$02,$01,$1F
	db $01,$1F,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$20
	db $00,$01,$03,$23,$1E,$02,$01,$1F,$01,$23,$01,$04,$04,$2A,$00,$01
	db $01,$0A,$23,$02,$01,$1F,$01,$23,$00,$02,$02,$15,$00,$00,$01,$23
	db $1E,$02,$01,$1F,$01,$1E,$01,$00,$00,$00,$00,$01,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$01,$03,$02,$31,$00,$01,$01,$0B,$23,$01,$01,$1F,$01,$23
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00
	db $F8,$00,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$2E,$F8,$00,$0B,$FF
	db $FF,$02,$01,$1F,$01,$23,$01,$00,$00,$00,$F8,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$F8,$00,$02,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$04,$00,$55,$F8,$00,$2F,$0C,$FF,$01,$01,$1F
	db $01,$23,$01,$02,$00,$2E,$F8,$00,$0F,$0C,$0C,$02,$01,$1F,$01,$23
	db $01,$02,$00,$2E,$F8,$00,$0F,$1E,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$00,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$5F,$00,$01
	db $21,$0A,$1E,$01,$01,$1F,$01,$23,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$02,$01,$1F,$01,$23,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$02,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00

	%InsertGarbageData($D2EE70, incbin, UNK_D2EE70.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD3Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D30000:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$07,$00,$1E,$00,$02,$1D,$10
	db $04,$2D,$10,$06,$0C,$20,$08,$1C,$20,$0A,$2C,$20,$0C,$3C,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$40,$30,$28,$50
	db $30,$2A,$0B,$40,$2C,$1B,$40,$2E,$2B,$40,$40,$40,$40,$42,$50,$40
	db $44,$05,$50,$46,$15,$50,$48,$25,$50,$4A,$35,$50,$4C,$45,$50,$4E
	db $0B,$60,$60,$1B,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk1.bin"	; GFXSize = $C80

DATA_D30CD5:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$06,$00,$14,$00,$02,$24,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$41,$20,$26,$53,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$50,$30
	db $44,$04,$40,$46,$14,$40,$48,$24,$40,$4A,$34,$40,$4C,$44,$40,$4E
	db $04,$50,$60,$14,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk10.bin"	; GFXSize = $C80

DATA_D319AA:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$06,$00,$15,$00,$02,$25,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$50,$30
	db $44,$03,$40,$46,$13,$40,$48,$23,$40,$4A,$33,$40,$4C,$43,$40,$4E
	db $0B,$50,$60,$1B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk11.bin"	; GFXSize = $C80

DATA_D3267F:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$2B,$00,$02,$0E,$10
	db $04,$1E,$10,$06,$2E,$10,$08,$3E,$10,$0A,$0B,$20,$0C,$1B,$20,$0E
	db $2B,$20,$20,$3B,$20,$22,$09,$30,$24,$1B,$30,$26,$2B,$30,$28,$3B
	db $30,$2A,$0B,$40,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$0A,$50
	db $44,$33,$50,$46,$02,$60,$48,$12,$60,$4A,$34,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$36,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_StandIdle1.bin"	; GFXSize = $C80

DATA_D33354:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$2C,$00,$02,$0E,$10
	db $04,$1E,$10,$06,$2E,$10,$08,$3E,$10,$0A,$0C,$20,$0C,$1C,$20,$0E
	db $2C,$20,$20,$3C,$20,$22,$0A,$30,$24,$1B,$30,$26,$2B,$30,$28,$3B
	db $30,$2A,$0C,$40,$2C,$1C,$40,$2E,$2C,$40,$40,$3C,$40,$42,$0B,$50
	db $44,$34,$50,$46,$04,$60,$48,$14,$60,$4A,$35,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$37,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_StandIdle2.bin"	; GFXSize = $C80

DATA_D34029:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$2C,$00,$02,$0E,$10
	db $04,$1E,$10,$06,$2E,$10,$08,$3E,$10,$0A,$0B,$20,$0C,$1B,$20,$0E
	db $2B,$20,$20,$3B,$20,$22,$0B,$30,$24,$1B,$30,$26,$2B,$30,$28,$3B
	db $30,$2A,$0C,$40,$2C,$1C,$40,$2E,$2C,$40,$40,$3C,$40,$42,$0B,$50
	db $44,$34,$50,$46,$04,$60,$48,$14,$60,$4A,$35,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$37,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_StandIdle3.bin"	; GFXSize = $C80

DATA_D34CFE:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$2E,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$3F,$10,$0A,$0C,$20,$0C,$1C,$20,$0E
	db $2C,$20,$20,$3C,$20,$22,$0C,$30,$24,$1D,$30,$26,$2D,$30,$28,$3D
	db $30,$2A,$0C,$40,$2C,$1C,$40,$2E,$2C,$40,$40,$3C,$40,$42,$0C,$50
	db $44,$34,$50,$46,$06,$60,$48,$16,$60,$4A,$36,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$37,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_StandIdle4.bin"	; GFXSize = $C80

DATA_D359D3:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$01
	db $30,$2A,$11,$30,$2C,$21,$30,$2E,$31,$30,$40,$41,$30,$42,$01,$40
	db $44,$11,$40,$46,$2C,$40,$48,$2D,$50,$4A,$27,$60,$4C,$37,$60,$4E
	db $27,$70,$60,$37,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_CloseKick3.bin"	; GFXSize = $C80

DATA_D366A8:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$08,$00,$2A,$00,$02,$3A,$00
	db $04,$4A,$00,$06,$18,$10,$08,$31,$10,$0A,$41,$10,$0C,$51,$10,$0E
	db $61,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$07,$30,$2E,$28,$30,$40,$38,$30,$42,$48,$30
	db $44,$58,$30,$46,$43,$40,$48,$43,$50,$4A,$3C,$60,$4C,$4C,$60,$4E
	db $3C,$70,$60,$4C,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_CloseKick4.bin"	; GFXSize = $C80

DATA_D3737D:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$29,$00,$02,$10,$10
	db $04,$23,$10,$06,$33,$10,$08,$43,$10,$0A,$0C,$20,$0C,$1C,$20,$0E
	db $2C,$20,$20,$3C,$20,$22,$0B,$30,$24,$1B,$30,$26,$2B,$30,$28,$3B
	db $30,$2A,$0B,$40,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$0A,$50
	db $44,$31,$50,$46,$02,$60,$48,$12,$60,$4A,$31,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$36,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_LowBlowHurt1.bin"	; GFXSize = $C80

DATA_D38052:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$2F,$00,$02,$0E,$10
	db $04,$1E,$10,$06,$2E,$10,$08,$3E,$10,$0A,$0D,$20,$0C,$1D,$20,$0E
	db $2D,$20,$20,$3D,$20,$22,$0E,$30,$24,$1E,$30,$26,$2E,$30,$28,$3E
	db $30,$2A,$0B,$40,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$0B,$50
	db $44,$31,$50,$46,$05,$60,$48,$15,$60,$4A,$31,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$36,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_LowBlowHurt2.bin"	; GFXSize = $C80

DATA_D38D27:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$08,$00,$39,$00,$02,$1D,$10
	db $04,$2D,$10,$06,$3D,$10,$08,$17,$20,$0A,$27,$20,$0C,$37,$20,$0E
	db $47,$20,$20,$17,$30,$22,$27,$30,$24,$37,$30,$26,$47,$30,$28,$57
	db $30,$2A,$13,$40,$2C,$23,$40,$2E,$33,$40,$40,$43,$40,$42,$0F,$50
	db $44,$1F,$50,$46,$3A,$50,$48,$09,$60,$4A,$3A,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$3C,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_StandBlock2.bin"	; GFXSize = $C80

DATA_D399FC:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$08,$00,$10,$00,$02,$0F,$10
	db $04,$27,$10,$06,$10,$20,$08,$20,$20,$0A,$30,$20,$0C,$40,$20,$0E
	db $50,$20,$20,$02,$30,$22,$12,$30,$24,$22,$30,$26,$32,$30,$28,$42
	db $30,$2A,$00,$40,$2C,$10,$40,$2E,$20,$40,$40,$30,$40,$42,$01,$50
	db $44,$1A,$50,$46,$2A,$50,$48,$04,$60,$4A,$14,$60,$4C,$24,$60,$4E
	db $04,$70,$60,$14,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Dead2.bin"	; GFXSize = $C80

DATA_D3A6D1:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$07,$00,$30,$00,$02,$15,$10
	db $04,$26,$10,$06,$38,$10,$08,$48,$10,$0A,$11,$20,$0C,$21,$20,$0E
	db $31,$20,$20,$41,$20,$22,$51,$20,$24,$0E,$30,$26,$1E,$30,$28,$2E
	db $30,$2A,$3E,$30,$2C,$4E,$30,$2E,$0D,$40,$40,$1D,$40,$42,$2D,$40
	db $44,$3D,$40,$46,$04,$50,$48,$14,$50,$4A,$34,$50,$4C,$00,$60,$4E
	db $10,$60,$60,$37,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckHurt3.bin"	; GFXSize = $C80

DATA_D3B3A6:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$30,$00,$02,$25,$10
	db $04,$35,$10,$06,$45,$10,$08,$0C,$20,$0A,$1C,$20,$0C,$2C,$20,$0E
	db $3C,$20,$20,$4C,$20,$22,$0C,$30,$24,$1F,$30,$26,$2F,$30,$28,$3F
	db $30,$2A,$0D,$40,$2C,$1D,$40,$2E,$2D,$40,$40,$3D,$40,$42,$0B,$50
	db $44,$1B,$50,$46,$34,$50,$48,$08,$60,$4A,$34,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$35,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Ducking1.bin"	; GFXSize = $C80

DATA_D3C07B:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$2E,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$3F,$10,$0A,$0C,$20,$0C,$1C,$20,$0E
	db $2C,$20,$20,$3C,$20,$22,$0C,$30,$24,$1D,$30,$26,$2D,$30,$28,$3D
	db $30,$2A,$0C,$40,$2C,$1C,$40,$2E,$2C,$40,$40,$3C,$40,$42,$0C,$50
	db $44,$34,$50,$46,$06,$60,$48,$16,$60,$4A,$36,$60,$4C,$00,$70,$4E
	db $10,$70,$60,$37,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk1.bin"	; GFXSize = $C80

DATA_D3CD50:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$05,$08,$00,$04,$00,$02,$1E,$00
	db $04,$2F,$00,$06,$03,$10,$08,$13,$10,$0A,$23,$10,$0C,$33,$10,$0E
	db $43,$10,$20,$04,$20,$22,$14,$20,$24,$24,$20,$26,$34,$20,$28,$05
	db $30,$2A,$15,$30,$2C,$25,$30,$2E,$35,$30,$40,$05,$40,$42,$15,$40
	db $44,$2C,$40,$46,$06,$50,$48,$2D,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $32,$60,$60,$33,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk4.bin"	; GFXSize = $C80

DATA_D3DA25:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$05,$00,$02,$00,$02,$12,$00
	db $04,$22,$00,$06,$32,$00,$08,$02,$10,$0A,$12,$10,$0C,$22,$10,$0E
	db $32,$10,$20,$42,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$03,$30,$2E,$13,$30,$40,$23,$30,$42,$33,$30
	db $44,$43,$30,$46,$53,$30,$48,$11,$40,$4A,$21,$40,$4C,$31,$40,$4E
	db $44,$40,$60,$54,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarPunch2.bin"	; GFXSize = $C80

DATA_D3E6FA:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$06,$00,$25,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$50,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$41,$20,$28,$51
	db $20,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$50,$30
	db $44,$40,$40,$46,$50,$40,$48,$60,$40,$4A,$37,$50,$4C,$47,$50,$4E
	db $57,$50,$60,$67,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch3.bin"	; GFXSize = $C80

DATA_D3F3CF:
	dw $0800,$020A,$0A13,$0005,$0200,$0A13,$1205,$0200
	dw $0A13,$1200,$0214,$0A13,$0C00,$020A,$0A13,$080A
	dw $020A,$0A13,$1200,$0200,$0A13,$1205,$020A,$0A13
	dw $0805,$0214,$0A13,$1205,$0200,$0A13,$080A,$0200
	dw $0A13,$1205,$0200,$0A0F,$120A,$0200,$0A13,$120A
	dw $0200,$0A13,$0809,$020A,$0A13,$0A0C,$0200,$0A13
	dw $120E,$0200,$0A13,$120C,$020A,$0A13,$120C,$0200
	dw $0A13,$120C,$0200,$0A13,$120E,$0200,$0A13

	%InsertGarbageData($D3F44D, incbin, UNK_D3F44D.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD4Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D40000:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $08,$30,$20,$18,$30,$22,$28,$30,$24,$07,$40,$26,$21,$40,$28,$05
	db $50,$2A,$23,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandIdle1.bin"	; GFXSize = $700

DATA_D40734:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$06,$06,$00,$0E,$00,$02,$1E,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$2B,$10,$0A,$3B,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$0B
	db $30,$2A,$1B,$30,$2C,$2B,$30,$2E,$3F,$30,$40,$4F,$30,$42,$07,$40
	db $44,$17,$40,$46,$27,$40,$48,$37,$40,$4A,$47,$40,$4C,$11,$50,$4E
	db $21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_StandIdle2.bin"	; GFXSize = $C00

DATA_D41386:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$07,$04,$00,$18,$00,$02,$28,$00
	db $04,$38,$00,$06,$4C,$00,$08,$5C,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10,$28,$04
	db $20,$2A,$14,$20,$2C,$24,$20,$2E,$34,$20,$40,$44,$20,$42,$54,$20
	db $44,$64,$20,$46,$11,$30,$48,$21,$30,$4A,$31,$30,$4C,$41,$30,$4E
	db $51,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckBlock2.bin"	; GFXSize = $C00

DATA_D41FD8:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$07,$05,$00,$36,$00,$02,$47,$00
	db $04,$57,$00,$06,$18,$10,$08,$28,$10,$0A,$38,$10,$0C,$49,$10,$0E
	db $59,$10,$20,$13,$20,$22,$23,$20,$24,$33,$20,$26,$43,$20,$28,$53
	db $20,$2A,$63,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$21,$40,$4A,$31,$40,$4C,$46,$40,$4E
	db $56,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckHurt2.bin"	; GFXSize = $C00

DATA_D42C2A:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$07,$05,$00,$12,$00,$02,$22,$00
	db $04,$32,$00,$06,$42,$00,$08,$09,$10,$0A,$19,$10,$0C,$29,$10,$0E
	db $39,$10,$20,$49,$10,$22,$59,$10,$24,$05,$20,$26,$15,$20,$28,$25
	db $20,$2A,$35,$20,$2C,$4A,$20,$2E,$5A,$20,$40,$00,$30,$42,$10,$30
	db $44,$20,$30,$46,$30,$30,$48,$40,$30,$4A,$50,$30,$4C,$13,$40,$4E
	db $23,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_LowBlowHurt1.bin"	; GFXSize = $C00

DATA_D4387C:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$06,$07,$00,$1C,$00,$02,$1E,$10
	db $04,$2E,$10,$06,$10,$20,$08,$20,$20,$0A,$30,$20,$0C,$04,$30,$0E
	db $14,$30,$20,$24,$30,$22,$34,$30,$24,$44,$30,$26,$03,$40,$28,$13
	db $40,$2A,$23,$40,$2C,$33,$40,$2E,$43,$40,$40,$53,$40,$42,$05,$50
	db $44,$15,$50,$46,$25,$50,$48,$35,$50,$4A,$45,$50,$4C,$00,$60,$4E
	db $10,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk8.bin"	; GFXSize = $C00

DATA_D444CE:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$06,$06,$00,$15,$00,$02,$25,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$32,$20,$24,$42,$20,$26,$02,$30,$28,$12
	db $30,$2A,$22,$30,$2C,$32,$30,$2E,$42,$30,$40,$52,$30,$42,$05,$40
	db $44,$15,$40,$46,$25,$40,$48,$35,$40,$4A,$45,$40,$4C,$00,$50,$4E
	db $10,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Walk9.bin"	; GFXSize = $C00

DATA_D45120:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$07,$08,$00,$36,$00,$02,$46,$00
	db $04,$56,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$39,$10,$0E
	db $49,$10,$20,$59,$10,$22,$0C,$20,$24,$1C,$20,$26,$2C,$20,$28,$3C
	db $20,$2A,$4C,$20,$2C,$5C,$20,$2E,$32,$30,$40,$42,$30,$42,$52,$30
	db $44,$48,$40,$46,$49,$50,$48,$42,$60,$4A,$52,$60,$4C,$42,$70,$4E
	db $52,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_CloseKick5.bin"	; GFXSize = $C00

DATA_D45D72:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$08,$00,$32,$00,$02,$0C,$10
	db $04,$1C,$10,$06,$2C,$10,$08,$3C,$10,$0A,$0D,$20,$0C,$1D,$20,$0E
	db $2D,$20,$20,$3D,$20,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$0B,$40,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$0A,$50
	db $44,$31,$50,$46,$08,$60,$48,$32,$60,$4A,$00,$70,$4C,$10,$70,$4E
	db $36,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_LowBlowHurt3.bin"	; GFXSize = $C00

DATA_D469C4:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$08,$00,$22,$00,$02,$32,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$0E,$30,$24,$1E,$30,$26,$2E,$30,$28,$07
	db $40,$2A,$17,$40,$2C,$27,$40,$2E,$37,$40,$40,$07,$50,$42,$2F,$50
	db $44,$02,$60,$46,$12,$60,$48,$31,$60,$4A,$00,$70,$4C,$10,$70,$4E
	db $35,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarPunch1.bin"	; GFXSize = $C00

DATA_D47616:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$08,$00,$1A,$00,$02,$2A,$00
	db $04,$17,$10,$06,$27,$10,$08,$04,$20,$0A,$14,$20,$0C,$24,$20,$0E
	db $03,$30,$20,$13,$30,$22,$23,$30,$24,$01,$40,$26,$11,$40,$28,$21
	db $40,$2A,$31,$40,$2C,$03,$50,$2E,$29,$50,$40,$39,$50,$42,$00,$60
	db $44,$10,$60,$46,$2D,$60,$48,$3D,$60,$4A,$06,$70,$4C,$16,$70,$4E
	db $34,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarPunch2.bin"	; GFXSize = $C00

DATA_D48268:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$06,$07,$00,$33,$00,$02,$27,$10
	db $04,$37,$10,$06,$0E,$20,$08,$1E,$20,$0A,$2E,$20,$0C,$3E,$20,$0E
	db $4E,$20,$20,$0E,$30,$22,$1E,$30,$24,$2E,$30,$26,$3E,$30,$28,$4E
	db $30,$2A,$0D,$40,$2C,$1D,$40,$2E,$2D,$40,$40,$3D,$40,$42,$4E,$40
	db $44,$04,$50,$46,$14,$50,$48,$34,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $37,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Ducking5.bin"	; GFXSize = $C00

DATA_D48EBA:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$07,$00,$24,$00,$02,$19,$10
	db $04,$29,$10,$06,$39,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$01,$30,$22,$11,$30,$24,$21,$30,$26,$31,$30,$28,$41
	db $30,$2A,$08,$40,$2C,$18,$40,$2E,$28,$40,$40,$3B,$40,$42,$07,$50
	db $44,$1D,$50,$46,$2D,$50,$48,$01,$60,$4A,$11,$60,$4C,$26,$60,$4E
	db $36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckKick1.bin"	; GFXSize = $C00

DATA_D49B0C:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$06,$07,$00,$2E,$00,$02,$12,$10
	db $04,$25,$10,$06,$37,$10,$08,$47,$10,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$0C,$30,$24,$1C,$30,$26,$2C,$30,$28,$3C
	db $30,$2A,$4C,$30,$2C,$0C,$40,$2E,$1C,$40,$40,$2C,$40,$42,$3C,$40
	db $44,$04,$50,$46,$14,$50,$48,$33,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckHurt2.bin"	; GFXSize = $C00

DATA_D4A75E:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$07,$00,$2F,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$3F,$10,$0A,$0D,$20,$0C,$1D,$20,$0E
	db $2D,$20,$20,$3D,$20,$22,$4D,$20,$24,$0D,$30,$26,$1D,$30,$28,$2D
	db $30,$2A,$3D,$30,$2C,$4D,$30,$2E,$0C,$40,$40,$1C,$40,$42,$2C,$40
	db $44,$3C,$40,$46,$06,$50,$48,$33,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $35,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Ducking4.bin"	; GFXSize = $C00

;--------------------------------------------------------------------

DATA_D4B3B0:
	dd DATA_D4BFD6-DATA_D4B3B0,DATA_D4B454-DATA_D4B3B0,DATA_D4B4FC-DATA_D4B3B0,DATA_D4B552-DATA_D4B3B0
	dd DATA_D4B598-DATA_D4B3B0,DATA_D4B608-DATA_D4B3B0,DATA_D4B650-DATA_D4B3B0,DATA_D4B67A-DATA_D4B3B0
	dd DATA_D4B850-DATA_D4B3B0,DATA_D4B876-DATA_D4B3B0,DATA_D4B4BA-DATA_D4B3B0,DATA_D4B6CA-DATA_D4B3B0
	dd DATA_D4B750-DATA_D4B3B0,DATA_D4B7A6-DATA_D4B3B0,DATA_D4BA9A-DATA_D4B3B0,DATA_D4B496-DATA_D4B3B0
	dd DATA_D4B3B0-DATA_D4B3B0,DATA_D4B89C-DATA_D4B3B0,DATA_D4B8C2-DATA_D4B3B0,DATA_D4B8E8-DATA_D4B3B0
	dd DATA_D4B3B0-DATA_D4B3B0,DATA_D4B994-DATA_D4B3B0,DATA_D4B90C-DATA_D4B3B0,DATA_D4B950-DATA_D4B3B0
	dd DATA_D4BAD4-DATA_D4B3B0,DATA_D4BB40-DATA_D4B3B0,DATA_D4BC56-DATA_D4B3B0,DATA_D4B3B0-DATA_D4B3B0
	dd DATA_D4B3B0-DATA_D4B3B0,DATA_D4BA70-DATA_D4B3B0,DATA_D4B62C-DATA_D4B3B0,DATA_D4B3B0-DATA_D4B3B0
	dd DATA_D4B9C8-DATA_D4B3B0,DATA_D4BA1C-DATA_D4B3B0,DATA_D4BB08-DATA_D4B3B0,DATA_D4B3B0-DATA_D4B3B0
	dd DATA_D4BE78-DATA_D4B3B0,DATA_D4B3B0-DATA_D4B3B0,DATA_D4BDE6-DATA_D4B3B0,DATA_D4B5DE-DATA_D4B3B0
	dd $FFFFFFFF

DATA_D4B454:
	db $C4,$00,$00,$00,$C4,$00,$00,$00,$C4,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$28,$0B,$00,$00,$02,$00,$00,$00
	db $00,$FB,$00,$FB,$00,$FB,$00,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $02,$FB,$02,$FB,$02,$FB,$02,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $FF,$00

DATA_D4B496:
	db $06,$01,$00,$00,$06,$01,$00,$00,$06,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$52,$0B,$00,$00,$11,$00,$00,$05
	db $00,$FF,$FF,$00

DATA_D4B4BA:
	db $2A,$01,$00,$00,$2A,$01,$00,$00,$2A,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$7C,$0B,$00,$00,$02,$09,$00,$00
	db $00,$FB,$00,$FB,$00,$FB,$00,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $02,$FB,$02,$FB,$02,$FB,$02,$FB,$01,$FB,$01,$FB,$01,$FB,$01,$FB
	db $FF,$00

DATA_D4B4FC:
	db $6C,$01,$00,$00,$7A,$01,$00,$00,$8C,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$06,$00,$00,$00
	db $18,$FB,$19,$FB,$1C,$0A,$1C,$0A,$19,$04,$18,$06,$FF,$00,$18,$FB
	db $19,$FB,$1A,$06,$1C,$0A,$1C,$0A,$1A,$04,$19,$04,$18,$06,$FF,$00
	db $18,$FB,$19,$FB,$1A,$06,$1B,$06,$1C,$0A,$1C,$0A,$1B,$04,$1A,$04
	db $19,$04,$18,$06,$FF,$00

DATA_D4B552:
	db $C2,$01,$00,$00,$C2,$01,$00,$00,$C2,$01,$00,$00,$D6,$01,$00,$00
	db $D6,$01,$00,$00,$D6,$01,$00,$00,$7E,$0B,$00,$00,$08,$00,$00,$00
	db $34,$FB,$35,$FB,$36,$FB,$37,$FB,$38,$FB,$39,$FB,$3A,$FB,$3B,$FB
	db $3C,$FB,$FF,$00,$01,$00,$03,$00,$04,$00,$01,$00,$04,$00,$02,$00
	db $04,$00,$03,$00,$03,$00

DATA_D4B598:
	db $08,$02,$00,$00,$08,$02,$00,$00,$08,$02,$00,$00,$1C,$02,$00,$00
	db $1C,$02,$00,$00,$1C,$02,$00,$00,$A8,$0B,$00,$00,$08,$00,$00,$00
	db $3C,$FB,$3B,$FB,$3A,$FB,$39,$FB,$38,$FB,$37,$FB,$36,$FB,$35,$FB
	db $34,$FB,$FF,$00,$FF,$FF,$FD,$FF,$FD,$FF,$FC,$FF,$FE,$FF,$FC,$FF
	db $FF,$FF,$FC,$FF,$FD,$FF

DATA_D4B5DE:
	db $4E,$02,$00,$00,$4E,$02,$00,$00,$4E,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$02,$04,$00,$00
	db $33,$FB,$32,$FB,$31,$FB,$30,$FB,$FF,$00

DATA_D4B608:
	db $78,$02,$00,$00,$78,$02,$00,$00,$78,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$D2,$0B,$00,$00,$01,$00,$00,$00
	db $20,$FB,$FF,$00

DATA_D4B62C:
	db $9C,$02,$00,$00,$9C,$02,$00,$00,$9C,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$D2,$0B,$00,$00,$01,$00,$00,$00
	db $20,$FB,$FF,$00

DATA_D4B650:
	db $C0,$02,$00,$00,$C0,$02,$00,$00,$C0,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$02,$00,$00,$00
	db $30,$FB,$31,$FB,$32,$FB,$33,$FB,$FF,$00

DATA_D4B67A:
	db $EA,$02,$00,$00,$F8,$02,$00,$00,$08,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$0E,$04,$00,$00
	db $27,$FB,$28,$05,$2A,$0A,$2A,$0A,$28,$05,$27,$05,$FF,$00,$27,$FB
	db $28,$05,$2A,$0A,$2A,$0A,$2A,$05,$28,$05,$27,$05,$FF,$00,$27,$FB
	db $28,$05,$29,$05,$2A,$0A,$2A,$0A,$29,$05,$28,$05,$27,$05,$FF,$00

DATA_D4B6CA:
	db $3A,$03,$00,$00,$48,$03,$00,$00,$5A,$03,$00,$00,$70,$03,$00,$00
	db $7C,$03,$00,$00,$8C,$03,$00,$00,$26,$0B,$00,$00,$06,$00,$00,$00
	db $09,$06,$0C,$06,$0D,$0A,$0D,$0A,$0A,$04,$09,$04,$FF,$00,$09,$06
	db $0A,$06,$0C,$06,$0D,$0A,$0D,$0A,$0C,$04,$0A,$04,$09,$04,$FF,$00
	db $09,$06,$0A,$06,$0B,$06,$0C,$06,$0D,$0A,$0D,$0A,$0C,$04,$0B,$04
	db $0A,$04,$09,$04,$FF,$00,$01,$00,$11,$00,$10,$00,$FF,$FF,$F0,$FF
	db $EF,$FF,$01,$00,$11,$00,$07,$00,$09,$00,$FF,$FF,$F7,$FF,$F9,$FF
	db $EF,$FF,$01,$00,$11,$00,$07,$00,$05,$00,$04,$00,$FF,$FF,$FC,$FF
	db $FB,$FF,$F9,$FF,$EF,$FF

DATA_D4B750:
	db $C0,$03,$00,$00,$CE,$03,$00,$00,$E0,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$06,$00,$00,$00
	db $04,$06,$07,$06,$08,$0A,$08,$0A,$07,$04,$04,$04,$FF,$00,$04,$06
	db $05,$06,$07,$06,$08,$0A,$08,$0A,$07,$04,$05,$04,$04,$04,$FF,$00
	db $04,$06,$05,$06,$06,$06,$07,$06,$08,$0A,$08,$0A,$07,$04,$06,$04
	db $05,$04,$04,$04,$FF,$00

DATA_D4B7A6:
	db $16,$04,$00,$00,$2A,$04,$00,$00,$42,$04,$00,$00,$5E,$04,$00,$00
	db $70,$04,$00,$00,$86,$04,$00,$00,$26,$0B,$00,$00,$0E,$04,$00,$00
	db $21,$06,$22,$06,$23,$06,$26,$0A,$26,$0A,$23,$04,$22,$04,$21,$04
	db $20,$04,$FF,$00,$21,$06,$22,$06,$23,$06,$24,$06,$26,$0A,$26,$0A
	db $24,$04,$23,$04,$22,$04,$21,$04,$20,$04,$FF,$00,$21,$06,$22,$06
	db $23,$06,$24,$06,$25,$06,$26,$0A,$26,$0A,$25,$04,$24,$04,$23,$04
	db $22,$04,$21,$04,$20,$00,$FF,$00,$0E,$00,$16,$00,$18,$00,$13,$00
	db $00,$00,$ED,$FF,$E8,$FF,$EA,$FF,$F2,$FF,$0E,$00,$16,$00,$18,$00
	db $0D,$00,$06,$00,$00,$00,$FA,$FF,$F3,$FF,$E8,$FF,$EA,$FF,$F2,$FF
	db $0E,$00,$16,$00,$18,$00,$0D,$00,$02,$00,$04,$00,$00,$00,$FC,$FF
	db $FE,$FF,$F3,$FF,$E8,$FF,$EA,$FF,$F2,$FF

DATA_D4B850:
	db $C0,$04,$00,$00,$C0,$04,$00,$00,$C0,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$0C,$00,$00,$01,$00,$00,$00
	db $2B,$FB,$2C,$FB,$FF,$00

DATA_D4B876:
	db $E6,$04,$00,$00,$E6,$04,$00,$00,$E6,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$0A,$04,$00,$00
	db $2C,$FE,$2B,$FE,$FF,$00

DATA_D4B89C:
	db $0C,$05,$00,$00,$0C,$05,$00,$00,$0C,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$FC,$0B,$00,$00,$01,$00,$00,$00
	db $16,$FB,$17,$FB,$FF,$00

DATA_D4B8C2:
	db $32,$05,$00,$00,$32,$05,$00,$00,$32,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$02,$00,$00,$00
	db $17,$FB,$16,$FB,$FF,$00

DATA_D4B8E8:
	db $58,$05,$00,$00,$58,$05,$00,$00,$58,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$0C,$00,$00,$4B,$04,$00,$F1
	db $0E,$00,$FF,$00

DATA_D4B90C:
	db $7C,$05,$00,$00,$7C,$05,$00,$00,$7C,$05,$00,$00,$80,$05,$00,$00
	db $80,$05,$00,$00,$80,$05,$00,$00,$12,$0C,$00,$00,$4B,$04,$00,$F1
	db $0E,$00,$FF,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00

DATA_D4B950:
	db $C0,$05,$00,$00,$C0,$05,$00,$00,$C0,$05,$00,$00,$C4,$05,$00,$00
	db $C4,$05,$00,$00,$C4,$05,$00,$00,$1C,$0C,$00,$00,$4B,$04,$00,$F1
	db $0E,$00,$FF,$00,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF

DATA_D4B994:
	db $04,$06,$00,$00,$04,$06,$00,$00,$04,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$4F,$04,$00,$F0
	db $0F,$06,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A
	db $10,$0A,$FF,$00

DATA_D4B9C8:
	db $38,$06,$00,$00,$38,$06,$00,$00,$38,$06,$00,$00,$4C,$06,$00,$00
	db $4C,$06,$00,$00,$4C,$06,$00,$00,$26,$0B,$00,$00,$4F,$04,$00,$F0
	db $0F,$06,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A
	db $10,$0A,$FF,$00,$07,$00,$07,$00,$07,$00,$07,$00,$07,$00,$07,$00
	db $07,$00,$07,$00,$07,$00,$07,$00,$07,$00,$07,$00,$07,$00,$07,$00
	db $07,$00,$07,$00

DATA_D4BA1C:
	db $8C,$06,$00,$00,$8C,$06,$00,$00,$8C,$06,$00,$00,$A0,$06,$00,$00
	db $A0,$06,$00,$00,$A0,$06,$00,$00,$26,$0B,$00,$00,$4F,$04,$00,$F0
	db $0F,$06,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A,$10,$0A
	db $10,$0A,$FF,$00,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF
	db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF
	db $F9,$FF,$F9,$FF

DATA_D4BA70:
	db $E0,$06,$00,$00,$E0,$06,$00,$00,$E0,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$42,$00,$00,$00
	db $33,$00,$32,$00,$3B,$00,$30,$00,$FF,$00

DATA_D4BA9A:
	db $0A,$07,$00,$00,$0A,$07,$00,$00,$0A,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$06,$00,$00,$00
	db $11,$00,$12,$00,$13,$00,$14,$00,$15,$00,$15,$00,$15,$00,$15,$00
	db $14,$00,$13,$00,$12,$00,$11,$00,$FF,$00

DATA_D4BAD4:
	db $44,$07,$00,$00,$44,$07,$00,$00,$44,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$0E,$04,$00,$00
	db $2D,$00,$2E,$00,$2F,$00,$2F,$00,$2F,$00,$2F,$00,$2F,$00,$2E,$00
	db $2D,$00,$FF,$00

DATA_D4BB08:
	db $78,$07,$00,$00,$78,$07,$00,$00,$78,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$26,$0B,$00,$00,$06,$00,$00,$00
	db $49,$00,$4A,$00,$4A,$00,$4B,$00,$4B,$00,$4B,$00,$4B,$00,$4B,$00
	db $4A,$00,$4A,$00,$49,$00,$FF,$00

DATA_D4BB40:
	db $B0,$07,$00,$00,$B0,$07,$00,$00,$B0,$07,$00,$00,$22,$08,$00,$00
	db $22,$08,$00,$00,$22,$08,$00,$00,$26,$0B,$00,$00,$E3,$00,$00,$F2
	db $1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00
	db $1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $FF,$00,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF,$F8,$FF,$F9,$FF
	db $F9,$FF,$F9,$FF,$F9,$FF,$F9,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FD,$FF,$FE,$FF
	db $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00

DATA_D4BC56:
	db $C6,$08,$00,$00,$C6,$08,$00,$00,$C6,$08,$00,$00,$76,$09,$00,$00
	db $76,$09,$00,$00,$76,$09,$00,$00,$26,$0B,$00,$00,$C3,$00,$00,$F0
	db $1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00
	db $1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00,$1E,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $2F,$00,$2E,$00,$2D,$00,$30,$00,$31,$00,$32,$00,$33,$00,$FF,$00
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF,$FD,$FF,$FD,$FF,$FE,$FF,$FE,$FF
	db $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_D4BDE6:
	db $56,$0A,$00,$00,$56,$0A,$00,$00,$56,$0A,$00,$00,$78,$0A,$00,$00
	db $78,$0A,$00,$00,$78,$0A,$00,$00,$26,$0B,$00,$00,$0B,$17,$06,$00
	db $1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00
	db $1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00,$1D,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_D4BE78:
	db $E8,$0A,$00,$00,$E8,$0A,$00,$00,$E8,$0A,$00,$00,$08,$0B,$00,$00
	db $08,$0B,$00,$00,$08,$0B,$00,$00,$26,$0B,$00,$00,$4F,$04,$00,$F2
	db $3E,$FB,$3F,$0A,$40,$0A,$41,$0A,$41,$0A,$41,$0A,$42,$0A,$43,$0A
	db $44,$0A,$45,$0A,$46,$0A,$47,$0A,$47,$0A,$47,$0A,$48,$FB,$FF,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00
	db $0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$0A,$00,$FF,$FF
	db $08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00
	db $14,$00,$26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$02,$00,$02,$00
	db $01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00
	db $16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00
	db $26,$00,$04,$00,$03,$00,$02,$00,$02,$00,$01,$00,$01,$00,$20,$00
	db $0B,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00,$0C,$00
	db $16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00
	db $26,$00,$04,$00,$03,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF
	db $00,$00,$00,$00,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00
	db $10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$02,$00,$02,$00
	db $01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$00,$00,$05,$00,$10,$00
	db $04,$00,$14,$00,$1D,$00,$08,$00,$05,$00,$0A,$00,$05,$00,$0C,$00
	db $05,$00,$02,$00,$05,$00,$04,$00,$05,$00,$01,$00,$06,$00,$20,$00
	db $0C,$00,$FF,$FF,$00,$00,$11,$00,$FF,$FF,$00,$00,$08,$00,$FF,$FF
	db $20,$00,$14,$00,$01,$00,$14,$00,$FF,$FF,$20,$00,$1F,$00,$01,$00
	db $1F,$00,$FF,$FF,$20,$00,$20,$00,$01,$00,$20,$00,$FF,$FF

DATA_D4BFD6:
	db $01,$00,$10,$00,$10,$00,$10,$00,$10,$00,$FF,$83,$01,$00,$10,$00
	db $10,$00,$FF,$23,$01,$00,$08,$00,$08,$00,$08,$00,$08,$00,$FF,$80
	db $01,$00,$04,$00,$04,$00,$04,$00,$04,$00,$FF,$84,$01,$00,$02,$00
	db $02,$00,$02,$00,$02,$00,$FF,$85,$FF

;--------------------------------------------------------------------

DATA_D4C00F:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$06,$07,$00,$04,$00,$02,$14,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$0B,$30,$26,$1B,$30,$28,$2B
	db $30,$2A,$3B,$30,$2C,$1D,$40,$2E,$2D,$40,$40,$3D,$40,$42,$4D,$40
	db $44,$2E,$50,$46,$3E,$50,$48,$4E,$50,$4A,$26,$60,$4C,$36,$60,$4E
	db $46,$60,$60,$56,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch4.bin"	; GFXSize = $C80

DATA_D4CCE4:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$06,$00,$23,$00,$02,$33,$00
	db $04,$43,$00,$06,$03,$10,$08,$13,$10,$0A,$23,$10,$0C,$33,$10,$0E
	db $43,$10,$20,$53,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$50,$20,$2E,$38,$30,$40,$48,$30,$42,$58,$30
	db $44,$36,$40,$46,$51,$40,$48,$61,$40,$4A,$2E,$50,$4C,$3E,$50,$4E
	db $54,$50,$60,$64,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch12.bin"	; GFXSize = $C80

DATA_D4D9B9:
	incbin "UnknownData/DATA_D4D9B9.rnc"

DATA_D4E66D:
	db $19,$00,$55,$00,$01,$00,$0A,$00,$07,$06,$00,$3B,$00,$02,$4B,$00
	db $04,$16,$10,$06,$26,$10,$08,$36,$10,$0A,$46,$10,$0C,$56,$10,$0E
	db $0A,$20,$20,$1A,$20,$22,$2A,$20,$24,$3A,$20,$26,$4A,$20,$28,$5A
	db $20,$2A,$00,$30,$2C,$10,$30,$2E,$20,$30,$40,$47,$30,$42,$57,$30
	db $44,$67,$30,$46,$00,$40,$48,$10,$40,$4A,$20,$40,$4C,$52,$40,$4E
	db $4D,$50,$60,$5D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarKick3.bin"	; GFXSize = $C80

DATA_D4F342:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block1Start:
	%ReadPreCompiledFilePointers(1, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

	%InsertGarbageData($D4FFD3, incbin, UNK_D4FFD3.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD5Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D50000:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$07,$05,$00,$31,$00,$02,$41,$00
	db $04,$51,$00,$06,$61,$00,$08,$21,$10,$0A,$31,$10,$0C,$41,$10,$0E
	db $52,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$03,$30,$2E,$13,$30,$40,$23,$30,$42,$33,$30
	db $44,$43,$30,$46,$53,$30,$48,$0F,$40,$4A,$21,$40,$4C,$31,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_Jump5.bin"	; GFXSize = $B80

DATA_D50BCF:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$07,$00,$27,$00,$02,$37,$00
	db $04,$0F,$10,$06,$1F,$10,$08,$2F,$10,$0A,$3F,$10,$0C,$0D,$20,$0E
	db $1D,$20,$20,$2D,$20,$22,$3D,$20,$24,$0D,$30,$26,$1D,$30,$28,$2D
	db $30,$2A,$3D,$30,$2C,$4D,$30,$2E,$0C,$40,$40,$1C,$40,$42,$2C,$40
	db $44,$3C,$40,$46,$08,$50,$48,$33,$50,$4A,$00,$60,$4C,$10,$60,$4E
	db $35,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Ducking3.bin"	; GFXSize = $C00

DATA_D51821:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$08,$00,$2F,$00,$02,$11,$10
	db $04,$21,$10,$06,$31,$10,$08,$41,$10,$0A,$0E,$20,$0C,$1E,$20,$0E
	db $2E,$20,$20,$3E,$20,$22,$0D,$30,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$0E,$40,$2C,$1E,$40,$2E,$2E,$40,$40,$3E,$40,$42,$0C,$50
	db $44,$36,$50,$46,$09,$60,$48,$36,$60,$4A,$00,$70,$4C,$10,$70,$4E
	db $38,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Walk10.bin"	; GFXSize = $C00

DATA_D52473:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$04,$08,$00,$14,$00,$02,$24,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$0B,$20,$0C,$1B,$20,$0E
	db $2B,$20,$20,$3B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$12,$40,$2C,$22,$40,$2E,$12,$50,$40,$23,$50,$42,$33,$50
	db $44,$0D,$60,$46,$1D,$60,$48,$2D,$60,$4A,$10,$70,$4C,$20,$70,$4E
	db $30,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick1.bin"	; GFXSize = $C00

DATA_D530C5:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$08,$00,$25,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$3F,$10,$0A,$04,$20,$0C,$14,$20,$0E
	db $24,$20,$20,$34,$20,$22,$05,$30,$24,$18,$30,$26,$28,$30,$28,$38
	db $30,$2A,$0A,$40,$2C,$1A,$40,$2E,$2A,$40,$40,$09,$50,$42,$2E,$50
	db $44,$02,$60,$46,$12,$60,$48,$2E,$60,$4A,$00,$70,$4C,$10,$70,$4E
	db $31,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_HighBlowHurt1.bin"	; GFXSize = $C00

DATA_D53D17:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$07,$05,$00,$0B,$00,$02,$1B,$00
	db $04,$2B,$00,$06,$3B,$00,$08,$02,$10,$0A,$12,$10,$0C,$22,$10,$0E
	db $32,$10,$20,$42,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$09,$30,$2E,$19,$30,$40,$29,$30,$42,$39,$30
	db $44,$49,$30,$46,$59,$30,$48,$27,$40,$4A,$37,$40,$4C,$4D,$40,$4E
	db $5D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_FarPunch3.bin"	; GFXSize = $C00

DATA_D54969:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$05,$08,$00,$17,$00,$02,$06,$10
	db $04,$16,$10,$06,$26,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$0E,$40,$28,$1E
	db $40,$2A,$2E,$40,$2C,$18,$50,$2E,$28,$50,$40,$38,$50,$42,$17,$60
	db $44,$27,$60,$46,$37,$60,$48,$0F,$70,$4A,$1F,$70,$4C,$31,$70,$4E
	db $41,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch6.bin"	; GFXSize = $C00

DATA_D555BB:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$07,$05,$00,$33,$00,$02,$43,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $50,$10,$20,$02,$20,$22,$12,$20,$24,$22,$20,$26,$32,$20,$28,$42
	db $20,$2A,$52,$20,$2C,$19,$30,$2E,$29,$30,$40,$39,$30,$42,$49,$30
	db $44,$59,$30,$46,$21,$40,$48,$31,$40,$4A,$41,$40,$4C,$51,$40,$4E
	db $61,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckPunch5.bin"	; GFXSize = $C00

DATA_D5620D:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$06,$06,$00,$23,$00,$02,$33,$00
	db $04,$18,$10,$06,$28,$10,$08,$38,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$40,$30,$2E,$01,$40,$40,$11,$40,$42,$21,$40
	db $44,$36,$40,$46,$46,$40,$48,$06,$50,$4A,$16,$50,$4C,$38,$50,$4E
	db $48,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarKick2.bin"	; GFXSize = $C00

;--------------------------------------------------------------------

DATA_D56E5F:
	dd DATA_D57A0F-DATA_D56E5F,DATA_D56F03-DATA_D56E5F,DATA_D56F8F-DATA_D56E5F,DATA_D56FE5-DATA_D56E5F
	dd DATA_D5702F-DATA_D56E5F,DATA_D571A7-DATA_D56E5F,DATA_D571EF-DATA_D56E5F,DATA_D5721B-DATA_D56E5F
	dd DATA_D57271-DATA_D56E5F,DATA_D5729B-DATA_D56E5F,DATA_D56F5B-DATA_D56E5F,DATA_D57079-DATA_D56E5F
	dd DATA_D570CF-DATA_D56E5F,DATA_D57125-DATA_D56E5F,DATA_D572C5-DATA_D56E5F,DATA_D56F37-DATA_D56E5F
	dd DATA_D56E5F-DATA_D56E5F,DATA_D57341-DATA_D56E5F,DATA_D5736D-DATA_D56E5F,DATA_D57399-DATA_D56E5F
	dd DATA_D56E5F-DATA_D56E5F,DATA_D57463-DATA_D56E5F,DATA_D573C7-DATA_D56E5F,DATA_D57415-DATA_D56E5F
	dd DATA_D57577-DATA_D56E5F,DATA_D575B3-DATA_D56E5F,DATA_D576B5-DATA_D56E5F,DATA_D5754B-DATA_D56E5F
	dd DATA_D56E5F-DATA_D56E5F,DATA_D56E5F-DATA_D56E5F,DATA_D571CB-DATA_D56E5F,DATA_D56E5F-DATA_D56E5F
	dd DATA_D5749B-DATA_D56E5F,DATA_D574F3-DATA_D56E5F,DATA_D57303-DATA_D56E5F,DATA_D56E5F-DATA_D56E5F
	dd DATA_D578D5-DATA_D56E5F,DATA_D56E5F-DATA_D56E5F,DATA_D57863-DATA_D56E5F,DATA_D5717B-DATA_D56E5F
	dd $FFFFFFFF

DATA_D56F03:
	db $C4,$00,$00,$00,$C4,$00,$00,$00,$C4,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B2,$0A,$00,$00,$03,$00,$00,$00
	db $00,$06,$00,$06,$00,$06,$01,$06,$01,$06,$01,$06,$02,$06,$02,$06
	db $02,$06,$FF,$00

DATA_D56F37:
	db $F8,$00,$00,$00,$F8,$00,$00,$00,$F8,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DC,$0A,$00,$00,$11,$00,$00,$05
	db $00,$06,$FF,$00

DATA_D56F5B:
	db $1C,$01,$00,$00,$1C,$01,$00,$00,$1C,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$06,$0B,$00,$00,$03,$09,$00,$00
	db $00,$06,$00,$06,$00,$06,$01,$06,$01,$06,$01,$06,$02,$06,$02,$06
	db $02,$06,$FF,$00

DATA_D56F8F:
	db $50,$01,$00,$00,$5E,$01,$00,$00,$70,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$06,$00,$00,$00
	db $03,$06,$05,$06,$07,$0A,$07,$0A,$05,$04,$03,$04,$FF,$00,$03,$06
	db $04,$06,$05,$06,$07,$0A,$07,$0A,$05,$04,$04,$04,$03,$04,$FF,$00
	db $03,$06,$04,$06,$05,$06,$06,$05,$07,$0A,$07,$0A,$06,$04,$05,$04
	db $04,$04,$03,$04,$FF,$00

DATA_D56FE5:
	db $A6,$01,$00,$00,$A6,$01,$00,$00,$A6,$01,$00,$00,$BC,$01,$00,$00
	db $BC,$01,$00,$00,$BC,$01,$00,$00,$08,$0B,$00,$00,$08,$00,$00,$00
	db $4A,$06,$4B,$06,$4C,$06,$4D,$06,$4E,$06,$4F,$06,$50,$06,$51,$06
	db $52,$06,$53,$06,$FF,$00,$05,$00,$01,$00,$01,$00,$01,$00,$01,$00
	db $01,$00,$04,$00,$05,$00,$07,$00,$04,$00

DATA_D5702F:
	db $F0,$01,$00,$00,$F0,$01,$00,$00,$F0,$01,$00,$00,$06,$02,$00,$00
	db $06,$02,$00,$00,$06,$02,$00,$00,$32,$0B,$00,$00,$08,$00,$00,$00
	db $53,$06,$52,$06,$51,$06,$50,$06,$4F,$06,$4E,$06,$4D,$06,$4C,$06
	db $4B,$06,$4A,$06,$FF,$00,$FB,$FF,$FC,$FF,$F9,$FF,$FB,$FF,$FC,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

DATA_D57079:
	db $3A,$02,$00,$00,$48,$02,$00,$00,$5A,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$06,$00,$00,$00
	db $54,$06,$56,$06,$58,$0A,$58,$0A,$56,$04,$54,$04,$FF,$00,$54,$06
	db $55,$06,$56,$06,$58,$0A,$58,$0A,$56,$04,$55,$04,$54,$04,$FF,$00
	db $54,$06,$55,$06,$56,$06,$57,$0A,$58,$0A,$58,$0A,$57,$0A,$56,$04
	db $55,$04,$54,$04,$FF,$00

DATA_D570CF:
	db $90,$02,$00,$00,$9E,$02,$00,$00,$B0,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$06,$00,$00,$00
	db $08,$06,$0A,$06,$0C,$0A,$0C,$0A,$0A,$04,$08,$04,$FF,$00,$08,$06
	db $09,$06,$0A,$06,$0C,$0A,$0C,$0A,$0A,$04,$09,$04,$08,$04,$FF,$00
	db $08,$06,$09,$06,$0A,$06,$0B,$06,$0C,$0A,$0C,$0A,$0B,$04,$0A,$04
	db $09,$04,$08,$04,$FF,$00

DATA_D57125:
	db $E6,$02,$00,$00,$F4,$02,$00,$00,$06,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$0E,$04,$00,$00
	db $17,$04,$19,$04,$1B,$0A,$1B,$0A,$19,$04,$17,$04,$FF,$00,$17,$04
	db $18,$04,$19,$04,$1B,$0A,$1B,$0A,$19,$04,$18,$04,$17,$04,$FF,$00
	db $17,$04,$18,$04,$19,$04,$1A,$04,$1B,$0A,$1B,$0A,$1A,$04,$19,$04
	db $18,$04,$17,$04,$FF,$00

DATA_D5717B:
	db $3C,$03,$00,$00,$3C,$03,$00,$00,$3C,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$02,$04,$00,$00
	db $0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$FF,$00

DATA_D571A7:
	db $68,$03,$00,$00,$68,$03,$00,$00,$68,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$5C,$0B,$00,$00,$01,$00,$00,$00
	db $12,$00,$FF,$00

DATA_D571CB:
	db $8C,$03,$00,$00,$8C,$03,$00,$00,$8C,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$5C,$0B,$00,$00,$01,$00,$00,$00
	db $12,$00,$FF,$00

DATA_D571EF:
	db $B0,$03,$00,$00,$B0,$03,$00,$00,$B0,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$02,$00,$00,$00
	db $11,$00,$10,$00,$0F,$00,$0E,$00,$0D,$00,$FF,$00

DATA_D5721B:
	db $DC,$03,$00,$00,$EA,$03,$00,$00,$FC,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$0E,$04,$00,$00
	db $1C,$06,$1E,$06,$20,$0A,$20,$0A,$1E,$04,$1C,$04,$FF,$00,$1C,$06
	db $1D,$06,$1E,$06,$20,$0A,$20,$0A,$1E,$04,$1D,$04,$1C,$04,$FF,$00
	db $1C,$06,$1D,$06,$1E,$06,$1F,$06,$20,$0A,$20,$0A,$1F,$04,$1E,$04
	db $1D,$04,$1C,$04,$FF,$00

DATA_D57271:
	db $32,$04,$00,$00,$32,$04,$00,$00,$32,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$8C,$0B,$00,$00,$01,$00,$00,$00
	db $13,$FF,$14,$FF,$15,$FF,$16,$FF,$FF,$00

DATA_D5729B:
	db $5C,$04,$00,$00,$5C,$04,$00,$00,$5C,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$0A,$04,$00,$00
	db $16,$FF,$15,$FF,$14,$FF,$13,$FF,$FF,$00

DATA_D572C5:
	db $86,$04,$00,$00,$86,$04,$00,$00,$86,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$06,$00,$00,$00
	db $40,$0B,$41,$0B,$42,$0B,$43,$0B,$44,$0B,$44,$0B,$44,$0B,$44,$0B
	db $44,$0B,$44,$0B,$43,$0B,$42,$0B,$41,$0B,$40,$0B,$FF,$00

DATA_D57303:
	db $C4,$04,$00,$00,$C4,$04,$00,$00,$C4,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$06,$00,$00,$00
	db $3B,$0B,$3C,$0B,$3D,$0B,$3E,$0B,$3F,$0B,$3F,$0B,$3F,$0B,$3F,$0B
	db $3F,$0B,$3F,$0B,$3E,$0B,$3D,$0B,$3C,$0B,$3B,$0B,$FF,$00

DATA_D57341:
	db $02,$05,$00,$00,$02,$05,$00,$00,$02,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$86,$0B,$00,$00,$01,$00,$00,$00
	db $26,$00,$27,$00,$28,$00,$29,$00,$2A,$00,$FF,$00

DATA_D5736D:
	db $2E,$05,$00,$00,$2E,$05,$00,$00,$2E,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$02,$00,$00,$00
	db $2A,$00,$29,$00,$28,$00,$27,$00,$26,$00,$FF,$00

DATA_D57399:
	db $5A,$05,$00,$00,$5A,$05,$00,$00,$5A,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$92,$0B,$00,$00,$4B,$04,$00,$F0
	db $2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$FF,$00

DATA_D573C7:
	db $88,$05,$00,$00,$88,$05,$00,$00,$88,$05,$00,$00,$96,$05,$00,$00
	db $96,$05,$00,$00,$96,$05,$00,$00,$9C,$0B,$00,$00,$4B,$04,$00,$F0
	db $2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$FF,$00,$04,$00
	db $04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00

DATA_D57415:
	db $D6,$05,$00,$00,$D6,$05,$00,$00,$D6,$05,$00,$00,$E4,$05,$00,$00
	db $E4,$05,$00,$00,$E4,$05,$00,$00,$A6,$0B,$00,$00,$4B,$04,$00,$F0
	db $2B,$00,$2C,$00,$2D,$00,$2E,$00,$2F,$00,$30,$00,$FF,$00,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF

DATA_D57463:
	db $28,$06,$00,$00,$28,$06,$00,$00,$30,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$4F,$04,$00,$F0
	db $35,$00,$FF,$00,$32,$00,$34,$00,$35,$00,$FF,$00,$31,$00,$32,$00
	db $33,$00,$34,$00,$35,$00,$FF,$00

DATA_D5749B:
	db $5C,$06,$00,$00,$60,$06,$00,$00,$68,$06,$00,$00,$74,$06,$00,$00
	db $74,$06,$00,$00,$74,$06,$00,$00,$B0,$0A,$00,$00,$4F,$04,$00,$F0
	db $35,$00,$FF,$00,$32,$00,$34,$00,$35,$00,$FF,$00,$31,$00,$32,$00
	db $33,$00,$34,$00,$35,$00,$FF,$00,$04,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$04,$00,$04,$00,$04,$00

DATA_D574F3:
	db $B4,$06,$00,$00,$B8,$06,$00,$00,$C0,$06,$00,$00,$CC,$06,$00,$00
	db $CC,$06,$00,$00,$CC,$06,$00,$00,$B0,$0A,$00,$00,$4F,$04,$00,$F0
	db $35,$00,$FF,$00,$32,$00,$34,$00,$35,$00,$FF,$00,$31,$00,$32,$00
	db $33,$00,$34,$00,$35,$00,$FF,$00,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF

DATA_D5754B:
	db $0C,$07,$00,$00,$0C,$07,$00,$00,$0C,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$4F,$04,$00,$F0
	db $59,$00,$5A,$00,$5B,$00,$5C,$00,$5D,$00,$FF,$00

DATA_D57577:
	db $38,$07,$00,$00,$38,$07,$00,$00,$38,$07,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$0E,$04,$00,$00
	db $21,$00,$22,$00,$23,$00,$24,$00,$25,$00,$25,$00,$25,$00,$25,$00
	db $25,$00,$24,$00,$23,$00,$22,$00,$21,$00,$FF,$00

DATA_D575B3:
	db $74,$07,$00,$00,$74,$07,$00,$00,$74,$07,$00,$00,$DA,$07,$00,$00
	db $DA,$07,$00,$00,$DA,$07,$00,$00,$B0,$0A,$00,$00,$E3,$00,$00,$F0
	db $45,$00,$45,$00,$45,$00,$45,$00,$45,$00,$46,$00,$46,$00,$46,$00
	db $46,$00,$46,$00,$47,$00,$47,$00,$47,$00,$47,$00,$47,$00,$48,$00
	db $48,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$FF,$00,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FB,$FF,$FB,$FF,$FC,$FF,$FC,$FF,$FD,$FF,$FD,$FF,$FE,$FF
	db $FE,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_D576B5:
	db $76,$08,$00,$00,$76,$08,$00,$00,$76,$08,$00,$00,$38,$09,$00,$00
	db $38,$09,$00,$00,$38,$09,$00,$00,$B0,$0A,$00,$00,$C3,$00,$00,$F0
	db $45,$00,$45,$00,$45,$00,$45,$00,$45,$00,$46,$00,$46,$00,$46,$00
	db $46,$00,$46,$00,$47,$00,$47,$00,$47,$00,$47,$00,$47,$00,$48,$00
	db $48,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00,$49,$00
	db $49,$00,$25,$00,$25,$00,$24,$00,$24,$00,$23,$00,$23,$00,$22,$00
	db $22,$00,$21,$00,$21,$00,$11,$00,$10,$00,$0F,$00,$0E,$00,$0D,$00
	db $FF,$00,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF
	db $FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FA,$FF,$FB,$FF
	db $FB,$FF,$FC,$FF,$FC,$FF,$FD,$FF,$FD,$FF,$FE,$FF,$FE,$FF,$FF,$FF
	db $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_D57863:
	db $24,$0A,$00,$00,$24,$0A,$00,$00,$24,$0A,$00,$00,$46,$0A,$00,$00
	db $46,$0A,$00,$00,$46,$0A,$00,$00,$B0,$0A,$00,$00,$0B,$17,$06,$00
	db $46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00
	db $46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00,$46,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_D578D5:
	db $96,$0A,$00,$00,$96,$0A,$00,$00,$96,$0A,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B0,$0A,$00,$00,$0E,$00,$00,$00
	db $36,$00,$37,$00,$38,$00,$39,$0A,$3A,$0C,$3A,$0C,$3A,$0C,$3A,$0C
	db $39,$0A,$38,$00,$37,$00,$36,$00,$FF,$00,$FF,$FF,$08,$00,$12,$00
	db $0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00
	db $12,$00,$26,$00,$04,$00,$03,$00,$02,$00,$02,$00,$01,$00,$01,$00
	db $20,$00,$0A,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00
	db $15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00
	db $03,$00,$02,$00,$02,$00,$01,$00,$01,$00,$20,$00,$0B,$00,$FF,$FF
	db $FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00
	db $15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00
	db $03,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$00,$00,$00,$00
	db $08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00
	db $14,$00,$26,$00,$12,$00,$26,$00,$02,$00,$02,$00,$01,$00,$01,$00
	db $20,$00,$0A,$00,$FF,$FF,$00,$00,$05,$00,$10,$00,$04,$00,$14,$00
	db $1D,$00,$08,$00,$05,$00,$0A,$00,$05,$00,$0C,$00,$05,$00,$02,$00
	db $05,$00,$04,$00,$05,$00,$01,$00,$06,$00,$20,$00,$0C,$00,$FF,$FF
	db $00,$00,$11,$00,$FF,$FF,$00,$00,$08,$00,$FF,$FF,$20,$00,$14,$00
	db $01,$00,$14,$00,$FF,$FF,$20,$00,$1F,$00,$01,$00,$1F,$00,$FF,$FF
	db $20,$00,$20,$00,$01,$00,$20,$00,$FF,$FF

DATA_D57A0F:
	db $01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$FF,$85,$01,$00,$02,$00
	db $02,$00,$FF,$23,$01,$00,$10,$00,$10,$00,$10,$00,$10,$00,$FF,$83
	db $01,$00,$08,$00,$08,$00,$08,$00,$08,$00,$FF,$80,$01,$00,$04,$00
	db $04,$00,$04,$00,$04,$00,$FF,$84,$FF

;--------------------------------------------------------------------

DATA_D57A48:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$09,$06,$00,$40,$00,$02,$55,$00
	db $04,$26,$10,$06,$36,$10,$08,$46,$10,$0A,$56,$10,$0C,$66,$10,$0E
	db $1E,$20,$20,$2E,$20,$22,$3E,$20,$24,$64,$20,$26,$74,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$30,$30,$40,$40,$30,$42,$70,$30
	db $44,$80,$30,$46,$05,$40,$48,$18,$40,$4A,$28,$40,$4C,$7B,$40,$4E
	db $80,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack7.bin"	; GFXSize = $C00

DATA_D5869A:
	db $18,$00,$52,$00,$01,$00,$0A,$00,$09,$06,$00,$3A,$00,$02,$51,$00
	db $04,$33,$10,$06,$43,$10,$08,$53,$10,$0A,$63,$10,$0C,$1E,$20,$0E
	db $2E,$20,$20,$3E,$20,$22,$5B,$20,$24,$6B,$20,$26,$0B,$30,$28,$1B
	db $30,$2A,$2B,$30,$2C,$3B,$30,$2E,$67,$30,$40,$77,$30,$42,$00,$40
	db $44,$10,$40,$46,$20,$40,$48,$30,$40,$4A,$73,$40,$4C,$1B,$50,$4E
	db $7D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack8.bin"	; GFXSize = $C00

DATA_D592EC:
	incbin "Graphics/Compressed/GFX_Layer1_ApeProfileImage.rnc"

DATA_D59F3A:
	incbin "Graphics/Compressed/GFX_Layer1_MilitaryProfileImage.rnc"

DATA_D5AB20:
	dw $005E : dd DATA_DD45E8 : dw $0004,$0006,$0062,$0042,$0060
	dw $009C : dd DATA_DBA680 : dw $0004,$0006,$0064,$0042,$0060
	dw $009E : dd DATA_DD4EA5 : dw $0004,$0006,$0063,$0042,$0060
	dw $009D : dd DATA_DACD90 : dw $0005,$0006,$005D,$0042,$0060
	dw $009F : dd DATA_D88C21 : dw $0005,$0006,$0055,$0042,$0060
	dw $00A1 : dd DATA_D78F47 : dw $0006,$0006,$004B,$0042,$0060
	dw $00A0 : dd DATA_D896EA : dw $0006,$0006,$0040,$0042,$0060
	dw $009F : dd DATA_D98382 : dw $0007,$0006,$003A,$0042,$0060
	dw $009E : dd DATA_DBAFC0 : dw $0004,$0006,$0062,$0041,$0060
	dw $009C : dd DATA_D8A1B3 : dw $0005,$0006,$0058,$003C,$0060
	dw $009C : dd DATA_D8AC7C : dw $0006,$0005,$0048,$0045,$0050
	dw $009C : dd DATA_D6B901 : dw $0006,$0005,$0042,$0045,$0050
	dw $009D : dd DATA_D79A93 : dw $0006,$0005,$0041,$0045,$0050
	dw $009D : dd DATA_DD5762 : dw $0004,$0006,$0064,$0041,$0060
	dw $0095 : dd DATA_DC45E8 : dw $0004,$0006,$0064,$0041,$0060
	dw $0097 : dd DATA_DD601F : dw $0004,$0005,$0065,$0052,$0050
	dw $00A1 : dd DATA_DC4F28 : dw $0005,$0005,$0066,$0052,$0050
	dw $00A7 : dd DATA_DC5868 : dw $0004,$0005,$0067,$0052,$0050
	dw $00A7 : dd DATA_DD68DC : dw $0004,$0005,$0069,$0052,$0050
	dw $009F : dd DATA_E0ACE0 : dw $0004,$0005,$0068,$0052,$0050
	dw $009D : dd DATA_DD7199 : dw $0004,$0005,$0068,$0052,$0050
	dw $009D : dd DATA_DE6AF2 : dw $0004,$0005,$0069,$0052,$0050
	dw $009E : dd DATA_DD7A56 : dw $0004,$0005,$006A,$0052,$0050
	dw $009F : dd DATA_DE732C : dw $0005,$0004,$0067,$0060,$0040
	dw $00AD : dd DATA_E0B497 : dw $0005,$0004,$0060,$005C,$0040
	dw $00A5 : dd DATA_DE7B66 : dw $0005,$0004,$0056,$0057,$0040
	dw $009B : dd DATA_DE83A0 : dw $0006,$0004,$0047,$0058,$0040
	dw $009B : dd DATA_DC61A8 : dw $0006,$0004,$003C,$005D,$0040
	dw $009B : dd DATA_DC6AE8 : dw $0005,$0004,$005F,$0063,$0040
	dw $00AB : dd DATA_DAD753 : dw $0006,$0005,$0056,$0052,$0050
	dw $00AA : dd DATA_D7A5DF : dw $0006,$0005,$004E,$0052,$0050
	dw $00AB : dd DATA_D7B12B : dw $0007,$0005,$004A,$0052,$0050
	dw $00AC : dd DATA_D555BB : dw $0007,$0005,$0049,$0052,$0050
	dw $00AD : dd DATA_E0BC4E : dw $0005,$0005,$006A,$0052,$0050
	dw $00AD : dd DATA_DD8313 : dw $0005,$0005,$006A,$0052,$0050
	dw $00AF : dd DATA_DAE116 : dw $0005,$0005,$006A,$0052,$0050
	dw $00B3 : dd DATA_D98DC8 : dw $0005,$0005,$006A,$0052,$0050
	dw $00B5 : dd DATA_DBB900 : dw $0005,$0005,$006A,$0052,$0050
	dw $00B4 : dd DATA_DD8BD0 : dw $0004,$0006,$005D,$0042,$0060
	dw $009C : dd DATA_DC7428 : dw $0005,$0006,$0059,$0042,$0060
	dw $009C : dd DATA_D9980E : dw $0005,$0006,$0056,$0042,$0060
	dw $009C : dd DATA_D9A254 : dw $0005,$0006,$0054,$0042,$0060
	dw $009C : dd DATA_DBC2C3 : dw $0005,$0006,$0054,$0042,$0060
	dw $009C : dd DATA_DD948D : dw $0004,$0006,$0062,$0042,$0060
	dw $009C : dd DATA_DD9D4A : dw $0004,$0006,$0062,$003F,$0060
	dw $0094 : dd DATA_DE8BDA : dw $0003,$0006,$005C,$0038,$0060
	dw $0089 : dd DATA_E0C405 : dw $0004,$0005,$0056,$003E,$0050
	dw $0088 : dd DATA_E1D497 : dw $0004,$0004,$0052,$0044,$0040
	dw $0087 : dd DATA_E1DBCB : dw $0004,$0004,$0052,$003D,$0040
	dw $0087 : dd DATA_E0CBBC : dw $0004,$0004,$004A,$003B,$0040
	dw $0087 : dd DATA_DDA607 : dw $0005,$0004,$003E,$0040,$0040
	dw $0088 : dd DATA_DC7D68 : dw $0006,$0004,$0036,$0043,$0040
	dw $0089 : dd DATA_D7BC77 : dw $0006,$0005,$0034,$0034,$0050
	dw $008A : dd DATA_D6C4D0 : dw $0006,$0005,$0031,$0034,$0050
	dw $0089 : dd DATA_DC86A8 : dw $0004,$0006,$005D,$0042,$0060
	dw $009D : dd DATA_D7C7C3 : dw $0005,$0006,$0057,$0042,$0060
	dw $009E : dd DATA_D6D09F : dw $0006,$0006,$0046,$0042,$0060
	dw $009F : dd DATA_D6DC6E : dw $0007,$0006,$0033,$0042,$0060
	dw $009F : dd DATA_D8B745 : dw $0007,$0006,$0031,$0042,$0060
	dw $009E : dd DATA_DDAEC4 : dw $0004,$0006,$0062,$0042,$0060
	dw $009C : dd DATA_DDB781 : dw $0004,$0006,$0062,$0042,$0060
	dw $009C : dd DATA_DC8FE8 : dw $0004,$0006,$0063,$0042,$0060
	dw $009D : dd DATA_DC9928 : dw $0004,$0006,$0063,$0042,$0060
	dw $009D : dd DATA_DCA268 : dw $0004,$0006,$0063,$0042,$0060
	dw $009D : dd DATA_DCABA8 : dw $0004,$0006,$005F,$0042,$0060
	dw $009E : dd DATA_DBCC86 : dw $0005,$0006,$005A,$0042,$0060
	dw $009D : dd DATA_DCB4E8 : dw $0005,$0006,$0058,$0042,$0060
	dw $009C : dd DATA_D8C20E : dw $0005,$0007,$005C,$0033,$0070
	dw $009F : dd DATA_D9AC9A : dw $0004,$0007,$0062,$0032,$0070
	dw $00A0 : dd DATA_DCBE28 : dw $0005,$0006,$0054,$003D,$0060
	dw $0097 : dd DATA_DDC03E : dw $0005,$0004,$0054,$0053,$0040
	dw $00A3 : dd DATA_D8CCD7 : dw $0006,$0004,$0052,$005B,$0040
	dw $00AD : dd DATA_D8D7A0 : dw $0007,$0004,$004D,$005B,$0040
	dw $00AF : dd DATA_DCC768 : dw $0007,$0003,$004C,$006E,$0030
	dw $00B3 : dd DATA_DCD0A8 : dw $0004,$0006,$0063,$0042,$0060
	dw $009F : dd DATA_DCD9E8 : dw $0004,$0006,$0062,$0042,$0060
	dw $009D : dd DATA_DDC8FB : dw $0004,$0006,$0061,$0042,$0060
	dw $0098 : dd DATA_DDD1B8 : dw $0004,$0006,$0061,$0042,$0060
	dw $0095 : dd DATA_DDDA75 : dw $0004,$0006,$0062,$0042,$0060
	dw $0095 : dd DATA_DDE332 : dw $0003,$0006,$0061,$0042,$0060
	dw $008F : dd DATA_DDEBEF : dw $0003,$0006,$0062,$0041,$0060
	dw $0091 : dd DATA_DBD649 : dw $0004,$0006,$005D,$003E,$0060
	dw $0095 : dd DATA_DCE328 : dw $0004,$0006,$0060,$0040,$0060
	dw $009A : dd DATA_DCEC68 : dw $0004,$0006,$0061,$0041,$0060
	dw $009B : dd DATA_D6E83D : dw $0005,$0006,$004F,$0041,$0060
	dw $0099 : dd DATA_D5620D : dw $0006,$0006,$0044,$0037,$0060
	dw $009A : dd DATA_D4E66D : dw $0007,$0006,$0029,$0037,$0060
	dw $0092 : dd DATA_D7D30F : dw $0008,$0006,$0023,$0038,$0060
	dw $0097 : dd DATA_D6F40C : dw $0008,$0006,$0026,$003B,$0060
	dw $0098 : dd DATA_E0D373 : dw $0004,$0004,$004F,$002F,$0040
	dw $0088 : dd DATA_E1E2FF : dw $0004,$0004,$0056,$0031,$0040
	dw $008B : dd DATA_E27C1B : dw $0004,$0004,$005A,$002D,$0040
	dw $008F : dd DATA_E282CC : dw $0004,$0004,$0060,$0027,$0040
	dw $0093 : dd DATA_E2897D : dw $0004,$0004,$0062,$002E,$0040
	dw $0097

DATA_D5B102:
	dw $0000,$0232,$080A,$0A00,$0232,$080A,$0006,$021E
	dw $080C,$0000,$021E,$0812,$0E00,$0214,$080A,$1200
	dw $0200,$080A,$000A,$0200,$0812,$0005,$0200,$080C
	dw $0905,$0200,$080C,$1205,$021E,$0813,$0005,$0200
	dw $0813,$080A,$0200,$0813,$080A,$020A,$0813,$1205
	dw $0200,$0813,$000C,$0214,$0813,$080C,$0214,$0813
	dw $1210,$020A,$0813,$0A10,$0200,$0813,$0A10,$0200
	dw $0813,$1210,$0200,$0813,$1212,$0200,$0813

DATA_D5B180:
	dw $0000,$0232,$0408,$0800,$0232,$0408,$0800,$0232
	dw $040C,$1200,$0232,$040C,$1200,$021E,$0413,$0800
	dw $020A,$0413,$1200,$021E,$0413,$0805,$0232,$040C
	dw $0805,$0214,$0413,$0805,$020A,$0413,$080A,$021E
	dw $0413,$120F,$0200,$0413,$1205,$021E,$0413,$1205
	dw $020A,$0413,$0809,$0232,$0413,$0809,$021E,$0413
	dw $1209,$0200,$0413,$0C0A,$0200,$0413,$1209,$020A
	dw $0413,$120C,$0200,$0413,$120C,$0200,$0413

DATA_D5B1FE:
	dw $0000,$0332,$0408,$0800,$0332,$0408,$0800,$0332
	dw $040C,$1200,$0332,$040C,$1200,$031E,$0413,$0800
	dw $030A,$0413,$1200,$031E,$0413,$0805,$0332,$040C
	dw $0805,$0314,$0413,$0805,$030A,$0413,$080A,$031E
	dw $0413,$120F,$0300,$0413,$1205,$031E,$0413,$1205
	dw $030A,$0413,$0809,$0332,$0413,$0809,$031E,$0413
	dw $1209,$0300,$0413,$0C0A,$0300,$0413,$1209,$030A
	dw $0413,$120C,$0300,$0413,$120C,$0300,$0413

DATA_D5B27C:
	dw $0800,$0332,$0408,$0805,$031E,$0408,$0800,$0300
	dw $040C,$1200,$031E,$040C,$1205,$031E,$0413,$0805
	dw $030A,$0413,$1200,$031E,$0413,$0805,$031E,$040C
	dw $0805,$0314,$0413,$0805,$030A,$0413,$080A,$031E
	dw $0413,$120F,$0300,$0413,$1205,$031E,$0413,$1205
	dw $030A,$0413,$0809,$031E,$0413,$0809,$030A,$0413
	dw $1209,$0300,$0413,$0C0A,$0300,$0413,$1209,$030A
	dw $0413,$120C,$0300,$0413,$120C,$0300,$0413

DATA_D5B2FA:
	dw $0000,$0232,$080A,$0A00,$0232,$080A,$0006,$021E
	dw $080C,$0000,$021E,$0812,$0E00,$0214,$080A,$1200
	dw $0200,$080A,$000A,$0200,$0812,$0005,$0200,$080C
	dw $0905,$0200,$080C,$1205,$021E,$0813,$0005,$0200
	dw $0813,$080A,$0200,$0813,$080A,$020A,$0813,$1205
	dw $0200,$0813,$000C,$0214,$0813,$080C,$0214,$0813
	dw $1210,$020A,$0813,$0A10,$0200,$0813,$0A10,$0200
	dw $0813,$1210,$0200,$0813,$1212,$0200,$0813

DATA_D5B378:
	dw $0000,$0232,$080A,$0800,$0232,$080A,$0005,$0200
	dw $080A,$0805,$021E,$080A,$1200,$0232,$0813,$000A
	dw $0232,$0810,$0808,$020A,$0810,$0005,$020A,$080F
	dw $1205,$020A,$080F,$0805,$0200,$0812,$0A08,$020A
	dw $080F,$1200,$0200,$080F,$120A,$020A,$080F,$1210
	dw $0200,$0813,$0009,$020A,$0813,$0809,$0208,$0813
	dw $1205,$0200,$0813,$080A,$020A,$0813,$1209,$0200
	dw $0813,$120C,$0200,$0813,$120E,$0200,$0813

	%InsertGarbageData($D5B3F6, incbin, UNK_D5B3F6.bin) ; Note: There seems to be a duplicate of the SPC700 engine at $D5D342
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD6Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D60000:
	incbin "UnknownData/DATA_D60000.rnc"

DATA_D60901:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$04,$08,$00,$20,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$14,$20,$0A,$24,$20,$0C,$34,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$02,$40,$28,$12
	db $40,$2A,$22,$40,$2C,$32,$40,$2E,$0D,$50,$40,$1D,$50,$42,$2D,$50
	db $44,$14,$60,$46,$2A,$60,$48,$15,$70,$4A,$26,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarKick3.bin"	; GFXSize = $B00

DATA_D6144D:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$05,$07,$00,$0D,$00,$02,$1D,$00
	db $04,$2D,$00,$06,$3D,$00,$08,$0E,$10,$0A,$1E,$10,$0C,$2E,$10,$0E
	db $3E,$10,$20,$13,$20,$22,$23,$20,$24,$33,$20,$26,$0C,$30,$28,$1C
	db $30,$2A,$2C,$30,$2C,$3C,$30,$2E,$0B,$40,$40,$33,$40,$42,$08,$50
	db $44,$34,$50,$46,$00,$60,$48,$10,$60,$4A,$36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_LowBlowHurt4.bin"	; GFXSize = $B00

DATA_D61F99:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$05,$07,$00,$0D,$00,$02,$1D,$00
	db $04,$2D,$00,$06,$3D,$00,$08,$0E,$10,$0A,$1E,$10,$0C,$2E,$10,$0E
	db $3E,$10,$20,$14,$20,$22,$24,$20,$24,$34,$20,$26,$0B,$30,$28,$1B
	db $30,$2A,$2B,$30,$2C,$3B,$30,$2E,$0B,$40,$40,$33,$40,$42,$05,$50
	db $44,$15,$50,$46,$35,$50,$48,$00,$60,$4A,$10,$60,$4C,$36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_LowBlowHurt5.bin"	; GFXSize = $B80

DATA_D62B68:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$05,$08,$00,$23,$00,$02,$1F,$10
	db $04,$2F,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $0E,$30,$20,$1E,$30,$22,$2E,$30,$24,$09,$40,$26,$19,$40,$28,$29
	db $40,$2A,$39,$40,$2C,$0D,$50,$2E,$1D,$50,$40,$31,$50,$42,$41,$50
	db $44,$0D,$60,$46,$1D,$60,$48,$39,$60,$4A,$49,$60,$4C,$41,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarPunch3.bin"	; GFXSize = $B80

DATA_D63737:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$07,$06,$00,$3E,$00,$02,$25,$10
	db $04,$35,$10,$06,$45,$10,$08,$55,$10,$0A,$26,$20,$0C,$36,$20,$0E
	db $46,$20,$20,$56,$20,$22,$22,$30,$24,$32,$30,$26,$42,$30,$28,$52
	db $30,$2A,$62,$30,$2C,$0D,$40,$2E,$1D,$40,$40,$2D,$40,$42,$4B,$40
	db $44,$5B,$40,$46,$00,$50,$48,$10,$50,$4A,$4B,$50,$4C,$5B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckKick6.bin"	; GFXSize = $B80

DATA_D64306:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$07,$00,$31,$00,$02,$25,$10
	db $04,$37,$10,$06,$10,$20,$08,$20,$20,$0A,$30,$20,$0C,$40,$20,$0E
	db $50,$20,$20,$0C,$30,$22,$1D,$30,$24,$2D,$30,$26,$3D,$30,$28,$4D
	db $30,$2A,$0D,$40,$2C,$1D,$40,$2E,$2D,$40,$40,$3D,$40,$42,$4D,$40
	db $44,$07,$50,$46,$33,$50,$48,$00,$60,$4A,$10,$60,$4C,$36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckHurt1.bin"	; GFXSize = $B80

DATA_D64ED5:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$05,$07,$00,$25,$00,$02,$35,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$4D,$10,$0E
	db $0C,$20,$20,$1C,$20,$22,$2C,$20,$24,$3C,$20,$26,$0D,$30,$28,$1D
	db $30,$2A,$2D,$30,$2C,$3D,$30,$2E,$0B,$40,$40,$1B,$40,$42,$33,$40
	db $44,$08,$50,$46,$33,$50,$48,$00,$60,$4A,$10,$60,$4C,$34,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Ducking2.bin"	; GFXSize = $B80

DATA_D65AA4:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$07,$06,$00,$51,$00,$02,$52,$10
	db $04,$62,$10,$06,$43,$20,$08,$53,$20,$0A,$63,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$20,$30,$22,$30,$30,$24,$40,$30,$26,$50,$30,$28,$60
	db $30,$2A,$00,$40,$2C,$10,$40,$2E,$20,$40,$40,$30,$40,$42,$40,$40
	db $44,$50,$40,$46,$60,$40,$48,$3C,$50,$4A,$4C,$50,$4C,$5C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick10.bin"	; GFXSize = $B80

DATA_D66673:
	incbin "UnknownData/DATA_D66673.rnc"

DATA_D67227:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$04,$00,$07,$00,$02,$17,$00
	db $04,$27,$00,$06,$37,$00,$08,$47,$00,$0A,$01,$10,$0C,$11,$10,$0E
	db $21,$10,$20,$31,$10,$22,$41,$10,$24,$51,$10,$26,$02,$20,$28,$12
	db $20,$2A,$22,$20,$2C,$32,$20,$2E,$42,$20,$40,$52,$20,$42,$00,$30
	db $44,$10,$30,$46,$20,$30,$48,$30,$30,$4A,$40,$30,$4C,$50,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandBlock3.bin"	; GFXSize = $B80

DATA_D67DF6:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$04,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$03,$10,$0C,$13,$10,$0E
	db $23,$10,$20,$33,$10,$22,$43,$10,$24,$53,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$0C,$30
	db $44,$1C,$30,$46,$2C,$30,$48,$3C,$30,$4A,$4C,$30,$4C,$5C,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandBlock4.bin"	; GFXSize = $B80

DATA_D689C5:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$04,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$49,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$04,$30
	db $44,$14,$30,$46,$24,$30,$48,$34,$30,$4A,$49,$30,$4C,$59,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_StandBlock5.bin"	; GFXSize = $B80

DATA_D69594:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$05,$07,$00,$04,$00,$02,$14,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$02,$30,$24,$12,$30,$26,$22,$30,$28,$32
	db $30,$2A,$19,$40,$2C,$29,$40,$2E,$39,$40,$40,$20,$50,$42,$30,$50
	db $44,$40,$50,$46,$17,$60,$48,$27,$60,$4A,$39,$60,$4C,$49,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch5.bin"	; GFXSize = $B80

DATA_D6A163:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$04,$08,$00,$0C,$00,$02,$1D,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$0A,$40,$28,$1A
	db $40,$2A,$0B,$50,$2C,$1B,$50,$2E,$2B,$50,$40,$0A,$60,$42,$23,$60
	db $44,$33,$60,$46,$02,$70,$48,$12,$70,$4A,$24,$70,$4C,$34,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch7.bin"	; GFXSize = $B80

DATA_D6AD32:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$04,$08,$00,$01,$00,$02,$11,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$09,$30,$24,$19,$30,$26,$29,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$16,$50,$2E,$26,$50,$40,$36,$50,$42,$14,$60
	db $44,$30,$60,$46,$0C,$70,$48,$1C,$70,$4A,$2E,$70,$4C,$3E,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch10.bin"	; GFXSize = $B80

DATA_D6B901:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$05,$00,$20,$00,$02,$30,$00
	db $04,$40,$00,$06,$50,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$00,$20,$26,$10,$20,$28,$20
	db $20,$2A,$30,$20,$2C,$40,$20,$2E,$50,$20,$40,$0E,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$3B,$40,$4A,$4B,$40,$4C,$5B,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CloseKick4.bin"	; GFXSize = $B80

DATA_D6C4D0:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$05,$00,$24,$00,$02,$40,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$33,$10,$0C,$43,$10,$0E
	db $53,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$04,$30,$2E,$14,$30,$40,$27,$30,$42,$37,$30
	db $44,$47,$30,$46,$57,$30,$48,$35,$40,$4A,$45,$40,$4C,$55,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_JumpKick5.bin"	; GFXSize = $B80

DATA_D6D09F:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$06,$06,$00,$00,$00,$02,$23,$00
	db $04,$33,$00,$06,$43,$00,$08,$03,$10,$0A,$13,$10,$0C,$23,$10,$0E
	db $33,$10,$20,$43,$10,$22,$0F,$20,$24,$1F,$20,$26,$2F,$20,$28,$3F
	db $20,$2A,$19,$30,$2C,$29,$30,$2E,$39,$30,$40,$49,$30,$42,$2A,$40
	db $44,$3A,$40,$46,$4A,$40,$48,$26,$50,$4A,$36,$50,$4C,$46,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_BladePunch3.bin"	; GFXSize = $B80

DATA_D6DC6E:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$07,$06,$00,$00,$00,$02,$36,$00
	db $04,$46,$00,$06,$56,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$1E,$20,$26,$2E,$20,$28,$41
	db $20,$2A,$51,$20,$2C,$3E,$30,$2E,$4E,$30,$40,$5E,$30,$42,$3D,$40
	db $44,$4D,$40,$46,$5D,$40,$48,$39,$50,$4A,$49,$50,$4C,$59,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_BladePunch4.bin"	; GFXSize = $B80

DATA_D6E83D:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$05,$06,$00,$0B,$00,$02,$1B,$00
	db $04,$2B,$00,$06,$01,$10,$08,$11,$10,$0A,$21,$10,$0C,$31,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$08,$30,$28,$18
	db $30,$2A,$28,$30,$2C,$38,$30,$2E,$0A,$40,$40,$1A,$40,$42,$2A,$40
	db $44,$3A,$40,$46,$4A,$40,$48,$0E,$50,$4A,$1E,$50,$4C,$2E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarKick1.bin"	; GFXSize = $B80

DATA_D6F40C:
	db $17,$00,$4F,$00,$01,$00,$0A,$00,$08,$06,$00,$09,$00,$02,$19,$00
	db $04,$42,$00,$06,$52,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$60,$10,$26,$05,$20,$28,$15
	db $20,$2A,$25,$20,$2C,$35,$20,$2E,$45,$20,$40,$55,$20,$42,$65,$20
	db $44,$56,$30,$46,$66,$30,$48,$56,$40,$4A,$4D,$50,$4C,$5D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarKick5.bin"	; GFXSize = $B80

	%InsertGarbageData($D6FFDB, incbin, UNK_D6FFDB.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD7Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D70000:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$04,$00,$06,$00,$02,$16,$00
	db $04,$26,$00,$06,$36,$00,$08,$57,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$02,$20,$28,$12
	db $20,$2A,$22,$20,$2C,$32,$20,$2E,$42,$20,$40,$52,$20,$42,$02,$30
	db $44,$12,$30,$46,$31,$30,$48,$41,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckBlock3.bin"	; GFXSize = $A80

DATA_D70AC9:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$07,$05,$00,$36,$00,$02,$2C,$10
	db $04,$3C,$10,$06,$4C,$10,$08,$5C,$10,$0A,$1A,$20,$0C,$2A,$20,$0E
	db $3A,$20,$20,$4A,$20,$22,$5A,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$40,$30,$2E,$50,$30,$40,$03,$40,$42,$2C,$40
	db $44,$3C,$40,$46,$4C,$40,$48,$5C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckHurt3.bin"	; GFXSize = $A80

DATA_D71592:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$06,$04,$00,$31,$00,$02,$41,$00
	db $04,$51,$00,$06,$1E,$10,$08,$2E,$10,$0A,$3E,$10,$0C,$4E,$10,$0E
	db $5E,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$03,$30,$2E,$13,$30,$40,$38,$30,$42,$48,$30
	db $44,$58,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckHurt4.bin"	; GFXSize = $980

DATA_D71F55:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$04,$08,$00,$21,$00,$02,$18,$10
	db $04,$28,$10,$06,$01,$20,$08,$11,$20,$0A,$21,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$20,$30,$22,$30,$30,$24,$0D,$40,$26,$1D,$40,$28,$0C
	db $50,$2A,$1C,$50,$2C,$2C,$50,$2E,$0C,$60,$40,$20,$60,$42,$30,$60
	db $44,$08,$70,$46,$18,$70,$48,$31,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarKick1.bin"	; GFXSize = $A80

DATA_D72A1E:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$05,$07,$00,$25,$00,$02,$35,$00
	db $04,$45,$00,$06,$05,$10,$08,$15,$10,$0A,$25,$10,$0C,$35,$10,$0E
	db $45,$10,$20,$13,$20,$22,$23,$20,$24,$33,$20,$26,$09,$30,$28,$19
	db $30,$2A,$29,$30,$2C,$08,$40,$2E,$2A,$40,$40,$06,$50,$42,$16,$50
	db $44,$29,$50,$46,$00,$60,$48,$10,$60,$4A,$29,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Dead1.bin"	; GFXSize = $B00

DATA_D7356A:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$07,$05,$00,$2C,$00,$02,$25,$10
	db $04,$35,$10,$06,$22,$20,$08,$32,$20,$0A,$42,$20,$0C,$52,$20,$0E
	db $09,$30,$20,$19,$30,$22,$29,$30,$24,$39,$30,$26,$49,$30,$28,$59
	db $30,$2A,$69,$30,$2C,$00,$40,$2E,$10,$40,$40,$20,$40,$42,$30,$40
	db $44,$49,$40,$46,$59,$40,$48,$69,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_Dead3.bin"	; GFXSize = $A80

DATA_D74033:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$05,$07,$00,$36,$00,$02,$16,$10
	db $04,$29,$10,$06,$39,$10,$08,$12,$20,$0A,$22,$20,$0C,$32,$20,$0E
	db $42,$20,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$40,$30,$28,$0E
	db $40,$2A,$1E,$40,$2C,$2E,$40,$2E,$3E,$40,$40,$02,$50,$42,$12,$50
	db $44,$35,$50,$46,$00,$60,$48,$10,$60,$4A,$38,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckBlock1.bin"	; GFXSize = $B00

DATA_D74B7F:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$05,$07,$00,$1F,$00,$02,$39,$00
	db $04,$1A,$10,$06,$2A,$10,$08,$3A,$10,$0A,$16,$20,$0C,$26,$20,$0E
	db $36,$20,$20,$46,$20,$22,$15,$30,$24,$25,$30,$26,$35,$30,$28,$0C
	db $40,$2A,$1C,$40,$2C,$2C,$40,$2E,$3C,$40,$40,$00,$50,$42,$10,$50
	db $44,$36,$50,$46,$01,$60,$48,$11,$60,$4A,$38,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckBlock2.bin"	; GFXSize = $B00

DATA_D756CB:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$05,$08,$00,$2D,$00,$02,$3D,$00
	db $04,$26,$10,$06,$36,$10,$08,$46,$10,$0A,$1A,$20,$0C,$2A,$20,$0E
	db $3A,$20,$20,$13,$30,$22,$23,$30,$24,$33,$30,$26,$02,$40,$28,$12
	db $40,$2A,$22,$40,$2C,$32,$40,$2E,$00,$50,$40,$10,$50,$42,$2A,$50
	db $44,$07,$60,$46,$17,$60,$48,$2B,$60,$4A,$2B,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick2.bin"	; GFXSize = $B00

DATA_D76217:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$06,$08,$00,$45,$00,$02,$55,$00
	db $04,$32,$10,$06,$42,$10,$08,$52,$10,$0A,$03,$20,$0C,$19,$20,$0E
	db $29,$20,$20,$39,$20,$22,$49,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$40,$30,$2E,$05,$40,$40,$15,$40,$42,$42,$40
	db $44,$0C,$50,$46,$41,$50,$48,$42,$60,$4A,$42,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick3.bin"	; GFXSize = $B00

DATA_D76D63:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$04,$08,$00,$0A,$00,$02,$1A,$00
	db $04,$06,$10,$06,$16,$10,$08,$26,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$0C,$40,$28,$1C
	db $40,$2A,$0A,$50,$2C,$1A,$50,$2E,$2A,$50,$40,$08,$60,$42,$23,$60
	db $44,$00,$70,$46,$10,$70,$48,$20,$70,$4A,$30,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch8.bin"	; GFXSize = $B00

DATA_D778AF:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$04,$08,$00,$06,$00,$02,$16,$00
	db $04,$02,$10,$06,$12,$10,$08,$22,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$01,$30,$22,$11,$30,$24,$21,$30,$26,$0C,$40,$28,$1C
	db $40,$2A,$0A,$50,$2C,$1A,$50,$2E,$2A,$50,$40,$08,$60,$42,$23,$60
	db $44,$00,$70,$46,$10,$70,$48,$21,$70,$4A,$31,$70
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_OverheadPunch9.bin"	; GFXSize = $B00

DATA_D783FB:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$06,$05,$00,$04,$00,$02,$14,$00
	db $04,$24,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $04,$20,$20,$14,$20,$22,$24,$20,$24,$34,$20,$26,$44,$20,$28,$07
	db $30,$2A,$17,$30,$2C,$27,$30,$2E,$37,$30,$40,$47,$30,$42,$0A,$40
	db $44,$1A,$40,$46,$31,$40,$48,$41,$40,$4A,$51,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_JumpKick1.bin"	; GFXSize = $B00

DATA_D78F47:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$06,$06,$00,$25,$00,$02,$35,$00
	db $04,$1B,$10,$06,$2B,$10,$08,$3B,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$0E,$30,$26,$1E,$30,$28,$2E
	db $30,$2A,$3E,$30,$2C,$4E,$30,$2E,$25,$40,$40,$35,$40,$42,$45,$40
	db $44,$55,$40,$46,$20,$50,$48,$30,$50,$4A,$40,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarPunch3.bin"	; GFXSize = $B00

DATA_D79A93:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$06,$05,$00,$04,$00,$02,$16,$00
	db $04,$26,$00,$06,$36,$00,$08,$46,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$06,$20,$28,$16
	db $20,$2A,$26,$20,$2C,$36,$20,$2E,$46,$20,$40,$56,$20,$42,$33,$30
	db $44,$43,$30,$46,$3C,$40,$48,$4C,$40,$4A,$5C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CloseKick5.bin"	; GFXSize = $B00

DATA_D7A5DF:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$06,$05,$00,$2E,$00,$02,$3E,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $03,$20,$20,$13,$20,$22,$23,$20,$24,$33,$20,$26,$43,$20,$28,$53
	db $20,$2A,$14,$30,$2C,$24,$30,$2E,$34,$30,$40,$44,$30,$42,$54,$30
	db $44,$1C,$40,$46,$2C,$40,$48,$3C,$40,$4A,$4E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckPunch3.bin"	; GFXSize = $B00

DATA_D7B12B:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$07,$05,$00,$31,$00,$02,$41,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $08,$20,$20,$18,$20,$22,$28,$20,$24,$38,$20,$26,$48,$20,$28,$58
	db $20,$2A,$18,$30,$2C,$28,$30,$2E,$38,$30,$40,$48,$30,$42,$58,$30
	db $44,$20,$40,$46,$30,$40,$48,$40,$40,$4A,$52,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckPunch4.bin"	; GFXSize = $B00

DATA_D7BC77:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$06,$05,$00,$23,$00,$02,$01,$10
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$41,$10,$0C,$51,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$50
	db $20,$2A,$05,$30,$2C,$15,$30,$2E,$25,$30,$40,$35,$30,$42,$45,$30
	db $44,$55,$30,$46,$32,$40,$48,$42,$40,$4A,$52,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_JumpKick4.bin"	; GFXSize = $B00

DATA_D7C7C3:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$05,$06,$00,$02,$00,$02,$12,$00
	db $04,$22,$00,$06,$32,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$02,$20,$22,$12,$20,$24,$22,$20,$26,$32,$20,$28,$0A
	db $30,$2A,$1A,$30,$2C,$2A,$30,$2E,$3A,$30,$40,$19,$40,$42,$29,$40
	db $44,$39,$40,$46,$15,$50,$48,$25,$50,$4A,$35,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_BladePunch2.bin"	; GFXSize = $B00

DATA_D7D30F:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$08,$06,$00,$45,$00,$02,$55,$00
	db $04,$05,$10,$06,$15,$10,$08,$25,$10,$0A,$35,$10,$0C,$45,$10,$0E
	db $55,$10,$20,$65,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$50,$20,$2E,$60,$20,$40,$0B,$30,$42,$59,$30
	db $44,$69,$30,$46,$5A,$40,$48,$50,$50,$4A,$60,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarKick4.bin"	; GFXSize = $B00

DATA_D7DE5B:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$09,$07,$00,$0A,$00,$02,$0B,$10
	db $04,$00,$20,$06,$10,$20,$08,$20,$20,$0A,$0D,$30,$0C,$1D,$30,$0E
	db $2D,$30,$20,$2F,$40,$22,$3F,$40,$24,$4F,$40,$26,$5F,$40,$28,$6F
	db $40,$2A,$43,$50,$2C,$53,$50,$2E,$63,$50,$40,$73,$50,$42,$3A,$60
	db $44,$4A,$60,$46,$5C,$60,$48,$70,$60,$4A,$80,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick8.bin"	; GFXSize = $B00

DATA_D7E9A7:
	db $16,$00,$4C,$00,$01,$00,$0A,$00,$09,$06,$00,$1D,$00,$02,$2D,$00
	db $04,$3D,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $40,$10,$20,$50,$10,$22,$1B,$20,$24,$2B,$20,$26,$3B,$20,$28,$57
	db $20,$2A,$67,$20,$2C,$21,$30,$2E,$37,$30,$40,$65,$30,$42,$75,$30
	db $44,$37,$40,$46,$75,$40,$48,$79,$50,$4A,$89,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack5.bin"	; GFXSize = $B00

DATA_D7F4F3:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$07,$00,$01,$01,$0A,$23,$02,$01,$0C,$01,$23,$01,$00,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$03,$02,$20,$00,$00,$01,$06,$0C,$02,$01,$1F
	db $01,$1F,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$03,$04,$58
	db $00,$01,$01,$0B,$23,$02,$01,$1F,$01,$0A,$01,$03,$04,$0C,$00,$01
	db $01,$0A,$23,$02,$01,$1F,$01,$0A,$01,$03,$00,$1B,$00,$01,$00,$0C
	db $06,$02,$01,$1F,$01,$1F,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$01,$01,$1F,$01,$0A
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00
	db $F8,$02,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$03,$05,$35,$F8,$02,$0B,$0C
	db $0C,$02,$01,$1F,$01,$23,$01,$03,$05,$00,$F8,$02,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$03,$05,$00,$F8,$02,$02,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$00
	db $F8,$02,$0B,$0C,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$01,$01,$0C
	db $01,$0C,$01,$04,$05,$35,$F8,$02,$0F,$14,$0C,$02,$01,$0C,$01,$1F
	db $01,$04,$05,$35,$F8,$02,$0F,$14,$0C,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$03,$02,$3A,$F8,$01
	db $2B,$0A,$01,$01,$01,$1F,$01,$0A,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$02,$01,$1F,$01,$23,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00

	%InsertGarbageData($D7F723, incbin, UNK_D7F723.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD8Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

;--------------------------------------------------------------------

DATA_D80000:
	dd DATA_D80A74-DATA_D80000,DATA_D800A4-DATA_D80000,DATA_D80130-DATA_D80000,DATA_D8017C-DATA_D80000
	dd DATA_D801CA-DATA_D80000,DATA_D8032A-DATA_D80000,DATA_D80372-DATA_D80000,DATA_D8039E-DATA_D80000
	dd DATA_D803F6-DATA_D80000,DATA_D8041E-DATA_D80000,DATA_D800FC-DATA_D80000,DATA_D8021C-DATA_D80000
	dd DATA_D80000-DATA_D80000,DATA_D802A6-DATA_D80000,DATA_D80446-DATA_D80000,DATA_D800D8-DATA_D80000
	dd DATA_D80000-DATA_D80000,DATA_D80486-DATA_D80000,DATA_D804B0-DATA_D80000,DATA_D804DA-DATA_D80000
	dd DATA_D80000-DATA_D80000,DATA_D8059E-DATA_D80000,DATA_D80506-DATA_D80000,DATA_D80552-DATA_D80000
	dd DATA_D8064A-DATA_D80000,DATA_D80688-DATA_D80000,DATA_D806CE-DATA_D80000,DATA_D80000-DATA_D80000
	dd DATA_D80000-DATA_D80000,DATA_D80000-DATA_D80000,DATA_D8034E-DATA_D80000,DATA_D80000-DATA_D80000
	dd DATA_D805C2-DATA_D80000,DATA_D80606-DATA_D80000,DATA_D80000-DATA_D80000,DATA_D80000-DATA_D80000
	dd DATA_D8091E-DATA_D80000,DATA_D80000-DATA_D80000,DATA_D808AC-DATA_D80000,DATA_D802FE-DATA_D80000
	dd $FFFFFFFF

DATA_D800A4:
	db $C4,$00,$00,$00,$C4,$00,$00,$00,$C4,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$76,$09,$00,$00,$03,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00
	db $02,$00,$FF,$00

DATA_D800D8:
	db $F8,$00,$00,$00,$F8,$00,$00,$00,$F8,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$A0,$09,$00,$00,$11,$00,$00,$05
	db $00,$00,$FF,$00

DATA_D800FC:
	db $1C,$01,$00,$00,$1C,$01,$00,$00,$1C,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$CA,$09,$00,$00,$03,$09,$00,$00
	db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00
	db $02,$00,$FF,$00

DATA_D80130:
	db $50,$01,$00,$00,$5C,$01,$00,$00,$6A,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$06,$00,$00,$00
	db $21,$06,$23,$0A,$23,$0A,$21,$04,$00,$00,$FF,$00,$20,$06,$21,$06
	db $23,$0A,$23,$0A,$21,$04,$20,$04,$FF,$00,$20,$06,$21,$06,$22,$06
	db $23,$0A,$23,$0A,$22,$04,$21,$04,$20,$04,$FF,$00

DATA_D8017C:
	db $9C,$01,$00,$00,$9C,$01,$00,$00,$9C,$01,$00,$00,$B4,$01,$00,$00
	db $B4,$01,$00,$00,$B4,$01,$00,$00,$CC,$09,$00,$00,$08,$00,$00,$00
	db $37,$00,$38,$00,$39,$00,$3A,$00,$3B,$00,$3C,$00,$3D,$00,$3E,$00
	db $3F,$00,$40,$00,$41,$00,$FF,$00,$03,$00,$03,$00,$03,$00,$03,$00
	db $02,$00,$02,$00,$02,$00,$03,$00,$03,$00,$07,$00,$08,$00

DATA_D801CA:
	db $EA,$01,$00,$00,$EA,$01,$00,$00,$EA,$01,$00,$00,$04,$02,$00,$00
	db $04,$02,$00,$00,$04,$02,$00,$00,$F6,$09,$00,$00,$08,$00,$00,$00
	db $00,$00,$41,$00,$40,$00,$3F,$00,$3E,$00,$3D,$00,$3C,$00,$3B,$00
	db $3A,$00,$39,$00,$38,$00,$37,$00,$FF,$00,$F9,$FF,$F8,$FF,$F9,$FF
	db $FD,$FF,$FD,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF

DATA_D8021C:
	db $3C,$02,$00,$00,$4C,$02,$00,$00,$5E,$02,$00,$00,$74,$02,$00,$00
	db $82,$02,$00,$00,$92,$02,$00,$00,$74,$09,$00,$00,$06,$00,$00,$00
	db $29,$06,$2B,$06,$2C,$0A,$2C,$0A,$2B,$04,$29,$04,$00,$00,$FF,$00
	db $28,$06,$29,$06,$2A,$06,$2C,$0A,$2C,$0A,$2A,$04,$29,$04,$28,$04
	db $FF,$00,$28,$06,$29,$06,$2A,$06,$2B,$06,$2C,$0A,$2C,$0A,$2B,$04
	db $2A,$04,$29,$04,$28,$04,$FF,$00,$00,$00,$00,$00,$20,$00,$00,$00
	db $E0,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00
	db $E0,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00
	db $00,$00,$E0,$FF,$00,$00,$00,$00,$00,$00

DATA_D802A6:
	db $C6,$02,$00,$00,$D6,$02,$00,$00,$E8,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$0E,$04,$00,$00
	db $0C,$04,$0E,$04,$10,$0A,$10,$0A,$0E,$04,$0C,$04,$08,$00,$FF,$00
	db $0C,$04,$0D,$04,$0E,$04,$10,$0A,$10,$0A,$0E,$04,$0D,$04,$0C,$04
	db $FF,$00,$0C,$04,$0D,$04,$0E,$04,$0F,$04,$10,$0A,$10,$0A,$0F,$04
	db $0E,$04,$0D,$04,$0C,$04,$FF,$00

DATA_D802FE:
	db $1E,$03,$00,$00,$1E,$03,$00,$00,$1E,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$02,$04,$00,$00
	db $03,$00,$04,$00,$05,$00,$06,$00,$07,$00,$FF,$00

DATA_D8032A:
	db $4A,$03,$00,$00,$4A,$03,$00,$00,$4A,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$20,$0A,$00,$00,$01,$00,$00,$00
	db $08,$00,$FF,$00

DATA_D8034E:
	db $6E,$03,$00,$00,$6E,$03,$00,$00,$6E,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$20,$0A,$00,$00,$01,$00,$00,$00
	db $08,$00,$FF,$00

DATA_D80372:
	db $92,$03,$00,$00,$92,$03,$00,$00,$92,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$02,$00,$00,$00
	db $07,$00,$06,$00,$05,$00,$04,$00,$03,$00,$FF,$00

DATA_D8039E:
	db $BE,$03,$00,$00,$CE,$03,$00,$00,$E0,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$0E,$04,$00,$00
	db $11,$06,$13,$06,$15,$0A,$15,$0A,$13,$04,$11,$04,$08,$00,$FF,$00
	db $11,$06,$12,$06,$13,$06,$15,$0A,$15,$0A,$13,$04,$12,$04,$11,$04
	db $FF,$00,$11,$06,$12,$06,$13,$06,$14,$06,$15,$0A,$15,$0A,$14,$04
	db $13,$04,$12,$04,$11,$04,$FF,$00

DATA_D803F6:
	db $16,$04,$00,$00,$16,$04,$00,$00,$16,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$50,$0A,$00,$00,$01,$00,$00,$00
	db $09,$FF,$0A,$FF,$0B,$FF,$FF,$00

DATA_D8041E:
	db $3E,$04,$00,$00,$3E,$04,$00,$00,$3E,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$0A,$04,$00,$00
	db $0B,$FF,$0A,$FF,$09,$FF,$FF,$00

DATA_D80446:
	db $66,$04,$00,$00,$66,$04,$00,$00,$66,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$06,$00,$00,$00
	db $24,$00,$25,$00,$25,$00,$26,$00,$26,$00,$27,$00,$27,$00,$27,$00
	db $27,$00,$27,$00,$27,$00,$26,$00,$26,$00,$25,$00,$24,$00,$FF,$00

DATA_D80486:
	db $A6,$04,$00,$00,$A6,$04,$00,$00,$A6,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$4A,$0A,$00,$00,$01,$00,$00,$00
	db $33,$00,$34,$00,$35,$00,$36,$00,$FF,$00

DATA_D804B0:
	db $D0,$04,$00,$00,$D0,$04,$00,$00,$D0,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$02,$00,$00,$00
	db $36,$00,$35,$00,$34,$00,$33,$00,$FF,$00

DATA_D804DA:
	db $FA,$04,$00,$00,$FA,$04,$00,$00,$FA,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$56,$0A,$00,$00,$4B,$04,$00,$F1
	db $16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$FF,$00

DATA_D80506:
	db $26,$05,$00,$00,$26,$05,$00,$00,$26,$05,$00,$00,$32,$05,$00,$00
	db $32,$05,$00,$00,$32,$05,$00,$00,$60,$0A,$00,$00,$4B,$04,$00,$F1
	db $16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$FF,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00

DATA_D80552:
	db $72,$05,$00,$00,$72,$05,$00,$00,$72,$05,$00,$00,$7E,$05,$00,$00
	db $7E,$05,$00,$00,$7E,$05,$00,$00,$6A,$0A,$00,$00,$4B,$04,$00,$F1
	db $16,$00,$17,$00,$18,$00,$19,$00,$1A,$00,$FF,$00,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF

DATA_D8059E:
	db $BE,$05,$00,$00,$BE,$05,$00,$00,$BE,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$4F,$04,$00,$F1
	db $4F,$04,$FF,$00

DATA_D805C2:
	db $E2,$05,$00,$00,$E2,$05,$00,$00,$E2,$05,$00,$00,$E6,$05,$00,$00
	db $E6,$05,$00,$00,$E6,$05,$00,$00,$74,$09,$00,$00,$4F,$04,$00,$F1
	db $4F,$04,$FF,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$04,$00

DATA_D80606:
	db $26,$06,$00,$00,$26,$06,$00,$00,$26,$06,$00,$00,$2A,$06,$00,$00
	db $2A,$06,$00,$00,$2A,$06,$00,$00,$74,$09,$00,$00,$4F,$04,$00,$F1
	db $4F,$04,$FF,$00,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$FC,$FF
	db $FC,$FF,$FC,$FF

DATA_D8064A:
	db $6A,$06,$00,$00,$6A,$06,$00,$00,$6A,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$06,$04,$00,$00
	db $1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$00,$1F,$00,$1F,$00,$1F,$00
	db $1F,$00,$1F,$00,$1E,$00,$1D,$00,$1C,$00,$1B,$00,$FF,$00

DATA_D80688:
	db $A8,$06,$00,$00,$A8,$06,$00,$00,$A8,$06,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$C3,$00,$00,$00
	db $2D,$00,$2D,$00,$2E,$00,$2E,$00,$2F,$00,$2F,$00,$30,$00,$30,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$FF,$00

DATA_D806CE:
	db $EE,$06,$00,$00,$EE,$06,$00,$00,$EE,$06,$00,$00,$8C,$07,$00,$00
	db $8C,$07,$00,$00,$8C,$07,$00,$00,$74,$09,$00,$00,$83,$00,$00,$00
	db $2D,$00,$2D,$00,$2E,$00,$2E,$00,$2F,$00,$2F,$00,$30,$00,$30,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00,$31,$00
	db $07,$00,$06,$00,$05,$00,$04,$00,$03,$00,$FF,$00,$FF,$00,$F8,$FF
	db $F9,$FF,$FA,$FF,$FB,$FF,$FC,$FF,$FD,$FF,$FE,$FF,$FF,$FF,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_D808AC:
	db $CC,$08,$00,$00,$CC,$08,$00,$00,$CC,$08,$00,$00,$EE,$08,$00,$00
	db $EE,$08,$00,$00,$EE,$08,$00,$00,$74,$09,$00,$00,$0B,$17,$06,$00
	db $1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00
	db $1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00,$1A,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_D8091E:
	db $3E,$09,$00,$00,$3E,$09,$00,$00,$3E,$09,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$74,$09,$00,$00,$0E,$00,$00,$00
	db $42,$00,$43,$00,$44,$00,$45,$00,$46,$00,$47,$00,$48,$00,$49,$00
	db $4A,$00,$4B,$00,$4C,$00,$4D,$00,$4E,$00,$48,$00,$49,$00,$4A,$00
	db $4B,$00,$4C,$00,$4D,$00,$4E,$00,$47,$00,$46,$00,$45,$00,$44,$00
	db $43,$00,$42,$00,$FF,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00,$16,$00
	db $0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00
	db $04,$00,$03,$00,$02,$00,$02,$00,$01,$00,$01,$00,$20,$00,$0A,$00
	db $FF,$FF,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00
	db $26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$02,$00
	db $02,$00,$01,$00,$01,$00,$20,$00,$0A,$00,$FF,$FF,$FF,$FF,$00,$00
	db $00,$00,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00
	db $26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$01,$00
	db $01,$00,$20,$00,$0A,$00,$FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00
	db $0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00
	db $12,$00,$26,$00,$02,$00,$02,$00,$01,$00,$01,$00,$20,$00,$0A,$00
	db $FF,$FF,$00,$00,$05,$00,$10,$00,$04,$00,$14,$00,$1D,$00,$08,$00
	db $05,$00,$0A,$00,$05,$00,$0C,$00,$05,$00,$02,$00,$05,$00,$04,$00
	db $05,$00,$01,$00,$06,$00,$20,$00,$0C,$00,$FF,$FF,$00,$00,$11,$00
	db $FF,$FF,$00,$00,$08,$00,$FF,$FF,$20,$00,$14,$00,$01,$00,$14,$00
	db $FF,$FF,$20,$00,$1F,$00,$01,$00,$1F,$00,$FF,$FF,$20,$00,$20,$00
	db $01,$00,$20,$00,$FF,$FF

DATA_D80A74:
	db $01,$00,$02,$00,$10,$00,$FF,$23,$01,$FE,$02,$FE,$10,$FE,$FF,$23
	db $01,$00,$10,$00,$10,$00,$10,$00,$10,$00,$FF,$83,$01,$00,$08,$00
	db $08,$00,$08,$00,$08,$00,$FF,$80,$01,$00,$04,$00,$04,$00,$04,$00
	db $04,$00,$FF,$84,$01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$FF,$85
	db $FF

;--------------------------------------------------------------------

DATA_D80AB5:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$29,$00,$02,$0A,$10
	db $04,$1A,$10,$06,$2A,$10,$08,$3A,$10,$0A,$0A,$20,$0C,$1A,$20,$0E
	db $2A,$20,$20,$3A,$20,$22,$09,$30,$24,$19,$30,$26,$29,$30,$28,$39
	db $30,$2A,$05,$40,$2C,$15,$40,$2E,$25,$40,$40,$35,$40,$42,$00,$50
	db $44,$10,$50,$46,$2D,$50,$48,$3D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckKick5.bin"	; GFXSize = $A80

DATA_D8157E:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$2E,$00,$02,$3E,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $18,$20,$20,$2B,$20,$22,$3B,$20,$24,$4B,$20,$26,$14,$30,$28,$24
	db $30,$2A,$34,$30,$2C,$44,$30,$2E,$0D,$40,$40,$1D,$40,$42,$3A,$40
	db $44,$07,$50,$46,$17,$50,$48,$3D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckPunch4.bin"	; GFXSize = $A80

DATA_D82047:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$06,$00,$44,$00,$02,$54,$00
	db $04,$34,$10,$06,$44,$10,$08,$54,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$42,$20,$24,$52,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$40,$30,$40,$50,$30,$42,$01,$40
	db $44,$30,$40,$46,$40,$40,$48,$30,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick9.bin"	; GFXSize = $A80

DATA_D82B10:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$05,$00,$06,$00,$02,$16,$00
	db $04,$26,$00,$06,$36,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$05,$30,$2E,$15,$30,$40,$25,$30,$42,$35,$30
	db $44,$1D,$40,$46,$2D,$40,$48,$3D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_JumpKick2.bin"	; GFXSize = $A80

DATA_D835D9:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$18,$00,$02,$12,$10
	db $04,$22,$10,$06,$32,$10,$08,$0B,$20,$0A,$1B,$20,$0C,$2B,$20,$0E
	db $3B,$20,$20,$0C,$30,$22,$1C,$30,$24,$2C,$30,$26,$3C,$30,$28,$00
	db $40,$2A,$10,$40,$2C,$20,$40,$2E,$30,$40,$40,$40,$40,$42,$04,$50
	db $44,$14,$50,$46,$24,$50,$48,$34,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_JumpKick4.bin"	; GFXSize = $A80

DATA_D840A2:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$1D,$00,$02,$2D,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $03,$20,$20,$13,$20,$22,$23,$20,$24,$33,$20,$26,$43,$20,$28,$0D
	db $30,$2A,$1D,$30,$2C,$2D,$30,$2E,$3D,$30,$40,$0A,$40,$42,$35,$40
	db $44,$00,$50,$46,$10,$50,$48,$36,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_StandBlock1.bin"	; GFXSize = $A80

DATA_D84B6B:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$07,$05,$00,$36,$00,$02,$46,$00
	db $04,$56,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $40,$10,$20,$50,$10,$22,$01,$20,$24,$11,$20,$26,$21,$20,$28,$31
	db $20,$2A,$41,$20,$2C,$51,$20,$2E,$23,$30,$40,$33,$30,$42,$43,$30
	db $44,$57,$30,$46,$5C,$40,$48,$6C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckKick5.bin"	; GFXSize = $A80

DATA_D85634:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$06,$00,$29,$00,$02,$3B,$00
	db $04,$05,$10,$06,$19,$10,$08,$29,$10,$0A,$39,$10,$0C,$49,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$1C
	db $30,$2A,$2C,$30,$2C,$3C,$30,$2E,$4C,$30,$40,$1B,$40,$42,$42,$40
	db $44,$1D,$50,$46,$2D,$50,$48,$4B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClosePunch3.bin"	; GFXSize = $A80

DATA_D860FD:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$04,$07,$00,$00,$00,$02,$1D,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$32,$20,$24,$16,$30,$26,$26,$30,$28,$36
	db $30,$2A,$0F,$40,$2C,$1F,$40,$2E,$2F,$40,$40,$0F,$50,$42,$31,$50
	db $44,$08,$60,$46,$18,$60,$48,$35,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClosePunch5.bin"	; GFXSize = $A80

DATA_D86BC6:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$21,$00,$02,$33,$00
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$41,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20,$22,$33,$20,$24,$43,$20,$26,$02,$30,$28,$12
	db $30,$2A,$22,$30,$2C,$32,$30,$2E,$0B,$40,$40,$1B,$40,$42,$37,$40
	db $44,$00,$50,$46,$10,$50,$48,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_LowBlowHurt1.bin"	; GFXSize = $A80

DATA_D8768F:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$06,$00,$3B,$00,$02,$4B,$00
	db $04,$12,$10,$06,$22,$10,$08,$32,$10,$0A,$42,$10,$0C,$52,$10,$0E
	db $18,$20,$20,$28,$20,$22,$38,$20,$24,$48,$20,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$40,$30,$2E,$01,$40,$40,$11,$40,$42,$3A,$40
	db $44,$00,$50,$46,$10,$50,$48,$3C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Dead1.bin"	; GFXSize = $A80

DATA_D88158:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$1E,$00,$02,$36,$00
	db $04,$46,$00,$06,$11,$10,$08,$21,$10,$0A,$31,$10,$0C,$41,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$40,$20,$28,$02
	db $30,$2A,$12,$30,$2C,$22,$30,$2E,$32,$30,$40,$0A,$40,$42,$34,$40
	db $44,$00,$50,$46,$10,$50,$48,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClawStrike1.bin"	; GFXSize = $A80

DATA_D88C21:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$18,$00,$02,$28,$00
	db $04,$38,$00,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$0B,$30,$26,$1B,$30,$28,$2B
	db $30,$2A,$3B,$30,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$4B,$40
	db $44,$16,$50,$46,$26,$50,$48,$36,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarPunch2.bin"	; GFXSize = $A80

DATA_D896EA:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$06,$00,$31,$00,$02,$41,$00
	db $04,$00,$10,$06,$26,$10,$08,$36,$10,$0A,$46,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$31
	db $30,$2A,$41,$30,$2C,$51,$30,$2E,$30,$40,$40,$40,$40,$42,$50,$40
	db $44,$2C,$50,$46,$3C,$50,$48,$4C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarPunch4.bin"	; GFXSize = $A80

DATA_D8A1B3:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$2A,$00
	db $04,$14,$10,$06,$24,$10,$08,$34,$10,$0A,$12,$20,$0C,$22,$20,$0E
	db $32,$20,$20,$08,$30,$22,$18,$30,$24,$28,$30,$26,$38,$30,$28,$07
	db $40,$2A,$17,$40,$2C,$27,$40,$2E,$37,$40,$40,$00,$50,$42,$10,$50
	db $44,$20,$50,$46,$30,$50,$48,$40,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CloseKick2.bin"	; GFXSize = $A80

DATA_D8AC7C:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$05,$00,$28,$00,$02,$38,$00
	db $04,$48,$00,$06,$15,$10,$08,$25,$10,$0A,$35,$10,$0C,$45,$10,$0E
	db $0D,$20,$20,$1D,$20,$22,$2D,$20,$24,$3D,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$34,$30,$2E,$44,$30,$40,$0B,$40,$42,$1B,$40
	db $44,$34,$40,$46,$44,$40,$48,$54,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CloseKick3.bin"	; GFXSize = $A80

DATA_D8B745:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$07,$06,$00,$21,$00,$02,$38,$00
	db $04,$48,$00,$06,$58,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$42,$20,$26,$52,$20,$28,$40
	db $30,$2A,$50,$30,$2C,$60,$30,$2E,$3F,$40,$40,$4F,$40,$42,$5F,$40
	db $44,$3B,$50,$46,$4B,$50,$48,$5B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_BladePunch5.bin"	; GFXSize = $A80

DATA_D8C20E:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$05,$07,$00,$1A,$00,$02,$10,$10
	db $04,$20,$10,$06,$30,$10,$08,$0B,$20,$0A,$1B,$20,$0C,$2B,$20,$0E
	db $1A,$30,$20,$2A,$30,$22,$04,$40,$24,$14,$40,$26,$24,$40,$28,$34
	db $40,$2A,$00,$50,$2C,$10,$50,$2E,$20,$50,$40,$30,$50,$42,$40,$50
	db $44,$0E,$60,$46,$1E,$60,$48,$2E,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_HighBlowHurt4.bin"	; GFXSize = $A80

DATA_D8CCD7:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$06,$04,$00,$02,$00,$02,$13,$00
	db $04,$23,$00,$06,$33,$00,$08,$43,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$00,$20,$28,$10
	db $20,$2A,$20,$20,$2C,$30,$20,$2E,$40,$20,$40,$50,$20,$42,$08,$30
	db $44,$18,$30,$46,$28,$30,$48,$38,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Dead3.bin"	; GFXSize = $A80

DATA_D8D7A0:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$07,$04,$00,$05,$00,$02,$37,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$31,$10,$0C,$41,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$41,$20,$28,$51
	db $20,$2A,$61,$20,$2C,$00,$30,$2E,$10,$30,$40,$20,$30,$42,$30,$30
	db $44,$40,$30,$46,$50,$30,$48,$60,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Dead4.bin"	; GFXSize = $A80

DATA_D8E269:
	db $15,$00,$49,$00,$01,$00,$0A,$00,$09,$07,$00,$0C,$00,$02,$0F,$10
	db $04,$00,$20,$06,$10,$20,$08,$20,$20,$0A,$1D,$30,$0C,$2D,$30,$0E
	db $36,$40,$20,$46,$40,$22,$56,$40,$24,$66,$40,$26,$3B,$50,$28,$4D
	db $50,$2A,$5D,$50,$2C,$6D,$50,$2E,$7D,$50,$40,$3C,$60,$42,$4C,$60
	db $44,$5C,$60,$46,$71,$60,$48,$81,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick7.bin"	; GFXSize = $A80

DATA_D8ED32:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$23,$00,$01,$01,$0A,$23,$02,$01,$06,$01,$01,$01,$00,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$03,$02,$15,$00,$00,$01,$0C,$0C,$02,$01,$06
	db $01,$23,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$04,$2C
	db $00,$01,$03,$01,$23,$02,$01,$1F,$01,$0A,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$02,$01,$1F,$01,$0A,$01,$03,$00,$10,$00,$01,$00,$06
	db $0C,$02,$01,$1F,$01,$01,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$01,$01,$1F,$01,$01
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00
	db $F8,$02,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$4F,$F8,$02,$0B,$23
	db $0A,$02,$01,$1F,$01,$1F,$01,$00,$05,$00,$F8,$02,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$05,$00,$F8,$02,$02,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$01,$01,$1F
	db $01,$01,$01,$02,$00,$4F,$F8,$02,$0F,$0A,$01,$02,$01,$1F,$01,$1F
	db $01,$02,$00,$4F,$F8,$02,$0F,$1F,$0A,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$02,$4A,$00,$01
	db $2B,$23,$01,$01,$01,$1F,$01,$1F,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$02,$01,$0C,$01,$23,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00

DATA_D8EF62:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame7.bin"

	%InsertGarbageData($D8F71C, incbin, UNK_D8F71C.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankD9Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_D90000:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$06,$00,$15,$00,$02,$04,$10
	db $04,$14,$10,$06,$26,$10,$08,$36,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$06,$30,$24,$16,$30,$26,$26,$30,$28,$03
	db $40,$2A,$1C,$40,$2C,$00,$50,$2E,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ClosePunch3.bin"	; GFXSize = $800

DATA_D9083A:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$28,$00,$02,$38,$00
	db $04,$13,$10,$06,$23,$10,$08,$33,$10,$0A,$43,$10,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$42,$20,$24,$0D,$30,$26,$1D,$30,$28,$2D
	db $30,$2A,$3D,$30,$2C,$06,$40,$2E,$16,$40,$40,$34,$40,$42,$00,$50
	db $44,$10,$50,$46,$37,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckPunch1.bin"	; GFXSize = $A00

DATA_D91280:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$05,$00,$04,$00,$02,$14,$00
	db $04,$24,$00,$06,$36,$00,$08,$03,$10,$0A,$13,$10,$0C,$23,$10,$0E
	db $33,$10,$20,$43,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$01,$30,$2E,$12,$30,$40,$22,$30,$42,$36,$30
	db $44,$12,$40,$46,$33,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckKick3.bin"	; GFXSize = $A00

DATA_D91CC6:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$16,$00,$02,$26,$00
	db $04,$36,$00,$06,$0D,$10,$08,$1D,$10,$0A,$2D,$10,$0C,$3D,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$0D,$40,$40,$2D,$40,$42,$04,$50
	db $44,$14,$50,$46,$31,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick1.bin"	; GFXSize = $A00

DATA_D9270C:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$17,$00,$02,$27,$00
	db $04,$3F,$00,$06,$0D,$10,$08,$1D,$10,$0A,$2D,$10,$0C,$3D,$10,$0E
	db $0D,$20,$20,$1D,$20,$22,$2D,$20,$24,$48,$20,$26,$09,$30,$28,$19
	db $30,$2A,$29,$30,$2C,$39,$30,$2E,$0B,$40,$40,$2E,$40,$42,$00,$50
	db $44,$10,$50,$46,$2E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick11.bin"	; GFXSize = $A00

DATA_D93152:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$16,$00,$02,$26,$00
	db $04,$36,$00,$06,$12,$10,$08,$22,$10,$0A,$32,$10,$0C,$42,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$09,$30,$28,$19
	db $30,$2A,$29,$30,$2C,$39,$30,$2E,$01,$40,$40,$11,$40,$42,$32,$40
	db $44,$00,$50,$46,$35,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_CloseKick1.bin"	; GFXSize = $A00

DATA_D93B98:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$06,$07,$00,$34,$00,$02,$16,$10
	db $04,$26,$10,$06,$36,$10,$08,$46,$10,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$50,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$40,$30,$2E,$50,$30,$40,$37,$40,$42,$38,$50
	db $44,$38,$60,$46,$48,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_CloseKick4.bin"	; GFXSize = $A00

DATA_D945DE:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$06,$06,$00,$27,$00,$02,$1B,$10
	db $04,$2B,$10,$06,$3B,$10,$08,$0D,$20,$0A,$1D,$20,$0C,$2D,$20,$0E
	db $3D,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$16,$40,$2C,$26,$40,$2E,$39,$40,$40,$49,$40,$42,$1A,$50
	db $44,$2A,$50,$46,$47,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClosePunch2.bin"	; GFXSize = $A00

DATA_D95024:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$00,$00,$02,$17,$00
	db $04,$27,$00,$06,$37,$00,$08,$03,$10,$0A,$13,$10,$0C,$23,$10,$0E
	db $33,$10,$20,$43,$10,$22,$1D,$20,$24,$2D,$20,$26,$3D,$20,$28,$14
	db $30,$2A,$24,$30,$2C,$34,$30,$2E,$15,$40,$40,$3A,$40,$42,$12,$50
	db $44,$22,$50,$46,$40,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClosePunch4.bin"	; GFXSize = $A00

DATA_D95A6A:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$24,$00,$02,$34,$00
	db $04,$12,$10,$06,$22,$10,$08,$32,$10,$0A,$42,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$32,$20,$24,$07,$30,$26,$17,$30,$28,$27
	db $30,$2A,$37,$30,$2C,$0C,$40,$2E,$1C,$40,$40,$38,$40,$42,$00,$50
	db $44,$10,$50,$46,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_LowBlowHurt2.bin"	; GFXSize = $A00

DATA_D964B0:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$28,$00,$02,$38,$00
	db $04,$14,$10,$06,$24,$10,$08,$34,$10,$0A,$44,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20,$22,$33,$20,$24,$0E,$30,$26,$1E,$30,$28,$2E
	db $30,$2A,$3E,$30,$2C,$0C,$40,$2E,$1C,$40,$40,$39,$40,$42,$00,$50
	db $44,$10,$50,$46,$39,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_LowBlowHurt3.bin"	; GFXSize = $A00

DATA_D96EF6:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$2B,$00,$02,$3B,$00
	db $04,$16,$10,$06,$26,$10,$08,$36,$10,$0A,$46,$10,$0C,$06,$20,$0E
	db $16,$20,$20,$26,$20,$22,$36,$20,$24,$13,$30,$26,$23,$30,$28,$33
	db $30,$2A,$43,$30,$2C,$0C,$40,$2E,$1C,$40,$40,$39,$40,$42,$00,$50
	db $44,$10,$50,$46,$39,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_LowBlowHurt5.bin"	; GFXSize = $A00

DATA_D9793C:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$07,$00,$32,$00,$02,$1A,$10
	db $04,$36,$10,$06,$11,$20,$08,$21,$20,$0A,$31,$20,$0C,$41,$20,$0E
	db $03,$30,$20,$13,$30,$22,$23,$30,$24,$37,$30,$26,$03,$40,$28,$13
	db $40,$2A,$23,$40,$2C,$33,$40,$2E,$09,$50,$40,$30,$50,$42,$00,$60
	db $44,$10,$60,$46,$34,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClawStrike2.bin"	; GFXSize = $A00

DATA_D98382:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$07,$06,$00,$36,$00,$02,$46,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $50,$10,$20,$3C,$20,$22,$4C,$20,$24,$5C,$20,$26,$37,$30,$28,$47
	db $30,$2A,$57,$30,$2C,$36,$40,$2E,$46,$40,$40,$56,$40,$42,$32,$50
	db $44,$42,$50,$46,$52,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarPunch5.bin"	; GFXSize = $A00

DATA_D98DC8:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$05,$00,$21,$00,$02,$31,$00
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20,$20,$35,$20,$22,$45,$20,$24,$04,$30,$26,$14,$30,$28,$24
	db $30,$2A,$34,$30,$2C,$44,$30,$2E,$00,$40,$40,$10,$40,$42,$20,$40
	db $44,$30,$40,$46,$40,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckHurt4.bin"	; GFXSize = $A00

DATA_D9980E:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$06,$00,$02,$16,$00
	db $04,$26,$00,$06,$01,$10,$08,$11,$10,$0A,$21,$10,$0C,$31,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$1A,$30,$28,$2A
	db $30,$2A,$3A,$30,$2C,$19,$40,$2E,$29,$40,$40,$39,$40,$42,$15,$50
	db $44,$25,$50,$46,$35,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandBlock3.bin"	; GFXSize = $A00

DATA_D9A254:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$05,$06,$00,$05,$00,$02,$15,$00
	db $04,$25,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $04,$20,$20,$14,$20,$22,$24,$20,$24,$34,$20,$26,$1C,$30,$28,$2C
	db $30,$2A,$3C,$30,$2C,$1B,$40,$2E,$2B,$40,$40,$3B,$40,$42,$17,$50
	db $44,$27,$50,$46,$37,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandBlock4.bin"	; GFXSize = $A00

DATA_D9AC9A:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$04,$07,$00,$1A,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$09,$20,$0A,$19,$20,$0C,$29,$20,$0E
	db $12,$30,$20,$22,$30,$22,$05,$40,$24,$15,$40,$26,$25,$40,$28,$35
	db $40,$2A,$00,$50,$2C,$10,$50,$2E,$20,$50,$40,$30,$50,$42,$08,$60
	db $44,$18,$60,$46,$28,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_HighBlowHurt5.bin"	; GFXSize = $A00

DATA_D9B6E0:
	incbin "UnknownData/DATA_D9B6E0.rnc"

DATA_D9C17A:
	db $14,$00,$46,$00,$01,$00,$0A,$00,$07,$07,$00,$18,$00,$02,$28,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$0F,$20,$0E
	db $1F,$20,$20,$2F,$20,$22,$3F,$20,$24,$17,$30,$26,$27,$30,$28,$37
	db $30,$2A,$47,$30,$2C,$27,$40,$2E,$47,$40,$40,$2A,$50,$42,$52,$50
	db $44,$2F,$60,$46,$5B,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack4.bin"	; GFXSize = $A00

DATA_D9CBC0:
	incbin "Graphics/Compressed/GFX_Layer1_SupervisorProfileImage.rnc"

DATA_D9D62F:
	dw $0050 : dd DATA_D20000 : dw $0006,$0006,$0050,$0041,$0060
	dw $00AE : dd DATA_D40734 : dw $0006,$0006,$0051,$0041,$0060
	dw $00AF : dd DATA_D20CD5 : dw $0006,$0006,$0051,$0041,$0060
	dw $00AF : dd DATA_D219AA : dw $0007,$0005,$004E,$0050,$0050
	dw $00B1 : dd DATA_D2267F : dw $0007,$0005,$004A,$0051,$0050
	dw $00B1 : dd DATA_CF0000 : dw $0007,$0006,$0048,$004A,$0060
	dw $00AF : dd DATA_CE0000 : dw $0007,$0005,$0047,$0058,$0050
	dw $00B3 : dd DATA_CF0DDB : dw $0007,$0005,$0048,$0054,$0050
	dw $00B6 : dd DATA_CF1BB6 : dw $0007,$0005,$0049,$0053,$0050
	dw $00B9 : dd DATA_CF2991 : dw $0008,$0005,$0048,$0050,$0050
	dw $00BE : dd DATA_D41386 : dw $0007,$0004,$0054,$0060,$0040
	dw $00C0 : dd DATA_D70000 : dw $0006,$0004,$0062,$0060,$0040
	dw $00C0 : dd DATA_CF376C : dw $0008,$0005,$0040,$0052,$0050
	dw $00B7 : dd DATA_CC0000 : dw $0008,$0005,$003B,$0052,$0050
	dw $00B7 : dd DATA_CA06B1 : dw $000A,$0005,$0035,$0051,$0050
	dw $00CC : dd DATA_CE0E5E : dw $000A,$0005,$002E,$0051,$0050
	dw $00C0 : dd DATA_CE1CBC : dw $0009,$0006,$002A,$0041,$0060
	dw $00B7 : dd DATA_CF4547 : dw $0008,$0005,$003C,$0055,$0050
	dw $00B1 : dd DATA_CA1698 : dw $0008,$0006,$0031,$0048,$0060
	dw $00AF : dd DATA_CA267F : dw $0009,$0006,$0029,$004A,$0060
	dw $00B3 : dd DATA_CA3666 : dw $0009,$0006,$002A,$0050,$0060
	dw $00B9 : dd DATA_CA4753 : dw $000A,$0005,$002A,$0058,$0050
	dw $00BD : dd DATA_D23354 : dw $0006,$0005,$004A,$0043,$0050
	dw $00A9 : dd DATA_CC0EE1 : dw $0007,$0006,$004A,$0031,$0060
	dw $00B0 : dd DATA_CC1DC2 : dw $0007,$0006,$004A,$002C,$0060
	dw $00B4 : dd DATA_D10D5F : dw $0007,$0006,$004A,$0027,$0060
	dw $00AD : dd DATA_D50000 : dw $0007,$0005,$0048,$0032,$0050
	dw $00A9 : dd DATA_CF5322 : dw $0007,$0005,$0045,$0052,$0050
	dw $00AF : dd DATA_D41FD8 : dw $0007,$0005,$0043,$0052,$0050
	dw $00AA : dd DATA_D70AC9 : dw $0007,$0005,$0042,$0050,$0050
	dw $00A5 : dd DATA_D71592 : dw $0006,$0004,$0040,$005F,$0040
	dw $009E : dd DATA_DB0000 : dw $0007,$0004,$003F,$005E,$0040
	dw $00A1 : dd DATA_CF60FD : dw $0006,$0006,$0047,$0041,$0060
	dw $00A7 : dd DATA_CF6ED8 : dw $0007,$0006,$0034,$0040,$0060
	dw $009A : dd DATA_CB0F82 : dw $0009,$0006,$0011,$003F,$0060
	dw $0092 : dd DATA_D11AB7 : dw $0009,$0006,$000E,$003F,$0060
	dw $008F : dd DATA_D42C2A : dw $0007,$0005,$0051,$004C,$0050
	dw $00B8 : dd DATA_D1280F : dw $0007,$0005,$0050,$0049,$0050
	dw $00BA : dd DATA_CC2CA3 : dw $0007,$0005,$0052,$004C,$0050
	dw $00BD : dd DATA_CB1F69 : dw $0007,$0006,$0054,$0041,$0060
	dw $00BE : dd DATA_CF7CB3 : dw $0006,$0007,$0050,$0030,$0070
	dw $00AF : dd DATA_CA57BD : dw $0007,$0007,$003C,$0030,$0070
	dw $00AB : dd DATA_C60000 : dw $0008,$0007,$0024,$0030,$0070
	dw $00A4 : dd DATA_C80000 : dw $000A,$0007,$000D,$0030,$0070
	dw $009F : dd DATA_C90000 : dw $000B,$0006,$000A,$0040,$0060
	dw $00B5 : dd DATA_D24029 : dw $0007,$0005,$0036,$004E,$0050
	dw $00A1 : dd DATA_CC3B84 : dw $0007,$0005,$002C,$004F,$0050
	dw $009C : dd DATA_CB2ECD : dw $0008,$0006,$002B,$0041,$0060
	dw $00A0 : dd DATA_CC4A65 : dw $0008,$0006,$0030,$0043,$0060
	dw $00A3 : dd DATA_CA68AA : dw $0007,$0006,$0038,$004D,$0060
	dw $00A3 : dd DATA_CA7997 : dw $0007,$0006,$003A,$0050,$0060		; Note: Unused?
	dw $00A9 : dd DATA_D13567 : dw $0007,$0006,$0047,$003E,$0060
	dw $00B1 : dd DATA_CB3EB4 : dw $0008,$0006,$003F,$0041,$0060
	dw $00B3 : dd DATA_CF8A8E : dw $0008,$0005,$003C,$0052,$0050
	dw $00B1 : dd DATA_CE2B1A : dw $0008,$0006,$003C,$0042,$0060
	dw $00AE : dd DATA_D30000 : dw $0006,$0007,$0050,$0031,$0070
	dw $00AC : dd DATA_CF9869 : dw $0006,$0007,$0050,$0030,$0070
	dw $00AB : dd DATA_D142BF : dw $0006,$0007,$0050,$0030,$0070
	dw $00A9 : dd DATA_D15017 : dw $0006,$0007,$0050,$0030,$0070
	dw $00A9 : dd DATA_D00000 : dw $0006,$0007,$004E,$0031,$0070
	dw $00A9 : dd DATA_CE3978 : dw $0006,$0007,$004C,$0030,$0070
	dw $00A8 : dd DATA_D00DDB : dw $0006,$0007,$004C,$0031,$0070
	dw $00A7 : dd DATA_D4387C : dw $0006,$0007,$004D,$0031,$0070
	dw $00A6 : dd DATA_D444CE : dw $0006,$0006,$004F,$0041,$0060
	dw $00A6 : dd DATA_D30CD5 : dw $0006,$0006,$0050,$0040,$0060
	dw $00A9 : dd DATA_D319AA : dw $0006,$0006,$0050,$0041,$0060
	dw $00AC : dd DATA_CE47D6 : dw $0007,$0006,$0046,$0041,$0060
	dw $00AD : dd DATA_CC5946 : dw $0008,$0006,$0034,$0041,$0060
	dw $00AD : dd DATA_CC6827 : dw $0008,$0006,$0030,$0040,$0060
	dw $00AD : dd DATA_CD0000 : dw $0008,$0006,$002E,$0041,$0060
	dw $00AD : dd DATA_CD0EE1 : dw $0009,$0006,$002B,$0041,$0060
	dw $00AE : dd DATA_CB4E18 : dw $0009,$0006,$0029,$0042,$0060
	dw $00AF : dd DATA_CD1DC2 : dw $0009,$0006,$002A,$0042,$0060
	dw $00B0 : dd DATA_D01BB6 : dw $0009,$0005,$0029,$0052,$0050
	dw $00B0 : dd DATA_CD2CA3 : dw $0009,$0005,$0028,$0051,$0050
	dw $00B0 : dd DATA_CD3B84 : dw $0009,$0006,$0029,$0041,$0060
	dw $00AF : dd DATA_CD4A65 : dw $0009,$0006,$002A,$0041,$0060
	dw $00AF : dd DATA_CD5946 : dw $0008,$0006,$002D,$0041,$0060
	dw $00AD : dd DATA_CD6827 : dw $0008,$0006,$0030,$0040,$0060
	dw $00AD : dd DATA_D15D6F : dw $0007,$0006,$003A,$002E,$0060
	dw $00A9

DATA_D9DB31:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$1C,$00,$01,$11,$0B,$0A,$02,$01,$0C,$01,$23,$01,$00,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$03,$02,$2A,$00,$00,$01,$0C,$06,$02,$01,$0C
	db $01,$23,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$04,$0D
	db $00,$01,$0B,$0B,$23,$02,$01,$0C,$01,$23,$01,$03,$03,$07,$00,$01
	db $09,$0A,$23,$02,$01,$0C,$01,$23,$00,$02,$02,$26,$00,$00,$03,$06
	db $0C,$02,$01,$0C,$01,$1F,$01,$00,$00,$00,$00,$01,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$01,$01,$1F,$01,$23
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00
	db $F8,$02,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$10,$F8,$02,$0B,$0B
	db $23,$02,$01,$1F,$01,$0A,$01,$00,$00,$00,$F8,$02,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$F8,$02,$02,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$02,$01,$0C
	db $01,$23,$01,$02,$00,$10,$F8,$02,$0F,$0B,$23,$02,$01,$1F,$01,$1F
	db $01,$02,$00,$10,$F8,$02,$0F,$0B,$23,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$47,$F8,$02
	db $2B,$0B,$0A,$01,$01,$1F,$01,$23,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$02,$01,$1F,$01,$01,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00

DATA_D9DD61:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$09,$00,$01,$01,$24,$0A,$02,$01,$1F,$01,$1F,$01,$00,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$03,$02,$13,$00,$00,$01,$0C,$0C,$02,$01,$1F
	db $01,$1F,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$04,$1C
	db $00,$01,$0B,$01,$0C,$02,$01,$1F,$01,$1F,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$02,$01,$1F,$01,$1F,$00,$02,$02,$26,$00,$00,$01,$0C
	db $06,$02,$01,$1F,$01,$23,$01,$00,$00,$00,$00,$01,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00
	db $F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$34,$F8,$01,$0B,$0A
	db $01,$02,$01,$1F,$01,$1F,$01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$F8,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$01,$01,$1F
	db $01,$1F,$01,$02,$00,$34,$F8,$01,$0F,$0A,$23,$02,$01,$1F,$01,$23
	db $01,$02,$00,$34,$F8,$01,$0F,$0A,$23,$02,$01,$1F,$01,$1F,$00,$00
	db $00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$2E,$F8,$01
	db $2F,$0A,$FF,$01,$01,$1F,$01,$1F,$01,$02,$01,$38,$00,$01,$01,$23
	db $01,$02,$01,$1F,$01,$1F,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$01,$01,$00,$00,$00,$01,$20,$FF,$FF,$00,$00,$00,$00,$00

DATA_D9DF91:
	incbin "Graphics/Compressed/GFX_Layer2_NetworkDataBanner.rnc"

	%InsertGarbageData($D9EA00, incbin, UNK_D9EA00.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankDAMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_DA0000:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$04,$06,$00,$15,$00,$02,$25,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$33,$20,$22,$0C,$30,$24,$1C,$30,$26,$2D,$30,$28,$0A
	db $40,$2A,$1A,$40,$2C,$2A,$40,$2E,$3A,$40,$40,$11,$50,$42,$27,$50
	db $44,$37,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckKick2.bin"	; GFXSize = $980

DATA_DA09C3:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$04,$06,$00,$21,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$06,$20,$0A,$16,$20,$0C,$26,$20,$0E
	db $36,$20,$20,$05,$30,$22,$15,$30,$24,$25,$30,$26,$35,$30,$28,$00
	db $40,$2A,$10,$40,$2C,$20,$40,$2E,$30,$40,$40,$07,$50,$42,$17,$50
	db $44,$27,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckKick4.bin"	; GFXSize = $980

DATA_DA1386:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$28,$00,$02,$38,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$0D,$30,$24,$1D,$30,$26,$2D,$30,$28,$3D
	db $30,$2A,$07,$40,$2C,$17,$40,$2E,$34,$40,$40,$00,$50,$42,$10,$50
	db $44,$35,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckPunch2.bin"	; GFXSize = $980

DATA_DA1D49:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$2B,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$14,$20,$0C,$24,$20,$0E
	db $34,$20,$20,$44,$20,$22,$11,$30,$24,$21,$30,$26,$31,$30,$28,$41
	db $30,$2A,$0A,$40,$2C,$1A,$40,$2E,$37,$40,$40,$04,$50,$42,$14,$50
	db $44,$39,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckPunch3.bin"	; GFXSize = $980

DATA_DA270C:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$04,$07,$00,$15,$00,$02,$25,$00
	db $04,$06,$10,$06,$16,$10,$08,$26,$10,$0A,$36,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$32,$20,$24,$04,$30,$26,$14,$30,$28,$24
	db $30,$2A,$38,$30,$2C,$07,$40,$2E,$17,$40,$40,$00,$50,$42,$10,$50
	db $44,$02,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DoubleKick8.bin"	; GFXSize = $980

;--------------------------------------------------------------------

DATA_DA30CF:
	dd DATA_DA3ABF-DATA_DA30CF,DATA_DA3173-DATA_DA30CF,DATA_DA31FF-DATA_DA30CF,DATA_DA32AF-DATA_DA30CF
	dd DATA_DA32F5-DATA_DA30CF,DATA_DA3365-DATA_DA30CF,DATA_DA33AD-DATA_DA30CF,DATA_DA3927-DATA_DA30CF
	dd DATA_DA33D7-DATA_DA30CF,DATA_DA3403-DATA_DA30CF,DATA_DA31CB-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF
	dd DATA_DA30CF-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF,DATA_DA342F-DATA_DA30CF,DATA_DA31A7-DATA_DA30CF
	dd DATA_DA35C3-DATA_DA30CF,DATA_DA3479-DATA_DA30CF,DATA_DA34A5-DATA_DA30CF,DATA_DA34D3-DATA_DA30CF
	dd DATA_DA3585-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF,DATA_DA34F9-DATA_DA30CF,DATA_DA353F-DATA_DA30CF
	dd DATA_DA342F-DATA_DA30CF,DATA_DA3667-DATA_DA30CF,DATA_DA36BB-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF
	dd DATA_DA30CF-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF,DATA_DA3389-DATA_DA30CF,DATA_DA3989-DATA_DA30CF
	dd DATA_DA30CF-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF,DATA_DA30CF-DATA_DA30CF
	dd DATA_DA30CF-DATA_DA30CF,DATA_DA3257-DATA_DA30CF,DATA_DA38B5-DATA_DA30CF,DATA_DA333B-DATA_DA30CF
	dd $FFFFFFFF

DATA_DA3173:
	db $C4,$00,$00,$00,$C4,$00,$00,$00,$C4,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$0A,$09,$00,$00,$03,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00
	db $02,$00,$FF,$00

DATA_DA31A7:
	db $F8,$00,$00,$00,$F8,$00,$00,$00,$F8,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$34,$09,$00,$00,$11,$00,$00,$05
	db $00,$00,$FF,$00

DATA_DA31CB:
	db $1C,$01,$00,$00,$1C,$01,$00,$00,$1C,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$5E,$09,$00,$00,$03,$09,$00,$00
	db $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$01,$00,$02,$00,$02,$00
	db $02,$00,$FF,$00

DATA_DA31FF:
	db $50,$01,$00,$00,$60,$01,$00,$00,$72,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$06,$00,$00,$00
	db $03,$06,$04,$06,$07,$0A,$07,$0A,$04,$04,$03,$04,$00,$00,$FF,$00
	db $03,$06,$04,$06,$05,$06,$07,$0A,$07,$0A,$05,$04,$04,$04,$03,$04
	db $FF,$00,$03,$06,$04,$06,$05,$06,$06,$06,$07,$0A,$07,$0A,$06,$04
	db $05,$04,$04,$04,$03,$04,$FF,$00

DATA_DA3257:
	db $A8,$01,$00,$00,$B8,$01,$00,$00,$CA,$01,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$06,$00,$00,$00
	db $2C,$06,$2E,$06,$30,$0A,$30,$0A,$2E,$04,$2C,$04,$00,$00,$FF,$00
	db $2C,$06,$2D,$06,$2E,$06,$30,$0A,$30,$0A,$2E,$04,$2D,$04,$2C,$04
	db $FF,$00,$2C,$06,$2D,$06,$2E,$06,$2F,$06,$30,$0A,$30,$0A,$2F,$04
	db $2E,$04,$2D,$04,$2C,$04,$FF,$00

DATA_DA32AF:
	db $00,$02,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00,$14,$02,$00,$00
	db $14,$02,$00,$00,$14,$02,$00,$00,$60,$09,$00,$00,$08,$00,$00,$00
	db $0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00,$13,$00,$14,$00
	db $15,$00,$FF,$00,$01,$00,$08,$00,$05,$00,$02,$00,$03,$00,$08,$00
	db $04,$00,$04,$00,$04,$00

DATA_DA32F5:
	db $46,$02,$00,$00,$46,$02,$00,$00,$46,$02,$00,$00,$5A,$02,$00,$00
	db $5A,$02,$00,$00,$5A,$02,$00,$00,$8A,$09,$00,$00,$08,$00,$00,$00
	db $15,$00,$14,$00,$13,$00,$12,$00,$11,$00,$10,$00,$0F,$00,$0E,$00
	db $0D,$00,$FF,$00,$FF,$FF,$FC,$FF,$FC,$FF,$FC,$FF,$F8,$FF,$FD,$FF
	db $FE,$FF,$FB,$FF,$F8,$FF

DATA_DA333B:
	db $8C,$02,$00,$00,$8C,$02,$00,$00,$8C,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$02,$04,$00,$00
	db $37,$00,$38,$00,$39,$00,$3A,$00,$FF,$00

DATA_DA3365:
	db $B6,$02,$00,$00,$B6,$02,$00,$00,$B6,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B4,$09,$00,$00,$01,$00,$00,$00
	db $08,$00,$FF,$00

DATA_DA3389:
	db $DA,$02,$00,$00,$DA,$02,$00,$00,$DA,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$B4,$09,$00,$00,$01,$00,$00,$00
	db $08,$00,$FF,$00

DATA_DA33AD:
	db $FE,$02,$00,$00,$FE,$02,$00,$00,$FE,$02,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$02,$00,$00,$00
	db $3A,$00,$39,$00,$38,$00,$37,$00,$FF,$00

DATA_DA33D7:
	db $28,$03,$00,$00,$28,$03,$00,$00,$28,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$E4,$09,$00,$00,$01,$00,$00,$00
	db $08,$FF,$09,$FF,$0A,$FF,$0B,$FF,$0C,$FF,$FF,$00

DATA_DA3403:
	db $54,$03,$00,$00,$54,$03,$00,$00,$54,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$0A,$04,$00,$00
	db $0C,$FF,$0B,$FF,$0A,$FF,$09,$FF,$08,$FF,$FF,$00

DATA_DA342F:
	db $80,$03,$00,$00,$80,$03,$00,$00,$80,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$06,$00,$00,$00
	db $37,$00,$38,$00,$39,$00,$3A,$00,$08,$00,$3B,$00,$3C,$00,$3D,$00
	db $3E,$00,$3F,$00,$3F,$00,$3E,$00,$3D,$00,$3C,$00,$3B,$00,$08,$00
	db $3A,$00,$39,$00,$38,$00,$37,$00,$FF,$00

DATA_DA3479:
	db $CA,$03,$00,$00,$CA,$03,$00,$00,$CA,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$DE,$09,$00,$00,$01,$00,$00,$00
	db $08,$FF,$09,$FF,$0A,$FF,$0B,$FF,$0C,$FF,$FF,$00

DATA_DA34A5:
	db $F6,$03,$00,$00,$F6,$03,$00,$00,$F6,$03,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$02,$00,$00,$00
	db $0C,$00,$0B,$00,$0A,$00,$09,$00,$08,$00,$37,$00,$FF,$00

DATA_DA34D3:
	db $24,$04,$00,$00,$24,$04,$00,$00,$24,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$4B,$04,$00,$F6
	db $31,$00,$32,$00,$FF,$00

DATA_DA34F9:
	db $4A,$04,$00,$00,$4A,$04,$00,$00,$4A,$04,$00,$00,$50,$04,$00,$00
	db $50,$04,$00,$00,$50,$04,$00,$00,$EC,$09,$00,$00,$4B,$04,$00,$F6
	db $31,$00,$32,$00,$FF,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00

DATA_DA353F:
	db $90,$04,$00,$00,$90,$04,$00,$00,$90,$04,$00,$00,$96,$04,$00,$00
	db $96,$04,$00,$00,$96,$04,$00,$00,$EE,$09,$00,$00,$4B,$04,$00,$F6
	db $31,$00,$32,$00,$FF,$00,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF,$FB,$FF
	db $FB,$FF,$FB,$FF,$FB,$FF

DATA_DA3585:
	db $D6,$04,$00,$00,$D6,$04,$00,$00,$D6,$04,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$06,$00,$00,$00
	db $1E,$00,$1F,$00,$20,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00
	db $26,$00,$27,$00,$28,$00,$29,$00,$2A,$00,$2B,$00,$FF,$00

DATA_DA35C3:
	db $14,$05,$00,$00,$24,$05,$00,$00,$36,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$06,$00,$00,$00
	db $45,$06,$47,$06,$49,$0A,$49,$0A,$47,$04,$45,$04,$00,$00,$FF,$00
	db $45,$06,$46,$06,$47,$06,$49,$0A,$49,$0A,$47,$04,$46,$04,$45,$04
	db $FF,$00,$45,$06,$46,$06,$47,$06,$48,$06,$49,$0A,$49,$0A,$48,$04
	db $47,$04,$46,$04,$45,$04,$FF,$00,$6C,$05,$00,$00,$6C,$05,$00,$00
	db $6C,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $08,$09,$00,$00,$06,$04,$00,$00,$14,$00,$15,$00,$16,$00,$16,$00
	db $17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$17,$00,$17,$00
	db $17,$00,$17,$00,$17,$00,$16,$00,$16,$00,$15,$00,$15,$00,$14,$00
	db $14,$00,$FF,$00

DATA_DA3667:
	db $B8,$05,$00,$00,$B8,$05,$00,$00,$B8,$05,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$C3,$00,$00,$00
	db $37,$00,$38,$00,$39,$00,$3A,$00,$08,$00,$3B,$00,$3C,$00,$3D,$00
	db $3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$FF,$00

DATA_DA36BB:
	db $0C,$06,$00,$00,$0C,$06,$00,$00,$0C,$06,$00,$00,$C6,$06,$00,$00
	db $C6,$06,$00,$00,$C6,$06,$00,$00,$08,$09,$00,$00,$83,$00,$00,$00
	db $37,$00,$38,$00,$39,$00,$3A,$00,$08,$00,$3B,$00,$3C,$00,$3D,$00
	db $3E,$00,$3F,$00,$40,$00,$41,$00,$42,$00,$43,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00
	db $44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$44,$00,$43,$00,$42,$00
	db $41,$00,$40,$00,$3F,$00,$3E,$00,$3D,$00,$3C,$00,$3B,$00,$08,$00
	db $3A,$00,$39,$00,$38,$00,$37,$00,$FF,$00,$F8,$FF,$F9,$FF,$FA,$FF
	db $FB,$FF,$FC,$FF,$FD,$FF,$FE,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_DA38B5:
	db $06,$08,$00,$00,$06,$08,$00,$00,$06,$08,$00,$00,$28,$08,$00,$00
	db $28,$08,$00,$00,$28,$08,$00,$00,$08,$09,$00,$00,$0B,$17,$06,$00
	db $32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00
	db $32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32,$00
	db $FF,$00,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF,$FD,$FF
	db $FD,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_DA3927:
	db $78,$08,$00,$00,$88,$08,$00,$00,$9C,$08,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$08,$09,$00,$00,$0E,$00,$00,$00
	db $16,$FD,$18,$FD,$1A,$FD,$1D,$FD,$1C,$FD,$1A,$FD,$18,$FD,$FF,$00
	db $16,$FD,$18,$FD,$1A,$FD,$1C,$FD,$1D,$FD,$1C,$FD,$1A,$FD,$18,$FD
	db $17,$FD,$FF,$00,$16,$FD,$17,$FD,$18,$FD,$19,$FD,$1A,$FD,$1B,$FD
	db $1C,$FD,$1D,$FD,$1C,$FD,$1B,$FD,$1A,$FD,$19,$FD,$18,$FD,$17,$FD
	db $FF,$00

DATA_DA3989:
	db $DA,$08,$00,$00,$DA,$08,$00,$00,$DA,$08,$00,$00,$E8,$08,$00,$00
	db $E8,$08,$00,$00,$E8,$08,$00,$00,$08,$09,$00,$00,$4B,$04,$00,$F2
	db $31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$FF,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00
	db $05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$05,$00,$FF,$FF
	db $08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00,$10,$00,$26,$00
	db $14,$00,$26,$00,$12,$00,$26,$00,$04,$00,$03,$00,$02,$00,$02,$00
	db $01,$00,$01,$00,$20,$00,$24,$00,$FF,$FF,$08,$00,$12,$00,$0C,$00
	db $16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00
	db $26,$00,$04,$00,$03,$00,$02,$00,$02,$00,$01,$00,$0F,$00,$20,$00
	db $24,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$08,$00,$12,$00,$0C,$00
	db $16,$00,$0A,$00,$15,$00,$10,$00,$26,$00,$14,$00,$26,$00,$12,$00
	db $26,$00,$04,$00,$03,$00,$01,$00,$01,$00,$20,$00,$24,$00,$FF,$FF
	db $00,$00,$00,$00,$08,$00,$12,$00,$0C,$00,$16,$00,$0A,$00,$15,$00
	db $10,$00,$26,$00,$14,$00,$26,$00,$12,$00,$26,$00,$02,$00,$02,$00
	db $01,$00,$01,$00,$20,$00,$24,$00,$FF,$FF,$00,$00,$05,$00,$10,$00
	db $04,$00,$14,$00,$1D,$00,$08,$00,$05,$00,$0A,$00,$05,$00,$0C,$00
	db $05,$00,$02,$00,$05,$00,$04,$00,$05,$00,$01,$00,$06,$00,$20,$00
	db $06,$00,$FF,$FF,$00,$00,$11,$00,$FF,$FF,$00,$00,$08,$00,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF

DATA_DA3ABF:
	db $08,$00,$04,$00,$10,$FF,$13,$08,$FE,$04,$FE,$10,$FF,$13,$08,$00
	db $02,$00,$10,$FF,$1E,$08,$FE,$02,$FE,$10,$FF,$1E,$01,$00,$10,$00
	db $10,$00,$10,$00,$10,$00,$FF,$83,$01,$00,$08,$00,$08,$00,$08,$00
	db $08,$00,$FF,$80,$01,$00,$04,$00,$04,$00,$04,$00,$04,$00,$FF,$84
	db $01,$00,$02,$00,$02,$00,$02,$00,$02,$00,$FF,$85,$FF

;--------------------------------------------------------------------

DATA_DA3B0C:
	incbin "UnknownData/DATA_DA3B0C.rnc"

DATA_DA44E6:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$1F,$00,$02,$34,$00
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$41,$10,$0C,$0E,$20,$0E
	db $1E,$20,$20,$2E,$20,$22,$42,$20,$24,$01,$30,$26,$11,$30,$28,$21
	db $30,$2A,$31,$30,$2C,$0A,$40,$2E,$38,$40,$40,$00,$50,$42,$10,$50
	db $44,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_StandIdle3.bin"	; GFXSize = $980

DATA_DA4EA9:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$11,$00,$02,$21,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$0C,$20,$0E
	db $1C,$20,$20,$2C,$20,$22,$3C,$20,$24,$0D,$30,$26,$1D,$30,$28,$2D
	db $30,$2A,$3D,$30,$2C,$0A,$40,$2E,$35,$40,$40,$00,$50,$42,$10,$50
	db $44,$35,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_StandBlock2.bin"	; GFXSize = $980

DATA_DA586C:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$06,$06,$00,$27,$00,$02,$05,$10
	db $04,$15,$10,$06,$25,$10,$08,$35,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$19,$30,$26,$29,$30,$28,$39
	db $30,$2A,$1B,$40,$2C,$3C,$40,$2E,$4C,$40,$40,$1C,$50,$42,$2C,$50
	db $44,$45,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarPunch5.bin"	; GFXSize = $980

DATA_DA622F:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$1D,$00,$02,$32,$00
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20,$22,$33,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$0B,$40,$2E,$33,$40,$40,$02,$50,$42,$12,$50
	db $44,$33,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Ducking1.bin"	; GFXSize = $980

DATA_DA6BF2:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$07,$00,$22,$00,$02,$14,$10
	db $04,$24,$10,$06,$34,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$45,$30,$2C,$0D,$40,$2E,$28,$40,$40,$08,$50,$42,$2D,$50
	db $44,$30,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_CloseKick2.bin"	; GFXSize = $980

DATA_DA75B5:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$06,$07,$00,$3D,$00,$02,$52,$00
	db $04,$00,$10,$06,$31,$10,$08,$41,$10,$0A,$51,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$26
	db $30,$2A,$36,$30,$2C,$46,$30,$2E,$3B,$40,$40,$3E,$50,$42,$3C,$60
	db $44,$4C,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_CloseKick5.bin"	; GFXSize = $980

DATA_DA7F78:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$2D,$00
	db $04,$3D,$00,$06,$0D,$10,$08,$1D,$10,$0A,$2D,$10,$0C,$3D,$10,$0E
	db $08,$20,$20,$1A,$20,$22,$2A,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$0E,$40,$2E,$30,$40,$40,$0B,$50,$42,$1B,$50
	db $44,$33,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClosePunch1.bin"	; GFXSize = $980

DATA_DA893B:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$2B,$00,$02,$3B,$00
	db $04,$16,$10,$06,$26,$10,$08,$36,$10,$0A,$46,$10,$0C,$06,$20,$0E
	db $16,$20,$20,$26,$20,$22,$36,$20,$24,$15,$30,$26,$25,$30,$28,$35
	db $30,$2A,$0D,$40,$2C,$1D,$40,$2E,$3A,$40,$40,$00,$50,$42,$10,$50
	db $44,$3A,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_LowBlowHurt4.bin"	; GFXSize = $980

DATA_DA92FE:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$07,$05,$00,$28,$00,$02,$17,$10
	db $04,$27,$10,$06,$37,$10,$08,$47,$10,$0A,$61,$10,$0C,$0D,$20,$0E
	db $1D,$20,$20,$2D,$20,$22,$3D,$20,$24,$4D,$20,$26,$5D,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$24,$30,$2E,$34,$30,$40,$4D,$30,$42,$1A,$40
	db $44,$2A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Dead2.bin"	; GFXSize = $980

DATA_DA9CC1:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$1C,$00,$02,$35,$00
	db $04,$46,$00,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$0F,$40,$40,$31,$40,$42,$08,$50
	db $44,$34,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_HighBlowHurt3.bin"	; GFXSize = $980

DATA_DAA684:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$16,$00,$02,$26,$00
	db $04,$36,$00,$06,$0E,$10,$08,$1E,$10,$0A,$2E,$10,$0C,$3E,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$0E,$40,$40,$2D,$40,$42,$06,$50
	db $44,$30,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_HighBlowHurt4.bin"	; GFXSize = $980

DATA_DAB047:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$19,$00,$02,$2E,$00
	db $04,$0E,$10,$06,$1E,$10,$08,$2E,$10,$0A,$3E,$10,$0C,$0E,$20,$0E
	db $1E,$20,$20,$2E,$20,$22,$3E,$20,$24,$02,$30,$26,$12,$30,$28,$22
	db $30,$2A,$32,$30,$2C,$09,$40,$2E,$31,$40,$40,$00,$50,$42,$10,$50
	db $44,$31,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault1.bin"	; GFXSize = $980

DATA_DABA0A:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$07,$05,$00,$06,$00,$02,$2E,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $1F,$20,$20,$2F,$20,$22,$3F,$20,$24,$50,$20,$26,$28,$30,$28,$38
	db $30,$2A,$48,$30,$2C,$58,$30,$2E,$28,$40,$40,$38,$40,$42,$54,$40
	db $44,$64,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClawStrike5.bin"	; GFXSize = $980

DATA_DAC3CD:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$07,$05,$00,$2D,$00,$02,$27,$10
	db $04,$37,$10,$06,$47,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$50,$20,$24,$00,$30,$26,$10,$30,$28,$2A
	db $30,$2A,$3A,$30,$2C,$4A,$30,$2E,$5A,$30,$40,$29,$40,$42,$52,$40
	db $44,$62,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClawStrike6.bin"	; GFXSize = $980

DATA_DACD90:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$0E,$00,$02,$1E,$00
	db $04,$2E,$00,$06,$01,$10,$08,$11,$10,$0A,$21,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$0B,$30,$24,$1B,$30,$26,$2B,$30,$28,$12
	db $40,$2A,$22,$40,$2C,$32,$40,$2E,$42,$40,$40,$0E,$50,$42,$1E,$50
	db $44,$2E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_FarPunch1.bin"	; GFXSize = $980

DATA_DAD753:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$06,$05,$00,$29,$00,$02,$00,$10
	db $04,$1A,$10,$06,$2A,$10,$08,$3A,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$31,$20,$22,$41,$20,$24,$0F,$30,$26,$1F,$30,$28,$2F
	db $30,$2A,$3F,$30,$2C,$4F,$30,$2E,$14,$40,$40,$24,$40,$42,$34,$40
	db $44,$47,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckPunch2.bin"	; GFXSize = $980

DATA_DAE116:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$05,$00,$1E,$00,$02,$2E,$00
	db $04,$12,$10,$06,$22,$10,$08,$32,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20,$20,$35,$20,$22,$45,$20,$24,$04,$30,$26,$14,$30,$28,$24
	db $30,$2A,$34,$30,$2C,$44,$30,$2E,$00,$40,$40,$10,$40,$42,$20,$40
	db $44,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckHurt3.bin"	; GFXSize = $980

DATA_DAEAD9:
	dw $004C : dd DATA_D3267F : dw $0005,$0008,$005B,$0022,$0080
	dw $00A5 : dd DATA_D33354 : dw $0005,$0008,$005A,$0022,$0080
	dw $00A5 : dd DATA_D34029 : dw $0005,$0008,$005A,$0022,$0080
	dw $00A7 : dd DATA_D34CFE : dw $0005,$0008,$005A,$0021,$0080				; Note: Unused?
	dw $00A8 : dd DATA_D02991 : dw $0005,$0008,$0063,$0020,$0080
	dw $00AD : dd DATA_D16AC7 : dw $0005,$0008,$0061,$001F,$0080
	dw $00AE : dd DATA_D359D3 : dw $0005,$0008,$0062,$001E,$0080
	dw $00AB : dd DATA_D366A8 : dw $0007,$0008,$004A,$001D,$0080
	dw $00AB : dd DATA_D45120 : dw $0007,$0008,$0044,$001D,$0080
	dw $00AA : dd DATA_D71F55 : dw $0004,$0008,$0057,$0019,$0080
	dw $0093 : dd DATA_DC08BD : dw $0003,$0007,$005C,$0026,$0070
	dw $008C : dd DATA_D60901 : dw $0004,$0008,$004A,$0013,$0080
	dw $008A : dd DATA_CB5D7C : dw $0008,$0008,$0024,$0016,$0080
	dw $009A : dd DATA_CD7708 : dw $0008,$0008,$0028,$0017,$0080
	dw $009C : dd DATA_D1781F : dw $0006,$0008,$005C,$0023,$0080
	dw $00B3 : dd DATA_D18577 : dw $0006,$0007,$005A,$0024,$0070
	dw $00B5 : dd DATA_CE5634 : dw $0008,$0006,$0042,$0027,$0060
	dw $00BA : dd DATA_D3737D : dw $0005,$0008,$005C,$0022,$0080
	dw $00A6 : dd DATA_D38052 : dw $0005,$0008,$005C,$0021,$0080
	dw $00A6 : dd DATA_D45D72 : dw $0005,$0008,$005C,$0020,$0080
	dw $00A6 : dd DATA_D6144D : dw $0005,$0007,$005B,$0030,$0070
	dw $00A6 : dd DATA_D61F99 : dw $0005,$0007,$005B,$0031,$0070
	dw $00A6 : dd DATA_D192CF : dw $0006,$0008,$0058,$0021,$0080
	dw $00AD : dd DATA_D38D27 : dw $0006,$0008,$0057,$0021,$0080
	dw $00AE : dd DATA_D469C4 : dw $0005,$0008,$005A,$0023,$0080
	dw $009B : dd DATA_D47616 : dw $0005,$0008,$005A,$0025,$0080
	dw $009B : dd DATA_D62B68 : dw $0005,$0008,$004D,$0027,$0080
	dw $009C : dd DATA_D1A027 : dw $0006,$0008,$0041,$0027,$0080
	dw $009B : dd DATA_D0376C : dw $0006,$0008,$003B,$0028,$0080
	dw $009B : dd DATA_D72A1E : dw $0005,$0007,$0060,$0031,$0070
	dw $00B0 : dd DATA_D399FC : dw $0006,$0008,$0064,$001E,$0080
	dw $00B5 : dd DATA_D7356A : dw $0007,$0005,$004D,$0057,$0050
	dw $00B8 : dd DATA_D48268 : dw $0006,$0007,$0058,$002E,$0070
	dw $00A9 : dd DATA_D48EBA : dw $0005,$0007,$0062,$0028,$0070
	dw $00A3 : dd DATA_DA0000 : dw $0004,$0006,$0064,$0036,$0060
	dw $009F : dd DATA_DC117A : dw $0004,$0006,$0069,$0037,$0060
	dw $009D : dd DATA_DA09C3 : dw $0004,$0006,$0069,$0037,$0060
	dw $00A0 : dd DATA_D80AB5 : dw $0005,$0006,$0065,$0036,$0060
	dw $00A7 : dd DATA_D63737 : dw $0007,$0006,$004C,$003A,$0060
	dw $00AE : dd DATA_D9083A : dw $0005,$0006,$0058,$003E,$0060
	dw $00A0 : dd DATA_DA1386 : dw $0005,$0006,$0058,$003D,$0060
	dw $009B : dd DATA_DA1D49 : dw $0005,$0006,$0055,$003D,$0060
	dw $009B : dd DATA_D8157E : dw $0005,$0006,$0052,$003D,$0060
	dw $00A0 : dd DATA_D74033 : dw $0005,$0007,$0058,$002F,$0070
	dw $00A7 : dd DATA_D74B7F : dw $0005,$0007,$0059,$0031,$0070
	dw $00A0 : dd DATA_D64306 : dw $0006,$0007,$0059,$002D,$0070
	dw $00AB : dd DATA_D49B0C : dw $0006,$0007,$0059,$002E,$0070
	dw $00AD : dd DATA_D3A6D1 : dw $0006,$0007,$0058,$002E,$0070
	dw $00AD : dd DATA_D4A75E : dw $0005,$0007,$0059,$002E,$0070
	dw $00A8 : dd DATA_D50BCF : dw $0005,$0007,$0059,$002E,$0070
	dw $00A7 : dd DATA_D64ED5 : dw $0005,$0007,$005A,$002E,$0070
	dw $00A7 : dd DATA_D3B3A6 : dw $0005,$0008,$005A,$001F,$0080
	dw $00A7 : dd DATA_D3C07B : dw $0005,$0008,$005A,$0021,$0080
	dw $00A8 : dd DATA_D04547 : dw $0005,$0008,$005D,$0024,$0080
	dw $00A8 : dd DATA_D24CFE : dw $0005,$0008,$0060,$0027,$0080
	dw $00A8 : dd DATA_D3CD50 : dw $0005,$0008,$0061,$0029,$0080
	dw $00A7 : dd DATA_D25A56 : dw $0005,$0008,$0064,$0029,$0080
	dw $00AA : dd DATA_D267AE : dw $0005,$0008,$0063,$002A,$0080
	dw $00A9 : dd DATA_D27506 : dw $0005,$0008,$0061,$0027,$0080
	dw $00A9 : dd DATA_CE6492 : dw $0005,$0008,$005E,$0025,$0080
	dw $00A9 : dd DATA_D2825E : dw $0005,$0008,$005A,$0023,$0080
	dw $00A8 : dd DATA_D51821 : dw $0005,$0008,$0059,$0021,$0080			; Note: Unused?
	dw $00A8 : dd DATA_D52473 : dw $0004,$0008,$0063,$0022,$0080
	dw $00A3 : dd DATA_D756CB : dw $0005,$0008,$0058,$0014,$0080
	dw $00A3 : dd DATA_D76217 : dw $0006,$0008,$0044,$0018,$0080
	dw $00A2 : dd DATA_D28FB6 : dw $0007,$0008,$003A,$001B,$0080
	dw $00A5 : dd DATA_CD85E9 : dw $0008,$0007,$003D,$0027,$0070
	dw $00B2 : dd DATA_CB6CE0 : dw $0007,$0007,$0049,$0029,$0070
	dw $00B7 : dd DATA_D05322 : dw $0006,$0007,$0054,$001B,$0070
	dw $00B1 : dd DATA_DA270C : dw $0004,$0007,$0066,$002D,$0070
	dw $00A5 : dd DATA_D82047 : dw $0006,$0006,$0047,$002C,$0060
	dw $00A6 : dd DATA_D65AA4 : dw $0007,$0006,$003E,$0028,$0060
	dw $00A9 : dd DATA_D29D0E : dw $0006,$0006,$0051,$0034,$0060
	dw $00AD : dd DATA_D530C5 : dw $0005,$0008,$005E,$0023,$0080
	dw $00A6 : dd DATA_CE72F0 : dw $0005,$0008,$005F,$0023,$0080
	dw $00A4 : dd DATA_D060FD : dw $0005,$0008,$005F,$0023,$0080
	dw $00A3

DATA_DAEF9B:
	db $01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$02
	db $01,$07,$00,$01,$01,$24,$01,$02,$01,$13,$01,$01,$01,$00,$00,$00
	db $00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$01
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$02,$01,$13
	db $01,$13,$00,$FE,$02,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00
	db $03,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$01
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$02,$01,$1E,$01,$01,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$02,$01,$1E,$01,$01,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$02,$01,$1E,$01,$01,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$01,$02,$00,$47,$00,$01,$09,$01,$FF,$01,$01,$13,$01,$01
	db $01,$FE,$FD,$00,$00,$03,$00,$FF,$FF,$00,$00,$00,$00,$00,$03,$00
	db $00,$00,$00,$01,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$00,$00,$00
	db $D0,$02,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$04,$05,$29,$00,$01
	db $29,$01,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$02,$01,$1E,$01,$01,$01,$03,$05,$00,$D0,$02,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$03,$05,$00,$D0,$02,$02,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$02,$FF,$FF,$00,$00,$00,$00,$00
	db $01,$00,$00,$00,$D0,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$01,$00
	db $00,$00,$D0,$01,$02,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
	db $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$03,$00,$00,$D0,$02,$06,$FF,$FF,$01,$01,$06
	db $01,$06,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$02,$01,$06,$01,$06
	db $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$02,$01,$06,$01,$01,$00,$00
	db $00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$01,$03,$02,$1D,$00,$01
	db $0B,$01,$FF,$01,$01,$1E,$01,$01,$01,$02,$01,$30,$00,$01,$01,$FF
	db $FF,$02,$01,$13,$01,$01,$02,$00,$00,$00,$00,$00,$02,$FF,$FF,$00
	db $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00

DATA_DAF1CB:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame2.bin"

	%InsertGarbageData($DAF2F7, incbin, UNK_DAF2F7.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankDBMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_DB0000:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$07,$04,$00,$31,$00,$02,$41,$00
	db $04,$51,$00,$06,$1F,$10,$08,$2F,$10,$0A,$3F,$10,$0C,$4F,$10,$0E
	db $5F,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$50,$20,$2C,$06,$30,$2E,$29,$30,$40,$40,$30,$42,$50,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Crusher_DuckHurt5.bin"	; GFXSize = $900

DATA_DB0940:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$05,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$30,$00,$08,$01,$10,$0A,$11,$10,$0C,$21,$10,$0E
	db $31,$10,$20,$01,$20,$22,$11,$20,$24,$21,$20,$26,$31,$20,$28,$0F
	db $30,$2A,$1F,$30,$2C,$2F,$30,$2E,$05,$40,$40,$15,$40,$42,$25,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Ape_JumpKick3.bin"	; GFXSize = $900

DATA_DB1280:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1E,$00,$02,$34,$00
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$0D,$20,$0E
	db $1D,$20,$20,$2D,$20,$22,$01,$30,$24,$11,$30,$26,$21,$30,$28,$31
	db $30,$2A,$0A,$40,$2C,$36,$40,$2E,$00,$50,$40,$10,$50,$42,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_StandIdle1.bin"	; GFXSize = $900

DATA_DB1BC0:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1E,$00,$02,$36,$00
	db $04,$13,$10,$06,$23,$10,$08,$33,$10,$0A,$43,$10,$0C,$0E,$20,$0E
	db $1E,$20,$20,$2E,$20,$22,$3E,$20,$24,$01,$30,$26,$11,$30,$28,$21
	db $30,$2A,$31,$30,$2C,$0A,$40,$2E,$35,$40,$40,$00,$50,$42,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_StandIdle2.bin"	; GFXSize = $900

DATA_DB2500:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$07,$00,$3A,$00,$02,$13,$10
	db $04,$39,$10,$06,$0B,$20,$08,$1B,$20,$0A,$2B,$20,$0C,$3B,$20,$0E
	db $0B,$30,$20,$1B,$30,$22,$01,$40,$24,$11,$40,$26,$21,$40,$28,$31
	db $40,$2A,$06,$50,$2C,$2C,$50,$2E,$00,$60,$40,$10,$60,$42,$30,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarPunch1.bin"	; GFXSize = $900

DATA_DB2E40:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$06,$06,$00,$28,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$1C,$30,$24,$2C,$30,$26,$3C,$30,$28,$1E
	db $40,$2A,$40,$40,$2C,$1C,$50,$2E,$2C,$50,$40,$48,$50,$42,$58,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarPunch4.bin"	; GFXSize = $900

DATA_DB3780:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$05,$00,$04,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$05,$20,$22,$15,$20,$24,$25,$20,$26,$35,$20,$28,$03
	db $30,$2A,$21,$30,$2C,$37,$30,$2E,$20,$40,$40,$30,$40,$42,$40,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckKick2.bin"	; GFXSize = $900

DATA_DB40C0:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$05,$00,$0E,$00,$02,$1E,$00
	db $04,$2E,$00,$06,$43,$00,$08,$0A,$10,$0A,$1A,$10,$0C,$2A,$10,$0E
	db $3A,$10,$20,$4A,$10,$22,$00,$20,$24,$10,$20,$26,$20,$20,$28,$30
	db $20,$2A,$40,$20,$2C,$15,$30,$2E,$25,$30,$40,$40,$30,$42,$40,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckKick4.bin"	; GFXSize = $900

DATA_DB4A00:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$06,$06,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$30,$00,$08,$40,$00,$0A,$07,$10,$0C,$17,$10,$0E
	db $27,$10,$20,$37,$10,$22,$47,$10,$24,$21,$20,$26,$31,$20,$28,$42
	db $20,$2A,$52,$20,$2C,$35,$30,$2E,$36,$40,$40,$38,$50,$42,$48,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick6.bin"	; GFXSize = $900

DATA_DB5340:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$30,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$09,$40,$2C,$30,$40,$2E,$00,$50,$40,$10,$50,$42,$33,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk1.bin"	; GFXSize = $900

DATA_DB5C80:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$30,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0C,$40,$2C,$2D,$40,$2E,$06,$50,$40,$16,$50,$42,$30,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk2.bin"	; GFXSize = $900

DATA_DB65C0:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1B,$00,$02,$31,$00
	db $04,$41,$00,$06,$0E,$10,$08,$1E,$10,$0A,$2E,$10,$0C,$3E,$10,$0E
	db $0B,$20,$20,$1B,$20,$22,$2B,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$0E,$40,$2E,$2B,$40,$40,$0D,$50,$42,$2F,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk7.bin"	; GFXSize = $900

DATA_DB6F00:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1B,$00,$02,$32,$00
	db $04,$0E,$10,$06,$1E,$10,$08,$2E,$10,$0A,$3E,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0D,$40,$2C,$2E,$40,$2E,$07,$50,$40,$17,$50,$42,$31,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk8.bin"	; GFXSize = $900

DATA_DB7840:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$1D,$00,$02,$33,$00
	db $04,$0F,$10,$06,$1F,$10,$08,$2F,$10,$0A,$3F,$10,$0C,$0C,$20,$0E
	db $1C,$20,$20,$2C,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0C,$40,$2C,$31,$40,$2E,$03,$50,$40,$13,$50,$42,$35,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_HighBlowHurt1.bin"	; GFXSize = $900

DATA_DB8180:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$0D,$00,$02,$1D,$00
	db $04,$2D,$00,$06,$0A,$10,$08,$1A,$10,$0A,$2A,$10,$0C,$3A,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$00,$30,$28,$10
	db $30,$2A,$22,$30,$2C,$09,$40,$2E,$25,$40,$40,$02,$50,$42,$29,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_HighBlowHurt5.bin"	; GFXSize = $900

DATA_DB8AC0:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$13,$00,$02,$24,$00
	db $04,$0A,$10,$06,$1A,$10,$08,$2A,$10,$0A,$3A,$10,$0C,$09,$20,$0E
	db $19,$20,$20,$29,$20,$22,$39,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$00,$40,$2E,$26,$40,$40,$01,$50,$42,$27,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault2.bin"	; GFXSize = $900

DATA_DB9400:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$07,$00,$19,$00,$02,$13,$10
	db $04,$23,$10,$06,$11,$20,$08,$21,$20,$0A,$06,$30,$0C,$16,$30,$0E
	db $26,$30,$20,$04,$40,$22,$14,$40,$24,$24,$40,$26,$34,$40,$28,$04
	db $50,$2A,$27,$50,$2C,$37,$50,$2E,$00,$60,$40,$10,$60,$42,$2F,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClawStrike3.bin"	; GFXSize = $900

DATA_DB9D40:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$07,$00,$06,$00,$02,$00,$10
	db $04,$10,$10,$06,$0A,$20,$08,$1A,$20,$0A,$2A,$20,$0C,$14,$30,$0E
	db $24,$30,$20,$0E,$40,$22,$1E,$40,$24,$2E,$40,$26,$0E,$50,$28,$1E
	db $50,$2A,$2E,$50,$2C,$3E,$50,$2E,$0D,$60,$40,$1D,$60,$42,$3B,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_ClawStrike4.bin"	; GFXSize = $900

DATA_DBA680:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$05,$00,$02,$15,$00
	db $04,$25,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$03,$30,$24,$13,$30,$26,$23,$30,$28,$0B
	db $40,$2A,$1B,$40,$2C,$2B,$40,$2E,$07,$50,$40,$17,$50,$42,$27,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandIdle2.bin"	; GFXSize = $900

DATA_DBAFC0:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$0C,$00,$02,$1C,$00
	db $04,$05,$10,$06,$15,$10,$08,$25,$10,$0A,$08,$20,$0C,$18,$20,$0E
	db $28,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$06,$40,$28,$16
	db $40,$2A,$26,$40,$2C,$36,$40,$2E,$00,$50,$40,$10,$50,$42,$20,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CloseKick1.bin"	; GFXSize = $900

DATA_DBB900:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$05,$00,$22,$00,$02,$32,$00
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20,$20,$35,$20,$22,$45,$20,$24,$04,$30,$26,$14,$30,$28,$24
	db $30,$2A,$34,$30,$2C,$44,$30,$2E,$00,$40,$40,$10,$40,$42,$20,$40
	db $44,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckHurt5.bin"	; GFXSize = $980

DATA_DBC2C3:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$04,$00,$02,$14,$00
	db $04,$24,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $05,$20,$20,$1E,$20,$22,$2E,$20,$24,$1C,$30,$26,$2C,$30,$28,$3C
	db $30,$2A,$1B,$40,$2C,$2B,$40,$2E,$3B,$40,$40,$17,$50,$42,$27,$50
	db $44,$37,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandBlock5.bin"	; GFXSize = $980

DATA_DBCC86:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$05,$06,$00,$0D,$00,$02,$1D,$00
	db $04,$2D,$00,$06,$0A,$10,$08,$1A,$10,$0A,$2A,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$15,$40,$2C,$25,$40,$2E,$35,$40,$40,$10,$50,$42,$20,$50
	db $44,$30,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_HighBlowHurt2.bin"	; GFXSize = $980

DATA_DBD649:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$04,$06,$00,$0D,$00,$02,$1D,$00
	db $04,$04,$10,$06,$14,$10,$08,$24,$10,$0A,$04,$20,$0C,$14,$20,$0E
	db $24,$20,$20,$07,$30,$22,$17,$30,$24,$27,$30,$26,$06,$40,$28,$16
	db $40,$2A,$26,$40,$2C,$36,$40,$2E,$00,$50,$40,$10,$50,$42,$20,$50
	db $44,$30,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk8.bin"	; GFXSize = $980

DATA_DBE00C:
	db $13,$00,$43,$00,$01,$00,$0A,$00,$08,$04,$00,$2E,$00,$02,$3E,$00
	db $04,$4E,$00,$06,$5E,$00,$08,$6E,$00,$0A,$29,$10,$0C,$39,$10,$0E
	db $49,$10,$20,$59,$10,$22,$69,$10,$24,$0C,$20,$26,$1C,$20,$28,$2C
	db $20,$2A,$50,$20,$2C,$60,$20,$2E,$00,$30,$40,$10,$30,$42,$41,$30
	db $44,$51,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_JumpKick5.bin"	; GFXSize = $980

DATA_DBE9CF:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_DATA_DBE9CF_Main
.Block1Start:
	%ReadPreCompiledFilePointers(15, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_DBF332:
	dw $004A : dd DATA_D06ED8 : dw $0006,$0005,$0052,$004D,$0050
	dw $00AD : dd DATA_D07CB3 : dw $0006,$0005,$0052,$004D,$0050
	dw $00AE : dd DATA_D08A8E : dw $0006,$0005,$0052,$004E,$0050
	dw $00AD : dd DATA_CB7CC7 : dw $0007,$0005,$004D,$004E,$0050
	dw $00AF : dd DATA_D3DA25 : dw $0006,$0005,$0056,$004E,$0050
	dw $00B1 : dd DATA_D53D17 : dw $0007,$0005,$004F,$004F,$0050
	dw $00B2 : dd DATA_D09869 : dw $0009,$0005,$002C,$004F,$0050
	dw $00B3 : dd DATA_D2AA66 : dw $0009,$0005,$0028,$004F,$0050
	dw $00B3 : dd DATA_CE814E : dw $0006,$0005,$0056,$0054,$0050
	dw $00B2 : dd DATA_CE8FAC : dw $0006,$0005,$0052,$0058,$0050
	dw $00B2 : dd DATA_D67227 : dw $0006,$0004,$0052,$0067,$0040
	dw $00AF : dd DATA_D67DF6 : dw $0006,$0004,$0051,$0067,$0040
	dw $00AF : dd DATA_D689C5 : dw $0006,$0004,$0054,$0067,$0040
	dw $00AF : dd DATA_CB8C2B : dw $0007,$0005,$0044,$0049,$0050
	dw $00AE : dd DATA_CC7708 : dw $0007,$0006,$0049,$003C,$0060
	dw $00B3 : dd DATA_CC866C : dw $0007,$0006,$004D,$003D,$0060
	dw $00B4 : dd DATA_CE9E0A : dw $0007,$0006,$004F,$003D,$0060
	dw $00B3 : dd DATA_CEAC68 : dw $0006,$0007,$0053,$002D,$0070
	dw $00AD : dd DATA_CEBAC6 : dw $0006,$0007,$0058,$002C,$0070
	dw $00A9 : dd DATA_CD94CA : dw $0005,$0006,$0053,$0039,$0060
	dw $00A3 : dd DATA_D0A644 : dw $0006,$0006,$0053,$0038,$0060
	dw $00A5 : dd DATA_D0B41F : dw $0006,$0005,$0051,$004D,$0050
	dw $00AB : dd DATA_CDA3AB : dw $0006,$0005,$0054,$004D,$0050
	dw $00AF : dd DATA_CDB28C : dw $0006,$0005,$0051,$004E,$0050
	dw $00AD : dd DATA_CDC16D : dw $0007,$0005,$0049,$004E,$0050
	dw $00AD : dd DATA_CEC924 : dw $0007,$0005,$0040,$004D,$0050
	dw $00AD : dd DATA_CC95D0 : dw $0008,$0005,$0033,$004D,$0050
	dw $00AD : dd DATA_CA8B07 : dw $0009,$0005,$0026,$004C,$0050
	dw $00AD : dd DATA_CA9B71 : dw $0009,$0005,$0020,$004C,$0050
	dw $00AD : dd DATA_CAAC5E : dw $0009,$0005,$0020,$004C,$0050
	dw $00AD : dd DATA_CCA534 : dw $0007,$0005,$004C,$004D,$0050
	dw $00AE : dd DATA_D0C1FA : dw $0007,$0005,$0043,$004D,$0050
	dw $00AE : dd DATA_D3E6FA : dw $0007,$0006,$0041,$003D,$0060
	dw $00AD : dd DATA_D4C00F : dw $0006,$0007,$0052,$002D,$0070
	dw $00AD : dd DATA_D69594 : dw $0005,$0007,$0060,$002D,$0070
	dw $00AD : dd DATA_D54969 : dw $0005,$0008,$0069,$001E,$0080
	dw $00AD : dd DATA_D6A163 : dw $0004,$0008,$0076,$001E,$0080
	dw $00AC : dd DATA_D76D63 : dw $0004,$0008,$0078,$001E,$0080
	dw $00AB : dd DATA_D778AF : dw $0004,$0008,$0078,$001D,$0080
	dw $00AB : dd DATA_D6AD32 : dw $0004,$0008,$006C,$001D,$0080
	dw $00AC : dd DATA_D0CFD5 : dw $0006,$0007,$0054,$002C,$0070
	dw $00AD : dd DATA_D4CCE4 : dw $0007,$0006,$004A,$003C,$0060
	dw $00AF : dd DATA_D0DDB0 : dw $0006,$0006,$0050,$003C,$0060
	dw $00AF : dd DATA_CB9B8F : dw $0006,$0006,$0055,$0045,$0060
	dw $00AF : dd DATA_CABDCE : dw $0006,$0006,$0055,$003E,$0060
	dw $00B5 : dd DATA_C70000 : dw $0007,$0006,$005A,$003E,$0060
	dw $00BD : dd DATA_CCB498 : dw $0006,$0006,$0060,$003E,$0060
	dw $00BF : dd DATA_CACE38 : dw $0008,$0007,$003C,$002D,$0070
	dw $00BB : dd DATA_CADF25 : dw $0008,$0007,$0034,$002C,$0070
	dw $00B2 : dd DATA_CBAB76 : dw $0006,$0006,$0057,$003E,$0060
	dw $00AC : dd DATA_D2B7BE : dw $0006,$0006,$0054,$003C,$0060
	dw $00AD : dd DATA_D783FB : dw $0006,$0005,$0056,$0040,$0050		;\ Note: Unused? Ape can't jump kick, but these frames seem like they're for that action.
	dw $00AA : dd DATA_D82B10 : dw $0005,$0005,$0055,$003B,$0050		;|
	dw $0096 : dd DATA_DB0940 : dw $0004,$0005,$0059,$0032,$0050		;|
	dw $0097 : dd DATA_D835D9 : dw $0005,$0006,$0058,$001F,$0060		;/
	dw $009C : dd DATA_CCC3FC : dw $0006,$0005,$0052,$004E,$0050
	dw $00B1 : dd DATA_CCD360 : dw $0006,$0005,$0054,$0051,$0050
	dw $00B1 : dd DATA_CDD04E : dw $0006,$0005,$0056,$0053,$0050
	dw $00B0 : dd DATA_CDDF2F : dw $0006,$0005,$0056,$0055,$0050
	dw $00B1 : dd DATA_D0EB8B : dw $0006,$0005,$0057,$0055,$0050
	dw $00B3 : dd DATA_D1AD7F : dw $0006,$0005,$0057,$0054,$0050
	dw $00B4 : dd DATA_D1BB5A : dw $0006,$0005,$0058,$0053,$0050
	dw $00B5 : dd DATA_CED782 : dw $0006,$0005,$0058,$0053,$0050
	dw $00B5 : dd DATA_CFA644 : dw $0006,$0005,$0056,$0054,$0050
	dw $00B4 : dd DATA_D1C935 : dw $0006,$0005,$0054,$0057,$0050
	dw $00B3 : dd DATA_CFB4A2 : dw $0007,$0005,$004A,$0056,$0050
	dw $00B5 : dd DATA_D1D710 : dw $0008,$0005,$0040,$0056,$0050
	dw $00BA : dd DATA_D2C516 : dw $0008,$0004,$0040,$0068,$0040
	dw $00BC : dd DATA_CFC300 : dw $0008,$0005,$0049,$006A,$0050
	dw $00BC : dd DATA_CDEE10 : dw $0006,$0005,$0050,$004D,$0050
	dw $00AD : dd DATA_CFD15E : dw $0007,$0005,$0049,$004D,$0050
	dw $00AD : dd DATA_D1E4EB : dw $0007,$0005,$0041,$004D,$0050
	dw $00AD : dd DATA_CCE2C4 : dw $0007,$0006,$0044,$003D,$0060
	dw $00AE : dd DATA_CBBB5D : dw $0007,$0006,$004B,$003D,$0060
	dw $00AF

DATA_DBF7D4:
	incbin "Graphics/Compressed/GFX_Sprite_SuperMoveText.bin"

	%InsertGarbageData($DBFB04, incbin, UNK_DBFB04.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankDCMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_DC0000:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$19,$00,$02,$07,$10
	db $04,$17,$10,$06,$27,$10,$08,$37,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20,$20,$35,$20,$22,$0B,$30,$24,$1B,$30,$26,$2B,$30,$28,$03
	db $40,$2A,$13,$40,$2C,$23,$40,$2E,$00,$50,$40,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarPunch5.bin"	; GFXSize = $880

DATA_DC08BD:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$03,$07,$00,$09,$00,$02,$19,$00
	db $04,$07,$10,$06,$17,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$00,$40,$26,$10,$40,$28,$20
	db $40,$2A,$12,$50,$2C,$22,$50,$2E,$10,$60,$40,$27,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_FarKick2.bin"	; GFXSize = $880

DATA_DC117A:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$18,$00,$02,$09,$10
	db $04,$19,$10,$06,$29,$10,$08,$03,$20,$0A,$13,$20,$0C,$23,$20,$0E
	db $03,$30,$20,$13,$30,$22,$23,$30,$24,$00,$40,$26,$10,$40,$28,$20
	db $40,$2A,$30,$40,$2C,$06,$50,$2E,$16,$50,$40,$26,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Sentry_DuckKick3.bin"	; GFXSize = $880

DATA_DC1A37:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$11,$10
	db $04,$21,$10,$06,$31,$10,$08,$41,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20,$20,$3D,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0C,$40,$2C,$32,$40,$2E,$06,$50,$40,$33,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Ducking2.bin"	; GFXSize = $880

DATA_DC22F4:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$05,$00,$09,$00,$02,$19,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$01,$30,$26,$11,$30,$28,$21
	db $30,$2A,$31,$30,$2C,$04,$40,$2E,$14,$40,$40,$2A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckBlock2.bin"	; GFXSize = $880

DATA_DC2BB1:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$05,$00,$26,$00,$02,$16,$10
	db $04,$26,$10,$06,$36,$10,$08,$46,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$13,$30,$26,$23,$30,$28,$33
	db $30,$2A,$43,$30,$2C,$16,$40,$2E,$26,$40,$40,$3C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckHurt3.bin"	; GFXSize = $880

DATA_DC346E:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$05,$00,$2B,$00,$02,$16,$10
	db $04,$26,$10,$06,$36,$10,$08,$46,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$15,$30,$26,$25,$30,$28,$35
	db $30,$2A,$45,$30,$2C,$18,$40,$2E,$28,$40,$40,$3E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckHurt4.bin"	; GFXSize = $880

DATA_DC3D2B:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$05,$00,$2E,$00,$02,$16,$10
	db $04,$26,$10,$06,$36,$10,$08,$46,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$16,$30,$26,$26,$30,$28,$36
	db $30,$2A,$46,$30,$2C,$19,$40,$2E,$29,$40,$40,$3F,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckHurt5.bin"	; GFXSize = $880

DATA_DC45E8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$10,$00,$02,$20,$00
	db $04,$0A,$10,$06,$1A,$10,$08,$2A,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$0A
	db $40,$2A,$1A,$40,$2C,$2A,$40,$2E,$06,$50,$40,$16,$50,$42,$26,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Ducking2.bin"	; GFXSize = $900

DATA_DC4F28:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$05,$00,$15,$00,$02,$25,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$41,$20,$26,$07,$30,$28,$17
	db $30,$2A,$27,$30,$2C,$37,$30,$2E,$04,$40,$40,$14,$40,$42,$24,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Ducking4.bin"	; GFXSize = $900

DATA_DC5868:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$05,$00,$19,$00,$02,$2A,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$04,$30,$26,$14,$30,$28,$24
	db $30,$2A,$34,$30,$2C,$03,$40,$2E,$13,$40,$40,$23,$40,$42,$33,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Ducking5.bin"	; GFXSize = $900

DATA_DC61A8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$06,$04,$00,$35,$00,$02,$45,$00
	db $04,$55,$00,$06,$32,$10,$08,$42,$10,$0A,$52,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$02
	db $30,$2A,$12,$30,$2C,$23,$30,$2E,$33,$30,$40,$43,$30,$42,$53,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckKick5.bin"	; GFXSize = $900

DATA_DC6AE8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$04,$00,$00,$00,$02,$15,$00
	db $04,$25,$00,$06,$35,$00,$08,$01,$10,$0A,$11,$10,$0C,$21,$10,$0E
	db $31,$10,$20,$41,$10,$22,$0B,$20,$24,$1B,$20,$26,$2B,$20,$28,$3B
	db $20,$2A,$4B,$20,$2C,$0B,$30,$2E,$1B,$30,$40,$2B,$30,$42,$3F,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckPunch1.bin"	; GFXSize = $900

DATA_DC7428:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$05,$00,$02,$15,$00
	db $04,$25,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$09,$30,$24,$19,$30,$26,$29,$30,$28,$16
	db $40,$2A,$26,$40,$2C,$36,$40,$2E,$12,$50,$40,$22,$50,$42,$32,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandBlock2.bin"	; GFXSize = $900

DATA_DC7D68:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$06,$04,$00,$13,$00,$02,$23,$00
	db $04,$33,$00,$06,$43,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$05,$20,$24,$16,$20,$26,$26,$20,$28,$36
	db $20,$2A,$46,$20,$2C,$0F,$30,$2E,$30,$30,$40,$40,$30,$42,$50,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_JumpKick3.bin"	; GFXSize = $900

DATA_DC86A8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$0B,$00,$02,$1B,$00
	db $04,$2B,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$0A,$30,$24,$1A,$30,$26,$2A,$30,$28,$13
	db $40,$2A,$23,$40,$2C,$33,$40,$2E,$0E,$50,$40,$1E,$50,$42,$2E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_BladePunch1.bin"	; GFXSize = $900

DATA_DC8FE8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$08,$00,$02,$18,$00
	db $04,$02,$10,$06,$12,$10,$08,$22,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$03,$40,$28,$13
	db $40,$2A,$23,$40,$2C,$33,$40,$2E,$08,$50,$40,$18,$50,$42,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_LowBlowHurt3.bin"	; GFXSize = $900

DATA_DC9928:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$09,$00,$02,$19,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$00,$40,$28,$10
	db $40,$2A,$20,$40,$2C,$30,$40,$2E,$08,$50,$40,$18,$50,$42,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_LowBlowHurt4.bin"	; GFXSize = $900

DATA_DCA268:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$09,$00,$02,$19,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$01,$30,$22,$11,$30,$24,$21,$30,$26,$00,$40,$28,$10
	db $40,$2A,$20,$40,$2C,$30,$40,$2E,$08,$50,$40,$18,$50,$42,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_LowBlowHurt5.bin"	; GFXSize = $900

DATA_DCABA8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$05,$10,$08,$15,$10,$0A,$25,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$08,$30,$24,$18,$30,$26,$28,$30,$28,$11
	db $40,$2A,$21,$40,$2C,$31,$40,$2E,$0C,$50,$40,$1C,$50,$42,$2C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_HighBlowHurt1.bin"	; GFXSize = $900

DATA_DCB4E8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$10,$00,$02,$20,$00
	db $04,$30,$00,$06,$0C,$10,$08,$1C,$10,$0A,$2C,$10,$0C,$1C,$20,$0E
	db $2C,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$17
	db $40,$2A,$27,$40,$2C,$37,$40,$2E,$12,$50,$40,$22,$50,$42,$32,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_HighBlowHurt3.bin"	; GFXSize = $900

DATA_DCBE28:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$05,$06,$00,$36,$00,$02,$1B,$10
	db $04,$2B,$10,$06,$3B,$10,$08,$0B,$20,$0A,$1B,$20,$0C,$2B,$20,$0E
	db $3B,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$04
	db $40,$2A,$14,$40,$2C,$24,$40,$2E,$05,$50,$40,$15,$50,$42,$25,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Dead1.bin"	; GFXSize = $900

DATA_DCC768:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$07,$03,$00,$02,$00,$02,$15,$00
	db $04,$36,$00,$06,$46,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10,$24,$60,$10,$26,$03,$20,$28,$13
	db $20,$2A,$23,$20,$2C,$33,$20,$2E,$43,$20,$40,$53,$20,$42,$63,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Dead5.bin"	; GFXSize = $900

DATA_DCD0A8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$03,$30,$22,$13,$30,$24,$23,$30,$26,$33,$30,$28,$0D
	db $40,$2A,$1D,$40,$2C,$2D,$40,$2E,$08,$50,$40,$18,$50,$42,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk1.bin"	; GFXSize = $900

DATA_DCD9E8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$34,$30,$28,$0F
	db $40,$2A,$1F,$40,$2C,$2F,$40,$2E,$0A,$50,$40,$1A,$50,$42,$2A,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk2.bin"	; GFXSize = $900

DATA_DCE328:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$0A,$00,$02,$1A,$00
	db $04,$02,$10,$06,$12,$10,$08,$22,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$07,$30,$22,$17,$30,$24,$27,$30,$26,$06,$40,$28,$16
	db $40,$2A,$26,$40,$2C,$36,$40,$2E,$01,$50,$40,$11,$50,$42,$21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk9.bin"	; GFXSize = $900

DATA_DCEC68:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$04,$06,$00,$07,$00,$02,$17,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$05,$30,$22,$15,$30,$24,$25,$30,$26,$09,$40,$28,$19
	db $40,$2A,$29,$40,$2C,$39,$40,$2E,$04,$50,$40,$14,$50,$42,$24,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk10.bin"	; GFXSize = $900

DATA_DCF5A8:
	db $12,$00,$40,$00,$01,$00,$0A,$00,$07,$04,$00,$11,$00,$02,$21,$00
	db $04,$31,$00,$06,$41,$00,$08,$51,$00,$0A,$61,$00,$0C,$05,$10,$0E
	db $15,$10,$20,$25,$10,$22,$35,$10,$24,$45,$10,$26,$55,$10,$28,$00
	db $20,$2A,$2F,$20,$2C,$3F,$20,$2E,$1C,$30,$40,$2C,$30,$42,$3C,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_JumpKick6.bin"	; GFXSize = $900

DATA_DCFEE8:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Init
.Block1Start:
	%ReadPreCompiledFilePointers(0, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Init
.Block2Start:
.Block2End:

	%InsertGarbageData($DCFFB5, incbin, UNK_DCFFB5.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankDDMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_DD0000:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$07,$00,$1E,$00,$02,$13,$10
	db $04,$23,$10,$06,$33,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$0D,$30,$24,$1D,$30,$26,$2D,$30,$28,$3D
	db $30,$2A,$06,$40,$2C,$25,$40,$2E,$27,$50,$40,$2A,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_CloseKick3.bin"	; GFXSize = $880

DATA_DD08BD:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$06,$05,$00,$45,$00,$02,$22,$10
	db $04,$32,$10,$06,$42,$10,$08,$24,$20,$0A,$37,$20,$0C,$47,$20,$0E
	db $57,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$50,$30,$2C,$3C,$40,$2E,$4C,$40,$40,$5C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_JumpKick2.bin"	; GFXSize = $880

DATA_DD117A:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$30,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0E,$40,$2C,$2A,$40,$2E,$0E,$50,$40,$2D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk3.bin"	; GFXSize = $880

DATA_DD1A37:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$30,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$3C,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$10,$40,$2C,$27,$40,$2E,$14,$50,$40,$24,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk4.bin"	; GFXSize = $880

DATA_DD22F4:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$1A,$00,$02,$30,$00
	db $04,$0D,$10,$06,$1D,$10,$08,$2D,$10,$0A,$3D,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$12,$40,$2C,$27,$40,$2E,$18,$50,$40,$2B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk5.bin"	; GFXSize = $880

DATA_DD2BB1:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$1B,$00,$02,$31,$00
	db $04,$0E,$10,$06,$1E,$10,$08,$2E,$10,$0A,$3E,$10,$0C,$0B,$20,$0E
	db $1B,$20,$20,$2B,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0F,$40,$2C,$28,$40,$2E,$11,$50,$40,$2C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Walk6.bin"	; GFXSize = $880

DATA_DD346E:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$06,$00,$1F,$00,$02,$36,$00
	db $04,$11,$10,$06,$21,$10,$08,$31,$10,$0A,$41,$10,$0C,$0D,$20,$0E
	db $1D,$20,$20,$2D,$20,$22,$02,$30,$24,$12,$30,$26,$22,$30,$28,$32
	db $30,$2A,$0A,$40,$2C,$36,$40,$2E,$00,$50,$40,$38,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_HighBlowHurt2.bin"	; GFXSize = $880

DATA_DD3D2B:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$32,$00,$02,$11,$10
	db $04,$32,$10,$06,$06,$20,$08,$16,$20,$0A,$26,$20,$0C,$36,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$33,$30,$26,$01,$40,$28,$11
	db $40,$2A,$21,$40,$2C,$03,$50,$2E,$13,$50,$40,$25,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch5.bin"	; GFXSize = $880

DATA_DD45E8:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$06,$00,$02,$16,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$03,$30,$22,$13,$30,$24,$23,$30,$26,$0D,$40,$28,$1D
	db $40,$2A,$2D,$40,$2C,$09,$50,$2E,$19,$50,$40,$29,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandIdle1.bin"	; GFXSize = $880

DATA_DD4EA5:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$02,$30,$22,$12,$30,$24,$22,$30,$26,$0C,$40,$28,$1C
	db $40,$2A,$2C,$40,$2C,$08,$50,$2E,$18,$50,$40,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandIdle3.bin"	; GFXSize = $880

DATA_DD5762:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$0A,$00,$02,$1A,$00
	db $04,$02,$10,$06,$12,$10,$08,$22,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$0B,$40,$28,$1B
	db $40,$2A,$2B,$40,$2C,$06,$50,$2E,$16,$50,$40,$26,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Ducking1.bin"	; GFXSize = $880

DATA_DD601F:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$05,$00,$0E,$00,$02,$1E,$00
	db $04,$2E,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $01,$20,$20,$11,$20,$22,$21,$20,$24,$31,$20,$26,$09,$30,$28,$19
	db $30,$2A,$29,$30,$2C,$05,$40,$2E,$15,$40,$40,$25,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Ducking3.bin"	; GFXSize = $880

DATA_DD68DC:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$05,$00,$18,$00,$02,$28,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$31,$20,$22,$02,$30,$24,$12,$30,$26,$22,$30,$28,$32
	db $30,$2A,$01,$40,$2C,$11,$40,$2E,$21,$40,$40,$31,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Ducking6.bin"	; GFXSize = $880

DATA_DD7199:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$05,$00,$0A,$00,$02,$2A,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$03,$30,$26,$13,$30,$28,$23
	db $30,$2A,$33,$30,$2C,$02,$40,$2E,$12,$40,$40,$22,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckBlock2.bin"	; GFXSize = $880

DATA_DD7A56:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$05,$00,$09,$00,$02,$2A,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$03,$30,$26,$13,$30,$28,$23
	db $30,$2A,$33,$30,$2C,$00,$40,$2E,$10,$40,$40,$20,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckBlock4.bin"	; GFXSize = $880

DATA_DD8313:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$05,$00,$1C,$00,$02,$14,$10
	db $04,$24,$10,$06,$34,$10,$08,$05,$20,$0A,$15,$20,$0C,$25,$20,$0E
	db $35,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$34,$30,$28,$44
	db $30,$2A,$00,$40,$2C,$10,$40,$2E,$20,$40,$40,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckHurt2.bin"	; GFXSize = $880

DATA_DD8BD0:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$0C,$00,$02,$1C,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$08,$30,$22,$18,$30,$24,$28,$30,$26,$12,$40,$28,$22
	db $40,$2A,$32,$40,$2C,$0E,$50,$2E,$1E,$50,$40,$2E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_StandBlock1.bin"	; GFXSize = $880

DATA_DD948D:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$06,$00,$02,$16,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$03,$30,$22,$13,$30,$24,$23,$30,$26,$0D,$40,$28,$1D
	db $40,$2A,$2D,$40,$2C,$09,$50,$2E,$19,$50,$40,$29,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Jump1.bin"	; GFXSize = $880

DATA_DD9D4A:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$09,$00,$02,$19,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$07,$40,$28,$17
	db $40,$2A,$27,$40,$2C,$04,$50,$2E,$14,$50,$40,$24,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Jump2.bin"	; GFXSize = $880

DATA_DDA607:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$04,$00,$14,$00,$02,$24,$00
	db $04,$34,$00,$06,$44,$00,$08,$0B,$10,$0A,$1B,$10,$0C,$2B,$10,$0E
	db $3B,$10,$20,$00,$20,$22,$10,$20,$24,$20,$20,$26,$30,$20,$28,$40
	db $20,$2A,$0C,$30,$2C,$28,$30,$2E,$38,$30,$40,$48,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_JumpKick2.bin"	; GFXSize = $880

DATA_DDAEC4:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$08,$00,$02,$18,$00
	db $04,$02,$10,$06,$12,$10,$08,$22,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$02,$30,$22,$12,$30,$24,$22,$30,$26,$0D,$40,$28,$1D
	db $40,$2A,$2D,$40,$2C,$09,$50,$2E,$19,$50,$40,$29,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_LowBlowHurt1.bin"	; GFXSize = $880

DATA_DDB781:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$09,$00,$02,$19,$00
	db $04,$02,$10,$06,$12,$10,$08,$22,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$0D,$40,$28,$1D
	db $40,$2A,$2D,$40,$2C,$09,$50,$2E,$19,$50,$40,$29,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_LowBlowHurt2.bin"	; GFXSize = $880

DATA_DDC03E:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$05,$04,$00,$04,$00,$02,$14,$00
	db $04,$24,$00,$06,$34,$00,$08,$44,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$06,$20,$26,$16,$20,$28,$26
	db $20,$2A,$36,$20,$2C,$0E,$30,$2E,$1E,$30,$40,$2E,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Dead2.bin"	; GFXSize = $880

DATA_DDC8FB:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$10,$40,$28,$20
	db $40,$2A,$30,$40,$2C,$0C,$50,$2E,$1C,$50,$40,$2C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk3.bin"	; GFXSize = $880

DATA_DDD1B8:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$10,$40,$28,$20
	db $40,$2A,$30,$40,$2C,$0D,$50,$2E,$1D,$50,$40,$2D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk4.bin"	; GFXSize = $880

DATA_DDDA75:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$04,$06,$00,$04,$00,$02,$14,$00
	db $04,$24,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$02,$20,$0E
	db $12,$20,$20,$22,$20,$22,$04,$30,$24,$14,$30,$26,$24,$30,$28,$0C
	db $40,$2A,$1C,$40,$2C,$0C,$50,$2E,$1C,$50,$40,$2C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk5.bin"	; GFXSize = $880

DATA_DDE332:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$03,$06,$00,$05,$00,$02,$15,$00
	db $04,$25,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20,$22,$04,$30,$24,$14,$30,$26,$24,$30,$28,$0D
	db $40,$2A,$1D,$40,$2C,$08,$50,$2E,$18,$50,$40,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk6.bin"	; GFXSize = $880

DATA_DDEBEF:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$03,$06,$00,$08,$00,$02,$18,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$03,$30,$22,$13,$30,$24,$23,$30,$26,$05,$40,$28,$15
	db $40,$2A,$25,$40,$2C,$00,$50,$2E,$10,$50,$40,$20,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Walk7.bin"	; GFXSize = $880

DATA_DDF4AC:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$08,$05,$00,$06,$00,$02,$07,$10
	db $04,$17,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $47,$20,$20,$2B,$30,$22,$3B,$30,$24,$4B,$30,$26,$5B,$30,$28,$2B
	db $40,$2A,$3B,$40,$2C,$52,$40,$2E,$62,$40,$40,$72,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick6.bin"	; GFXSize = $880

DATA_DDFD69:
	incbin "Graphics/Compressed/GFX_Layer1_CinematicsMonitorText.rnc"

	%InsertGarbageData($DDFFEA, incbin, UNK_DDFFEA.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankDEMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_DE0000:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$05,$00,$09,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$31,$20,$22,$41,$20,$24,$17,$30,$26,$27,$30,$28,$3B
	db $30,$2A,$4B,$30,$2C,$25,$40,$2E,$35,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead6.bin"	; GFXSize = $800

DATA_DE083A:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$06,$00,$2C,$00,$02,$15,$10
	db $04,$25,$10,$06,$35,$10,$08,$14,$20,$0A,$24,$20,$0C,$34,$20,$0E
	db $11,$30,$20,$21,$30,$22,$31,$30,$24,$09,$40,$26,$19,$40,$28,$29
	db $40,$2A,$39,$40,$2C,$00,$50,$2E,$27,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash12.bin"	; GFXSize = $800

DATA_DE1074:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$06,$00,$0F,$00,$02,$20,$00
	db $04,$0F,$10,$06,$1F,$10,$08,$2F,$10,$0A,$0E,$20,$0C,$1E,$20,$0E
	db $03,$30,$20,$13,$30,$22,$23,$30,$24,$33,$30,$26,$04,$40,$28,$29
	db $40,$2A,$00,$50,$2C,$10,$50,$2E,$2F,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarPunch2.bin"	; GFXSize = $800

DATA_DE18AE:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$06,$00,$1E,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$14,$20,$0C,$24,$20,$0E
	db $34,$20,$20,$13,$30,$22,$23,$30,$24,$33,$30,$26,$14,$40,$28,$39
	db $40,$2A,$12,$50,$2C,$22,$50,$2E,$40,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarPunch3.bin"	; GFXSize = $800

DATA_DE20E8:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$05,$00,$10,$00,$02,$20,$00
	db $04,$30,$00,$06,$0E,$10,$08,$1E,$10,$0A,$2E,$10,$0C,$3E,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$0A,$30,$28,$2E
	db $30,$2A,$09,$40,$2C,$19,$40,$2E,$31,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Ducking3.bin"	; GFXSize = $800

DATA_DE2922:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$05,$00,$15,$00,$02,$04,$10
	db $04,$14,$10,$06,$24,$10,$08,$34,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$0B,$30,$24,$1B,$30,$26,$2B,$30,$28,$3B
	db $30,$2A,$0E,$40,$2C,$1E,$40,$2E,$34,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckHurt1.bin"	; GFXSize = $800

DATA_DE315C:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$05,$00,$1D,$00,$02,$14,$10
	db $04,$24,$10,$06,$34,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$12,$40,$2C,$22,$40,$2E,$38,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckHurt2.bin"	; GFXSize = $800

DATA_DE3996:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$06,$00,$0C,$00,$02,$1C,$00
	db $04,$2C,$00,$06,$3C,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$1E,$20,$24,$2E,$20,$26,$3E,$20,$28,$4E
	db $20,$2A,$2C,$30,$2C,$2C,$40,$2E,$2E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick7.bin"	; GFXSize = $800

DATA_DE41D0:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$06,$00,$1A,$00,$02,$09,$10
	db $04,$19,$10,$06,$29,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $31,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$00,$40,$28,$10
	db $40,$2A,$20,$40,$2C,$00,$50,$2E,$1A,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Jump1.bin"	; GFXSize = $800

DATA_DE4A0A:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$06,$00,$06,$00,$02,$16,$00
	db $04,$06,$10,$06,$16,$10,$08,$26,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$06
	db $40,$2A,$1F,$40,$2C,$00,$50,$2E,$24,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_HighBlowHurt6.bin"	; GFXSize = $800

DATA_DE5244:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$05,$00,$14,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$3D,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30,$2A,$0A,$40,$2C,$1A,$40,$2E,$2F,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch2.bin"	; GFXSize = $800

DATA_DE5A7E:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$05,$00,$13,$00,$02,$25,$00
	db $04,$06,$10,$06,$16,$10,$08,$26,$10,$0A,$36,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$37,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$04,$40,$2C,$14,$40,$2E,$28,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch3.bin"	; GFXSize = $800

DATA_DE62B8:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$05,$00,$13,$00,$02,$27,$00
	db $04,$37,$00,$06,$05,$10,$08,$15,$10,$0A,$25,$10,$0C,$35,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$01,$30,$26,$11,$30,$28,$21
	db $30,$2A,$03,$40,$2C,$13,$40,$2E,$26,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch4.bin"	; GFXSize = $800

DATA_DE6AF2:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$04,$05,$00,$08,$00,$02,$29,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$03,$30,$24,$13,$30,$26,$23,$30,$28,$33
	db $30,$2A,$01,$40,$2C,$11,$40,$2E,$21,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckBlock3.bin"	; GFXSize = $800

DATA_DE732C:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$04,$00,$15,$00,$02,$25,$00
	db $04,$35,$00,$06,$06,$10,$08,$16,$10,$0A,$26,$10,$0C,$36,$10,$0E
	db $05,$20,$20,$15,$20,$22,$25,$20,$24,$35,$20,$26,$45,$20,$28,$00
	db $30,$2A,$10,$30,$2C,$20,$30,$2E,$3A,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckKick1.bin"	; GFXSize = $800

DATA_DE7B66:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$04,$00,$26,$00,$02,$36,$00
	db $04,$12,$10,$06,$22,$10,$08,$32,$10,$0A,$42,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$41,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$40,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckKick3.bin"	; GFXSize = $800

DATA_DE83A0:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$06,$04,$00,$33,$00,$02,$43,$00
	db $04,$27,$10,$06,$37,$10,$08,$47,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30,$2E,$40,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckKick4.bin"	; GFXSize = $800

DATA_DE8BDA:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$03,$06,$00,$14,$00,$02,$0A,$10
	db $04,$1A,$10,$06,$2A,$10,$08,$06,$20,$0A,$16,$20,$0C,$26,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$06,$40,$26,$16,$40,$28,$26
	db $40,$2A,$05,$50,$2C,$15,$50,$2E,$25,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Jump3.bin"	; GFXSize = $800

DATA_DE9414:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$06,$05,$00,$10,$00,$02,$2C,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$20,$30,$26,$30,$30,$28,$40
	db $30,$2A,$28,$40,$2C,$3D,$40,$2E,$4D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_CloseKick4.bin"	; GFXSize = $800

DATA_DE9C4E:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$07,$04,$00,$12,$00,$02,$22,$00
	db $04,$32,$00,$06,$04,$10,$08,$14,$10,$0A,$24,$10,$0C,$34,$10,$0E
	db $00,$20,$20,$10,$20,$22,$27,$20,$24,$37,$20,$26,$47,$20,$28,$2F
	db $30,$2A,$41,$30,$2C,$51,$30,$2E,$61,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_CloseKick5.bin"	; GFXSize = $800

DATA_DEA488:
	db $10,$00,$3A,$00,$01,$00,$0A,$00,$05,$05,$00,$1A,$00,$02,$2A,$00
	db $04,$3A,$00,$06,$4A,$00,$08,$14,$10,$0A,$24,$10,$0C,$34,$10,$0E
	db $44,$10,$20,$0C,$20,$22,$1C,$20,$24,$2C,$20,$26,$3C,$20,$28,$02
	db $30,$2A,$12,$30,$2C,$00,$40,$2E,$10,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_JumpKick4.bin"	; GFXSize = $800

DATA_DEACC2:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$07,$05,$00,$37,$00,$02,$15,$10
	db $04,$25,$10,$06,$35,$10,$08,$45,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$2A,$30,$28,$42
	db $30,$2A,$52,$30,$2C,$2F,$40,$2E,$55,$40,$40,$65,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarPunch3.bin"	; GFXSize = $880

DATA_DEB57F:
	db $11,$00,$3D,$00,$01,$00,$0A,$00,$07,$05,$00,$36,$00,$02,$1C,$10
	db $04,$2C,$10,$06,$3C,$10,$08,$4C,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$2C,$30,$28,$3C
	db $30,$2A,$4C,$30,$2C,$2B,$40,$2E,$4D,$40,$40,$5D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarPunch4.bin"	; GFXSize = $880

DATA_DEBE3C:
	incbin "Graphics/Compressed/GFX_Sprite_FinalBattleText.bin"

DATA_DEC0EB:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame8.bin"

DATA_DEC8A5:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame9.bin"

DATA_DED05F:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame10.bin"

DATA_DED819:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame11.bin"

DATA_DEDFD3:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame12.bin"

DATA_DEE78D:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame13.bin"

DATA_DEEF47:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame14.bin"

DATA_DEF701:
	incbin "Graphics/Compressed/GFX_Layer2_ReplayBanner.rnc"

	%InsertGarbageData($DEFFBE, incbin, UNK_DEFFBE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankDFMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_DF0000:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$05,$30,$22,$15,$30,$24,$25,$30,$26,$03,$40,$28,$1E
	db $40,$2A,$01,$50,$2C,$1E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ClosePunch1.bin"	; GFXSize = $780

DATA_DF07B7:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$13,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $31,$20,$20,$06,$30,$22,$16,$30,$24,$26,$30,$26,$03,$40,$28,$1D
	db $40,$2A,$00,$50,$2C,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ClosePunch2.bin"	; GFXSize = $780

DATA_DF0F6E:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$06,$00,$12,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$40,$20,$22,$09,$30,$24,$19,$30,$26,$29,$30,$28,$39
	db $30,$2A,$08,$40,$2C,$05,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_CloseKick5.bin"	; GFXSize = $780

DATA_DF1725:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$20,$00,$02,$12,$10
	db $04,$22,$10,$06,$32,$10,$08,$42,$10,$0A,$0E,$20,$0C,$1E,$20,$0E
	db $2E,$20,$20,$13,$30,$22,$23,$30,$24,$33,$30,$26,$00,$40,$28,$10
	db $40,$2A,$20,$40,$2C,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckPunch4.bin"	; GFXSize = $780

DATA_DF1EDC:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$20,$00,$02,$10,$10
	db $04,$20,$10,$06,$30,$10,$08,$40,$10,$0A,$0D,$20,$0C,$1D,$20,$0E
	db $2D,$20,$20,$13,$30,$22,$23,$30,$24,$33,$30,$26,$00,$40,$28,$10
	db $40,$2A,$20,$40,$2C,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckPunch5.bin"	; GFXSize = $780

DATA_DF2693:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$04,$00,$0E,$00,$02,$1E,$00
	db $04,$2E,$00,$06,$01,$10,$08,$11,$10,$0A,$21,$10,$0C,$31,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$06,$30,$28,$1F
	db $30,$2A,$2F,$30,$2C,$3F,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckKick5.bin"	; GFXSize = $780

DATA_DF2E4A:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$19,$00,$02,$08,$10
	db $04,$18,$10,$06,$36,$10,$08,$07,$20,$0A,$17,$20,$0C,$27,$20,$0E
	db $37,$20,$20,$0A,$30,$22,$1A,$30,$24,$2A,$30,$26,$03,$40,$28,$1F
	db $40,$2A,$00,$50,$2C,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarPunch4.bin"	; GFXSize = $780

DATA_DF3601:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$06,$05,$00,$0B,$00,$02,$1B,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$40,$20,$26,$50,$20,$28,$0C
	db $30,$2A,$1C,$30,$2C,$0F,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_JumpKick2.bin"	; GFXSize = $780

DATA_DF3DB8:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$0F,$00,$02,$03,$10
	db $04,$13,$10,$06,$28,$10,$08,$04,$20,$0A,$14,$20,$0C,$24,$20,$0E
	db $08,$30,$20,$18,$30,$22,$28,$30,$24,$04,$40,$26,$18,$40,$28,$28
	db $40,$2A,$00,$50,$2C,$1B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt2.bin"	; GFXSize = $780

DATA_DF456F:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$03,$06,$00,$18,$00,$02,$09,$10
	db $04,$19,$10,$06,$2A,$10,$08,$09,$20,$0A,$19,$20,$0C,$29,$20,$0E
	db $0C,$30,$20,$1C,$30,$22,$2C,$30,$24,$06,$40,$26,$16,$40,$28,$26
	db $40,$2A,$00,$50,$2C,$18,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt3.bin"	; GFXSize = $780

DATA_DF4D26:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$1E,$00,$02,$0F,$10
	db $04,$1F,$10,$06,$2F,$10,$08,$0F,$20,$0A,$1F,$20,$0C,$2F,$20,$0E
	db $11,$30,$20,$21,$30,$22,$31,$30,$24,$09,$40,$26,$19,$40,$28,$29
	db $40,$2A,$00,$50,$2C,$15,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt4.bin"	; GFXSize = $780

DATA_DF54DD:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$06,$06,$00,$10,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$54,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$40,$20,$24,$50,$20,$26,$05,$30,$28,$17
	db $30,$2A,$19,$40,$2C,$1A,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarKick5.bin"	; GFXSize = $780

DATA_DF5C94:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$04,$20,$0E
	db $14,$20,$20,$24,$20,$22,$34,$20,$24,$16,$30,$26,$2E,$30,$28,$3E
	db $30,$2A,$1A,$40,$2C,$3A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead4.bin"	; GFXSize = $780

DATA_DF644B:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$06,$04,$00,$00,$00,$02,$10,$00
	db $04,$2C,$00,$06,$03,$10,$08,$13,$10,$0A,$23,$10,$0C,$33,$10,$0E
	db $43,$10,$20,$09,$20,$22,$19,$20,$24,$29,$20,$26,$39,$20,$28,$49
	db $20,$2A,$2B,$30,$2C,$3B,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead7.bin"	; GFXSize = $780

DATA_DF6C02:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$0B,$00,$02,$04,$10
	db $04,$14,$10,$06,$24,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$09,$40,$26,$23,$40,$28,$33
	db $40,$2A,$09,$50,$2C,$2F,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash3.bin"	; GFXSize = $780

DATA_DF73B9:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$09,$00,$02,$19,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$0C
	db $40,$2A,$34,$40,$2C,$44,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash4.bin"	; GFXSize = $780

DATA_DF7B70:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$1F,$00,$02,$2F,$00
	db $04,$16,$10,$06,$26,$10,$08,$36,$10,$0A,$17,$20,$0C,$27,$20,$0E
	db $37,$20,$20,$0C,$30,$22,$1C,$30,$24,$2C,$30,$26,$3C,$30,$28,$00
	db $40,$2A,$10,$40,$2C,$2E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash9.bin"	; GFXSize = $780

DATA_DF8327:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$25,$00,$02,$35,$00
	db $04,$1B,$10,$06,$2B,$10,$08,$3B,$10,$0A,$1C,$20,$0C,$2C,$20,$0E
	db $3C,$20,$20,$0D,$30,$22,$1D,$30,$24,$2D,$30,$26,$3D,$30,$28,$00
	db $40,$2A,$10,$40,$2C,$2D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash10.bin"	; GFXSize = $780

DATA_DF8ADE:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$1D,$00,$02,$2D,$00
	db $04,$19,$10,$06,$29,$10,$08,$39,$10,$0A,$16,$20,$0C,$26,$20,$0E
	db $36,$20,$20,$0B,$30,$22,$1B,$30,$24,$2C,$30,$26,$3C,$30,$28,$00
	db $40,$2A,$10,$40,$2C,$2A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash11.bin"	; GFXSize = $780

DATA_DF9295:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$0F,$00,$02,$0E,$10
	db $04,$1E,$10,$06,$2E,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$08,$30,$22,$18,$30,$24,$28,$30,$26,$38,$30,$28,$0B
	db $40,$2A,$1B,$40,$2C,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Ducking4.bin"	; GFXSize = $780

DATA_DF9A4C:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$0F,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$08,$30,$22,$18,$30,$24,$28,$30,$26,$38,$30,$28,$0B
	db $40,$2A,$1B,$40,$2C,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Ducking5.bin"	; GFXSize = $780

DATA_DFA203:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$0C,$00,$02,$03,$10
	db $04,$13,$10,$06,$23,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$01,$30,$22,$11,$30,$24,$21,$30,$26,$31,$30,$28,$03
	db $40,$2A,$13,$40,$2C,$29,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckBlock1.bin"	; GFXSize = $780

DATA_DFA9BA:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$17,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$06,$20,$0C,$16,$20,$0E
	db $26,$20,$20,$36,$20,$22,$07,$30,$24,$17,$30,$26,$27,$30,$28,$37
	db $30,$2A,$05,$40,$2C,$28,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckKick1.bin"	; GFXSize = $780

DATA_DFB171:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$0C,$00,$02,$1C,$00
	db $04,$2C,$00,$06,$0C,$10,$08,$1C,$10,$0A,$2C,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$15,$30,$24,$25,$30,$26,$14,$40,$28,$24
	db $40,$2A,$0D,$50,$2C,$27,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick2.bin"	; GFXSize = $780

DATA_DFB928:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$06,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $12,$20,$20,$22,$20,$22,$32,$20,$24,$12,$30,$26,$22,$30,$28,$19
	db $40,$2A,$17,$50,$2C,$27,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick8.bin"	; GFXSize = $780

DATA_DFC0DF:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$07,$00,$14,$00,$02,$0C,$10
	db $04,$1C,$10,$06,$06,$20,$08,$16,$20,$0A,$26,$20,$0C,$03,$30,$0E
	db $13,$30,$20,$23,$30,$22,$03,$40,$24,$13,$40,$26,$23,$40,$28,$02
	db $50,$2A,$13,$50,$2C,$00,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick10.bin"	; GFXSize = $780

DATA_DFC896:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$1B,$00,$02,$08,$10
	db $04,$18,$10,$06,$28,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $32,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30,$28,$04
	db $40,$2A,$15,$40,$2C,$2A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Jump2.bin"	; GFXSize = $780

DATA_DFD04D:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$06,$03,$00,$23,$00,$02,$33,$00
	db $04,$43,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $40,$10,$20,$50,$10,$22,$02,$20,$24,$12,$20,$26,$22,$20,$28,$3A
	db $20,$2A,$4B,$20,$2C,$5B,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Dead3.bin"	; GFXSize = $780

DATA_DFD804:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$12,$00,$02,$10,$10
	db $04,$20,$10,$06,$30,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$0A,$30,$22,$1A,$30,$24,$2A,$30,$26,$3A,$30,$28,$0D
	db $40,$2A,$1D,$40,$2C,$32,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch1.bin"	; GFXSize = $780

DATA_DFDFBB:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$27,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$1E,$30,$24,$2E,$30,$26,$3E,$30,$28,$1E
	db $40,$2A,$2E,$40,$2C,$3E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch8.bin"	; GFXSize = $780

DATA_DFE772:
	dw (.Block1End-.Block1Start)&$007FFF,ARAM_ROTR_DATA_DFE772_Main
.Block1Start:
	%ReadPreCompiledFilePointers(16, "SPC700/SPC700DataBlocks_ROTR.bin")
	incbin "SPC700/SPC700DataBlocks_ROTR.bin":(!StartOffset)..(!EndOffset)
.Block1End:
	dw (.Block2End-.Block2Start)&$007FFF,ARAM_ROTR_SPC700_Engine_Main
.Block2Start:
.Block2End:

DATA_DFE88E:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame15.bin"

DATA_DFF048:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame16.bin"

DATA_DFF802:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame17.bin"

	%InsertGarbageData($DFFFBC, incbin, UNK_DFFFBC.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE0Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E00000:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $07,$30,$20,$17,$30,$22,$27,$30,$24,$06,$40,$26,$20,$40,$28,$03
	db $50,$2A,$21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandIdle5.bin"	; GFXSize = $700

DATA_E00734:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$11,$00,$02,$01,$10
	db $04,$11,$10,$06,$23,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $09,$30,$20,$19,$30,$22,$29,$30,$24,$09,$40,$26,$29,$40,$28,$39
	db $40,$2A,$06,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_CloseKick4.bin"	; GFXSize = $700

DATA_E00E68:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$05,$00,$21,$00,$02,$15,$10
	db $04,$25,$10,$06,$36,$10,$08,$12,$20,$0A,$22,$20,$0C,$32,$20,$0E
	db $13,$30,$20,$23,$30,$22,$33,$30,$24,$00,$40,$26,$10,$40,$28,$20
	db $40,$2A,$30,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckPunch3.bin"	; GFXSize = $700

DATA_E0159C:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $09,$30,$20,$19,$30,$22,$29,$30,$24,$08,$40,$26,$1E,$40,$28,$08
	db $50,$2A,$23,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_LowBlowHurt2.bin"	; GFXSize = $700

DATA_E01CD0:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $08,$30,$20,$18,$30,$22,$28,$30,$24,$08,$40,$26,$20,$40,$28,$06
	db $50,$2A,$20,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk1.bin"	; GFXSize = $700

DATA_E02404:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $08,$30,$20,$18,$30,$22,$28,$30,$24,$07,$40,$26,$1F,$40,$28,$05
	db $50,$2A,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk7.bin"	; GFXSize = $700

DATA_E02B38:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $07,$30,$20,$17,$30,$22,$27,$30,$24,$06,$40,$26,$20,$40,$28,$05
	db $50,$2A,$20,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk8.bin"	; GFXSize = $700

DATA_E0326C:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$0E,$00,$02,$01,$10
	db $04,$11,$10,$06,$21,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$0A,$30,$22,$1A,$30,$24,$2A,$30,$26,$08,$40,$28,$23
	db $40,$2A,$0C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Jump2.bin"	; GFXSize = $700

DATA_E039A0:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$10,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $06,$30,$20,$16,$30,$22,$26,$30,$24,$04,$40,$26,$1D,$40,$28,$02
	db $50,$2A,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt1.bin"	; GFXSize = $700

DATA_E040D4:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$06,$00,$12,$00,$02,$03,$10
	db $04,$13,$10,$06,$23,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$09,$30,$22,$19,$30,$24,$38,$30,$26,$48,$30,$28,$19
	db $40,$2A,$1C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarKick4.bin"	; GFXSize = $700

DATA_E04808:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$0A,$00,$02,$04,$10
	db $04,$14,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0F,$30,$0E
	db $1F,$30,$20,$2F,$30,$22,$14,$40,$24,$2B,$40,$26,$3B,$40,$28,$16
	db $50,$2A,$33,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead3.bin"	; GFXSize = $700

DATA_E04F3C:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$05,$00,$01,$00,$02,$11,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$1A,$30,$26,$36,$30,$28,$46
	db $30,$2A,$20,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead5.bin"	; GFXSize = $700

DATA_E05670:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$06,$03,$00,$00,$00,$02,$12,$00
	db $04,$29,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $40,$10,$20,$50,$10,$22,$0A,$20,$24,$1B,$20,$26,$2B,$20,$28,$3B
	db $20,$2A,$4B,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead9.bin"	; GFXSize = $700

DATA_E05DA4:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$0F,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $09,$30,$20,$19,$30,$22,$29,$30,$24,$08,$40,$26,$22,$40,$28,$06
	db $50,$2A,$25,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash1.bin"	; GFXSize = $700

DATA_E064D8:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$0D,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $0A,$30,$20,$1A,$30,$22,$2A,$30,$24,$0A,$40,$26,$22,$40,$28,$06
	db $50,$2A,$28,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash2.bin"	; GFXSize = $700

DATA_E06C0C:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$05,$00,$0B,$00,$02,$06,$10
	db $04,$16,$10,$06,$26,$10,$08,$04,$20,$0A,$14,$20,$0C,$24,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30,$24,$30,$30,$26,$0F,$40,$28,$37
	db $40,$2A,$47,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash5.bin"	; GFXSize = $700

DATA_E07340:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$05,$00,$0F,$00,$02,$06,$10
	db $04,$16,$10,$06,$26,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$00,$30,$22,$10,$30,$24,$22,$30,$26,$32,$30,$28,$09
	db $40,$2A,$34,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash6.bin"	; GFXSize = $700

DATA_E07A74:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$05,$00,$0D,$00,$02,$1D,$00
	db $04,$04,$10,$06,$14,$10,$08,$24,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$32,$20,$22,$07,$30,$24,$24,$30,$26,$34,$30,$28,$00
	db $40,$2A,$2E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash7.bin"	; GFXSize = $700

DATA_E081A8:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$25,$00,$02,$13,$10
	db $04,$23,$10,$06,$0C,$20,$08,$1C,$20,$0A,$2C,$20,$0C,$0E,$30,$0E
	db $1E,$30,$20,$2E,$30,$22,$08,$40,$24,$18,$40,$26,$2E,$40,$28,$00
	db $50,$2A,$2C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash8.bin"	; GFXSize = $700

DATA_E088DC:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$06,$00,$21,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$0D,$20,$0A,$1D,$20,$0C,$2D,$20,$0E
	db $0C,$30,$20,$1C,$30,$22,$2C,$30,$24,$07,$40,$26,$25,$40,$28,$00
	db $50,$2A,$24,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash13.bin"	; GFXSize = $700

DATA_E09010:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$06,$00,$16,$00,$02,$04,$10
	db $04,$14,$10,$06,$24,$10,$08,$04,$20,$0A,$14,$20,$0C,$24,$20,$0E
	db $07,$30,$20,$17,$30,$22,$27,$30,$24,$05,$40,$26,$23,$40,$28,$00
	db $50,$2A,$22,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_ShoulderDash14.bin"	; GFXSize = $700

DATA_E09744:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$04,$00,$18,$00,$02,$28,$00
	db $04,$38,$00,$06,$15,$10,$08,$25,$10,$0A,$35,$10,$0C,$45,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$41,$20,$28,$2E
	db $30,$2A,$3E,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_JumpKick1.bin"	; GFXSize = $700

DATA_E09E78:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$05,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$08,$10,$08,$18,$10,$0A,$28,$10,$0C,$05,$20,$0E
	db $15,$20,$20,$25,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$07
	db $40,$2A,$1F,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault3.bin"	; GFXSize = $700

DATA_E0A5AC:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$03,$05,$00,$0F,$00,$02,$1F,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$2B,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$01,$30,$22,$11,$30,$24,$21,$30,$26,$03,$40,$28,$13
	db $40,$2A,$24,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch6.bin"	; GFXSize = $700

DATA_E0ACE0:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$21,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$02,$30,$22,$12,$30,$24,$22,$30,$26,$32,$30,$28,$02
	db $40,$2A,$12,$40,$2C,$22,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckBlock1.bin"	; GFXSize = $780

DATA_E0B497:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$04,$00,$1D,$00,$02,$2D,$00
	db $04,$0A,$10,$06,$1A,$10,$08,$2A,$10,$0A,$3A,$10,$0C,$07,$20,$0E
	db $17,$20,$20,$27,$20,$22,$37,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30,$2A,$30,$30,$2C,$40,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckKick2.bin"	; GFXSize = $780

DATA_E0BC4E:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$1A,$00,$02,$13,$10
	db $04,$23,$10,$06,$33,$10,$08,$05,$20,$0A,$15,$20,$0C,$25,$20,$0E
	db $35,$20,$20,$04,$30,$22,$14,$30,$24,$24,$30,$26,$34,$30,$28,$00
	db $40,$2A,$10,$40,$2C,$20,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_DuckHurt1.bin"	; GFXSize = $780

DATA_E0C405:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$05,$00,$14,$00,$02,$24,$00
	db $04,$0C,$10,$06,$1C,$10,$08,$2C,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$05,$30,$24,$15,$30,$26,$25,$30,$28,$08
	db $40,$2A,$18,$40,$2C,$28,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Jump4.bin"	; GFXSize = $780

DATA_E0CBBC:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$04,$00,$0A,$00,$02,$1E,$00
	db $04,$2E,$00,$06,$07,$10,$08,$17,$10,$0A,$27,$10,$0C,$37,$10,$0E
	db $05,$20,$20,$15,$20,$22,$25,$20,$24,$35,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_JumpKick1.bin"	; GFXSize = $780

DATA_E0D373:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$04,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$04,$10,$08,$14,$10,$0A,$24,$10,$0C,$34,$10,$0E
	db $03,$20,$20,$13,$20,$22,$23,$20,$24,$33,$20,$26,$00,$30,$28,$10
	db $30,$2A,$20,$30,$2C,$30,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CurlUp1.bin"	; GFXSize = $780

DATA_E0DB2A:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$05,$05,$00,$07,$00,$02,$17,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$02,$30,$22,$12,$30,$24,$22,$30,$26,$32,$30,$28,$09
	db $40,$2A,$30,$40,$2C,$40,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckPunch3.bin"	; GFXSize = $780

DATA_E0E2E1:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$07,$05,$00,$00,$00,$02,$08,$10
	db $04,$1D,$10,$06,$2D,$10,$08,$0F,$20,$0A,$1F,$20,$0C,$2F,$20,$0E
	db $14,$30,$20,$24,$30,$22,$34,$30,$24,$44,$30,$26,$1D,$40,$28,$3D
	db $40,$2A,$4D,$40,$2C,$5D,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckPunch4.bin"	; GFXSize = $780

DATA_E0EA98:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$08,$04,$00,$00,$00,$02,$10,$00
	db $04,$29,$00,$06,$39,$00,$08,$13,$10,$0A,$23,$10,$0C,$33,$10,$0E
	db $43,$10,$20,$24,$20,$22,$34,$20,$24,$44,$20,$26,$2C,$30,$28,$46
	db $30,$2A,$56,$30,$2C,$66,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckPunch5.bin"	; GFXSize = $780

DATA_E0F24F:
	db $0F,$00,$37,$00,$01,$00,$0A,$00,$04,$07,$00,$16,$00,$02,$00,$10
	db $04,$12,$10,$06,$22,$10,$08,$07,$20,$0A,$17,$20,$0C,$27,$20,$0E
	db $11,$30,$20,$21,$30,$22,$11,$40,$24,$28,$40,$26,$17,$50,$28,$2F
	db $50,$2A,$1E,$60,$2C,$36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack3.bin"	; GFXSize = $780

DATA_E0FA06:
	incbin "Graphics/Compressed/GFX_Layer1_TimerMonitorText.rnc"

	%InsertGarbageData($E0FFCF, incbin, UNK_E0FFCF.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE1Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E10000:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$13,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$09,$30,$0E
	db $19,$30,$20,$29,$30,$22,$07,$40,$24,$23,$40,$26,$05,$50,$28,$23
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandIdle3.bin"	; GFXSize = $680

DATA_E106B1:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$12,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$09,$30,$0E
	db $19,$30,$20,$29,$30,$22,$08,$40,$24,$22,$40,$26,$06,$50,$28,$24
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandIdle4.bin"	; GFXSize = $680

DATA_E10D62:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0F,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$09,$30,$0E
	db $19,$30,$20,$29,$30,$22,$06,$40,$24,$22,$40,$26,$04,$50,$28,$23
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandBlock1.bin"	; GFXSize = $680

DATA_E11413:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0A,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$08,$30,$0E
	db $18,$30,$20,$28,$30,$22,$05,$40,$24,$20,$40,$26,$04,$50,$28,$1F
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_StandBlock2.bin"	; GFXSize = $680

DATA_E11AC4:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$07,$30,$0E
	db $17,$30,$20,$27,$30,$22,$05,$40,$24,$1D,$40,$26,$03,$50,$28,$22
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Ducking1.bin"	; GFXSize = $680

DATA_E12175:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$05,$00,$08,$00,$02,$18,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$02,$30,$22,$12,$30,$24,$22,$30,$26,$00,$40,$28,$20
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Ducking2.bin"	; GFXSize = $680

DATA_E12826:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$05,$00,$13,$00,$02,$03,$10
	db $04,$13,$10,$06,$23,$10,$08,$04,$20,$0A,$14,$20,$0C,$24,$20,$0E
	db $01,$30,$20,$11,$30,$22,$21,$30,$24,$00,$40,$26,$10,$40,$28,$20
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Ducking3.bin"	; GFXSize = $680

DATA_E12ED7:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$05,$00,$15,$00,$02,$06,$10
	db $04,$16,$10,$06,$26,$10,$08,$06,$20,$0A,$16,$20,$0C,$26,$20,$0E
	db $01,$30,$20,$11,$30,$22,$21,$30,$24,$00,$40,$26,$10,$40,$28,$20
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Ducking4.bin"	; GFXSize = $680

DATA_E13588:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$05,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$04,$30,$24,$1B,$30,$26,$2B,$30,$28,$2E
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckKick4.bin"	; GFXSize = $680

DATA_E13C39:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$02,$20,$08,$12,$20,$0A,$22,$20,$0C,$04,$30,$0E
	db $14,$30,$20,$24,$30,$22,$03,$40,$24,$1D,$40,$26,$01,$50,$28,$1F
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarPunch1.bin"	; GFXSize = $680

DATA_E142EA:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$08,$30,$0E
	db $18,$30,$20,$28,$30,$22,$08,$40,$24,$20,$40,$26,$08,$50,$28,$23
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_LowBlowHurt1.bin"	; GFXSize = $680

DATA_E1499B:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$01,$10
	db $04,$11,$10,$06,$21,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $08,$30,$20,$18,$30,$22,$07,$40,$24,$1B,$40,$26,$07,$50,$28,$22
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_LowBlowHurt3.bin"	; GFXSize = $680

DATA_E1504C:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $09,$30,$20,$19,$30,$22,$09,$40,$24,$1D,$40,$26,$07,$50,$28,$1B
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk2.bin"	; GFXSize = $680

DATA_E156FD:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$10,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $0A,$30,$20,$1A,$30,$22,$0A,$40,$24,$1A,$40,$26,$08,$50,$28,$18
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk3.bin"	; GFXSize = $680

DATA_E15DAE:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$10,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $0A,$30,$20,$1A,$30,$22,$0B,$40,$24,$1B,$40,$26,$09,$50,$28,$19
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk4.bin"	; GFXSize = $680

DATA_E1645F:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$12,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $0B,$30,$20,$1B,$30,$22,$0A,$40,$24,$1A,$40,$26,$08,$50,$28,$18
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk5.bin"	; GFXSize = $680

DATA_E16B10:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $09,$30,$20,$19,$30,$22,$07,$40,$24,$1C,$40,$26,$06,$50,$28,$1B
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Walk6.bin"	; GFXSize = $680

DATA_E171C1:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0B,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $08,$30,$20,$18,$30,$22,$28,$30,$24,$08,$40,$26,$22,$40,$28,$04
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Jump1.bin"	; GFXSize = $680

DATA_E17872:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$05,$05,$00,$0A,$00,$02,$1A,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$0A,$30,$26,$34,$30,$28,$0E
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_JumpKick1.bin"	; GFXSize = $680

DATA_E17F23:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0E,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$09,$30,$0E
	db $19,$30,$20,$29,$30,$22,$08,$40,$24,$23,$40,$26,$07,$50,$28,$23
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_HighBlowHurt1.bin"	; GFXSize = $680

DATA_E185D4:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0E,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0B,$30,$0E
	db $1B,$30,$20,$2B,$30,$22,$08,$40,$24,$23,$40,$26,$07,$50,$28,$22
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_HighBlowHurt2.bin"	; GFXSize = $680

DATA_E18C85:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0D,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0B,$30,$0E
	db $1B,$30,$20,$2B,$30,$22,$07,$40,$24,$21,$40,$26,$06,$50,$28,$20
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_HighBlowHurt3.bin"	; GFXSize = $680

DATA_E19336:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0D,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0C,$30,$0E
	db $1C,$30,$20,$2C,$30,$22,$08,$40,$24,$22,$40,$26,$05,$50,$28,$24
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_HighBlowHurt4.bin"	; GFXSize = $680

DATA_E199E7:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$06,$00,$24,$00,$02,$17,$10
	db $04,$27,$10,$06,$37,$10,$08,$17,$20,$0A,$27,$20,$0C,$37,$20,$0E
	db $0C,$30,$20,$1C,$30,$22,$2C,$30,$24,$08,$40,$26,$18,$40,$28,$00
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt5.bin"	; GFXSize = $680

DATA_E1A098:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$05,$00,$1A,$00,$02,$2A,$00
	db $04,$3A,$00,$06,$14,$10,$08,$24,$10,$0A,$34,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$0D,$30,$26,$1D,$30,$28,$09
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt6.bin"	; GFXSize = $680

DATA_E1A749:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$08,$30,$0E
	db $18,$30,$20,$28,$30,$22,$04,$40,$24,$1D,$40,$26,$03,$50,$28,$1E
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarKick1.bin"	; GFXSize = $680

DATA_E1ADFA:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0E,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $08,$30,$20,$18,$30,$22,$28,$30,$24,$14,$40,$26,$24,$40,$28,$14
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarKick3.bin"	; GFXSize = $680

DATA_E1B4AB:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$16,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$05,$30,$0E
	db $15,$30,$20,$25,$30,$22,$03,$40,$24,$19,$40,$26,$01,$50,$28,$1E
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_SlidePunch1.bin"	; GFXSize = $680

DATA_E1BB5C:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$04,$00,$14,$00,$02,$24,$00
	db $04,$34,$00,$06,$13,$10,$08,$23,$10,$0A,$33,$10,$0C,$01,$20,$0E
	db $11,$20,$20,$21,$20,$22,$31,$20,$24,$00,$30,$26,$10,$30,$28,$20
	db $30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_SlidePunch3.bin"	; GFXSize = $680

DATA_E1C20D:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$05,$04,$00,$3A,$00,$02,$26,$10
	db $04,$36,$10,$06,$46,$10,$08,$04,$20,$0A,$16,$20,$0C,$26,$20,$0E
	db $36,$20,$20,$4C,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_SlidePunch5.bin"	; GFXSize = $680

DATA_E1C8BE:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$03,$03,$00,$02,$00,$02,$12,$00
	db $04,$22,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault6.bin"	; GFXSize = $480

DATA_E1CD63:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$05,$00,$1F,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$11,$20,$0C,$21,$20,$0E
	db $31,$20,$20,$15,$30,$22,$25,$30,$24,$35,$30,$26,$16,$40,$28,$26
	db $40,$2A,$36,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_DuckPunch7.bin"	; GFXSize = $700

DATA_E1D497:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$04,$00,$12,$00,$02,$22,$00
	db $04,$32,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $05,$20,$20,$15,$20,$22,$25,$20,$24,$35,$20,$26,$08,$30,$28,$18
	db $30,$2A,$28,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Jump5.bin"	; GFXSize = $700

DATA_E1DBCB:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$04,$00,$16,$00,$02,$26,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$03,$20,$0E
	db $13,$20,$20,$23,$20,$22,$33,$20,$24,$02,$30,$26,$12,$30,$28,$22
	db $30,$2A,$32,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_Jump6.bin"	; GFXSize = $700

DATA_E1E2FF:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$04,$04,$00,$0E,$00,$02,$1E,$00
	db $04,$2E,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $00,$20,$20,$10,$20,$22,$20,$20,$24,$30,$20,$26,$0A,$30,$28,$1A
	db $30,$2A,$2A,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CurlUp2.bin"	; GFXSize = $700

DATA_E1EA33:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$06,$05,$00,$32,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$02,$20,$0E
	db $2A,$20,$20,$3A,$20,$22,$29,$30,$24,$3C,$30,$26,$4C,$30,$28,$2A
	db $40,$2A,$48,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_ClosePunch5.bin"	; GFXSize = $700

DATA_E1F167:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$07,$00,$4A,$00,$02,$2E,$10
	db $04,$42,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $40,$20,$20,$2C,$30,$22,$3C,$30,$24,$2C,$40,$26,$3C,$40,$28,$2E
	db $50,$2A,$30,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick8.bin"	; GFXSize = $700

DATA_E1F89B:
	db $0E,$00,$34,$00,$01,$00,$0A,$00,$05,$03,$00,$06,$00,$02,$16,$00
	db $04,$26,$00,$06,$36,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$00,$20,$24,$18,$20,$26,$28,$20,$28,$3B
	db $20,$2A,$4B,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick5.bin"	; GFXSize = $700

	%InsertGarbageData($E1FFCF, incbin, UNK_E1FFCF.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE2Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E20000:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$0F,$00,$02,$01,$10
	db $04,$11,$10,$06,$21,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $07,$30,$20,$17,$30,$22,$05,$40,$24,$15,$40,$26,$09,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_CloseKick3.bin"	; GFXSize = $600

DATA_E2062E:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$05,$00,$1C,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$05,$20,$08,$15,$20,$0A,$25,$20,$0C,$02,$30,$0E
	db $12,$30,$20,$22,$30,$22,$00,$40,$24,$10,$40,$26,$20,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckBlock2.bin"	; GFXSize = $600

DATA_E20C5C:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$05,$00,$1F,$00,$02,$11,$10
	db $04,$21,$10,$06,$11,$20,$08,$21,$20,$0A,$31,$20,$0C,$12,$30,$0E
	db $22,$30,$20,$32,$30,$22,$00,$40,$24,$10,$40,$26,$20,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckPunch2.bin"	; GFXSize = $600

DATA_E2128A:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$04,$00,$0E,$00,$02,$1E,$00
	db $04,$09,$10,$06,$19,$10,$08,$29,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckKick1.bin"	; GFXSize = $600

DATA_E218B8:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$04,$00,$0E,$00,$02,$1E,$00
	db $04,$05,$10,$06,$15,$10,$08,$25,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$31,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckHurt4.bin"	; GFXSize = $600

DATA_E21EE6:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$13,$00,$02,$06,$10
	db $04,$16,$10,$06,$06,$20,$08,$16,$20,$0A,$04,$30,$0C,$14,$30,$0E
	db $24,$30,$20,$02,$40,$22,$1D,$40,$24,$00,$50,$26,$1C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarPunch2.bin"	; GFXSize = $600

DATA_E22514:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$16,$00,$02,$09,$10
	db $04,$19,$10,$06,$09,$20,$08,$19,$20,$0A,$06,$30,$0C,$16,$30,$0E
	db $26,$30,$20,$02,$40,$22,$1D,$40,$24,$00,$50,$26,$1B,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarPunch3.bin"	; GFXSize = $600

DATA_E22B42:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$14,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$08,$30,$0E
	db $18,$30,$20,$07,$40,$22,$19,$40,$24,$05,$50,$26,$21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_LowBlowHurt4.bin"	; GFXSize = $600

DATA_E23170:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$14,$00,$02,$00,$10
	db $04,$10,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$08,$30,$0E
	db $18,$30,$20,$07,$40,$22,$19,$40,$24,$05,$50,$26,$21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_LowBlowHurt5.bin"	; GFXSize = $600

DATA_E2379E:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$21,$00,$02,$05,$10
	db $04,$15,$10,$06,$25,$10,$08,$05,$20,$0A,$15,$20,$0C,$07,$30,$0E
	db $17,$30,$20,$03,$40,$22,$13,$40,$24,$00,$50,$26,$10,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt9.bin"	; GFXSize = $600

DATA_E23DCC:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$05,$00,$1B,$00,$02,$07,$10
	db $04,$17,$10,$06,$27,$10,$08,$0A,$20,$0A,$1A,$20,$0C,$2A,$20,$0E
	db $03,$30,$20,$13,$30,$22,$23,$30,$24,$00,$40,$26,$1C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_SlidePunch2.bin"	; GFXSize = $600

DATA_E243FA:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$05,$04,$00,$33,$00,$02,$21,$10
	db $04,$31,$10,$06,$41,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $32,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30,$26,$30,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_SlidePunch4.bin"	; GFXSize = $600

DATA_E24A28:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$0D,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0C,$30,$0E
	db $1C,$30,$20,$2C,$30,$22,$08,$40,$24,$22,$40,$26,$05,$50,$28,$24
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead1.bin"	; GFXSize = $680

DATA_E250D9:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$06,$00,$0A,$00,$02,$03,$10
	db $04,$13,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0E,$30,$0E
	db $1E,$30,$20,$2E,$30,$22,$10,$40,$24,$27,$40,$26,$11,$50,$28,$2E
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead2.bin"	; GFXSize = $680

DATA_E2578A:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$06,$04,$00,$03,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$04,$20,$0C,$14,$20,$0E
	db $24,$20,$20,$34,$20,$22,$44,$20,$24,$54,$20,$26,$2C,$30,$28,$3C
	db $30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead8.bin"	; GFXSize = $680

DATA_E25E3B:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$03,$00,$02,$13,$00
	db $04,$23,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$0B,$30,$24,$1B,$30,$26,$17,$40,$28,$15
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick3.bin"	; GFXSize = $680

DATA_E264EC:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$03,$06,$00,$03,$00,$02,$13,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20,$20,$09,$30,$22,$19,$30,$24,$12,$40,$26,$22,$40,$28,$1C
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick4.bin"	; GFXSize = $680

DATA_E26B9D:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$05,$06,$00,$25,$00,$02,$35,$00
	db $04,$14,$10,$06,$24,$10,$08,$34,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$01,$30,$24,$34,$30,$26,$34,$40,$28,$36
	db $50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick5.bin"	; GFXSize = $680

DATA_E2724E:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$0E,$00,$02,$1E,$00
	db $04,$04,$10,$06,$14,$10,$08,$24,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$0A,$30,$22,$1A,$30,$24,$09,$40,$26,$06,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_FarKick9.bin"	; GFXSize = $600

DATA_E2787C:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$03,$03,$00,$06,$00,$02,$16,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$0D,$20,$0C,$1D,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault16.bin"	; GFXSize = $380

DATA_E27C1B:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$04,$00,$0E,$00,$02,$1E,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$31,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$30,$20,$24,$06,$30,$26,$16,$30,$28,$26
	db $30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CurlUp3.bin"	; GFXSize = $680

DATA_E282CC:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$04,$04,$00,$0C,$00,$02,$1C,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$00,$30,$24,$10,$30,$26,$20,$30,$28,$30
	db $30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CurlUp4.bin"	; GFXSize = $680

DATA_E2897D:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$04,$00,$08,$00,$02,$18,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20,$22,$06,$30,$24,$16,$30,$26,$26,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Loader_CurlUp5.bin"	; GFXSize = $600

DATA_E28FAB:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$00,$00,$02,$03,$10
	db $04,$13,$10,$06,$02,$20,$08,$12,$20,$0A,$22,$20,$0C,$09,$30,$0E
	db $19,$30,$20,$08,$40,$22,$1B,$40,$24,$07,$50,$26,$21,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_ClosePunch3.bin"	; GFXSize = $600

DATA_E295D9:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$05,$05,$00,$00,$00,$02,$10,$00
	db $04,$2C,$00,$06,$11,$10,$08,$21,$10,$0A,$31,$10,$0C,$24,$20,$0E
	db $34,$20,$20,$23,$30,$22,$36,$30,$24,$46,$30,$26,$22,$40,$28,$40
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_ClosePunch4.bin"	; GFXSize = $680

DATA_E29C8A:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$05,$00,$09,$00,$02,$19,$00
	db $04,$0A,$10,$06,$1A,$10,$08,$01,$20,$0A,$11,$20,$0C,$00,$30,$0E
	db $14,$30,$20,$24,$30,$22,$08,$40,$24,$1C,$40,$26,$2C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_CloseKick3.bin"	; GFXSize = $600

DATA_E2A2B8:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$05,$00,$08,$00,$02,$18,$00
	db $04,$04,$10,$06,$14,$10,$08,$24,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$05,$30,$22,$22,$30,$24,$08,$40,$26,$2B,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckPunch2.bin"	; GFXSize = $600

DATA_E2A8E6:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$05,$06,$00,$30,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$26,$20,$0E
	db $36,$20,$20,$25,$30,$22,$35,$30,$24,$2D,$40,$26,$2F,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick4.bin"	; GFXSize = $600

DATA_E2AF14:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$06,$06,$00,$14,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$50,$10,$0E
	db $11,$20,$20,$21,$20,$22,$16,$30,$24,$14,$40,$26,$12,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick6.bin"	; GFXSize = $600

DATA_E2B542:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$05,$07,$00,$3A,$00,$02,$31,$10
	db $04,$41,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $40,$20,$20,$2F,$30,$22,$2F,$40,$24,$34,$50,$26,$36,$60
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick9.bin"	; GFXSize = $600

DATA_E2BB70:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$0E,$00,$02,$1E,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$04,$20,$0C,$14,$20,$0E
	db $04,$30,$20,$14,$30,$22,$0D,$40,$24,$1D,$40,$26,$1C,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack2.bin"	; GFXSize = $600

DATA_E2C19E:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$04,$06,$00,$27,$00,$02,$1A,$10
	db $04,$2A,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $06,$30,$20,$16,$30,$22,$28,$30,$24,$09,$40,$26,$11,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_JumpKick3.bin"	; GFXSize = $600

DATA_E2C7CC:
	db $0D,$00,$31,$00,$01,$00,$0A,$00,$05,$05,$00,$26,$00,$02,$11,$10
	db $04,$21,$10,$06,$31,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $30,$20,$20,$1A,$30,$22,$2A,$30,$24,$3A,$30,$26,$26,$40,$28,$3A
	db $40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarPunch2.bin"	; GFXSize = $680

DATA_E2CE7D:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$14,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $00,$30,$20,$10,$30,$22,$09,$40,$24,$19,$40,$26,$17,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump3.bin"	; GFXSize = $600

DATA_E2D4AB:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$03,$06,$00,$16,$00,$02,$11,$10
	db $04,$21,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$09,$30,$0E
	db $19,$30,$20,$09,$40,$22,$19,$40,$24,$08,$50,$26,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LowBlowHurt1.bin"	; GFXSize = $600

DATA_E2DAD9:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$07,$02,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting36.bin"	; GFXSize = $600

DATA_E2E107:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$07,$02,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting37.bin"	; GFXSize = $600

DATA_E2E735:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$07,$02,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting38.bin"	; GFXSize = $600

DATA_E2ED63:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$07,$02,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$49,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting39.bin"	; GFXSize = $600

DATA_E2F391:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$07,$02,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting40.bin"	; GFXSize = $600

DATA_E2F9BF:
	db $0C,$00,$2E,$00,$01,$00,$0A,$00,$07,$02,$00,$0A,$00,$02,$1A,$00
	db $04,$2A,$00,$06,$3A,$00,$08,$4A,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10,$26,$60,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting41.bin"	; GFXSize = $600

	%InsertGarbageData($E2FFED, incbin, UNK_E2FFED.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE3Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E30000:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$06,$00,$10,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$0A,$30,$0C,$1A,$30,$0E
	db $08,$40,$20,$19,$40,$22,$07,$50,$24,$1D,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_CloseKick1.bin"	; GFXSize = $580

DATA_E305AB:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$0D,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$05,$30,$0C,$15,$30,$0E
	db $01,$40,$20,$11,$40,$22,$09,$50,$24,$19,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_CloseKick2.bin"	; GFXSize = $580

DATA_E30B56:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$04,$04,$00,$0A,$00,$02,$1A,$00
	db $04,$08,$10,$06,$18,$10,$08,$28,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Ducking5.bin"	; GFXSize = $580

DATA_E31101:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$04,$04,$00,$0A,$00,$02,$1A,$00
	db $04,$08,$10,$06,$18,$10,$08,$28,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Ducking6.bin"	; GFXSize = $580

DATA_E316AC:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$04,$00,$0C,$00,$02,$1C,$00
	db $04,$06,$10,$06,$16,$10,$08,$26,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckBlock1.bin"	; GFXSize = $580

DATA_E31C57:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$04,$04,$00,$0C,$00,$02,$1C,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$2B,$10,$0A,$12,$20,$0C,$22,$20,$0E
	db $32,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckPunch1.bin"	; GFXSize = $580

DATA_E32202:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$04,$00,$10,$00,$02,$20,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$2B,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckKick2.bin"	; GFXSize = $580

DATA_E327AD:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$12,$00,$02,$02,$10
	db $04,$12,$10,$06,$22,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $02,$30,$20,$12,$30,$22,$02,$40,$24,$12,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckKick3.bin"	; GFXSize = $580

DATA_E32D58:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$04,$00,$07,$00,$02,$17,$00
	db $04,$05,$10,$06,$15,$10,$08,$25,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckHurt1.bin"	; GFXSize = $580

DATA_E33303:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$04,$00,$0B,$00,$02,$1B,$00
	db $04,$04,$10,$06,$14,$10,$08,$24,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$00,$30,$22,$10,$30,$24,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckHurt2.bin"	; GFXSize = $580

DATA_E338AE:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$05,$05,$00,$25,$00,$02,$20,$10
	db $04,$30,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$30,$20,$0E
	db $40,$20,$20,$19,$30,$22,$29,$30,$24,$15,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt7.bin"	; GFXSize = $580

DATA_E33E59:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$04,$05,$00,$18,$00,$02,$11,$10
	db $04,$21,$10,$06,$31,$10,$08,$0C,$20,$0A,$1C,$20,$0C,$2D,$20,$0E
	db $00,$30,$20,$10,$30,$22,$22,$30,$24,$09,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Headbutt8.bin"	; GFXSize = $580

DATA_E34404:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$0A,$00,$02,$01,$10
	db $04,$11,$10,$06,$04,$20,$08,$14,$20,$0A,$08,$30,$0C,$18,$30,$0E
	db $00,$40,$20,$12,$40,$22,$02,$50,$24,$12,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_FarKick2.bin"	; GFXSize = $580

DATA_E349AF:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$30,$00,$08,$40,$00,$0A,$50,$00,$0C,$08,$10,$0E
	db $18,$10,$20,$28,$10,$22,$38,$10,$24,$48,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead10.bin"	; GFXSize = $580

DATA_E34F5A:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$30,$00,$08,$40,$00,$0A,$50,$00,$0C,$09,$10,$0E
	db $19,$10,$20,$29,$10,$22,$39,$10,$24,$49,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_Dead11.bin"	; GFXSize = $580

DATA_E35505:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$04,$00,$03,$00,$02,$13,$00
	db $04,$23,$00,$06,$04,$10,$08,$14,$10,$0A,$24,$10,$0C,$00,$20,$0E
	db $10,$20,$20,$20,$20,$22,$0E,$30,$24,$1E,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault4.bin"	; GFXSize = $580

DATA_E35AB0:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$13,$00,$02,$03,$10
	db $04,$13,$10,$06,$04,$20,$08,$14,$20,$0A,$02,$30,$0C,$12,$30,$0E
	db $02,$40,$20,$12,$40,$22,$00,$50,$24,$15,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandIdle1.bin"	; GFXSize = $580

DATA_E3605B:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$05,$00,$02,$15,$00
	db $04,$05,$10,$06,$15,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $01,$30,$20,$11,$30,$22,$00,$40,$24,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandIdle4.bin"	; GFXSize = $580

DATA_E36606:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$07,$00,$02,$17,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$04,$20,$0C,$14,$20,$0E
	db $03,$30,$20,$15,$30,$22,$01,$40,$24,$1A,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_ClosePunch2.bin"	; GFXSize = $580

DATA_E36BB1:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$06,$00,$14,$00,$02,$04,$10
	db $04,$14,$10,$06,$04,$20,$08,$14,$20,$0A,$00,$30,$0C,$10,$30,$0E
	db $02,$40,$20,$18,$40,$22,$06,$50,$24,$1E,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckPunch1.bin"	; GFXSize = $580

DATA_E3715C:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$0D,$00,$02,$00,$10
	db $04,$10,$10,$06,$04,$20,$08,$14,$20,$0A,$02,$30,$0C,$12,$30,$0E
	db $02,$40,$20,$12,$40,$22,$00,$50,$24,$10,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick1.bin"	; GFXSize = $580

DATA_E37707:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$10,$00,$02,$00,$10
	db $04,$10,$10,$06,$06,$20,$08,$16,$20,$0A,$02,$30,$0C,$12,$30,$0E
	db $06,$40,$20,$16,$40,$22,$06,$50,$24,$18,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick2.bin"	; GFXSize = $580

DATA_E37CB2:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$06,$00,$1E,$00,$02,$05,$10
	db $04,$15,$10,$06,$25,$10,$08,$00,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $0E,$30,$20,$1E,$30,$22,$17,$40,$24,$18,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick3.bin"	; GFXSize = $580

DATA_E3825D:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$06,$00,$2E,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$30,$10,$0A,$40,$10,$0C,$2B,$20,$0E
	db $4E,$20,$20,$2D,$30,$22,$2F,$40,$24,$30,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick5.bin"	; GFXSize = $580

DATA_E38808:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$02,$00,$02,$12,$00
	db $04,$00,$10,$06,$10,$10,$08,$00,$20,$0A,$10,$20,$0C,$02,$30,$0E
	db $12,$30,$20,$02,$40,$22,$12,$40,$24,$00,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick7.bin"	; GFXSize = $580

DATA_E38DB3:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$0F,$00,$02,$00,$10
	db $04,$10,$10,$06,$01,$20,$08,$11,$20,$0A,$01,$30,$0C,$11,$30,$0E
	db $01,$40,$20,$11,$40,$22,$02,$50,$24,$12,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk6.bin"	; GFXSize = $580

DATA_E3935E:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$10,$00,$02,$01,$10
	db $04,$11,$10,$06,$02,$20,$08,$12,$20,$0A,$01,$30,$0C,$11,$30,$0E
	db $00,$40,$20,$10,$40,$22,$01,$50,$24,$11,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk7.bin"	; GFXSize = $580

DATA_E39909:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$06,$00,$13,$00,$02,$01,$10
	db $04,$11,$10,$06,$02,$20,$08,$12,$20,$0A,$22,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$07,$40,$22,$17,$40,$24,$16,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump2.bin"	; GFXSize = $580

DATA_E39EB4:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$02,$06,$00,$0C,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$02,$30,$0C,$12,$30,$0E
	db $02,$40,$20,$12,$40,$22,$06,$50,$24,$18,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_HighBlowHurt1.bin"	; GFXSize = $580

DATA_E3A45F:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$01,$00,$02,$11,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $00,$30,$20,$10,$30,$22,$05,$40,$24,$15,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_HighBlowHurt2.bin"	; GFXSize = $580

DATA_E3AA0A:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$04,$00,$02,$14,$00
	db $04,$04,$10,$06,$14,$10,$08,$24,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $00,$30,$20,$10,$30,$22,$05,$40,$24,$15,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_HighBlowHurt3.bin"	; GFXSize = $580

DATA_E3AFB5:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$14,$00,$02,$24,$00
	db $04,$13,$10,$06,$23,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $0E,$30,$20,$1E,$30,$22,$0F,$40,$24,$23,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LowBlowHurt2.bin"	; GFXSize = $580

DATA_E3B560:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$0F,$00,$02,$1F,$00
	db $04,$10,$10,$06,$20,$10,$08,$06,$20,$0A,$16,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$20,$30,$22,$0E,$40,$24,$1E,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LowBlowHurt3.bin"	; GFXSize = $580

DATA_E3BB0B:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$0C,$00,$02,$0D,$10
	db $04,$1D,$10,$06,$08,$20,$08,$18,$20,$0A,$01,$30,$0C,$11,$30,$0E
	db $21,$30,$20,$00,$40,$22,$10,$40,$24,$20,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LowBlowHurt4.bin"	; GFXSize = $580

DATA_E3C0B6:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$05,$00,$02,$15,$00
	db $04,$05,$10,$06,$15,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $01,$30,$20,$12,$30,$22,$00,$40,$24,$15,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Ducking1.bin"	; GFXSize = $580

DATA_E3C661:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting26.bin"	; GFXSize = $580

DATA_E3CC0C:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting27.bin"	; GFXSize = $580

DATA_E3D1B7:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting28.bin"	; GFXSize = $580

DATA_E3D762:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$49,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting29.bin"	; GFXSize = $580

DATA_E3DD0D:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$49,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting30.bin"	; GFXSize = $580

DATA_E3E2B8:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$09,$00,$02,$19,$00
	db $04,$29,$00,$06,$39,$00,$08,$49,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting31.bin"	; GFXSize = $580

DATA_E3E863:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting32.bin"	; GFXSize = $580

DATA_E3EE0E:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting33.bin"	; GFXSize = $580

DATA_E3F3B9:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting34.bin"	; GFXSize = $580

DATA_E3F964:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$06,$02,$00,$08,$00,$02,$18,$00
	db $04,$28,$00,$06,$38,$00,$08,$48,$00,$0A,$00,$10,$0C,$10,$10,$0E
	db $20,$10,$20,$30,$10,$22,$40,$10,$24,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting35.bin"	; GFXSize = $580

DATA_E3FF0F:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame1.bin"

	%InsertGarbageData($E3FFBA, incbin, UNK_E3FFBA.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE4Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E40000:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$04,$00,$0D,$00,$02,$04,$10
	db $04,$14,$10,$06,$24,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $00,$30,$20,$10,$30,$22,$20,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_DuckHurt3.bin"	; GFXSize = $500

DATA_E40528:
	db $01,$00,$0D,$00,$01,$00,$0A,$00,$01,$01,$00,$00,$00
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_WeirdSquare1.bin"	; GFXSize = $80

DATA_E405B5:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$04,$00,$15,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$00,$20,$0A,$10,$20,$0C,$20,$20,$0E
	db $02,$30,$20,$14,$30,$22,$24,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault5.bin"	; GFXSize = $500

DATA_E40ADD:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$0C,$00,$02,$1C,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault7.bin"	; GFXSize = $400

DATA_E40EFF:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$06,$00,$02,$16,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault8.bin"	; GFXSize = $400

DATA_E41321:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$04,$00,$02,$14,$00
	db $04,$04,$10,$06,$14,$10,$08,$02,$20,$0A,$12,$20,$0C,$02,$30,$0E
	db $12,$30,$20,$00,$40,$22,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandIdle2.bin"	; GFXSize = $500

DATA_E41849:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$04,$00,$02,$14,$00
	db $04,$04,$10,$06,$14,$10,$08,$02,$20,$0A,$12,$20,$0C,$01,$30,$0E
	db $11,$30,$20,$00,$40,$22,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandIdle3.bin"	; GFXSize = $500

DATA_E41D71:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$04,$00,$02,$14,$00
	db $04,$05,$10,$06,$15,$10,$08,$02,$20,$0A,$12,$20,$0C,$02,$30,$0E
	db $12,$30,$20,$00,$40,$22,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandIdle5.bin"	; GFXSize = $500

DATA_E42299:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$05,$00,$02,$15,$00
	db $04,$03,$10,$06,$13,$10,$08,$03,$20,$0A,$13,$20,$0C,$03,$30,$0E
	db $13,$30,$20,$00,$40,$22,$17,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_ClosePunch1.bin"	; GFXSize = $500

DATA_E427C1:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$09,$00,$02,$19,$00
	db $04,$06,$10,$06,$16,$10,$08,$00,$20,$0A,$10,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$02,$40,$22,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_CloseKick1.bin"	; GFXSize = $500

DATA_E42CE9:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$0C,$00,$02,$1C,$00
	db $04,$0A,$10,$06,$1A,$10,$08,$00,$20,$0A,$10,$20,$0C,$00,$30,$0E
	db $13,$30,$20,$08,$40,$22,$19,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_CloseKick2.bin"	; GFXSize = $500

DATA_E43211:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$05,$06,$00,$27,$00,$02,$13,$10
	db $04,$23,$10,$06,$33,$10,$08,$00,$20,$0A,$10,$20,$0C,$24,$20,$0E
	db $23,$30,$20,$26,$40,$22,$29,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick10.bin"	; GFXSize = $500

DATA_E43739:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$06,$00,$1C,$00,$02,$16,$10
	db $04,$26,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$12,$30,$0E
	db $22,$30,$20,$12,$40,$22,$16,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarKick11.bin"	; GFXSize = $500

DATA_E43C61:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$04,$03,$00,$0C,$00,$02,$1C,$00
	db $04,$2C,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$08,$20,$0E
	db $18,$20,$20,$2C,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick4.bin"	; GFXSize = $480

DATA_E44106:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$01,$00,$02,$11,$00
	db $04,$02,$10,$06,$12,$10,$08,$00,$20,$0A,$10,$20,$0C,$02,$30,$0E
	db $13,$30,$20,$02,$40,$22,$18,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_LungeAttack1.bin"	; GFXSize = $500

DATA_E4462E:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$03,$05,$00,$17,$00,$02,$11,$10
	db $04,$21,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0B,$30,$0E
	db $1B,$30,$20,$16,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_JumpKick2.bin"	; GFXSize = $480

DATA_E44AD3:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$03,$05,$00,$0A,$00,$02,$00,$10
	db $04,$10,$10,$06,$02,$20,$08,$12,$20,$0A,$07,$30,$0C,$17,$30,$0E
	db $0B,$40,$20,$1B,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_FarPunch1.bin"	; GFXSize = $480

DATA_E44F78:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$00,$00,$02,$10,$00
	db $04,$00,$10,$06,$10,$10,$08,$01,$20,$0A,$11,$20,$0C,$01,$30,$0E
	db $11,$30,$20,$01,$40,$22,$11,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk1.bin"	; GFXSize = $500

DATA_E454A0:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$02,$05,$00,$00,$00,$02,$10,$00
	db $04,$00,$10,$06,$10,$10,$08,$03,$20,$0A,$13,$20,$0C,$02,$30,$0E
	db $12,$30,$20,$03,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk2.bin"	; GFXSize = $480

DATA_E45945:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$02,$06,$00,$0E,$00,$02,$00,$10
	db $04,$10,$10,$06,$01,$20,$08,$11,$20,$0A,$03,$30,$0C,$13,$30,$0E
	db $03,$40,$20,$04,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk3.bin"	; GFXSize = $480

DATA_E45DEA:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$06,$00,$0E,$00,$02,$00,$10
	db $04,$10,$10,$06,$00,$20,$08,$10,$20,$0A,$02,$30,$0C,$12,$30,$0E
	db $01,$40,$20,$11,$40,$22,$03,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk5.bin"	; GFXSize = $500

DATA_E46312:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$06,$00,$11,$00,$02,$03,$10
	db $04,$13,$10,$06,$03,$20,$08,$13,$20,$0A,$00,$30,$0C,$10,$30,$0E
	db $06,$40,$20,$16,$40,$22,$16,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump1.bin"	; GFXSize = $500

DATA_E4683A:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$11,$00,$02,$21,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $0B,$30,$20,$1B,$30,$22,$18,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump4.bin"	; GFXSize = $500

DATA_E46D62:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$03,$05,$00,$12,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$04,$20,$0A,$14,$20,$0C,$0B,$30,$0E
	db $1B,$30,$20,$10,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump5.bin"	; GFXSize = $480

DATA_E47207:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$15,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$06,$20,$0A,$16,$20,$0C,$26,$20,$0E
	db $0B,$30,$20,$1B,$30,$22,$13,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump6.bin"	; GFXSize = $500

DATA_E4772F:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$15,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$05,$20,$0A,$15,$20,$0C,$25,$20,$0E
	db $0B,$30,$20,$1B,$30,$22,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Jump7.bin"	; GFXSize = $500

DATA_E47C57:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$00,$00,$02,$10,$00
	db $04,$00,$10,$06,$10,$10,$08,$04,$20,$0A,$14,$20,$0C,$03,$30,$0E
	db $13,$30,$20,$02,$40,$22,$15,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_PreMelt1.bin"	; GFXSize = $500

DATA_E4817F:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$06,$00,$15,$00,$02,$11,$10
	db $04,$00,$20,$06,$10,$20,$08,$0B,$30,$0A,$1B,$30,$0C,$0A,$40,$0E
	db $1A,$40,$20,$08,$50,$22,$18,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_PreMelt2.bin"	; GFXSize = $500

DATA_E486A7:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$04,$00,$02,$14,$00
	db $04,$02,$10,$06,$12,$10,$08,$00,$20,$0A,$10,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$00,$40,$22,$13,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandBlock1.bin"	; GFXSize = $500

DATA_E48BCF:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$03,$00,$02,$13,$00
	db $04,$02,$10,$06,$12,$10,$08,$01,$20,$0A,$11,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$03,$40,$22,$13,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandBlock2.bin"	; GFXSize = $500

DATA_E490F7:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$02,$05,$00,$02,$00,$02,$12,$00
	db $04,$01,$10,$06,$11,$10,$08,$01,$20,$0A,$11,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$05,$40,$22,$15,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_StandBlock3.bin"	; GFXSize = $500

DATA_E4961F:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$05,$00,$10,$00,$02,$05,$10
	db $04,$15,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$00,$30,$0E
	db $10,$30,$20,$00,$40,$22,$14,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Ducking2.bin"	; GFXSize = $500

DATA_E49B47:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$03,$04,$00,$06,$00,$02,$16,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$02,$30,$22,$13,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Ducking3.bin"	; GFXSize = $500

DATA_E4A06F:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$02,$00,$03,$00,$02,$13,$00
	db $04,$23,$00,$06,$33,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting20.bin"	; GFXSize = $480

DATA_E4A514:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$02,$00,$04,$00,$02,$14,$00
	db $04,$24,$00,$06,$34,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting21.bin"	; GFXSize = $480

DATA_E4A9B9:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$02,$00,$05,$00,$02,$15,$00
	db $04,$25,$00,$06,$35,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting22.bin"	; GFXSize = $480

DATA_E4AE5E:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$02,$00,$06,$00,$02,$16,$00
	db $04,$26,$00,$06,$36,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting23.bin"	; GFXSize = $480

DATA_E4B303:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$02,$00,$06,$00,$02,$16,$00
	db $04,$26,$00,$06,$36,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting24.bin"	; GFXSize = $480

DATA_E4B7A8:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$02,$00,$07,$00,$02,$17,$00
	db $04,$27,$00,$06,$37,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting25.bin"	; GFXSize = $480

DATA_E4BC4D:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$03,$05,$00,$0A,$00,$02,$1A,$00
	db $04,$0B,$10,$06,$1B,$10,$08,$08,$20,$0A,$18,$20,$0C,$28,$20,$0E
	db $06,$30,$20,$16,$30,$22,$00,$40,$24,$1C,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead1.bin"	; GFXSize = $580

DATA_E4C1F8:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$04,$05,$00,$26,$00,$02,$16,$10
	db $04,$26,$10,$06,$13,$20,$08,$23,$20,$0A,$33,$20,$0C,$0A,$30,$0E
	db $1A,$30,$20,$2C,$30,$22,$00,$40,$24,$22,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead2.bin"	; GFXSize = $580

DATA_E4C7A3:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$04,$04,$00,$20,$00,$02,$33,$00
	db $04,$20,$10,$06,$30,$10,$08,$11,$20,$0A,$21,$20,$0C,$31,$20,$0E
	db $00,$30,$20,$10,$30,$22,$25,$30,$24,$38,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead3.bin"	; GFXSize = $580

DATA_E4CD4E:
	db $0B,$00,$2B,$00,$01,$00,$0A,$00,$05,$03,$00,$22,$00,$02,$32,$00
	db $04,$42,$00,$06,$0D,$10,$08,$1D,$10,$0A,$2D,$10,$0C,$3D,$10,$0E
	db $00,$20,$20,$10,$20,$22,$27,$20,$24,$3B,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead4.bin"	; GFXSize = $580

DATA_E4D2F9:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$05,$03,$00,$20,$00,$02,$30,$00
	db $04,$40,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $40,$10,$20,$06,$20,$22,$24,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead5.bin"	; GFXSize = $500

DATA_E4D821:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$05,$03,$00,$1C,$00,$02,$2C,$00
	db $04,$3C,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10,$0E
	db $05,$20,$20,$1C,$20,$22,$38,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead6.bin"	; GFXSize = $500

DATA_E4DD49:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$05,$03,$00,$4B,$00,$02,$15,$10
	db $04,$25,$10,$06,$35,$10,$08,$45,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20,$20,$30,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead7.bin"	; GFXSize = $480

DATA_E4E1EE:
	db $09,$00,$25,$00,$01,$00,$0A,$00,$06,$02,$00,$1A,$00,$02,$2A,$00
	db $04,$3A,$00,$06,$4A,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead8.bin"	; GFXSize = $480

DATA_E4E693:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$06,$02,$00,$00,$00,$02,$11,$00
	db $04,$21,$00,$06,$31,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead10.bin"	; GFXSize = $500

DATA_E4EBBB:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$06,$02,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$30,$00,$08,$01,$10,$0A,$11,$10,$0C,$21,$10,$0E
	db $31,$10,$20,$41,$10,$22,$51,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead11.bin"	; GFXSize = $500

DATA_E4F0E3:
	db $0A,$00,$28,$00,$01,$00,$0A,$00,$06,$02,$00,$12,$00,$02,$22,$00
	db $04,$3D,$00,$06,$4F,$00,$08,$00,$10,$0A,$10,$10,$0C,$20,$10,$0E
	db $30,$10,$20,$40,$10,$22,$50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead12.bin"	; GFXSize = $500

DATA_E4F60B:
	dw $0480
	incbin "Graphics/GFX_Layer2_HealthBarTiles.bin"

DATA_E4FA8D:
	dw $0500
	incbin "Graphics/GFX_Layer2_TimerNumbers.bin"

	%InsertGarbageData($E4FF8F, incbin, UNK_E4FF8F.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE5Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E50000:
	db $01,$00,$0D,$00,$01,$00,$0A,$00,$01,$01,$00,$00,$00
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_WeirdSquare2.bin"	; GFXSize = $80

DATA_E5008D:
	db $01,$00,$0D,$00,$01,$00,$0A,$00,$01,$01,$00,$00,$00
	incbin "Graphics/DynamicSprites/GFX_Sprite_Cyborg_WeirdSquare3.bin"	; GFXSize = $80

DATA_E5011A:
	dw $0124,$0C24,$140A,$1F0A,$230F,$0124,$0C24,$140A
	dw $1F0A,$230F,$0124,$0C24,$140A,$1F0A,$230F,$0124
	dw $0C24,$140A,$1F0A,$230F,$0601,$0606,$0C0C,$1F0C
	dw $1F1F,$1414,$0606,$0C0C,$2424,$0B0B,$1401,$0601
	dw $010C,$0614,$0C0C,$1414,$0606,$0C0C,$0C0C,$0A0B
	dw $0601,$0606,$0C0C,$0B0C,$060B,$0101,$0101,$0A0A
	dw $0A01,$0F23,$0101,$0101,$0101,$1F0C,$0F1F,$0101
	dw $0101,$0101,$0A0A,$2323,$01FF,$0C24,$140A,$1F0A
	dw $230F,$0B0B,$0A0A,$0A0A,$0B0B,$0B0B,$0B0B,$0A0A
	dw $0A0A,$0B0B,$0B0B,$2401,$0614,$010C,$0A0B,$230F
	dw $0B0B,$0A0A,$0A0A,$0B0B,$0B0B,$0B0B,$0A0A,$0A0A
	dw $0B0B,$0B0B,$1401,$0601,$010C,$1F0A,$2323,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0A0A,$2323
	dw $1F14,$1F1F,$1F1F,$1F1F,$0A0A,$1F23,$0101,$0C06
	dw $0A01,$1F1F,$1F1F,$0606,$010C,$1F0A,$0C0B,$2324
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1401,$0601,$0C0C,$1F0C,$1F1F,$1414,$0606
	dw $0A0C,$0A0A,$0F23,$1401,$0601,$FF0C,$0A0A,$1F14
	dw $1414,$0606,$FF0C,$2323,$1F14,$0B0B,$0A0A,$0A0A
	dw $0B0B,$0B0B,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401
	dw $0601,$0A0C,$0A0A,$0F23,$01FF,$0C24,$140A,$1F0A
	dw $230F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1414,$0606
	dw $0C0C,$1F0C,$2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$14FF,$0C14,$0C06
	dw $060C,$0A0C,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0601,$0C06,$0C0C,$1F0C
	dw $1F1F,$1414,$0C06,$0C0C,$0F0F,$0B0B,$1401,$0C01
	dw $010C,$0614,$0C0C,$1414,$0C06,$0C0C,$0C0C,$0A0B
	dw $FFFF,$FFFF,$FFFF,$0CFF,$060C,$0606,$0C06,$0C0C
	dw $1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C
	dw $1F1F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06
	dw $0C0C,$1F0C,$1F1F,$FFFF,$FFFF,$14FF,$0F0F,$230A
	dw $FFFF,$FFFF,$FFFF,$0CFF,$0F0F,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401,$010A,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$0606,$0C06,$0C0C,$1F0C,$231F,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C,$231F
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C
	dw $1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606
	dw $0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E5043A:
	dw $0101,$0A06,$1401,$1F1F,$2323,$0101,$0A06,$1401
	dw $1F1F,$2323,$0101,$0A06,$1401,$1F1F,$2323,$0101
	dw $0A06,$1401,$1F1F,$2323,$0101,$0106,$0A01,$1F1F
	dw $1F1F,$1414,$0101,$0A01,$0101,$0A0A,$1401,$0101
	dw $0101,$0114,$0A0A,$1414,$0101,$0A01,$0A1F,$0A0A
	dw $0101,$0101,$0A01,$0A1F,$010A,$0101,$0101,$0A14
	dw $0A01,$2323,$0101,$0101,$0114,$1F1F,$231F,$0101
	dw $0101,$0114,$0A1F,$2323,$0101,$0A01,$1414,$1F1F
	dw $2323,$0A0A,$0A0A,$0A14,$0A1F,$0A0A,$0A0A,$0A0A
	dw $0A14,$0A1F,$0A0A,$0101,$0114,$0114,$0A1F,$2323
	dw $0A0A,$0A0A,$0A14,$0A1F,$0A0A,$0A0A,$0A0A,$0A14
	dw $0A1F,$0A0A,$1401,$0101,$0114,$1F1F,$2323,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0A0A,$2323
	dw $1F14,$1F1F,$1F1F,$1F1F,$0A1F,$1F23,$0101,$0A01
	dw $0A01,$1F1F,$1F1F,$0101,$010A,$1F0A,$0A1F,$2301
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1401,$0101,$0A01,$1F1F,$1F1F,$1414,$0101
	dw $0A01,$0A1F,$2323,$1401,$0101,$FF01,$0A1F,$1F14
	dw $1414,$0101,$FF01,$2323,$1F14,$0A0A,$0A0A,$0A01
	dw $0A1F,$0A0A,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401
	dw $0101,$0A01,$0A1F,$2323,$01FF,$0A01,$1401,$1F1F
	dw $2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1414,$0101
	dw $0A01,$1F1F,$2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$14FF,$0C14,$0C06
	dw $060C,$0C0C,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0601,$0C06,$0C0C,$1F0C
	dw $1F1F,$1414,$0C06,$0C0C,$0606,$0C0C,$1401,$0C01
	dw $010C,$0614,$0C0C,$1414,$0C06,$0C0C,$0C0C,$0C0C
	dw $FFFF,$FFFF,$FFFF,$0CFF,$060C,$0606,$0C06,$0C0C
	dw $1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C
	dw $1F1F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06
	dw $0C0C,$1F0C,$1F1F,$FFFF,$FFFF,$14FF,$0606,$230C
	dw $FFFF,$FFFF,$FFFF,$0CFF,$0606,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401,$010C,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$0606,$0C06,$0C0C,$1F0C,$231F,$1414,$0101
	dw $0A01,$0A1F,$2323,$0606,$0C06,$0C0C,$1F0C,$231F
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C
	dw $1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606
	dw $0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E5075A:
	dw $0101,$0C14,$0B0B,$1F0A,$2323,$0101,$0C14,$0B0B
	dw $1F0A,$2323,$0101,$0C14,$0B0B,$1F0A,$2323,$0101
	dw $0C14,$0B0B,$1F0A,$2323,$0601,$0606,$0C0C,$1F0C
	dw $1F1F,$1414,$0606,$0C0C,$0101,$0B0B,$1401,$0601
	dw $010C,$0614,$0C0C,$1414,$0606,$0C0C,$0C0C,$0A0B
	dw $0601,$0606,$0C0C,$0B0C,$060B,$0101,$0101,$0A0B
	dw $0A01,$2323,$0101,$0101,$0101,$1F0C,$231F,$0101
	dw $0101,$0101,$0A0A,$2323,$0C06,$0C0C,$140C,$1F23
	dw $2323,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B
	dw $0B0B,$0B0B,$0B0B,$0101,$0614,$010C,$0A0B,$2323
	dw $0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B
	dw $0B0B,$0B0B,$1401,$0601,$010C,$1F0A,$2323,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0A0A,$2323
	dw $1F14,$1F1F,$1F1F,$1F1F,$0A0A,$1F23,$0101,$0C06
	dw $0A01,$1F1F,$1F1F,$0606,$010C,$1F0A,$0C0B,$2301
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1401,$0601,$0C0C,$1F0C,$1F1F,$1414,$0606
	dw $0B0C,$0A0A,$2323,$1401,$0601,$FF0C,$0A0A,$1F14
	dw $1414,$0606,$FF0C,$2323,$1F14,$0B0B,$0B0B,$0B0B
	dw $0B0B,$0B0B,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401
	dw $0601,$0B0C,$0A0A,$2323,$01FF,$0C01,$140B,$1F0A
	dw $2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1414,$0606
	dw $0C0C,$1F0C,$2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$14FF,$0C14,$0C06
	dw $060C,$0A0C,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0601,$0C06,$0C0C,$1F0C
	dw $1F1F,$1414,$0C06,$0C0C,$0606,$0B0B,$1401,$0C01
	dw $010C,$0614,$0C0C,$1414,$0C06,$0C0C,$0C0C,$0A0B
	dw $FFFF,$FFFF,$FFFF,$0CFF,$060C,$0606,$0C06,$0C0C
	dw $1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C
	dw $1F1F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06
	dw $0C0C,$1F0C,$1F1F,$FFFF,$FFFF,$14FF,$0606,$230A
	dw $FFFF,$FFFF,$FFFF,$0CFF,$0606,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401,$010A,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$0606,$0C06,$0C0C,$1F0C,$231F,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C,$231F
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C
	dw $1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606
	dw $0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E50A7A:
	dw $0101,$060F,$0124,$2401,$1301,$0101,$060F,$0124
	dw $2401,$1301,$0101,$060F,$0124,$2401,$1301,$0101
	dw $060F,$0124,$2401,$1301,$0601,$0606,$0606,$2406
	dw $2424,$1E1E,$0606,$0606,$0F0F,$2424,$1E01,$0601
	dw $0106,$061E,$0606,$1E1E,$0606,$0606,$0606,$0124
	dw $0601,$0606,$0606,$2406,$0624,$0101,$0101,$0124
	dw $0101,$1E13,$0101,$0101,$0101,$2406,$1E24,$0101
	dw $0101,$0101,$0101,$1313,$0101,$060F,$1E24,$2401
	dw $131E,$2424,$2424,$2424,$2424,$2424,$2424,$2424
	dw $2424,$2424,$2424,$0F01,$061E,$0106,$0124,$131E
	dw $2424,$2424,$2424,$2424,$2424,$2424,$2424,$2424
	dw $2424,$2424,$1E01,$0601,$0106,$2401,$1313,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0101,$1313
	dw $241E,$2424,$2424,$2424,$0101,$2413,$0101,$0606
	dw $0101,$2424,$2424,$0606,$0106,$2401,$0624,$130F
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1E01,$0601,$0606,$2406,$2424,$1E1E,$0606
	dw $2406,$0101,$1E13,$1E01,$0601,$FF06,$0101,$241E
	dw $1E1E,$0606,$FF06,$1313,$241E,$2424,$2424,$2424
	dw $2424,$2424,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1E01
	dw $0601,$2406,$0101,$1E13,$01FF,$060F,$1E24,$2401
	dw $131E,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1E1E,$0606
	dw $0606,$2406,$1313,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$06FF,$2401,$06FF,$0106,$0601
	dw $0106,$0106,$FFFF,$FFFF,$FFFF,$01FF,$1301,$FFFF
	dw $FFFF,$FFFF,$010F,$1306,$0101,$0101,$0606,$2406
	dw $2424,$0606,$0101,$0606,$0F0F,$2424,$0601,$0101
	dw $0106,$0106,$0606,$0606,$0101,$0606,$0606,$0124
	dw $FFFF,$FFFF,$FFFF,$06FF,$0106,$FFFF,$FFFF,$FFFF
	dw $01FF,$2401,$FFFF,$FFFF,$FFFF,$0101,$0101,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$01FF
	dw $0606,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FF02,$FFFF,$FFFF,$FFFF,$06FF,$0F0F,$1301
	dw $FFFF,$FFFF,$FFFF,$06FF,$0F0F,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0601,$0101,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0613,$FFFF,$FFFF,$FFFF,$01FF,$0613,$FFFF,$FFFF
	dw $FFFF,$FFFF,$2424,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$01FF,$0101,$0606,$2406,$2424,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$01FF,$1306
	dw $FFFF,$FFFF,$FFFF,$FFFF,$24FF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$06FF
	dw $1301,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$01FF,$0101
	dw $0606,$2406,$0601,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E50D9A:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$05,$00,$02,$15,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault10.bin"	; GFXSize = $400

DATA_E511BC:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$04,$00,$02,$14,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$02,$20,$0C,$12,$20,$0E
	db $22,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault11.bin"	; GFXSize = $400

DATA_E515DE:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$0C,$00,$02,$1C,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$01,$20,$0C,$11,$20,$0E
	db $21,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault12.bin"	; GFXSize = $400

DATA_E51A00:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$11,$00,$02,$21,$00
	db $04,$03,$10,$06,$13,$10,$08,$23,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault13.bin"	; GFXSize = $400

DATA_E51E22:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$03,$00,$02,$13,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault14.bin"	; GFXSize = $400

DATA_E52244:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$08,$20,$0E
	db $18,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault15.bin"	; GFXSize = $400

DATA_E52666:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$0C,$00,$02,$1C,$00
	db $04,$01,$10,$06,$11,$10,$08,$21,$10,$0A,$00,$20,$0C,$10,$20,$0E
	db $20,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Military_Somersault17.bin"	; GFXSize = $400

DATA_E52A88:
	dw $0B01,$0A0F,$140B,$1F0A,$2323,$010B,$0C0F,$140B
	dw $1F0A,$2323,$0101,$0C0F,$140B,$1F0A,$2323,$010F
	dw $0C0F,$140B,$1F0A,$2323,$0B01,$0606,$0C0C,$1F0C
	dw $1E1E,$1414,$0101,$0A0A,$2323,$1E1E,$1401,$0601
	dw $010C,$0614,$0C0C,$1414,$0606,$0C0C,$0B0C,$1E0A
	dw $0B01,$0606,$0C0C,$0B0C,$060B,$0101,$0101,$0A0B
	dw $0A01,$1E23,$0B01,$2323,$0A0A,$1F1F,$1E1F,$0101
	dw $0101,$0101,$0A0A,$2323,$01FF,$0C0F,$140B,$1F0A
	dw $231E,$010B,$0C0F,$140B,$1F0A,$231E,$0B01,$0A0F
	dw $140B,$1F0A,$231E,$0F01,$0614,$010C,$0A0B,$231E
	dw $0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B
	dw $0B0B,$0B0B,$1401,$0601,$010C,$1F0A,$2323,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0A0A,$2323
	dw $1F14,$1F1F,$1F1F,$1F1F,$0A0A,$1F23,$0101,$0C06
	dw $0A01,$1F1F,$1F1F,$0B06,$010C,$1F0A,$0C0B,$230F
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1401,$0601,$0C0C,$1F0C,$1E1E,$1414,$0606
	dw $0B0C,$0A0A,$1E23,$1401,$0601,$FF0C,$0A0A,$1F14
	dw $1414,$0606,$FF0C,$2323,$1F14,$010A,$0C0F,$140B
	dw $1F0A,$231E,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401
	dw $0601,$0B0C,$0A0A,$1E23,$01FF,$0C0F,$140B,$1F0A
	dw $231E,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1414,$0606
	dw $0C0C,$1F0C,$2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$14FF,$0C14,$0C06
	dw $060C,$0A0C,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0601,$0C06,$0C0C,$1F0C
	dw $1F1F,$1414,$0C06,$0C0C,$0F0F,$0B0B,$1401,$0C01
	dw $010C,$0614,$0C0C,$1414,$0C06,$0C0C,$0C0C,$0A0B
	dw $FFFF,$FFFF,$FFFF,$0CFF,$060C,$0606,$0C06,$0C0C
	dw $1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C
	dw $1F1F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06
	dw $0C0C,$1F0C,$1F1F,$FFFF,$FFFF,$14FF,$0F0F,$230A
	dw $FFFF,$FFFF,$FFFF,$0CFF,$0F0F,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401,$010A,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$0606,$0C06,$0C0C,$1F0C,$231F,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C,$231F
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C
	dw $1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606
	dw $0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E52DA8:
	dw $0B01,$0A01,$140B,$1F0A,$2323,$010B,$0C01,$140B
	dw $1F0A,$2323,$0101,$0C01,$140B,$1F0A,$2323,$0101
	dw $0C01,$140B,$1F0A,$2323,$0B01,$0606,$0C0C,$1F0C
	dw $1F1F,$1414,$0606,$0C0C,$0101,$0B0B,$1401,$0601
	dw $010C,$0614,$0C0C,$1414,$0606,$0C0C,$0B0C,$1F0A
	dw $0B01,$0606,$0C0C,$0B0C,$060B,$0101,$0101,$0A0B
	dw $0A01,$1F23,$0B01,$2323,$0A0A,$1F1F,$1F1F,$0101
	dw $0101,$0101,$0A0A,$2323,$01FF,$0C01,$140B,$1F0A
	dw $231F,$010B,$0C01,$140B,$1F0A,$231F,$0B01,$0A01
	dw $140B,$1F0A,$231F,$0101,$0614,$010C,$0A0B,$231F
	dw $0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B,$0B0B
	dw $0B0B,$0B0B,$1401,$0601,$010C,$1F0A,$2323,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0A0A,$2323
	dw $1F14,$1F1F,$1F1F,$1F1F,$0A0A,$1F23,$0101,$0C06
	dw $0A01,$1F1F,$1F1F,$0B06,$010C,$1F0A,$0C0B,$2301
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1401,$0601,$0C0C,$1F0C,$1F1F,$1414,$0606
	dw $0B0C,$0A0A,$1F23,$1401,$0601,$FF0C,$0A0A,$1F14
	dw $1414,$0606,$FF0C,$2323,$1F14,$010A,$0C01,$140B
	dw $1F0A,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401
	dw $0601,$0B0C,$0A0A,$1F23,$01FF,$0C01,$140B,$1F0A
	dw $231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1414,$0606
	dw $0C0C,$1F0C,$2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$14FF,$0C14,$0C06
	dw $060C,$0A0C,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0601,$0C06,$0C0C,$1F0C
	dw $1F1F,$1414,$0C06,$0C0C,$0101,$0B0B,$1401,$0C01
	dw $010C,$0614,$0C0C,$1414,$0C06,$0C0C,$0C0C,$0A0B
	dw $FFFF,$FFFF,$FFFF,$0CFF,$060C,$0606,$0C06,$0C0C
	dw $1F0C,$1F1F,$0C0C,$0C0C,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C
	dw $1F1F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06
	dw $0C0C,$1F0C,$1F1F,$FFFF,$FFFF,$14FF,$0101,$230A
	dw $FFFF,$FFFF,$FFFF,$0CFF,$0101,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401,$010A,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$0606,$0C06,$0C0C,$1F0C,$231F,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C,$231F
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C
	dw $1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606
	dw $0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E530C8:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$02,$04,$00,$11,$00,$02,$02,$10
	db $04,$12,$10,$06,$00,$20,$08,$10,$20,$0A,$09,$30,$0C,$19,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick1.bin"	; GFXSize = $380

DATA_E53467:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$04,$00,$19,$00,$02,$09,$10
	db $04,$19,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0D,$30,$0E
	db $1D,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick2.bin"	; GFXSize = $400

DATA_E53889:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$04,$00,$21,$00,$02,$0C,$10
	db $04,$1C,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$0E,$30,$0E
	db $1E,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_DuckKick3.bin"	; GFXSize = $400

DATA_E53CAB:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$04,$00,$10,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$01,$20,$0A,$11,$20,$0C,$06,$30,$0E
	db $16,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_JumpKick1.bin"	; GFXSize = $400

DATA_E540CD:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$02,$05,$00,$00,$00,$02,$10,$00
	db $04,$00,$10,$06,$10,$10,$08,$02,$20,$0A,$12,$20,$0C,$02,$30,$0E
	db $04,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Walk4.bin"	; GFXSize = $400

DATA_E544EF:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$02,$06,$00,$12,$00,$02,$0F,$10
	db $04,$00,$20,$06,$10,$20,$08,$0D,$30,$0A,$0C,$40,$0C,$0A,$50,$0E
	db $1A,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_PreMelt3.bin"	; GFXSize = $400

DATA_E54911:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$02,$06,$00,$0B,$00,$02,$09,$10
	db $04,$03,$20,$06,$13,$20,$08,$00,$30,$0A,$10,$30,$0C,$0B,$40,$0E
	db $09,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_PreMelt4.bin"	; GFXSize = $400

DATA_E54D33:
	db $06,$00,$1C,$00,$01,$00,$0A,$00,$01,$06,$00,$06,$00,$02,$01,$10
	db $04,$00,$20,$06,$00,$30,$08,$06,$40,$0A,$05,$50
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_PreMelt5.bin"	; GFXSize = $300

DATA_E5504F:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$04,$00,$0F,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$20,$20,$0C,$04,$30,$0E
	db $14,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Ducking4.bin"	; GFXSize = $400

DATA_E55471:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$02,$04,$00,$0E,$00,$02,$01,$10
	db $04,$11,$10,$06,$00,$20,$08,$10,$20,$0A,$04,$30,$0C,$14,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Ducking5.bin"	; GFXSize = $380

DATA_E55810:
	db $05,$00,$19,$00,$01,$00,$0A,$00,$01,$05,$00,$01,$00,$02,$00,$10
	db $04,$01,$20,$06,$03,$30,$08,$05,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting1.bin"	; GFXSize = $280

DATA_E55AA9:
	db $05,$00,$19,$00,$01,$00,$0A,$00,$01,$05,$00,$04,$00,$02,$00,$10
	db $04,$02,$20,$06,$03,$30,$08,$06,$40
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting2.bin"	; GFXSize = $280

DATA_E55D42:
	db $04,$00,$16,$00,$01,$00,$0A,$00,$02,$04,$00,$00,$00,$02,$01,$10
	db $04,$02,$20,$06,$06,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting3.bin"	; GFXSize = $200

DATA_E55F58:
	db $05,$00,$19,$00,$01,$00,$0A,$00,$02,$04,$00,$02,$00,$02,$00,$10
	db $04,$02,$20,$06,$12,$20,$08,$06,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting4.bin"	; GFXSize = $280

DATA_E561F1:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$02,$04,$00,$02,$00,$02,$00,$10
	db $04,$10,$10,$06,$02,$20,$08,$12,$20,$0A,$06,$30,$0C,$16,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting5.bin"	; GFXSize = $380

DATA_E56590:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$02,$04,$00,$03,$00,$02,$00,$10
	db $04,$10,$10,$06,$01,$20,$08,$11,$20,$0A,$07,$30,$0C,$17,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting6.bin"	; GFXSize = $380

DATA_E5692F:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$02,$04,$00,$06,$00,$02,$00,$10
	db $04,$10,$10,$06,$01,$20,$08,$11,$20,$0A,$07,$30,$0C,$17,$30
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting7.bin"	; GFXSize = $380

DATA_E56CCE:
	db $06,$00,$1C,$00,$01,$00,$0A,$00,$03,$03,$00,$00,$00,$02,$10,$00
	db $04,$01,$10,$06,$11,$10,$08,$07,$20,$0A,$17,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting8.bin"	; GFXSize = $300

DATA_E56FEA:
	db $06,$00,$1C,$00,$01,$00,$0A,$00,$03,$03,$00,$00,$00,$02,$10,$00
	db $04,$01,$10,$06,$11,$10,$08,$07,$20,$0A,$17,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting9.bin"	; GFXSize = $300

DATA_E57306:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$03,$03,$00,$03,$00,$02,$13,$00
	db $04,$00,$10,$06,$10,$10,$08,$07,$20,$0A,$17,$20,$0C,$27,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting10.bin"	; GFXSize = $380

DATA_E576A5:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$03,$03,$00,$03,$00,$02,$13,$00
	db $04,$00,$10,$06,$10,$10,$08,$06,$20,$0A,$16,$20,$0C,$26,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting11.bin"	; GFXSize = $380

DATA_E57A44:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$04,$00,$02,$14,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting12.bin"	; GFXSize = $400

DATA_E57E66:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$04,$00,$02,$14,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$05,$20,$0C,$15,$20,$0E
	db $25,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting13.bin"	; GFXSize = $400

DATA_E58288:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$03,$03,$00,$06,$00,$02,$16,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$04,$20,$0C,$14,$20,$0E
	db $24,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting14.bin"	; GFXSize = $400

DATA_E586AA:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$04,$03,$00,$08,$00,$02,$18,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$03,$20,$0C,$13,$20,$0E
	db $23,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting15.bin"	; GFXSize = $400

DATA_E58ACC:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$04,$03,$00,$12,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$02,$20,$0A,$12,$20,$0C,$22,$20,$0E
	db $32,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting16.bin"	; GFXSize = $400

DATA_E58EEE:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$04,$03,$00,$17,$00,$02,$00,$10
	db $04,$10,$10,$06,$20,$10,$08,$01,$20,$0A,$11,$20,$0C,$21,$20,$0E
	db $31,$20
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting17.bin"	; GFXSize = $400

DATA_E59310:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$04,$02,$00,$00,$00,$02,$10,$00
	db $04,$20,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting18.bin"	; GFXSize = $380

DATA_E596AF:
	db $07,$00,$1F,$00,$01,$00,$0A,$00,$04,$02,$00,$01,$00,$02,$11,$00
	db $04,$21,$00,$06,$00,$10,$08,$10,$10,$0A,$20,$10,$0C,$30,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Melting19.bin"	; GFXSize = $380

DATA_E59A4E:
	db $08,$00,$22,$00,$01,$00,$0A,$00,$06,$02,$00,$18,$00,$02,$28,$00
	db $04,$00,$10,$06,$10,$10,$08,$20,$10,$0A,$30,$10,$0C,$40,$10,$0E
	db $50,$10
	incbin "Graphics/DynamicSprites/GFX_Sprite_Supervisor_Dead9.bin"	; GFXSize = $400

DATA_E59E70:
	dw $01FF,$2424,$1427,$1F0A,$2323,$01FF,$2424,$1427
	dw $1F0A,$2323,$01FF,$2424,$1427,$1F0A,$2323,$01FF
	dw $2424,$1427,$1F0A,$2323,$0A01,$240A,$0A27,$1F0A
	dw $1F1F,$1414,$240A,$0A27,$2424,$0A0A,$1401,$2401
	dw $0127,$0A14,$0A0A,$1414,$240A,$0A27,$0A0A,$0A0A
	dw $0A01,$240A,$0A27,$0A0A,$0A0A,$0101,$0101,$0A27
	dw $0A01,$0A23,$0101,$0101,$0101,$1F0A,$0A1F,$0101
	dw $0101,$0101,$0A0A,$2323,$01FF,$2424,$1427,$1F0A
	dw $2323,$0A0A,$240A,$0A27,$0A0A,$0A0A,$0A0A,$240A
	dw $0A27,$0A0A,$0A0A,$2401,$2414,$0127,$0A0A,$2323
	dw $0A0A,$240A,$0A27,$0A0A,$0A0A,$0A0A,$240A,$0A27
	dw $0A0A,$0A0A,$1401,$2401,$0127,$1F0A,$2323,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0101,$0101,$0A27,$2323
	dw $1F14,$1F1F,$1F1F,$1F1F,$0A0A,$1F23,$0101,$240A
	dw $0A01,$1F1F,$1F1F,$0A0A,$010A,$1F27,$0A0A,$2324
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$1401,$2401,$0A27,$1F0A,$1F1F,$1414,$240A
	dw $0A27,$0A0A,$0A23,$1401,$2401,$FF27,$0A0A,$1F14
	dw $1414,$240A,$FF27,$2323,$1F14,$0A0A,$240A,$0A27
	dw $0A0A,$0A0A,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401
	dw $2401,$0A27,$0A0A,$0A23,$01FF,$2424,$1427,$1F0A
	dw $2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1414,$240A
	dw $0A27,$1F0A,$2323,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$14FF,$0C14,$0C06
	dw $060C,$0A0C,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0601,$0C06,$0C0C,$1F0C
	dw $1F1F,$1414,$0C06,$0C0C,$0C0C,$0B0B,$1401,$0C01
	dw $010C,$0614,$0C0C,$1414,$0C06,$0C0C,$0C0C,$0A0B
	dw $FFFF,$FFFF,$FFFF,$0CFF,$060C,$0606,$0C06,$0C0C
	dw $1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C,$1F1F,$0606
	dw $0C06,$0C0C,$1F0C,$1F1F,$0606,$0C06,$0C0C,$1F0C
	dw $1F1F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06
	dw $0C0C,$1F0C,$1F1F,$FFFF,$FFFF,$14FF,$0C0C,$230A
	dw $FFFF,$FFFF,$FFFF,$0CFF,$0C0C,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$1401,$010A,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF
	dw $FFFF,$0606,$0C06,$0C0C,$1F0C,$231F,$FFFF,$FFFF
	dw $FFFF,$FFFF,$FFFF,$0606,$0C06,$0C0C,$1F0C,$231F
	dw $0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C
	dw $1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF,$0606
	dw $0C06,$0C0C,$1F0C,$231F,$0606,$0C06,$0C0C,$1F0C
	dw $231F,$0606,$0C06,$0C0C,$1F0C,$231F,$0606,$0C06
	dw $0C0C,$1F0C,$231F,$FFFF,$FFFF,$FFFF,$FFFF,$FFFF

DATA_E5A190:
	dw $0400
	incbin "Graphics/GFX_Sprite_Sparks.bin"

DATA_E5A592:
	incbin "Palettes/PAL_All_Unknown.tpl":$04..$0204

DATA_E5A792:
	incbin "Palettes/PAL_All_MainMenu.tpl":$04..$0204

DATA_E5A992:
	incbin "Graphics/Compressed/GFX_Layer1_MainMenuMonitorText.rnc"

DATA_E5ACFB:
	incbin "Graphics/Compressed/GFX_Layer1_DifficultyMonitorText.rnc"

DATA_E5B05E:
	incbin "Graphics/Compressed/GFX_Layer1_BoutsMonitorText.rnc"

DATA_E5B22B:
	dw $001B : dd DATA_C07D58 : dw $0033
	dw $000A : dd DATA_C9F41C : dw $003D
	dw $0008 : dd DATA_E5B305 : dw $003D
	dw $000C : dd DATA_E5B533 : dw $0033
	dw $000C : dd DATA_E5B761 : dw $0034
	dw $000F : dd DATA_E5B98F : dw $0038
	dw $000E : dd DATA_E5BBBD : dw $003C
	dw $0008 : dd DATA_DEBE3C : dw $004B
	dw $0004 : dd DATA_DBF7D4 : dw $005E
	dw $0008 : dd DATA_E5BDEB : dw $003B
	dw $0008 : dd DATA_E3FF0F : dw $000D
	dw $0003 : dd DATA_DAF1CB : dw $0018
	dw $0005 : dd DATA_E5C019 : dw $0028
	dw $000A : dd DATA_E5C1C6 : dw $0038
	dw $000E : dd DATA_CBFAC7 : dw $0049
	dw $0012 : dd DATA_D0F986 : dw $005D
	dw $0018 : dd DATA_D8EF62 : dw $0076
	dw $001F : dd DATA_DEC0EB : dw $0076
	dw $001F : dd DATA_DEC8A5 : dw $0076
	dw $001F : dd DATA_DED05F : dw $0076
	dw $001F : dd DATA_DED819 : dw $0076
	dw $001F : dd DATA_DEDFD3 : dw $0076
	dw $001F : dd DATA_DEE78D : dw $0076
	dw $001F : dd DATA_DEEF47 : dw $0076
	dw $001F : dd DATA_DFE88E : dw $0076
	dw $001F : dd DATA_DFF048 : dw $0076
	dw $001F : dd DATA_DFF802 : dw $0076
	dw $001F

DATA_E5B305:
	incbin "Graphics/Compressed/GFX_Sprite_Battle3Text.bin"

DATA_E5B533:
	incbin "Graphics/Compressed/GFX_Sprite_Battle4Text.bin"

DATA_E5B761:
	incbin "Graphics/Compressed/GFX_Sprite_Battle5Text.bin"

DATA_E5B98F:
	incbin "Graphics/Compressed/GFX_Sprite_Battle6Text.bin"

DATA_E5BBBD:
	incbin "Graphics/Compressed/GFX_Sprite_Battle7Text.bin"

DATA_E5BDEB:
	incbin "Graphics/Compressed/GFX_Sprite_PauseText.bin"

DATA_E5C019:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame3.bin"

DATA_E5C1C6:
	incbin "Graphics/Compressed/GFX_Sprite_FloatingMonitor_Frame4.bin"

DATA_E5C3F4:
	incbin "Palettes/PAL_Layer1_RedCyborgIntroFMV.tpl":$04..$0104

	%InsertGarbageData($E5C4F4, incbin, UNK_E5C4F4.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE6Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E60000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame89.rnc"

DATA_E626AA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame123.rnc"

DATA_E626AE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame124.rnc"

DATA_E626B2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame1.rnc"

DATA_E64907:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame31.rnc"

DATA_E66F16:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame3.rnc"

DATA_E66F1A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame4.rnc"

DATA_E66F1E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame5.rnc"

DATA_E66F22:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame1.rnc"

DATA_E693B1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame1.rnc"

DATA_E6B7B0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame1.rnc"

DATA_E6DDA2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame25.rnc"

	%InsertGarbageData($E6FFFE, incbin, UNK_E6FFFE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE7Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E70000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame16.rnc"

DATA_E70DEB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame1.rnc"

DATA_E725FB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame1.rnc"

DATA_E74461:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame1.rnc"

DATA_E76424:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame1.rnc"

DATA_E78609:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame6.rnc"

DATA_E7860D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame1.rnc"

DATA_E7A694:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame1.rnc"

DATA_E7C791:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame20.rnc"

DATA_E7DFA1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame51.rnc"

	%InsertGarbageData($E7FFFD, incbin, UNK_E7FFFD.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE8Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E80000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame60.rnc"

DATA_E806AD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame18.rnc"

DATA_E81B17:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame19.rnc"

DATA_E8306D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame20.rnc"

DATA_E8452C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame21.rnc"

DATA_E859AB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame9.rnc"

DATA_E86DE2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame11.rnc"

DATA_E8831C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame12.rnc"

DATA_E8981C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame14.rnc"

DATA_E8ABFC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame18.rnc"

DATA_E8BFC1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame19.rnc"

DATA_E8D3AA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame21.rnc"

DATA_E8E90E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame1.rnc"

%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankE9Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_E90000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame73.rnc"

DATA_E9076A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame7.rnc"

DATA_E9076E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame16.rnc"

DATA_E91AA5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame17.rnc"

DATA_E92E44:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame22.rnc"

DATA_E94144:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame15.rnc"

DATA_E952F9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame5.rnc"

DATA_E96546:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame6.rnc"

DATA_E977CF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame7.rnc"

DATA_E98B84:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame8.rnc"

DATA_E99F44:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame10.rnc"

DATA_E9B2DE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame13.rnc"

DATA_E9C603:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame15.rnc"

DATA_E9D93D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame16.rnc"

DATA_E9ECE2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame17.rnc"

	%InsertGarbageData($E9FFFE, incbin, UNK_E9FFFE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankEAMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_EA0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame17.rnc"

DATA_EA1015:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame18.rnc"

DATA_EA20B1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame19.rnc"

DATA_EA30F2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame20.rnc"

DATA_EA423E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame21.rnc"

DATA_EA539D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame22.rnc"

DATA_EA646E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame2.rnc"

DATA_EA6889:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame8.rnc"

DATA_EA688D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame23.rnc"

DATA_EA78B1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame12.rnc"

DATA_EA88DC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame13.rnc"

DATA_EA9A04:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame14.rnc"

DATA_EAAB5E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame16.rnc"

DATA_EABBB4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame3.rnc"

DATA_EACCC0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame4.rnc"

DATA_EADE0E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame1.rnc"

DATA_EAEF86:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame2.rnc"

	%FREE_BYTES($EAFFFF, 1, $0E)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankEBMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_EB0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame23.rnc"

DATA_EB0F07:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame27.rnc"

DATA_EB1DFA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame28.rnc"

DATA_EB2CE6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame29.rnc"

DATA_EB3BDA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame94.rnc"

DATA_EB4AD0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame95.rnc"

DATA_EB5991:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame98.rnc"

DATA_EB6863:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame99.rnc"

DATA_EB7748:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame9.rnc"

DATA_EB774C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame15.rnc"

DATA_EB860E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame11.rnc"

DATA_EB953B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame17.rnc"

DATA_EBA4D5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame18.rnc"

DATA_EBB4A2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame19.rnc"

DATA_EBC3D1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame20.rnc"

DATA_EBD1EC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeDefeated_Frame2.rnc"

DATA_EBE137:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame3.rnc"

DATA_EBF0D6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame4.rnc"

	%InsertGarbageData($EBFFFE, incbin, UNK_EBFFFE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankECMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_EC0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame24.rnc"

DATA_EC0E24:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame26.rnc"

DATA_EC1C92:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame30.rnc"

DATA_EC2B2B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame87.rnc"

DATA_EC3965:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame88.rnc"

DATA_EC47D6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame89.rnc"

DATA_EC5665:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame90.rnc"

DATA_EC64B8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame91.rnc"

DATA_EC7311:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame92.rnc"

DATA_EC8199:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame93.rnc"

DATA_EC904B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame96.rnc"

DATA_EC9F0C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame97.rnc"

DATA_ECAD78:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame100.rnc"

DATA_ECBC17:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame101.rnc"

DATA_ECCAAE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame10.rnc"

DATA_ECCAB2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame11.rnc"

DATA_ECCAB6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame50.rnc"

DATA_ECD8C8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame10.rnc"

DATA_ECE6DC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame3.rnc"

DATA_ECF1B0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame22.rnc"

DATA_ECF1B4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame5.rnc"

%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankEDMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_ED0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame1.rnc"

DATA_ED0CA7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame14.rnc"

DATA_ED1959:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame15.rnc"

DATA_ED2683:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame25.rnc"

DATA_ED344B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame53.rnc"

DATA_ED3808:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame82.rnc"

DATA_ED44D1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame83.rnc"

DATA_ED51BA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame84.rnc"

DATA_ED5F0A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame85.rnc"

DATA_ED6CB4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame86.rnc"

DATA_ED7AB6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame24.rnc"

DATA_ED88BD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame25.rnc"

DATA_ED960F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame26.rnc"

DATA_EDA27C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame51.rnc"

DATA_EDB07F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame2.rnc"

DATA_EDBD3D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame9.rnc"

DATA_EDCAFE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame23.rnc"

DATA_EDCB02:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame24.rnc"

DATA_EDCB06:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame26.rnc"

DATA_EDCB0A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame27.rnc"

DATA_EDCB0E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame28.rnc"

DATA_EDCB12:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame29.rnc"

DATA_EDCB16:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame1.rnc"

DATA_EDD8F0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame6.rnc"

DATA_EDE6A2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame7.rnc"

DATA_EDF37D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame8.rnc"

	%InsertGarbageData($EDFFFE, incbin, UNK_EDFFFE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankEEMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_EE0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame2.rnc"

DATA_EE0C0C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame3.rnc"

DATA_EE17F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame4.rnc"

DATA_EE237E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame6.rnc"

DATA_EE2EF4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame12.rnc"

DATA_EE3A78:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame13.rnc"

DATA_EE467E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame129.rnc"

DATA_EE526D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame78.rnc"

DATA_EE5E00:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame79.rnc"

DATA_EE69F3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame80.rnc"

DATA_EE7633:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame81.rnc"

DATA_EE828F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame2.rnc"

DATA_EE8E71:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame14.rnc"

DATA_EE99F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame27.rnc"

DATA_EEA5B8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame4.rnc"

DATA_EEB189:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame5.rnc"

DATA_EEBD04:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame6.rnc"

DATA_EEC91D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame7.rnc"

DATA_EED53E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame8.rnc"

DATA_EEE0B3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame21.rnc"

DATA_EEEC72:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame74.rnc"

DATA_EEF410:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame9.rnc"

	%FREE_BYTES($EEFFFF, 1, $01)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankEFMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_EF0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame5.rnc"

DATA_EF0B6D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame7.rnc"

DATA_EF165D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame8.rnc"

DATA_EF211C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame9.rnc"

DATA_EF2BBE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame10.rnc"

DATA_EF36D5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryIntro_Frame11.rnc"

DATA_EF4215:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame140.rnc"

DATA_EF474E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame69.rnc"

DATA_EF51F0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame70.rnc"

DATA_EF5CB1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame71.rnc"

DATA_EF6750:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame72.rnc"

DATA_EF7206:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame73.rnc"

DATA_EF7CA5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame74.rnc"

DATA_EF875A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame75.rnc"

DATA_EF923D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame76.rnc"

DATA_EF9D27:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame77.rnc"

DATA_EFA84D:
	dw $0090
	dd DATA_E725FB,DATA_EA646E,DATA_FC11FF,DATA_FD3308,DATA_FD3701,DATA_FD3AA1,DATA_FD3EC3,DATA_FC164C
	dd DATA_FC1A98,DATA_FC1EF2,DATA_FC23B2,DATA_FB0000,DATA_FC2877,DATA_FB04FC,DATA_FC2D46,DATA_FC31E9
	dd DATA_FC366D,DATA_FC3ADC,DATA_FB09DB,DATA_FB0ED6,DATA_FA0000,DATA_FB13D3,DATA_FA0548,DATA_FA0A94
	dd DATA_FA0FEB,DATA_FA1544,DATA_FA1AB4,DATA_FA201A,DATA_FA25B0,DATA_FA2B28,DATA_FA3091,DATA_FA3605
	dd DATA_F60000,DATA_FF33F8,DATA_FB1906,DATA_FB1DEA,DATA_FC3F6D,DATA_FC442E,DATA_FB2309,DATA_FB281D
	dd DATA_FA3B6C,DATA_FA40C3,DATA_FA4627,DATA_FA4BA7,DATA_FB2D51,DATA_FB326F,DATA_FC490D,DATA_FB375D
	dd DATA_FB3C4B,DATA_FA50F6,DATA_F90BAD,DATA_F9117E,DATA_F91760,DATA_F91D35,DATA_F80C30,DATA_F8122A
	dd DATA_F81859,DATA_F81E50,DATA_F70670,DATA_F82449,DATA_F92328,DATA_F928F7,DATA_F92ECA,DATA_FA566C
	dd DATA_FF3529,DATA_FB413C,DATA_F93495,DATA_FA5BFD,DATA_FB4662,DATA_F93A72,DATA_F82A71,DATA_F70CD0
	dd DATA_F71358,DATA_F719C9,DATA_F83083,DATA_F72066,DATA_F836C2,DATA_FA618A,DATA_F83CBF,DATA_F842B8
	dd DATA_F72706,DATA_F72D9F,DATA_F60516,DATA_F60BD8,DATA_F50000,DATA_F50780,DATA_F50F06,DATA_F5163F
	dd DATA_F51DCF,DATA_F52548,DATA_F52CA6,DATA_F612DF,DATA_F73452,DATA_F619D9,DATA_F73B0D,DATA_FF35F7
	dd DATA_F74198,DATA_F848F5,DATA_F9403C,DATA_F84F2F,DATA_F5340B,DATA_F9460F,DATA_FA6708,DATA_FC4D89
	dd DATA_FB4B6A,DATA_F94BB7,DATA_F95161,DATA_FA6C90,DATA_FC525E,DATA_FC56FB,DATA_FB509A,DATA_FC5B4E
	dd DATA_FC601B,DATA_FC64F1,DATA_FB55B6,DATA_FB5AE0,DATA_F53B45,DATA_FD42E7,DATA_FD46F2,DATA_FC699B
	dd DATA_FC6DE6,DATA_FB5FEB,DATA_FC72BF,DATA_FB6525,DATA_F956FB,DATA_FC7782,DATA_FB6A2C,DATA_FC7C4B
	dd DATA_FD4B28,DATA_FC8108,DATA_FC8575,DATA_FC89E7,DATA_FC8E63,DATA_FD4F5B,DATA_FD5333,DATA_FC92A3
	dd DATA_FC96F2,DATA_FC9B9A,DATA_FCA043,DATA_EF4215,DATA_FA71DE,DATA_F85531,DATA_F95C95,DATA_FA7741

DATA_EFAA8F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame28.rnc"

DATA_EFB542:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame29.rnc"

DATA_EFBFFB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame3.rnc"

DATA_EFCB16:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame10.rnc"

DATA_EFD688:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame11.rnc"

DATA_EFE1D9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame12.rnc"

DATA_EFECCD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame13.rnc"

	%InsertGarbageData($EFF785, incbin, UNK_EFF785.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF0Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F00000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame128.rnc"

DATA_F00A1F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame45.rnc"

DATA_F011FE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame58.rnc"

DATA_F01C56:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame59.rnc"

DATA_F026E3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame60.rnc"

DATA_F03154:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame61.rnc"

DATA_F03B7E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame62.rnc"

DATA_F045BC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame63.rnc"

DATA_F05023:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame64.rnc"

DATA_F05A7C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame65.rnc"

DATA_F064D2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame66.rnc"

DATA_F06F06:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame67.rnc"

DATA_F0798C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame68.rnc"

DATA_F0841A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame30.rnc"

DATA_F08E91:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame31.rnc"

DATA_F098B0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame4.rnc"

DATA_F0A2FC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame5.rnc"

DATA_F0AD84:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame6.rnc"

DATA_F0B7E1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame7.rnc"

DATA_F0C22E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame9.rnc"

DATA_F0CC51:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame30.rnc"

DATA_F0CC55:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame31.rnc"

DATA_F0CC59:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame96.rnc"

DATA_F0D6AB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame97.rnc"

DATA_F0E127:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame98.rnc"

DATA_F0EB73:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame102.rnc"

DATA_F0F5A8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame14.rnc"

	%FREE_BYTES($F0FFFF, 1, $EB)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF1Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F10000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame47.rnc"

DATA_F1022F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame56.rnc"

DATA_F10BD7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame57.rnc"

DATA_F115E8:
	dw $0081
	dd DATA_E74461,DATA_FF3711,DATA_FF383F,DATA_FF39A9,DATA_FF3ADD,DATA_FF3C40,DATA_FF3DA4,DATA_FF3EF2
	dd DATA_FF4020,DATA_FF4164,DATA_FF42AA,DATA_FF43DA,DATA_FF4516,DATA_FF463E,DATA_FF4785,DATA_FE46B7
	dd DATA_FF48B5,DATA_FF49E3,DATA_FF4B3D,DATA_FF4C89,DATA_FF4DEB,DATA_FE4801,DATA_FF4F4A,DATA_FF509E
	dd DATA_FF51F0,DATA_FE4989,DATA_FF534C,DATA_FE4B0F,DATA_FE4CA2,DATA_FE4E46,DATA_FE4FF6,DATA_FE519E
	dd DATA_FE536C,DATA_FE552A,DATA_FE56E4,DATA_FE58AE,DATA_FE5A80,DATA_FE5C44,DATA_FE5E1C,DATA_F9626F
	dd DATA_FE6026,DATA_FE6231,DATA_FE646E,DATA_FE6694,DATA_FE68A6,DATA_FE6AD0,DATA_F10000,DATA_FE6CFB
	dd DATA_FE6F57,DATA_FE71D8,DATA_FE7458,DATA_FE76CE,DATA_FE794F,DATA_FE7BCE,DATA_FE7E5C,DATA_FE80CB
	dd DATA_FE8353,DATA_FE85E1,DATA_FD574B,DATA_FD59E4,DATA_FD5C87,DATA_FD5F43,DATA_FD6216,DATA_FD64E0
	dd DATA_FD67B7,DATA_FD6A9C,DATA_FD6D75,DATA_FD7067,DATA_FD7396,DATA_FD76D4,DATA_FD7A1E,DATA_FD7D5E
	dd DATA_FD808A,DATA_FD83F6,DATA_FD874D,DATA_FD8ABC,DATA_FD8E14,DATA_FD9175,DATA_FD94D5,DATA_FD983D
	dd DATA_FD9BBC,DATA_FD9F50,DATA_FDA366,DATA_FCA499,DATA_FCA8F6,DATA_FCAD53,DATA_FCB1DA,DATA_FCB69F
	dd DATA_FB6F29,DATA_FB742B,DATA_FB7950,DATA_FB7E7E,DATA_FB83B9,DATA_FB88D5,DATA_FB8DB9,DATA_FB929F
	dd DATA_FB979E,DATA_FB9CB0,DATA_FA7CA1,DATA_FBA1C9,DATA_FBA6EE,DATA_FBAC36,DATA_FA81F1,DATA_FA8740
	dd DATA_FA8CC5,DATA_F9647C,DATA_F96A2F,DATA_F97018,DATA_F85B52,DATA_F747D2,DATA_F74E4F,DATA_F620AC
	dd DATA_F6277B,DATA_F75504,DATA_F62E5E,DATA_F63563,DATA_F63C53,DATA_F64334,DATA_F53FBD,DATA_F546F6
	dd DATA_F54E48,DATA_F30000,DATA_F30832,DATA_F310D2,DATA_F2093B,DATA_F2122C,DATA_F21B7C,DATA_F00000
	dd DATA_EE467E

DATA_F117EE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame32.rnc"

DATA_F121AA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame8.rnc"

DATA_F12BAD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame10.rnc"

DATA_F135A8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame11.rnc"

DATA_F13F9D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame12.rnc"

DATA_F14981:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame13.rnc"

DATA_F15324:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame14.rnc"

DATA_F15CF6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame15.rnc"

DATA_F1668C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame16.rnc"

DATA_F17004:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame20.rnc"

DATA_F179AC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame14.rnc"

DATA_F18396:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame32.rnc"

DATA_F1839A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame95.rnc"

DATA_F18D1A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame99.rnc"

DATA_F19723:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame100.rnc"

DATA_F1A120:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame101.rnc"

DATA_F1AAA2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame103.rnc"

DATA_F1B499:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame104.rnc"

DATA_F1BE82:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame105.rnc"

DATA_F1C827:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame106.rnc"

DATA_F1D1CF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame109.rnc"

DATA_F1DB51:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame110.rnc"

DATA_F1E4EA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame15.rnc"

DATA_F1EEC4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame16.rnc"

	%InsertGarbageData($F1F864, incbin, UNK_F1F864.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF2Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F20000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame118.rnc"

DATA_F2093B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame125.rnc"

DATA_F2122C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame126.rnc"

DATA_F21B7C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame127.rnc"

DATA_F224D3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame53.rnc"

DATA_F22DEB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame54.rnc"

DATA_F23715:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame55.rnc"

DATA_F24061:
	dw $007C
	dd DATA_E70DEB,DATA_FF0000,DATA_FF00A9,DATA_FF00E1,DATA_FF0168,DATA_FF01EC,DATA_FF0262,DATA_FF0310
	dd DATA_FF03D6,DATA_FF04AA,DATA_FF0569,DATA_FF0695,DATA_FE0000,DATA_FF07E5,DATA_FE01DD,DATA_FE0382
	dd DATA_FE054E,DATA_FE0707,DATA_FE0897,DATA_FE0A78,DATA_FE0C54,DATA_FE0E2C,DATA_FF093F,DATA_FE0FD4
	dd DATA_FF0AB7,DATA_FE1160,DATA_FF0C24,DATA_FD0000,DATA_FF0D9F,DATA_FF0E8C,DATA_FF0F72,DATA_FF1079
	dd DATA_FF11A6,DATA_FF12F7,DATA_FF1431,DATA_FF1568,DATA_FF1612,DATA_FF16A0,DATA_FF1728,DATA_FF17D2
	dd DATA_FF184E,DATA_FF18E8,DATA_FF198E,DATA_FF1A46,DATA_FF1AE8,DATA_FF1B94,DATA_FF1C5C,DATA_FF1D42
	dd DATA_FF1E26,DATA_FF1EF6,DATA_FF1FC2,DATA_FF20C4,DATA_FF21F8,DATA_FE1304,DATA_FE1483,DATA_FE1617
	dd DATA_FE17CE,DATA_FE197A,DATA_FE1B52,DATA_FE1D48,DATA_FE1F4F,DATA_FE213C,DATA_FE231F,DATA_FE2518
	dd DATA_FE271A,DATA_FE2997,DATA_FE2C1E,DATA_FE2E90,DATA_FE3103,DATA_FE3365,DATA_FE35C5,DATA_FD0135
	dd DATA_FD03EB,DATA_FD0728,DATA_FD0A5F,DATA_FD0D55,DATA_FD10C0,DATA_FD13FF,DATA_FD1756,DATA_FD1B0D
	dd DATA_FC0000,DATA_FC0489,DATA_FD1EED,DATA_FD22F4,DATA_FE3823,DATA_FE3A8A,DATA_FF234B,DATA_FF244D
	dd DATA_E60000,DATA_FF24FD,DATA_FF25AB,DATA_FF266F,DATA_FF272F,DATA_FF2801,DATA_FF28E5,DATA_FF29DB
	dd DATA_FF2ABD,DATA_FF2B7F,DATA_FF2C77,DATA_FF2D97,DATA_FF2EC1,DATA_FF301C,DATA_FF3186,DATA_FF32B6
	dd DATA_FE3C25,DATA_FE3E13,DATA_FE3FFA,DATA_FE41F1,DATA_FE4441,DATA_FD25D2,DATA_FC0938,DATA_FD2933
	dd DATA_FD2CBA,DATA_FD2FD5,DATA_FC0DBC,DATA_F90000,DATA_F40000,DATA_F20000,DATA_F70000,DATA_F80000
	dd DATA_F80629,DATA_F905CA,DATA_E626AA,DATA_E626AE

DATA_F24253:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame33.rnc"

DATA_F24BB2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame35.rnc"

DATA_F254ED:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame22.rnc"

DATA_F25DFF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame17.rnc"

DATA_F26761:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame18.rnc"

DATA_F2709A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame19.rnc"

DATA_F279CC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame15.rnc"

DATA_F282C7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame75.rnc"

DATA_F28A87:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame86.rnc"

DATA_F293AB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame89.rnc"

DATA_F29C98:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame91.rnc"

DATA_F2A590:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame92.rnc"

DATA_F2AEFB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame93.rnc"

DATA_F2B868:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame94.rnc"

DATA_F2C1B5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame107.rnc"

DATA_F2CB23:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame108.rnc"

DATA_F2D432:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame111.rnc"

DATA_F2DD62:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame17.rnc"

DATA_F2E6CC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame18.rnc"

DATA_F2EFC2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgIntro_Frame19.rnc"

	%InsertGarbageData($F2F8B0, incbin, UNK_F2F8B0.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF3Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F30000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame122.rnc"

DATA_F30832:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame123.rnc"

DATA_F310D2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame124.rnc"

DATA_F319AF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame29.rnc"

DATA_F32095:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame48.rnc"

DATA_F328D5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame49.rnc"

DATA_F33134:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame50.rnc"

DATA_F3398F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame51.rnc"

DATA_F34217:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame52.rnc"

DATA_F34AC9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame13.rnc"

DATA_F35381:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame34.rnc"

DATA_F35C6D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame36.rnc"

DATA_F36559:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame37.rnc"

DATA_F36DEF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame38.rnc"

DATA_F37627:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame12.rnc"

DATA_F37E9E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame16.rnc"

DATA_F3877C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame17.rnc"

DATA_F38FE2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame18.rnc"

DATA_F39882:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame79.rnc"

DATA_F3A0C2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame81.rnc"

DATA_F3A909:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame82.rnc"

DATA_F3B17C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame83.rnc"

DATA_F3BA21:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame84.rnc"

DATA_F3C2D3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame85.rnc"

DATA_F3CB65:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame87.rnc"

DATA_F3D44E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame88.rnc"

DATA_F3DD38:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame90.rnc"

DATA_F3E620:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame112.rnc"

DATA_F3EF0C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame113.rnc"

DATA_F3F775:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame115.rnc"

	%InsertGarbageData($F3FFFD, incbin, UNK_F3FFFD.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF4Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F40000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame117.rnc"

DATA_F407A8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame76.rnc"

DATA_F40F51:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame77.rnc"

DATA_F41745:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame78.rnc"

DATA_F41F68:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame80.rnc"

DATA_F42732:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame81.rnc"

DATA_F42EE7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame83.rnc"

DATA_F436ED:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame84.rnc"

DATA_F43EF0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame85.rnc"

DATA_F446DA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame86.rnc"

DATA_F44ED6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame87.rnc"

DATA_F45690:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame2.rnc"

DATA_F45B45:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame39.rnc"

DATA_F462E6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame40.rnc"

DATA_F46AAB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame43.rnc"

DATA_F47262:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame44.rnc"

DATA_F47A13:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame46.rnc"

DATA_F48219:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame47.rnc"

DATA_F48A1D:
	dw $006A
	dd DATA_E626B2,DATA_FCBB73,DATA_FCBFAF,DATA_FCC431,DATA_FCC8BA,DATA_FCCD3B,DATA_FCD1F4,DATA_FCD68B
	dd DATA_FCDB60,DATA_FCE000,DATA_FCE4A5,DATA_FBB16C,DATA_FA9255,DATA_F9760C,DATA_F8618A,DATA_F86785
	dd DATA_F75BAF,DATA_F64A31,DATA_F76256,DATA_F97BE5,DATA_F86D86,DATA_F87398,DATA_F981A6,DATA_FBB69F
	dd DATA_FCE943,DATA_FDA795,DATA_FDABB0,DATA_FDAFC1,DATA_FDB3C8,DATA_FDB7D0,DATA_E64907,DATA_FE8854
	dd DATA_FE8A7A,DATA_FE8C83,DATA_FE8ED3,DATA_FE912D,DATA_FE934B,DATA_FE9596,DATA_FE979E,DATA_FE99E5
	dd DATA_FE9C45,DATA_FE9E83,DATA_FEA0F0,DATA_FEA35D,DATA_FEA5BE,DATA_FDBBA8,DATA_FEA7F6,DATA_FDBE76
	dd DATA_FDC161,DATA_FDC466,DATA_FDC7BD,DATA_FDCB5B,DATA_ED344B,DATA_FDCF05,DATA_FCEDB8,DATA_FA97BF
	dd DATA_F879AC,DATA_F87FE3,DATA_F768D1,DATA_E80000,DATA_F65107,DATA_F76F6E,DATA_F77629,DATA_F657C9
	dd DATA_F77CCF,DATA_F88610,DATA_FA9D2B,DATA_F88C29,DATA_F78352,DATA_F789E9,DATA_F79088,DATA_F555CC
	dd DATA_E90000,DATA_F65E86,DATA_F665B3,DATA_F407A8,DATA_F40F51,DATA_F41745,DATA_F55D03,DATA_F41F68
	dd DATA_F42732,DATA_F56463,DATA_F42EE7,DATA_F436ED,DATA_F43EF0,DATA_F446DA,DATA_F44ED6,DATA_F56BCB
	dd DATA_F5735E,DATA_F57ABB,DATA_F58218,DATA_F58980,DATA_F66CA0,DATA_F673BD,DATA_F590BF,DATA_F7973D
	dd DATA_F79DF6,DATA_F67AD9,DATA_F597F9,DATA_FDD314,DATA_FDD5C5,DATA_FDD8B5,DATA_FDDB57,DATA_FDDE27
	dd DATA_FDE146,DATA_FDE434

DATA_F48BC7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame39.rnc"

DATA_F49372:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame4.rnc"

DATA_F49B38:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame5.rnc"

DATA_F4A354:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame7.rnc"

DATA_F4AB33:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame8.rnc"

DATA_F4B2D5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame13.rnc"

DATA_F4BA79:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame21.rnc"

DATA_F4C258:
	dw $0078
	dd DATA_EDCB16,DATA_FF65D3,DATA_FF65D7,DATA_FF65DB,DATA_FF65DF,DATA_FF65E3,DATA_FF65E7,DATA_FF65EB
	dd DATA_FF65EF,DATA_FF65F3,DATA_FF65F7,DATA_FDF4D7,DATA_F9E48F,DATA_FCFBAE,DATA_FDF7D4,DATA_FED267
	dd DATA_FF65FB,DATA_FF6770,DATA_FF689A,DATA_FF699C,DATA_FF6A9B,DATA_FF6B65,DATA_FF6C23,DATA_FED43B
	dd DATA_FED625,DATA_FED827,DATA_FEDA51,DATA_FEDC50,DATA_FEDE46,DATA_FEE04F,DATA_FEE24B,DATA_FEE4A0
	dd DATA_FEE6BA,DATA_FBF3F5,DATA_FEE91B,DATA_FEEB34,DATA_FEED84,DATA_FEEFAD,DATA_FEF180,DATA_FF6CEA
	dd DATA_FF6D26,DATA_FF6D5E,DATA_FF6D9A,DATA_FF6DC4,DATA_FF6E04,DATA_FF6E36,DATA_FF6E72,DATA_FF6EAE
	dd DATA_FF6EE8,DATA_E7DFA1,DATA_FBF5E5,DATA_F9EA39,DATA_FAE514,DATA_FAEA63,DATA_FAEFE4,DATA_FAF554
	dd DATA_FAFAA3,DATA_F9EFDB,DATA_F8E76E,DATA_F8ED91,DATA_F9F581,DATA_F8F393,DATA_F7D868,DATA_F7DF1E
	dd DATA_F8F9B1,DATA_F7E59B,DATA_F7EC56,DATA_F7F2ED,DATA_F7F972,DATA_F6F220,DATA_F6F8E5,DATA_F4C43A
	dd DATA_EEEC72,DATA_F282C7,DATA_F4CBE8,DATA_F4D3B8,DATA_F4DB90,DATA_F39882,DATA_F4E346,DATA_F3A0C2
	dd DATA_F3A909,DATA_F3B17C,DATA_F3BA21,DATA_F3C2D3,DATA_F28A87,DATA_F3CB65,DATA_F3D44E,DATA_F293AB
	dd DATA_F3DD38,DATA_F29C98,DATA_F2A590,DATA_F2AEFB,DATA_F2B868,DATA_F1839A,DATA_F0CC59,DATA_F0D6AB
	dd DATA_F0E127,DATA_F18D1A,DATA_F19723,DATA_F1A120,DATA_F0EB73,DATA_F1AAA2,DATA_F1B499,DATA_F1BE82
	dd DATA_F1C827,DATA_F2C1B5,DATA_F2CB23,DATA_F1D1CF,DATA_F1DB51,DATA_F2D432,DATA_F3E620,DATA_F3EF0C
	dd DATA_F4EB6C,DATA_F3F775,DATA_FBFAD5,DATA_FEF36D,DATA_FEF549,DATA_FDFAC5,DATA_FF6F30,DATA_FF708D

DATA_F4C43A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame73.rnc"

DATA_F4CBE8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame76.rnc"

DATA_F4D3B8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame77.rnc"

DATA_F4DB90:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame78.rnc"

DATA_F4E346:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame80.rnc"

DATA_F4EB6C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame114.rnc"

	%InsertGarbageData($F4F399, incbin, UNK_F4F399.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF5Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F50000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame85.rnc"

DATA_F50780:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame86.rnc"

DATA_F50F06:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame87.rnc"

DATA_F5163F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame88.rnc"

DATA_F51DCF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame89.rnc"

DATA_F52548:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame90.rnc"

DATA_F52CA6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame91.rnc"

DATA_F5340B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame101.rnc"

DATA_F53B45:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame117.rnc"

DATA_F53FBD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame119.rnc"

DATA_F546F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame120.rnc"

DATA_F54E48:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame121.rnc"

DATA_F555CC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame72.rnc"

DATA_F55D03:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame79.rnc"

DATA_F56463:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame82.rnc"

DATA_F56BCB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame88.rnc"

DATA_F5735E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame89.rnc"

DATA_F57ABB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame90.rnc"

DATA_F58218:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame91.rnc"

DATA_F58980:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame92.rnc"

DATA_F590BF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame95.rnc"

DATA_F597F9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame99.rnc"

DATA_F59F27:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame36.rnc"

DATA_F5A66B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame38.rnc"

DATA_F5ADB6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame41.rnc"

DATA_F5B550:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame42.rnc"

DATA_F5BCD1:
	dw $0065
	dd DATA_F9875F,DATA_F45690,DATA_FCF24C,DATA_FCF6C4,DATA_FBBBC7,DATA_FBC0BA,DATA_FBC5A1,DATA_FBCAB0
	dd DATA_FAA2AF,DATA_FAA827,DATA_FAAD8D,DATA_FAB304,DATA_FAB85A,DATA_F98D33,DATA_F992D6,DATA_F99888
	dd DATA_FABDDE,DATA_F99E3A,DATA_F9A3E9,DATA_F8926C,DATA_FAC36C,DATA_F9A992,DATA_F9AF48,DATA_F897EE
	dd DATA_F89DF3,DATA_F7A46E,DATA_F7AAD8,DATA_F681D3,DATA_F319AF,DATA_F688B5,DATA_F68FB3,DATA_F696AA
	dd DATA_F69DBA,DATA_F6A4E1,DATA_F6AC02,DATA_F59F27,DATA_F6B324,DATA_F5A66B,DATA_F45B45,DATA_F462E6
	dd DATA_F5ADB6,DATA_F5B550,DATA_F46AAB,DATA_F47262,DATA_F00A1F,DATA_F47A13,DATA_F48219,DATA_F32095
	dd DATA_F328D5,DATA_F33134,DATA_F3398F,DATA_F34217,DATA_F224D3,DATA_F22DEB,DATA_F23715,DATA_F1022F
	dd DATA_F10BD7,DATA_F011FE,DATA_F01C56,DATA_F026E3,DATA_F03154,DATA_F03B7E,DATA_F045BC,DATA_F05023
	dd DATA_F05A7C,DATA_F064D2,DATA_F06F06,DATA_F0798C,DATA_EF474E,DATA_EF51F0,DATA_EF5CB1,DATA_EF6750
	dd DATA_EF7206,DATA_EF7CA5,DATA_EF875A,DATA_EF923D,DATA_EF9D27,DATA_EE526D,DATA_EE5E00,DATA_EE69F3
	dd DATA_EE7633,DATA_ED3808,DATA_ED44D1,DATA_ED51BA,DATA_ED5F0A,DATA_ED6CB4,DATA_EC2B2B,DATA_EC3965
	dd DATA_EC47D6,DATA_EC5665,DATA_EC64B8,DATA_EC7311,DATA_EC8199,DATA_EB3BDA,DATA_EB4AD0,DATA_EC904B
	dd DATA_EC9F0C,DATA_EB5991,DATA_EB6863,DATA_ECAD78,DATA_ECBC17

DATA_F5BE67:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame42.rnc"

DATA_F5C5C7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame43.rnc"

DATA_F5CD52:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SentryDefeated_Frame23.rnc"

DATA_F5D4BC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame2.rnc"

DATA_F5DC38:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame3.rnc"

DATA_F5E3C1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame9.rnc"

DATA_F5EB39:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame10.rnc"

DATA_F5F278:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame20.rnc"

	%InsertGarbageData($F5FA09, incbin, UNK_F5FA09.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF6Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F60000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame33.rnc"

DATA_F60516:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame83.rnc"

DATA_F60BD8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame84.rnc"

DATA_F612DF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame92.rnc"

DATA_F619D9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame94.rnc"

DATA_F620AC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame112.rnc"

DATA_F6277B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame113.rnc"

DATA_F62E5E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame115.rnc"

DATA_F63563:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame116.rnc"

DATA_F63C53:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame117.rnc"

DATA_F64334:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame118.rnc"

DATA_F64A31:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame18.rnc"

DATA_F65107:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame61.rnc"

DATA_F657C9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame64.rnc"

DATA_F65E86:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame74.rnc"

DATA_F665B3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame75.rnc"

DATA_F66CA0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame93.rnc"

DATA_F673BD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame94.rnc"

DATA_F67AD9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame98.rnc"

DATA_F681D3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame28.rnc"

DATA_F688B5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame30.rnc"

DATA_F68FB3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame31.rnc"

DATA_F696AA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame32.rnc"

DATA_F69DBA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame33.rnc"

DATA_F6A4E1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame34.rnc"

DATA_F6AC02:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame35.rnc"

DATA_F6B324:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame37.rnc"

DATA_F6BA4A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame12.rnc"

DATA_F6C15C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame40.rnc"

DATA_F6C868:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame41.rnc"

DATA_F6CF5F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame44.rnc"

DATA_F6D674:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame45.rnc"

DATA_F6DD93:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame46.rnc"

DATA_F6E492:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame49.rnc"

DATA_F6EB5E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame6.rnc"

DATA_F6F220:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame71.rnc"

DATA_F6F8E5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame72.rnc"

	%FREE_BYTES($F6FFFF, 1, $8B)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF7Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F70000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame119.rnc"

DATA_F70670:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame59.rnc"

DATA_F70CD0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame72.rnc"

DATA_F71358:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame73.rnc"

DATA_F719C9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame74.rnc"

DATA_F72066:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame76.rnc"

DATA_F72706:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame81.rnc"

DATA_F72D9F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame82.rnc"

DATA_F73452:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame93.rnc"

DATA_F73B0D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame95.rnc"

DATA_F74198:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame97.rnc"

DATA_F747D2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame110.rnc"

DATA_F74E4F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame111.rnc"

DATA_F75504:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame114.rnc"

DATA_F75BAF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame17.rnc"

DATA_F76256:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame19.rnc"

DATA_F768D1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame59.rnc"

DATA_F76F6E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame62.rnc"

DATA_F77629:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame63.rnc"

DATA_F77CCF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame65.rnc"

DATA_F78352:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame69.rnc"

DATA_F789E9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame70.rnc"

DATA_F79088:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame71.rnc"

DATA_F7973D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame96.rnc"

DATA_F79DF6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame97.rnc"

DATA_F7A46E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame26.rnc"

DATA_F7AAD8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame27.rnc"

DATA_F7B180:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame47.rnc"

DATA_F7B820:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame48.rnc"

DATA_F7BECF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame52.rnc"

DATA_F7C52E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame54.rnc"

DATA_F7CB90:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame55.rnc"

DATA_F7D205:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame2.rnc"

DATA_F7D868:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame64.rnc"

DATA_F7DF1E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame65.rnc"

DATA_F7E59B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame67.rnc"

DATA_F7EC56:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame68.rnc"

DATA_F7F2ED:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame69.rnc"

DATA_F7F972:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame70.rnc"

%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF8Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F80000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame120.rnc"

DATA_F80629:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame121.rnc"

DATA_F80C30:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame55.rnc"

DATA_F8122A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame56.rnc"

DATA_F81859:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame57.rnc"

DATA_F81E50:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame58.rnc"

DATA_F82449:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame60.rnc"

DATA_F82A71:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame71.rnc"

DATA_F83083:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame75.rnc"

DATA_F836C2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame77.rnc"

DATA_F83CBF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame79.rnc"

DATA_F842B8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame80.rnc"

DATA_F848F5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame98.rnc"

DATA_F84F2F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame100.rnc"

DATA_F85531:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame142.rnc"

DATA_F85B52:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame109.rnc"

DATA_F8618A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame15.rnc"

DATA_F86785:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame16.rnc"

DATA_F86D86:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame21.rnc"

DATA_F87398:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame22.rnc"

DATA_F879AC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame57.rnc"

DATA_F87FE3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame58.rnc"

DATA_F88610:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame66.rnc"

DATA_F88C29:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame68.rnc"

DATA_F8926C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame20.rnc"

DATA_F897EE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame24.rnc"

DATA_F89DF3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame25.rnc"

DATA_F8A426:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame53.rnc"

DATA_F8AA50:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame56.rnc"

DATA_F8B068:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame58.rnc"

DATA_F8B67D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame61.rnc"

DATA_F8BC74:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame62.rnc"

DATA_F8C26A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame64.rnc"

DATA_F8C86B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame68.rnc"

DATA_F8CE7C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame6.rnc"

DATA_F8D488:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame7.rnc"

DATA_F8DAD6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame11.rnc"

DATA_F8E12C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame19.rnc"

DATA_F8E76E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame60.rnc"

DATA_F8ED91:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame61.rnc"

DATA_F8F393:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame63.rnc"

DATA_F8F9B1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame66.rnc"

%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankF9Macros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_F90000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame116.rnc"

DATA_F905CA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame122.rnc"

DATA_F90BAD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame51.rnc"

DATA_F9117E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame52.rnc"

DATA_F91760:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame53.rnc"

DATA_F91D35:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame54.rnc"

DATA_F92328:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame61.rnc"

DATA_F928F7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame62.rnc"

DATA_F92ECA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame63.rnc"

DATA_F93495:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame67.rnc"

DATA_F93A72:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame70.rnc"

DATA_F9403C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame99.rnc"

DATA_F9460F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame102.rnc"

DATA_F94BB7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame106.rnc"

DATA_F95161:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame107.rnc"

DATA_F956FB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame125.rnc"

DATA_F95C95:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame143.rnc"

DATA_F9626F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame40.rnc"

DATA_F9647C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame106.rnc"

DATA_F96A2F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame107.rnc"

DATA_F97018:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame108.rnc"

DATA_F9760C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame14.rnc"

DATA_F97BE5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame20.rnc"

DATA_F981A6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame23.rnc"

DATA_F9875F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame1.rnc"

DATA_F98D33:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame14.rnc"

DATA_F992D6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame15.rnc"

DATA_F99888:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame16.rnc"

DATA_F99E3A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame18.rnc"

DATA_F9A3E9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame19.rnc"

DATA_F9A992:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame22.rnc"

DATA_F9AF48:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame23.rnc"

DATA_F9B514:
	dw $004E
	dd DATA_E76424,DATA_EE828F,DATA_E66F16,DATA_E66F1A,DATA_E66F1E,DATA_E78609,DATA_E9076A,DATA_EA6889
	dd DATA_EB7748,DATA_ECCAAE,DATA_ECCAB2,DATA_F6BA4A,DATA_F34AC9,DATA_EE8E71,DATA_EB774C,DATA_E9076E
	dd DATA_E91AA5,DATA_E806AD,DATA_E81B17,DATA_E8306D,DATA_E8452C,DATA_E92E44,DATA_EA688D,DATA_ED7AB6
	dd DATA_ED88BD,DATA_ED960F,DATA_EE99F6,DATA_EFAA8F,DATA_EFB542,DATA_F0841A,DATA_F08E91,DATA_F117EE
	dd DATA_F24253,DATA_F35381,DATA_F24BB2,DATA_F35C6D,DATA_F36559,DATA_F36DEF,DATA_F48BC7,DATA_F6C15C
	dd DATA_F6C868,DATA_F5BE67,DATA_F5C5C7,DATA_F6CF5F,DATA_F6D674,DATA_F6DD93,DATA_F7B180,DATA_F7B820
	dd DATA_F6E492,DATA_ECCAB6,DATA_EDA27C,DATA_F7BECF,DATA_F8A426,DATA_F7C52E,DATA_F7CB90,DATA_F8AA50
	dd DATA_F9B64E,DATA_F8B068,DATA_F9BC30,DATA_F9C1D6,DATA_F8B67D,DATA_F8BC74,DATA_F9C7A8,DATA_F8C26A
	dd DATA_F9CD76,DATA_F9D34B,DATA_F9D910,DATA_F8C86B,DATA_FAC8F5,DATA_FACE89,DATA_FBCFDA,DATA_FAD3E7
	dd DATA_FBD50F,DATA_FBDA42,DATA_FBDF80,DATA_FBE4A3,DATA_FBE9DB,DATA_FBEEED

DATA_F9B64E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame57.rnc"

DATA_F9BC30:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame59.rnc"

DATA_F9C1D6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame60.rnc"

DATA_F9C7A8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame63.rnc"

DATA_F9CD76:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame65.rnc"

DATA_F9D34B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame66.rnc"

DATA_F9D910:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame67.rnc"

DATA_F9DEB6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame3.rnc"

DATA_F9E48F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame14.rnc"

DATA_F9EA39:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame53.rnc"

DATA_F9EFDB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame59.rnc"

DATA_F9F581:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame62.rnc"

	%InsertGarbageData($F9FB62, incbin, UNK_F9FB62.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankFAMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_FA0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame21.rnc"

DATA_FA0548:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame23.rnc"

DATA_FA0A94:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame24.rnc"

DATA_FA0FEB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame25.rnc"

DATA_FA1544:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame26.rnc"

DATA_FA1AB4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame27.rnc"

DATA_FA201A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame28.rnc"

DATA_FA25B0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame29.rnc"

DATA_FA2B28:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame30.rnc"

DATA_FA3091:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame31.rnc"

DATA_FA3605:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame32.rnc"

DATA_FA3B6C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame41.rnc"

DATA_FA40C3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame42.rnc"

DATA_FA4627:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame43.rnc"

DATA_FA4BA7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame44.rnc"

DATA_FA50F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame50.rnc"

DATA_FA566C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame64.rnc"

DATA_FA5BFD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame68.rnc"

DATA_FA618A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame78.rnc"

DATA_FA6708:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame103.rnc"

DATA_FA6C90:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame108.rnc"

DATA_FA71DE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame141.rnc"

DATA_FA7741:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame144.rnc"

DATA_FA7CA1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame99.rnc"

DATA_FA81F1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame103.rnc"

DATA_FA8740:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame104.rnc"

DATA_FA8CC5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame105.rnc"

DATA_FA9255:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame13.rnc"

DATA_FA97BF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame56.rnc"

DATA_FA9D2B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame67.rnc"

DATA_FAA2AF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame9.rnc"

DATA_FAA827:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame10.rnc"

DATA_FAAD8D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame11.rnc"

DATA_FAB304:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame12.rnc"

DATA_FAB85A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame13.rnc"

DATA_FABDDE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame17.rnc"

DATA_FAC36C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame21.rnc"

DATA_FAC8F5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame69.rnc"

DATA_FACE89:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame70.rnc"

DATA_FAD3E7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame72.rnc"

DATA_FAD96C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame4.rnc"

DATA_FADEFF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame5.rnc"

DATA_FAE45B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame8.rnc"

DATA_FAE514:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame54.rnc"

DATA_FAEA63:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame55.rnc"

DATA_FAEFE4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame56.rnc"

DATA_FAF554:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame57.rnc"

DATA_FAFAA3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame58.rnc"

	%FREE_BYTES($FAFFFF, 1, $02)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankFBMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_FB0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame12.rnc"

DATA_FB04FC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame14.rnc"

DATA_FB09DB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame19.rnc"

DATA_FB0ED6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame20.rnc"

DATA_FB13D3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame22.rnc"

DATA_FB1906:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame35.rnc"

DATA_FB1DEA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame36.rnc"

DATA_FB2309:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame39.rnc"

DATA_FB281D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame40.rnc"

DATA_FB2D51:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame45.rnc"

DATA_FB326F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame46.rnc"

DATA_FB375D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame48.rnc"

DATA_FB3C4B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame49.rnc"

DATA_FB413C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame66.rnc"

DATA_FB4662:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame69.rnc"

DATA_FB4B6A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame105.rnc"

DATA_FB509A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame111.rnc"

DATA_FB55B6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame115.rnc"

DATA_FB5AE0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame116.rnc"

DATA_FB5FEB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame122.rnc"

DATA_FB6525:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame124.rnc"

DATA_FB6A2C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame127.rnc"

DATA_FB6F29:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame89.rnc"

DATA_FB742B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame90.rnc"

DATA_FB7950:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame91.rnc"

DATA_FB7E7E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame92.rnc"

DATA_FB83B9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame93.rnc"

DATA_FB88D5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame94.rnc"

DATA_FB8DB9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame95.rnc"

DATA_FB929F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame96.rnc"

DATA_FB979E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame97.rnc"

DATA_FB9CB0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame98.rnc"

DATA_FBA1C9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame100.rnc"

DATA_FBA6EE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame101.rnc"

DATA_FBAC36:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame102.rnc"

DATA_FBB16C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame12.rnc"

DATA_FBB69F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame24.rnc"

DATA_FBBBC7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame5.rnc"

DATA_FBC0BA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame6.rnc"

DATA_FBC5A1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame7.rnc"

DATA_FBCAB0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame8.rnc"

DATA_FBCFDA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame71.rnc"

DATA_FBD50F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame73.rnc"

DATA_FBDA42:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame74.rnc"

DATA_FBDF80:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame75.rnc"

DATA_FBE4A3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame76.rnc"

DATA_FBE9DB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame77.rnc"

DATA_FBEEED:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorDefeated_Frame78.rnc"

DATA_FBF3F5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame35.rnc"

DATA_FBF5E5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame52.rnc"

DATA_FBFAD5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame116.rnc"

	%FREE_BYTES($FBFFFF, 1, $1C)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankFCMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_FC0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame81.rnc"

DATA_FC0489:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame82.rnc"

DATA_FC0938:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame111.rnc"

DATA_FC0DBC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame115.rnc"

DATA_FC11FF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame3.rnc"

DATA_FC164C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame8.rnc"

DATA_FC1A98:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame9.rnc"

DATA_FC1EF2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame10.rnc"

DATA_FC23B2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame11.rnc"

DATA_FC2877:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame13.rnc"

DATA_FC2D46:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame15.rnc"

DATA_FC31E9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame16.rnc"

DATA_FC366D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame17.rnc"

DATA_FC3ADC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame18.rnc"

DATA_FC3F6D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame37.rnc"

DATA_FC442E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame38.rnc"

DATA_FC490D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame47.rnc"

DATA_FC4D89:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame104.rnc"

DATA_FC525E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame109.rnc"

DATA_FC56FB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame110.rnc"

DATA_FC5B4E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame112.rnc"

DATA_FC601B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame113.rnc"

DATA_FC64F1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame114.rnc"

DATA_FC699B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame120.rnc"

DATA_FC6DE6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame121.rnc"

DATA_FC72BF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame123.rnc"

DATA_FC7782:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame126.rnc"

DATA_FC7C4B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame128.rnc"

DATA_FC8108:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame130.rnc"

DATA_FC8575:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame131.rnc"

DATA_FC89E7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame132.rnc"

DATA_FC8E63:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame133.rnc"

DATA_FC92A3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame136.rnc"

DATA_FC96F2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame137.rnc"

DATA_FC9B9A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame138.rnc"

DATA_FCA043:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame139.rnc"

DATA_FCA499:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame84.rnc"

DATA_FCA8F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame85.rnc"

DATA_FCAD53:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame86.rnc"

DATA_FCB1DA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame87.rnc"

DATA_FCB69F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame88.rnc"

DATA_FCBB73:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame2.rnc"

DATA_FCBFAF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame3.rnc"

DATA_FCC431:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame4.rnc"

DATA_FCC8BA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame5.rnc"

DATA_FCCD3B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame6.rnc"

DATA_FCD1F4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame7.rnc"

DATA_FCD68B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame8.rnc"

DATA_FCDB60:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame9.rnc"

DATA_FCE000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame10.rnc"

DATA_FCE4A5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame11.rnc"

DATA_FCE943:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame25.rnc"

DATA_FCEDB8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame55.rnc"

DATA_FCF24C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame3.rnc"

DATA_FCF6C4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherIntro_Frame4.rnc"

DATA_FCFB5C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame26.rnc"

DATA_FCFBAE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame15.rnc"

	%InsertGarbageData($FCFFFE, incbin, UNK_FCFFFE.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankFDMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_FD0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame28.rnc"

DATA_FD0135:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame72.rnc"

DATA_FD03EB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame73.rnc"

DATA_FD0728:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame74.rnc"

DATA_FD0A5F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame75.rnc"

DATA_FD0D55:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame76.rnc"

DATA_FD10C0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame77.rnc"

DATA_FD13FF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame78.rnc"

DATA_FD1756:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame79.rnc"

DATA_FD1B0D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame80.rnc"

DATA_FD1EED:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame83.rnc"

DATA_FD22F4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame84.rnc"

DATA_FD25D2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame110.rnc"

DATA_FD2933:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame112.rnc"

DATA_FD2CBA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame113.rnc"

DATA_FD2FD5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame114.rnc"

DATA_FD3308:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame4.rnc"

DATA_FD3701:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame5.rnc"

DATA_FD3AA1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame6.rnc"

DATA_FD3EC3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame7.rnc"

DATA_FD42E7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame118.rnc"

DATA_FD46F2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame119.rnc"

DATA_FD4B28:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame129.rnc"

DATA_FD4F5B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame134.rnc"

DATA_FD5333:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame135.rnc"

DATA_FD574B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame59.rnc"

DATA_FD59E4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame60.rnc"

DATA_FD5C87:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame61.rnc"

DATA_FD5F43:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame62.rnc"

DATA_FD6216:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame63.rnc"

DATA_FD64E0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame64.rnc"

DATA_FD67B7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame65.rnc"

DATA_FD6A9C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame66.rnc"

DATA_FD6D75:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame67.rnc"

DATA_FD7067:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame68.rnc"

DATA_FD7396:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame69.rnc"

DATA_FD76D4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame70.rnc"

DATA_FD7A1E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame71.rnc"

DATA_FD7D5E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame72.rnc"

DATA_FD808A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame73.rnc"

DATA_FD83F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame74.rnc"

DATA_FD874D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame75.rnc"

DATA_FD8ABC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame76.rnc"

DATA_FD8E14:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame77.rnc"

DATA_FD9175:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame78.rnc"

DATA_FD94D5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame79.rnc"

DATA_FD983D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame80.rnc"

DATA_FD9BBC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame81.rnc"

DATA_FD9F50:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame82.rnc"

DATA_FDA366:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame83.rnc"

DATA_FDA795:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame26.rnc"

DATA_FDABB0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame27.rnc"

DATA_FDAFC1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame28.rnc"

DATA_FDB3C8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame29.rnc"

DATA_FDB7D0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame30.rnc"

DATA_FDBBA8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame46.rnc"

DATA_FDBE76:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame48.rnc"

DATA_FDC161:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame49.rnc"

DATA_FDC466:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame50.rnc"

DATA_FDC7BD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame51.rnc"

DATA_FDCB5B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame52.rnc"

DATA_FDCF05:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame54.rnc"

DATA_FDD314:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame100.rnc"

DATA_FDD5C5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame101.rnc"

DATA_FDD8B5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame102.rnc"

DATA_FDDB57:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame103.rnc"

DATA_FDDE27:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame104.rnc"

DATA_FDE146:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame105.rnc"

DATA_FDE434:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame106.rnc"

DATA_FDE71A:
	dw $0029
	dd DATA_E6B7B0,DATA_F5D4BC,DATA_F5DC38,DATA_F49372,DATA_F49B38,DATA_F6EB5E,DATA_F4A354,DATA_F4AB33
	dd DATA_F5E3C1,DATA_F5EB39,DATA_F8DAD6,DATA_F37627,DATA_F4B2D5,DATA_F179AC,DATA_F279CC,DATA_F37E9E
	dd DATA_F3877C,DATA_F38FE2,DATA_F8E12C,DATA_F5F278,DATA_F4BA79,DATA_ECF1B0,DATA_EDCAFE,DATA_EDCB02
	dd DATA_E6DDA2,DATA_EDCB06,DATA_EDCB0A,DATA_EDCB0E,DATA_EDCB12,DATA_F0CC51,DATA_F0CC55,DATA_F18396
	dd DATA_FF65AF,DATA_FF65B3,DATA_FF65B7,DATA_FF65BB,DATA_FF65BF,DATA_FF65C3,DATA_FF65C7,DATA_FF65CB
	dd DATA_FF65CF

DATA_FDE7C0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame2.rnc"

DATA_FDEB25:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame3.rnc"

DATA_FDEEA4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame4.rnc"

DATA_FDF1D7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame5.rnc"

DATA_FDF4D7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame13.rnc"

DATA_FDF7D4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame16.rnc"

DATA_FDFAC5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame119.rnc"

	%InsertGarbageData($FDFD8F, incbin, UNK_FDFD8F.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankFEMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_FE0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame13.rnc"

DATA_FE01DD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame15.rnc"

DATA_FE0382:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame16.rnc"

DATA_FE054E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame17.rnc"

DATA_FE0707:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame18.rnc"

DATA_FE0897:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame19.rnc"

DATA_FE0A78:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame20.rnc"

DATA_FE0C54:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame21.rnc"

DATA_FE0E2C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame22.rnc"

DATA_FE0FD4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame24.rnc"

DATA_FE1160:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame26.rnc"

DATA_FE1304:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame54.rnc"

DATA_FE1483:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame55.rnc"

DATA_FE1617:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame56.rnc"

DATA_FE17CE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame57.rnc"

DATA_FE197A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame58.rnc"

DATA_FE1B52:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame59.rnc"

DATA_FE1D48:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame60.rnc"

DATA_FE1F4F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame61.rnc"

DATA_FE213C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame62.rnc"

DATA_FE231F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame63.rnc"

DATA_FE2518:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame64.rnc"

DATA_FE271A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame65.rnc"

DATA_FE2997:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame66.rnc"

DATA_FE2C1E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame67.rnc"

DATA_FE2E90:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame68.rnc"

DATA_FE3103:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame69.rnc"

DATA_FE3365:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame70.rnc"

DATA_FE35C5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame71.rnc"

DATA_FE3823:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame85.rnc"

DATA_FE3A8A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame86.rnc"

DATA_FE3C25:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame105.rnc"

DATA_FE3E13:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame106.rnc"

DATA_FE3FFA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame107.rnc"

DATA_FE41F1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame108.rnc"

DATA_FE4441:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame109.rnc"

DATA_FE46B7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame16.rnc"

DATA_FE4801:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame22.rnc"

DATA_FE4989:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame26.rnc"

DATA_FE4B0F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame28.rnc"

DATA_FE4CA2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame29.rnc"

DATA_FE4E46:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame30.rnc"

DATA_FE4FF6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame31.rnc"

DATA_FE519E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame32.rnc"

DATA_FE536C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame33.rnc"

DATA_FE552A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame34.rnc"

DATA_FE56E4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame35.rnc"

DATA_FE58AE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame36.rnc"

DATA_FE5A80:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame37.rnc"

DATA_FE5C44:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame38.rnc"

DATA_FE5E1C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame39.rnc"

DATA_FE6026:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame41.rnc"

DATA_FE6231:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame42.rnc"

DATA_FE646E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame43.rnc"

DATA_FE6694:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame44.rnc"

DATA_FE68A6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame45.rnc"

DATA_FE6AD0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame46.rnc"

DATA_FE6CFB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame48.rnc"

DATA_FE6F57:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame49.rnc"

DATA_FE71D8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame50.rnc"

DATA_FE7458:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame51.rnc"

DATA_FE76CE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame52.rnc"

DATA_FE794F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame53.rnc"

DATA_FE7BCE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame54.rnc"

DATA_FE7E5C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame55.rnc"

DATA_FE80CB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame56.rnc"

DATA_FE8353:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame57.rnc"

DATA_FE85E1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame58.rnc"

DATA_FE8854:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame32.rnc"

DATA_FE8A7A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame33.rnc"

DATA_FE8C83:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame34.rnc"

DATA_FE8ED3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame35.rnc"

DATA_FE912D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame36.rnc"

DATA_FE934B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame37.rnc"

DATA_FE9596:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame38.rnc"

DATA_FE979E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame39.rnc"

DATA_FE99E5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame40.rnc"

DATA_FE9C45:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame41.rnc"

DATA_FE9E83:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame42.rnc"

DATA_FEA0F0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame43.rnc"

DATA_FEA35D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame44.rnc"

DATA_FEA5BE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame45.rnc"

DATA_FEA7F6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_SupervisorIntro_Frame47.rnc"

DATA_FEAA6D:
	dw $001E
	dd DATA_ED0000,DATA_EE0000,DATA_EE0C0C,DATA_EE17F6,DATA_EF0000,DATA_EE237E,DATA_EF0B6D,DATA_EF165D
	dd DATA_EF211C,DATA_EF2BBE,DATA_EF36D5,DATA_EE2EF4,DATA_EE3A78,DATA_ED0CA7,DATA_ED1959,DATA_E70000
	dd DATA_EA0000,DATA_EA1015,DATA_EA20B1,DATA_EA30F2,DATA_EA423E,DATA_EA539D,DATA_EB0000,DATA_EC0000
	dd DATA_ED2683,DATA_EC0E24,DATA_EB0F07,DATA_EB1DFA,DATA_EB2CE6,DATA_EC1C92

DATA_FEAAE7:
	dw $001A
	dd DATA_E66F22,DATA_F7D205,DATA_F9DEB6,DATA_FAD96C,DATA_FADEFF,DATA_F8CE7C,DATA_F8D488,DATA_FAE45B
	dd DATA_FF5510,DATA_FF557A,DATA_FF55E8,DATA_FF56A1,DATA_FF57AD,DATA_FF58BB,DATA_FEACC5,DATA_FEAE4C
	dd DATA_FEB047,DATA_FEB244,DATA_FEB3D6,DATA_FEB573,DATA_FF59ED,DATA_FF5B2D,DATA_FF5C6D,DATA_FF5D95
	dd DATA_FF5EAA,DATA_FF5F6A

DATA_FEAB51:
	dw $0015
	dd DATA_E7A694,DATA_EBD1EC,DATA_EABBB4,DATA_EACCC0,DATA_E952F9,DATA_E96546,DATA_E977CF,DATA_E98B84
	dd DATA_E859AB,DATA_E99F44,DATA_E86DE2,DATA_E8831C,DATA_E9B2DE,DATA_E8981C,DATA_E9C603,DATA_E9D93D
	dd DATA_E9ECE2,DATA_E8ABFC,DATA_E8BFC1,DATA_E7C791,DATA_E8D3AA

DATA_FEABA7:
	dw $001B
	dd DATA_E693B1,DATA_FDE7C0,DATA_FDEB25,DATA_FDEEA4,DATA_FDF1D7,DATA_FEB71B,DATA_FEB93C,DATA_FEBB27
	dd DATA_FEBCF0,DATA_FEBEC8,DATA_FEC082,DATA_FEC232,DATA_FEC3CB,DATA_FEC574,DATA_FEC715,DATA_FEC89F
	dd DATA_FECA30,DATA_FF5FC4,DATA_FF6139,DATA_FF62A4,DATA_FECBB9,DATA_FECD63,DATA_FECF3A,DATA_FED0D9
	dd DATA_FF6408,DATA_FCFB5C,DATA_FF6585

DATA_FEAC15:
	dw $0014
	dd DATA_E8E90E,DATA_FF5F88,DATA_ECE6DC,DATA_F098B0,DATA_F0A2FC,DATA_F0AD84,DATA_F0B7E1,DATA_F121AA
	dd DATA_F0C22E,DATA_F12BAD,DATA_F135A8,DATA_F13F9D,DATA_F14981,DATA_F15324,DATA_F15CF6,DATA_F1668C
	dd DATA_F25DFF,DATA_F26761,DATA_F2709A,DATA_F17004

DATA_FEAC67:
	dw $0017
	dd DATA_E7860D,DATA_EDB07F,DATA_EFBFFB,DATA_EEA5B8,DATA_EEB189,DATA_EEBD04,DATA_EEC91D,DATA_EED53E
	dd DATA_EDBD3D,DATA_ECD8C8,DATA_EB860E,DATA_EA78B1,DATA_EA88DC,DATA_EA9A04,DATA_E94144,DATA_EAAB5E
	dd DATA_EB953B,DATA_EBA4D5,DATA_EBB4A2,DATA_EBC3D1,DATA_EEE0B3,DATA_F254ED,DATA_F5CD52

DATA_FEACC5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame15.rnc"

DATA_FEAE4C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame16.rnc"

DATA_FEB047:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame17.rnc"

DATA_FEB244:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame18.rnc"

DATA_FEB3D6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame19.rnc"

DATA_FEB573:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame20.rnc"

DATA_FEB71B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame6.rnc"

DATA_FEB93C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame7.rnc"

DATA_FEBB27:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame8.rnc"

DATA_FEBCF0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame9.rnc"

DATA_FEBEC8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame10.rnc"

DATA_FEC082:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame11.rnc"

DATA_FEC232:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame12.rnc"

DATA_FEC3CB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame13.rnc"

DATA_FEC574:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame14.rnc"

DATA_FEC715:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame15.rnc"

DATA_FEC89F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame16.rnc"

DATA_FECA30:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame17.rnc"

DATA_FECBB9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame21.rnc"

DATA_FECD63:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame22.rnc"

DATA_FECF3A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame23.rnc"

DATA_FED0D9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame24.rnc"

DATA_FED267:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame17.rnc"

DATA_FED43B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame25.rnc"

DATA_FED625:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame26.rnc"

DATA_FED827:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame27.rnc"

DATA_FEDA51:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame28.rnc"

DATA_FEDC50:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame29.rnc"

DATA_FEDE46:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame30.rnc"

DATA_FEE04F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame31.rnc"

DATA_FEE24B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame32.rnc"

DATA_FEE4A0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame33.rnc"

DATA_FEE6BA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame34.rnc"

DATA_FEE91B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame36.rnc"

DATA_FEEB34:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame37.rnc"

DATA_FEED84:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame38.rnc"

DATA_FEEFAD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame39.rnc"

DATA_FEF180:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame40.rnc"

DATA_FEF36D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame117.rnc"

DATA_FEF549:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame118.rnc"

	%InsertGarbageData($FEF726, incbin, UNK_FEF726.bin)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTRBankFFMacros(StartBank, EndBank)
%BANK_START(<StartBank>)

DATA_FF0000:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame2.rnc"

DATA_FF00A9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame3.rnc"

DATA_FF00E1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame4.rnc"

DATA_FF0168:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame5.rnc"

DATA_FF01EC:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame6.rnc"

DATA_FF0262:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame7.rnc"

DATA_FF0310:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame8.rnc"

DATA_FF03D6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame9.rnc"

DATA_FF04AA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame10.rnc"

DATA_FF0569:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame11.rnc"

DATA_FF0695:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame12.rnc"

DATA_FF07E5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame14.rnc"

DATA_FF093F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame23.rnc"

DATA_FF0AB7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame25.rnc"

DATA_FF0C24:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame27.rnc"

DATA_FF0D9F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame29.rnc"

DATA_FF0E8C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame30.rnc"

DATA_FF0F72:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame31.rnc"

DATA_FF1079:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame32.rnc"

DATA_FF11A6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame33.rnc"

DATA_FF12F7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame34.rnc"

DATA_FF1431:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame35.rnc"

DATA_FF1568:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame36.rnc"

DATA_FF1612:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame37.rnc"

DATA_FF16A0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame38.rnc"

DATA_FF1728:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame39.rnc"

DATA_FF17D2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame40.rnc"

DATA_FF184E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame41.rnc"

DATA_FF18E8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame42.rnc"

DATA_FF198E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame43.rnc"

DATA_FF1A46:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame44.rnc"

DATA_FF1AE8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame45.rnc"

DATA_FF1B94:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame46.rnc"

DATA_FF1C5C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame47.rnc"

DATA_FF1D42:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame48.rnc"

DATA_FF1E26:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame49.rnc"

DATA_FF1EF6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame50.rnc"

DATA_FF1FC2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame51.rnc"

DATA_FF20C4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame52.rnc"

DATA_FF21F8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame53.rnc"

DATA_FF234B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame87.rnc"

DATA_FF244D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame88.rnc"

DATA_FF24FD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame90.rnc"

DATA_FF25AB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame91.rnc"

DATA_FF266F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame92.rnc"

DATA_FF272F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame93.rnc"

DATA_FF2801:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame94.rnc"

DATA_FF28E5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame95.rnc"

DATA_FF29DB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame96.rnc"

DATA_FF2ABD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame97.rnc"

DATA_FF2B7F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame98.rnc"

DATA_FF2C77:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame99.rnc"

DATA_FF2D97:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame100.rnc"

DATA_FF2EC1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame101.rnc"

DATA_FF301C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame102.rnc"

DATA_FF3186:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame103.rnc"

DATA_FF32B6:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryIntro_Frame104.rnc"

DATA_FF33F8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame34.rnc"

DATA_FF3529:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame65.rnc"

DATA_FF35F7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApeIntro_Frame96.rnc"

DATA_FF3711:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame2.rnc"

DATA_FF383F:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame3.rnc"

DATA_FF39A9:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame4.rnc"

DATA_FF3ADD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame5.rnc"

DATA_FF3C40:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame6.rnc"

DATA_FF3DA4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame7.rnc"

DATA_FF3EF2:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame8.rnc"

DATA_FF4020:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame9.rnc"

DATA_FF4164:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame10.rnc"

DATA_FF42AA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame11.rnc"

DATA_FF43DA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame12.rnc"

DATA_FF4516:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame13.rnc"

DATA_FF463E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame14.rnc"

DATA_FF4785:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame15.rnc"

DATA_FF48B5:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame17.rnc"

DATA_FF49E3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame18.rnc"

DATA_FF4B3D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame19.rnc"

DATA_FF4C89:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame20.rnc"

DATA_FF4DEB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame21.rnc"

DATA_FF4F4A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame23.rnc"

DATA_FF509E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame24.rnc"

DATA_FF51F0:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame25.rnc"

DATA_FF534C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderIntro_Frame27.rnc"

DATA_FF54C2:
	dw $0013
	dd DATA_EADE0E,DATA_EAEF86,DATA_EBE137,DATA_EBF0D6,DATA_ECF1B4,DATA_EDD8F0,DATA_EDE6A2,DATA_EDF37D
	dd DATA_EEF410,DATA_EFCB16,DATA_EFD688,DATA_EFE1D9,DATA_EFECCD,DATA_F0F5A8,DATA_F1E4EA,DATA_F1EEC4
	dd DATA_F2DD62,DATA_F2E6CC,DATA_F2EFC2

DATA_FF5510:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame9.rnc"

DATA_FF557A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame10.rnc"

DATA_FF55E8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame11.rnc"

DATA_FF56A1:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame12.rnc"

DATA_FF57AD:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame13.rnc"

DATA_FF58BB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame14.rnc"

DATA_FF59ED:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame21.rnc"

DATA_FF5B2D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame22.rnc"

DATA_FF5C6D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame23.rnc"

DATA_FF5D95:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame24.rnc"

DATA_FF5EAA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame25.rnc"

DATA_FF5F6A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_LoaderDefeated_Frame26.rnc"

DATA_FF5F88:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_MilitaryDefeated_Frame2.rnc"

DATA_FF5FC4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame18.rnc"

DATA_FF6139:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame19.rnc"

DATA_FF62A4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame20.rnc"

DATA_FF6408:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame25.rnc"

DATA_FF6585:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CrusherDefeated_Frame27.rnc"

DATA_FF65AF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame33.rnc"

DATA_FF65B3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame34.rnc"

DATA_FF65B7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame35.rnc"

DATA_FF65BB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame36.rnc"

DATA_FF65BF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame37.rnc"

DATA_FF65C3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame38.rnc"

DATA_FF65C7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame39.rnc"

DATA_FF65CB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame40.rnc"

DATA_FF65CF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_CyborgDefeated_Frame41.rnc"

DATA_FF65D3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame2.rnc"

DATA_FF65D7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame3.rnc"

DATA_FF65DB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame4.rnc"

DATA_FF65DF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame5.rnc"

DATA_FF65E3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame6.rnc"

DATA_FF65E7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame7.rnc"

DATA_FF65EB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame8.rnc"

DATA_FF65EF:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame9.rnc"

DATA_FF65F3:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame10.rnc"

DATA_FF65F7:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame12.rnc"

DATA_FF65FB:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame18.rnc"

DATA_FF6770:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame19.rnc"

DATA_FF689A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame20.rnc"

DATA_FF699C:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame21.rnc"

DATA_FF6A9B:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame22.rnc"

DATA_FF6B65:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame23.rnc"

DATA_FF6C23:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame24.rnc"

DATA_FF6CEA:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame41.rnc"

DATA_FF6D26:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame42.rnc"

DATA_FF6D5E:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame43.rnc"

DATA_FF6D9A:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame44.rnc"

DATA_FF6DC4:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame45.rnc"

DATA_FF6E04:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame46.rnc"

DATA_FF6E36:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame47.rnc"

DATA_FF6E72:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame48.rnc"

DATA_FF6EAE:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame49.rnc"

DATA_FF6EE8:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame50.rnc"

DATA_FF6F30:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame120.rnc"

DATA_FF708D:
	incbin "Graphics/Compressed/FMV/GFX_Layer1_ApproachingMetropolis4_Frame121.rnc"

	%InsertGarbageData($FF70DC, incbin, UNK_FF70DC.bin)

UNK_FFE390:
	incbin "Graphics/Compressed/GFX_Layer1_UnusedAbsoluteEntertainmentLogoScreen.rnc"

	%InsertGarbageData($FFF8BE, incsrc, ADDR_FFF8BE.asm)
	%FREE_BYTES($FFFB5F, 1185, $00)
%BANK_END(<EndBank>)
endmacro

;#############################################################################################################
;#############################################################################################################
