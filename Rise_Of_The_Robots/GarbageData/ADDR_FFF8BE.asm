
ADDR_FFF8BE:
	REP.b #$38
	LDA.b $06,s
	STA.b $04
	LDA.b $08,s
	STA.b $02
	LDA.b $0A,s
	STA.b $00
	SEP.b #$21
	LDA.b $04,s
	PHB
	PHA
	PLB
	STZ.b $08
	STZ.b $0A
	LDX.w #$0000
	REP.b #$21
	LDA.b $00
	ADC.w #$0012
	BCC.b ADDR_FFF8E6
	CLC
	INC.b $02
ADDR_FFF8E6:
	STA.b $00
	SEP.b #$21
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF8F6
	INC.b $01
	BNE.b ADDR_FFF8F6
	INC.b $02
ADDR_FFF8F6:
	ROL
	ASL
	JMP.w ADDR_FFFA74

ADDR_FFF8FB:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF907
	INC.b $01
	BNE.b ADDR_FFF907
	INC.b $02
ADDR_FFF907:
	ROL
	BRA.b ADDR_FFF910

ADDR_FFF90A:
	LDX.w #$0004
ADDR_FFF90D:
	ASL
	BEQ.b ADDR_FFF8FB
ADDR_FFF910:
	ROL.b $07
	DEX
	BNE.b ADDR_FFF90D
	LDX.b $07
	INX
	INX
	INX
	PHA
	REP.b #$20
	LDY.w #$0000
ADDR_FFF920:
	LDA.b [$00]
	STA.b ($04),y
	INY
	INY
	LDA.b $00
	ADC.w #$0002
	BCC.b ADDR_FFF930
	CLC
	INC.b $02
ADDR_FFF930:
	STA.b $00
	LDA.b [$00]
	STA.b ($04),y
	INY
	INY
	LDA.b $00
	ADC.w #$0002
	BCC.b ADDR_FFF942
	CLC
	INC.b $02

ADDR_FFF942:
	STA.b $00
	DEX
	BNE.b ADDR_FFF920
	TYA
	ADC.b $04
	STA.b $04
	SEP.b #$20
	PLA
	JMP.w ADDR_FFFA74

ADDR_FFF952:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF95E
	INC.b $01
	BNE.b ADDR_FFF95E
	INC.b $02
ADDR_FFF95E:
	ROL
	JMP.w ADDR_FFF9C2

ADDR_FFF962:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF96E
	INC.b $01
	BNE.b ADDR_FFF96E
	INC.b $02
ADDR_FFF96E:
	ROL
	BRA.b ADDR_FFF9C7

ADDR_FFF971:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF97D
	INC.b $01
	BNE.b ADDR_FFF97D
	INC.b $02
ADDR_FFF97D:
	ROL
	BRA.b ADDR_FFF9CC

ADDR_FFF980:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF98C
	INC.b $01
	BNE.b ADDR_FFF98C
	INC.b $02
ADDR_FFF98C:
	ROL
	BRA.b ADDR_FFF9E0

ADDR_FFF98F:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF99B
	INC.b $01
	BNE.b ADDR_FFF99B
	INC.b $02
ADDR_FFF99B:
	ROL
	BRA.b ADDR_FFF9E5

ADDR_FFF99E:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF9AA
	INC.b $01
	BNE.b ADDR_FFF9AA
	INC.b $02
ADDR_FFF9AA:
	ROL
	BRA.b ADDR_FFF9EA

ADDR_FFF9AD:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFF9B9
	INC.b $01
	BNE.b ADDR_FFF9B9
	INC.b $02
ADDR_FFF9B9:
	ROL
	BRA.b ADDR_FFF9F8

ADDR_FFF9BC:
	ASL
	BNE.b ADDR_FFF9C2
	JMP.w ADDR_FFF952

ADDR_FFF9C2:
	ROL.b $09
	ASL
	BEQ.b ADDR_FFF962
ADDR_FFF9C7:
	BCC.b ADDR_FFF9DD
	ASL
	BEQ.b ADDR_FFF971
ADDR_FFF9CC:
	DEC.b $09
	ROL.b $09
	LDX.b $09
	CPX.w #$0009
	BNE.b ADDR_FFF9DA
	JMP.w ADDR_FFF90A

ADDR_FFF9DA:
	LDX.w #$0000
ADDR_FFF9DD:
	ASL
	BEQ.b ADDR_FFF980
ADDR_FFF9E0:
	BCC.b ADDR_FFF9FA
	ASL
	BEQ.b ADDR_FFF98F
ADDR_FFF9E5:
	ROL.b $07
	ASL
	BEQ.b ADDR_FFF99E
ADDR_FFF9EA:
	BCC.b ADDR_FFF9EF
	JMP.w ADDR_FFFAD4

ADDR_FFF9EF:
	CPX.b $07
	BNE.b ADDR_FFF9FA
	INC.b $07
ADDR_FFF9F5:
	ASL
	BEQ.b ADDR_FFF9AD
ADDR_FFF9F8:
	ROL.b $07
ADDR_FFF9FA:
	PHA
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFA07
	INC.b $01
	BNE.b ADDR_FFFA07
	INC.b $02
ADDR_FFFA07:
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
	BNE.b ADDR_FFFA31
	SEP.b #$20
	LDA.b ($06),y
	XBA
	LDA.b ($06),y
	REP.b #$20
ADDR_FFFA28:
	STA.b ($04),y
	INY
	INY
	DEX
	BNE.b ADDR_FFFA28
	BRA.b ADDR_FFFA3A

ADDR_FFFA31:
	LDA.b ($06),y
	STA.b ($04),y
	INY
	INY
	DEX
	BNE.b ADDR_FFFA31
ADDR_FFFA3A:
	SEP.b #$20
	BCC.b ADDR_FFFA42
	LDA.b ($06),y
	STA.b ($04),y
ADDR_FFFA42:
	TYA
	ADC.b $04
	STA.b $04
	BCC.b ADDR_FFFA4B
	INC.b $05
ADDR_FFFA4B:
	PLY
	PLA
	BRA.b ADDR_FFFA74

ADDR_FFFA4F:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFA5B
	INC.b $01
	BNE.b ADDR_FFFA5B
	INC.b $02
ADDR_FFFA5B:
	ROL
	BCS.b ADDR_FFFA92
ADDR_FFFA5E:
	XBA
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFA6B
	INC.b $01
	BNE.b ADDR_FFFA6B
	INC.b $02
ADDR_FFFA6B:
	STA.b ($04)
	INC.b $04
	BNE.b ADDR_FFFA73
	INC.b $05
ADDR_FFFA73:
	XBA
ADDR_FFFA74:
	ASL
	BCS.b ADDR_FFFA90
	XBA
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFA84
	INC.b $01
	BNE.b ADDR_FFFA84
	INC.b $02
ADDR_FFFA84:
	STA.b ($04)
	INC.b $04
	BNE.b ADDR_FFFA8C
	INC.b $05
ADDR_FFFA8C:
	XBA
	ASL
	BCC.b ADDR_FFFA5E
ADDR_FFFA90:
	BEQ.b ADDR_FFFA4F
ADDR_FFFA92:
	STZ.b $07
	STZ.b $09
	INC.b $09
	INC.b $09
	ASL
	BEQ.b ADDR_FFFAEB
ADDR_FFFA9D:
	BCS.b ADDR_FFFAA2
	JMP.w ADDR_FFF9BC

ADDR_FFFAA2:
	ASL
	BEQ.b ADDR_FFFAFA

ADDR_FFFAA5:
	BCS.b ADDR_FFFAAA
	JMP.w ADDR_FFF9FA

ADDR_FFFAAA:
	INC.b $09
	ASL
	BEQ.b ADDR_FFFB0A
ADDR_FFFAAF:
	BCS.b ADDR_FFFAB4
	JMP.w ADDR_FFF9DD

ADDR_FFFAB4:
	XBA
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFAC1
	INC.b $01
	BNE.b ADDR_FFFAC1
	INC.b $02
ADDR_FFFAC1:
	STA.b $09
	XBA
	CPX.b $09
	BEQ.b ADDR_FFFB38
	XBA
	LDA.b $09
	CLC
	ADC.b #$08
	STA.b $09
	XBA
	JMP.w ADDR_FFF9DD

ADDR_FFFAD4:
	ASL
	BEQ.b ADDR_FFFB1A
ADDR_FFFAD7:
	XBA
	LDA.b $07
	ROL
	ORA.b #$04
	STA.b $07
	XBA
	ASL
	BEQ.b ADDR_FFFB29
ADDR_FFFAE3:
	BCC.b ADDR_FFFAE8
	JMP.w ADDR_FFF9FA

ADDR_FFFAE8:
	JMP.w ADDR_FFF9F5

ADDR_FFFAEB:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFAF7
	INC.b $01
	BNE.b ADDR_FFFAF7
	INC.b $02
ADDR_FFFAF7:
	ROL
	BRA.b ADDR_FFFA9D

ADDR_FFFAFA:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFB06
	INC.b $01
	BNE.b ADDR_FFFB06
	INC.b $02
ADDR_FFFB06:
	ROL
	JMP.w ADDR_FFFAA5

ADDR_FFFB0A:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFB16
	INC.b $01
	BNE.b ADDR_FFFB16
	INC.b $02
ADDR_FFFB16:
	ROL
	JMP.w ADDR_FFFAAF

ADDR_FFFB1A:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFB26
	INC.b $01
	BNE.b ADDR_FFFB26
	INC.b $02
ADDR_FFFB26:
	ROL
	BRA.b ADDR_FFFAD7

ADDR_FFFB29:
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFB35
	INC.b $01
	BNE.b ADDR_FFFB35
	INC.b $02
ADDR_FFFB35:
	ROL
	BRA.b ADDR_FFFAE3

ADDR_FFFB38:
	ASL
	BNE.b ADDR_FFFB48
	LDA.b [$00]
	INC.b $00
	BNE.b ADDR_FFFB47
	INC.b $01
	BNE.b ADDR_FFFB47
	INC.b $02
ADDR_FFFB47:
	ROL
ADDR_FFFB48:
	BCC.b ADDR_FFFB4D
	JMP.w ADDR_FFFA74

ADDR_FFFB4D:
	PLB
	REP.b #$30
	RTL

ADDR_FFFB51:
	PHP
	SEI
	REP.b #$30
	PHA
	INC.w $0010
	PLA
	PLP
	RTI

ADDR_FFFB5C:
	RTI

ADDR_FFFB5D:
	RTI

ADDR_FFFB5E:
	RTI
