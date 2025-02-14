
;#############################################################################################################
;#############################################################################################################

macro SPC700_RT00_ROTR_SPC700_Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SPC700_Engine

Init:
	CLRP
	MOV.b X, #$FF
	MOV SP, X
	MOV.b $00, #$00
	MOV.b $01, #$02
	MOV.b Y, #$00
CODE_0010:
	MOV.b A, #$00
CODE_0012:
	MOV.b ($00)+y, A
	INC.b $00
	BNE.b CODE_0012
	INC.b $01
	MOV.b A, $01
	CMP.b A, #$FF
	BNE.b CODE_0010
	MOV.b A, #$00
	MOV.b Y, #!REGISTER_DSP_EchoLeftVolume
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_EchoRightVolume
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_MainLeftVolume
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_MainRightVolume
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_PitchModulation
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_NoiseEnable
	CALL.w CODE_00C2
	MOV.b A, #!SourceDirectoryOffset_0400>>8
	MOV.b Y, #!REGISTER_DSP_SourceDirectoryOffset
	CALL.w CODE_00C2
	MOV.b A, #$00
	MOV.b Y, #!REGISTER_DSP_EchoEnable
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_EchoFeedback
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_EchoLeftVolume
	CALL.w CODE_00C2
	MOV.b Y, #!REGISTER_DSP_EchoRightVolume
	CALL.w CODE_00C2
	MOV.b A, #$20
	MOV.b Y, #!REGISTER_DSP_DSPStatusFlags
	CALL.w CODE_00C2
	MOV.b A, #$01
	MOV.b Y, #!REGISTER_DSP_EchoDelay
	CALL.w CODE_00C2
	MOV.b A, #$F7
	MOV.b Y, #!REGISTER_DSP_EchoBufferStartOffset
	CALL.w CODE_00C2
	MOV.b X, #$07
	MOV.b Y, #$00
CODE_0076:
	MOV A, X
	XCN A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.b Y, #$0F
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.b Y, #$E0
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.b Y, #$00
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	DEC X
	BPL.b CODE_0076
	MOV.b A, #$FF
	MOV.b Y, #!REGISTER_DSP_DSPStatusFlags
	CALL.w CODE_00C2
	JMP.w !REGISTER_SPC700_IPLROMLoc

CODE_00C2:
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET
namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_RT01_ROTR_SPC700_Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SPC700_Engine

Main:
	CLRP
	MOV.b X, #$FF
	MOV SP, X
	MOV.b A, #$00
	MOV.b Y, #!REGISTER_DSP_EchoLeftVolume
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_EchoRightVolume
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_MainLeftVolume
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_MainRightVolume
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_PitchModulation
	CALL.w CODE_10F1
	MOV.b A, #!SourceDirectoryOffset_0400>>8
	MOV.b Y, #!REGISTER_DSP_SourceDirectoryOffset
	CALL.w CODE_10F1
	MOV.b X, #$07
	MOV.b Y, #$00
CODE_062A:
	MOV A, X
	XCN A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	INC A
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	DEC X
	BPL.b CODE_062A
	MOV.b X, #$00
	MOV A, X
CODE_063F:
	MOV (X+), A
	CMP.b X, #$F0
	BNE.b CODE_063F
	MOV X, A
CODE_0645:
	MOV.w $0100+x, A
	MOV.w $0200+x, A
	MOV.w $0300+x, A
	INC X
	BNE.b CODE_0645
	CALL.w CODE_10F8
	CALL.w CODE_1157
	CALL.w CODE_080F
	MOV.b A, #$90
	MOV.w !REGISTER_SPC700_ControlRegister, A
	MOV.b A, #$20
	MOV.w !REGISTER_SPC700_Timer0, A
	MOV.b A, #$81
	MOV.w !REGISTER_SPC700_ControlRegister, A
	MOV.b !REGISTER_SPC700_APUPort0, #$00
CODE_066C:
	MOV.b A, !REGISTER_SPC700_APUPort2
	BEQ.b CODE_066C
	MOV.b A, #$FF
	MOV.b $01, A
	MOV.b !REGISTER_SPC700_APUPort0, A
CODE_0676:
	MOV.b A, $2E
	MOV.b Y, #!REGISTER_DSP_KeyOffBits
	CALL.w CODE_10F1
	MOV.b A, #$00
	MOV.b $2E, A
	BBS7.b $1C, CODE_06AC
	MOV.b A, $2F
	MOV.b Y, #!REGISTER_DSP_DSPStatusFlags
	CALL.w CODE_10F1
	CMP.b $1C, $1D
	BNE.b CODE_06AC
	MOV.b A, $31
	MOV.b Y, #!REGISTER_DSP_EchoEnable
	CALL.w CODE_10F1
	MOV.b A, $33
	MOV.b Y, #!REGISTER_DSP_EchoFeedback
	CALL.w CODE_10F1
	MOV.b A, $42
	MOV.b Y, #!REGISTER_DSP_EchoLeftVolume
	CALL.w CODE_10F1
	MOV.b A, $44
	MOV.b Y, #!REGISTER_DSP_EchoRightVolume
	CALL.w CODE_10F1
CODE_06AC:
	MOV.b A, $30
	MOV.b Y, #!REGISTER_DSP_NoiseEnable
	CALL.w CODE_10F1
	MOV.b A, #$00
	MOV.b Y, #!REGISTER_DSP_KeyOffBits
	CALL.w CODE_10F1
	MOV.b A, $2D
	MOV.b Y, #!REGISTER_DSP_KeyOnBits
	CALL.w CODE_10F1
	MOV.b A, #$00
	MOV.b $2D, A
CODE_06C5:
	CALL.w CODE_119F
	MOV.w Y, !REGISTER_SPC700_Counter0
	BEQ.b CODE_06C5
	MOV A, Y
	CLRC
	ADC.b A, $19
	CMP.b A, #$04
	BCC.b CODE_06DE
	CMP.b $1C, $1D
	BEQ.b CODE_06DC
	INC.b $1C
CODE_06DC:
	MOV.b A, #$00
CODE_06DE:
	MOV.b $19, A
	MOV.b A, #$80
	MUL YA
	CMP.b Y, #$00
	BEQ.b CODE_06EC
	MOV.b A, #$00
	SETC
	BRA.b CODE_06EF

CODE_06EC:
	CLRC
	ADC.b A, $22
CODE_06EF:
	MOV.b $22, A
	BCS.b CODE_0708
	MOV.b X, #$00
	MOV.b $1A, #$01
CODE_06F8:
	MOV.b A, $50+x
	BEQ.b CODE_06FF
	CALL.w CODE_0D57
CODE_06FF:
	INC X
	INC X
	ASL.b $1A
	BNE.b CODE_06F8
	JMP.w CODE_0676

CODE_0708:
	CALL.w CODE_089D
	CALL.w CODE_0711
	JMP.w CODE_0676

CODE_0711:
	MOV.b A, $4D
	BMI.b CODE_071B
	CALL.w CODE_0726
	MOV.b $4D, #$FF
CODE_071B:
	MOV.b A, $00
	BMI.b CODE_0725
	CALL.w CODE_0726
	MOV.b $00, #$FF
CODE_0725:
	RET

CODE_0726:
	MOV.b $21, A
	MOV.b Y, #$09
	MUL YA
	MOVW.b $25, YA
	CLRC
	ADC.b $25, $0E
	ADC.b $26, $0F
	MOV.b Y, #$00
	MOV.b A, ($25)+y
	MOV.b $17, A
	AND.b A, #$7F
	MOV.b $15, A
	MOV.b X, #$0E
	MOV.b $1A, #$80
CODE_0743:
	MOV A, X
	LSR A
	MOV Y, A
	INC Y
	MOV.b A, ($25)+y
	CMP.b A, #$FF
	BEQ.b CODE_07A6
	MOV.b $18, A
	MOV.w A, $0311+x
	CMP.b A, $15
	BCC.b CODE_07A6
	MOV.b $36, #$00
	MOV.b $3E, #$00
	MOV.b $34, #$00
	MOV.b $35, #$FF
	CALL.w CODE_07BF
	MOV.b A, $15
	MOV.w $0311+x, A
	MOV.b A, $02
	MOV.w $03A0+x, A
	MOV.b A, #$FF
	MOV.b $50+x, A
	CMP.b X, #$00
	BNE.b CODE_077A
	MOV.b $4C, $21
CODE_077A:
	MOV.b A, $17
	BPL.b CODE_078A
	MOV.w $0370+x, A
	MOV.b A, $18
	MOV.b $91+x, A
	CALL.w CODE_0A6D
	BRA.b CODE_07A6

CODE_078A:
	MOV.b A, $18
	ASL A
	MOV Y, A
	CLRC
	MOV.b A, $0C
	ADC.b A, ($0A)+y
	MOV.b $60+x, A
	MOV.b $70+x, A
	INC Y
	MOV.b A, $0D
	ADC.b A, ($0A)+y
	MOV.b $61+x, A
	MOV.b $71+x, A
	CALL.w CODE_09DE
	CALL.w CODE_0A6D
CODE_07A6:
	LSR.b $1A
	DEC X
	DEC X
	BPL.b CODE_0743
	MOV.b A, #$7F
	MOV.b Y, #!REGISTER_DSP_MainLeftVolume
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b Y, #!REGISTER_DSP_MainRightVolume
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

CODE_07BF:
	MOV.b A, #$FF
	MOV.w $0221+x, A
	MOV.w $0391+x, A
	MOV.w $0311+x, A
	MOV.w $0200+x, A
	MOV.w $0201+x, A
	MOV.b Y, #$0C
	CALL.w CODE_0F39
	MOV.b A, #$00
	MOV.w $0260+x, A
	MOV.w $0211+x, A
	MOV.w $02A1+x, A
	MOV.w $0261+x, A
	MOV.w $0351+x, A
	MOV.w $0390+x, A
	MOV.w $02B0+x, A
	MOV.b $51+x, A
	MOV.b $C0+x, A
	MOV.b $A1+x, A
	MOV.b $C1+x, A
	MOV.w $0300+x, A
	MOV.b $E0+x, A
	MOV.b $E1+x, A
	MOV.b $B0+x, A
	MOV.b $B1+x, A
	MOV.w $0370+x, A
	MOV.b A, $1A
	TCLR.w $002D, A
	TSET.w $002E, A
	MOV.b A, #$01
	MOV.b $A0+x, A
	RET

CODE_080F:
	MOV.b X, #$0E
CODE_0811:
	MOV.b A, #$00
	MOV.b $50+x, A
	MOV.w $0211+x, A
	MOV.b A, #$FF
	MOV.w $0311+x, A
	DEC X
	DEC X
	BPL.b CODE_0811
	MOV.b A, #$00
	MOV Y, A
	MOVW.b $41, YA
	MOVW.b $43, YA
	MOVW.b $38, YA
	MOV.b A, #$01
	CALL.w CODE_0850
	SET5.b $2F
	MOV.b $00, #$FF
	MOV.b $4D, #$FF
	MOV.b $2E, #$FF
	MOV.b $36, #$00
	MOV.b $3E, #$00
	MOV.b $03, #$00
	MOV.b $49, #$00
	MOV.b $4A, #$80
	MOV.b $4C, #$FF
	MOV.b $2D, #$00
	RET

CODE_0850:
	CMP.b A, #$00
	BNE.b CODE_0856
	MOV.b A, #$01
CODE_0856:
	MOV.b $1D, A
	MOV.b Y, #!REGISTER_DSP_EchoDelay
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.w A, !REGISTER_SPC700_ReadWriteToDSPRegister
	AND.b A, #$0F
	EOR.b A, #$FF
	BBC7.b $1C, CODE_086A
	CLRC
	ADC.b A, $1C
CODE_086A:
	MOV.b $1C, A
	MOV.b A, #$00
	MOV.b Y, #!REGISTER_DSP_EchoEnable
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_EchoFeedback
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_EchoLeftVolume
	CALL.w CODE_10F1
	MOV.b Y, #!REGISTER_DSP_EchoRightVolume
	CALL.w CODE_10F1
	MOV.b A, $2F
	OR.b A, #$20
	MOV.b Y, #!REGISTER_DSP_DSPStatusFlags
	CALL.w CODE_10F1
	MOV.b A, $1D
	MOV.b Y, #!REGISTER_DSP_EchoDelay
	CALL.w CODE_10F1
	ASL A
	ASL A
	ASL A
	EOR.b A, #$FF
	MOV.b Y, #!REGISTER_DSP_EchoBufferStartOffset
	CALL.w CODE_10F1
	RET

CODE_089D:
	MOV.b X, #$00
	MOV.b $1E, #$00
	MOV.b $1A, #$01
CODE_08A5:
	MOV.b $1B, X
	MOV.b A, $50+x
	BNE.b CODE_08AE
	JMP.w CODE_094B

CODE_08AE:
	MOV.b A, $4A
	BEQ.b CODE_08BE
	MOV.b $46, #$01
	MOV.b $47, #$00
	MOV.b $48, #$00
	MOV.b $4A, #$00
CODE_08BE:
	MOV.w A, $0351+x
	BEQ.b CODE_08E0
	MOV.w A, $0360+x
	INC A
	MOV.w $0360+x, A
	MOV.b Y, #!REGISTER_DSP_VoiceBits
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.w A, !REGISTER_SPC700_ReadWriteToDSPRegister
	AND.b A, $1A
	BEQ.b CODE_0948
	MOV.b A, #$01
	MOV.b $A0+x, A
	DEC A
	MOV.w $0351+x, A
	BRA.b CODE_0948

CODE_08E0:
	CLRC
	MOV.w A, $0201+x
	ADC.w A, $0200+x
	MOV.w $0201+x, A
	BCC.b CODE_0948
	MOV.w A, $0360+x
	INC A
	MOV.w $0360+x, A
	DEC.b $A0+x
	BNE.b CODE_0948
	CALL.w CODE_1003
CODE_08FA:
	CALL.w CODE_0E4A
	CMP.b A, #$FF
	BNE.b CODE_0912
	MOV.w A, $0370+x
	BEQ.b CODE_0909
	JMP.w CODE_0A28

CODE_0909:
	CALL.w CODE_09DA
	MOV.b A, $50+x
	BNE.b CODE_08FA
	BRA.b CODE_094B

CODE_0912:
	BPL.b CODE_091D
	CMP.b A, #$9E
	BCS.b CODE_091D
	CALL.w CODE_0E3E
	BRA.b CODE_08FA

CODE_091D:
	CALL.w CODE_0AA4
	CALL.w CODE_0E4A
	CMP.b A, #$FF
	BNE.b CODE_092C
	MOV.w $0351+x, A
	BRA.b CODE_0941

CODE_092C:
	ASL A
	MOV.b $A0+x, A
	MOV.w A, $0371+x
	BEQ.b CODE_0941
	CALL.w CODE_0C5F
	MOV.b A, $29
	AND.w A, $0371+x
	CLRC
	ADC.b A, $A0+x
	MOV.b $A0+x, A
CODE_0941:
	MOV.b A, #$00
	MOV.w $0360+x, A
	BRA.b CODE_094B

CODE_0948:
	CALL.w CODE_0CBF
CODE_094B:
	INC X
	INC X
	ASL.b $1A
	BEQ.b CODE_0954
	JMP.w CODE_08A5

CODE_0954:
	MOV.b A, $3E
	BEQ.b CODE_096D
	MOVW.b YA, $3A
	ADDW.b YA, $41
	MOVW.b $41, YA
	MOVW.b YA, $3C
	ADDW.b YA, $43
	DBNZ.b $3E, CODE_096B
	MOVW.b YA, $3E
	MOVW.b $41, YA
	MOV.b Y, $40
CODE_096B:
	MOVW.b $43, YA
CODE_096D:
	MOV.b A, $36
	BEQ.b CODE_0980
	MOVW.b YA, $38
	ADDW.b YA, $34
	DEC.b $36
	BNE.b CODE_097B
	MOVW.b YA, $36
CODE_097B:
	MOVW.b $34, YA
	MOV.b $1E, #$FF
CODE_0980:
	MOV.b X, #$00
	MOV.b $49, #$00
	MOV.b $1A, #$01
CODE_0988:
	MOV.b A, $50+x
	BEQ.b CODE_0992
	OR.b $49, $1A
	CALL.w CODE_0BB1
CODE_0992:
	INC X
	INC X
	ASL.b $1A
	BNE.b CODE_0988
	MOVW.b YA, $38
	BEQ.b CODE_09A3
	MOV.b A, $35
	BNE.b CODE_09A3
	CALL.w CODE_080F
CODE_09A3:
	MOV.b A, $49
	BNE.b CODE_09AC
	MOV.b $4A, #$80
	BRA.b CODE_09BB

CODE_09AC:
	CLRC
	MOV.b A, $48
	ADC.b A, $45
	MOV.b $48, A
	BCC.b CODE_09BB
	INC.b $46
	BNE.b CODE_09BB
	INC.b $47
CODE_09BB:
	CMP.b $4B, #$00
	BNE.b CODE_09C9
	MOV.b A, $49
	MOV.b !REGISTER_SPC700_APUPort1, A
	MOV.b A, $4C
	MOV.b !REGISTER_SPC700_APUPort2, A
	RET

CODE_09C9:
	MOV.b A, $46
	MOV.b $26, $47
	LSR.b $26
	ROR A
	MOV.b !REGISTER_SPC700_APUPort1, A
	MOV.b A, $26
	OR.b A, $4A
	MOV.b !REGISTER_SPC700_APUPort2, A
	RET

CODE_09DA:
	DEC.b $90+x
	BNE.b CODE_0A24
CODE_09DE:
	CALL.w CODE_0A64
	MOV.b $90+x, A
	CMP.b A, #$FF
	BEQ.b CODE_0A30
	CMP.b A, #$FE
	BEQ.b CODE_0A28
	CMP.b A, #$FD
	BEQ.b CODE_0A40
	CMP.b A, #$FC
	BEQ.b CODE_0A5E
	AND.b A, #$40
	BEQ.b CODE_0A1F
	MOV.b A, $51+x
	BNE.b CODE_0A0D
	MOV.b A, $90+x
	AND.b A, #$3F
	MOV.b $51+x, A
	MOV.b A, $70+x
	MOV.w $0250+x, A
	MOV.b A, $71+x
	MOV.w $0251+x, A
	BRA.b CODE_09DE

CODE_0A0D:
	DEC.b $51+x
	BNE.b CODE_0A13
	BRA.b CODE_09DE

CODE_0A13:
	MOV.w A, $0250+x
	MOV.b $70+x, A
	MOV.w A, $0251+x
	MOV.b $71+x, A
	BRA.b CODE_09DE

CODE_0A1F:
	CALL.w CODE_0A64
	MOV.b $91+x, A
CODE_0A24:
	CALL.w CODE_0A6D
	RET

CODE_0A28:
	CALL.w CODE_07BF
	MOV.b A, #$00
	MOV.b $50+x, A
	RET

CODE_0A30:
	CALL.w CODE_0A64
	CLRC
	ADC.b A, $60+x
	MOV.b $70+x, A
	MOV.b A, $61+x
	ADC.b A, #$00
	MOV.b $71+x, A
	BRA.b CODE_09DE

CODE_0A40:
	CALL.w CODE_0A64
	ASL A
	MOV Y, A
	CLRC
	MOV.b A, $0C
	ADC.b A, ($0A)+y
	MOV.b $60+x, A
	MOV.b $70+x, A
	INC Y
	MOV.b A, $0D
	ADC.b A, ($0A)+y
	MOV.b $61+x, A
	MOV.b $71+x, A
	CALL.w CODE_09DE
	CALL.w CODE_0A6D
	RET

CODE_0A5E:
	CALL.w CODE_0A64
	MOV.b $4D, A
	RET

CODE_0A64:
	MOV.b A, ($70+x)
	INC.b $70+x
	BNE.b CODE_0A6C
	INC.b $71+x
CODE_0A6C:
	RET

CODE_0A6D:
	MOV.b A, $91+x
	MOV.b Y, #$02
	MUL YA
	MOVW.b $27, YA
	CLRC
	ADC.b $27, $06
	ADC.b $28, $07
	MOV.b Y, #$00
	MOV.b A, ($27)+y
	PUSH A
	INC Y
	MOV.b A, ($27)+y
	MOV Y, A
	POP A
	MOVW.b $27, YA
	CLRC
	ADC.b $27, $08
	ADC.b $28, $09
	MOV.b A, $27
	MOV.b $80+x, A
	MOV.b A, $28
	MOV.b $81+x, A
	MOV.b A, #$FF
	MOV.w $0361+x, A
	MOV.b A, #$00
	MOV.w $0380+x, A
	MOV.w $0371+x, A
	RET

CODE_0AA4:
	MOV.w A, $0380+x
	BEQ.b CODE_0AB1
	CALL.w CODE_0C5F
	MOV.b A, $29
	AND.w A, $0380+x
CODE_0AB1:
	MOV.b $2B, A
	MOV.w A, $03B0+x
	MOV.b $16, A
	MOV A, Y
	BBS7.b $16, CODE_0AC4
	CLRC
	ADC.w A, $0260+x
	CLRC
	ADC.w A, $0261+x
CODE_0AC4:
	CLRC
	ADC.w A, $0270+x
	CLRC
	ADC.b A, $2B
	MOV.w $0281+x, A
	CLRC
	MOV.w A, $02A1+x
	ADC.w A, $0271+x
	MOV.w $0280+x, A
	MOV.w A, $0350+x
	BEQ.b CODE_0AEE
	CALL.w CODE_0C5F
	MOV.b A, $29
CODE_0AE2:
	CMP.b A, #$19
	BCC.b CODE_0AEB
	SETC
	SBC.b A, #$18
	BRA.b CODE_0AE2

CODE_0AEB:
	CALL.w CODE_0F3F
CODE_0AEE:
	MOV.w A, $02E1+x
	LSR A
	MOV.b A, #$00
	ROR A
	MOV.w $02D0+x, A
	MOV.b A, #$00
	MOV.b $C0+x, A
	MOV.b $A1+x, A
	MOV.w $0300+x, A
	MOV.b $E0+x, A
	MOV.w A, $0390+x
	BEQ.b CODE_0B0F
	BMI.b CODE_0B1B
	MOV.b A, #$FF
	MOV.w $0390+x, A
CODE_0B0F:
	MOV.b A, $4E
	AND.b A, $1A
	BNE.b CODE_0B1B
	OR.b $1E, $1A
	OR.b $2D, $1A
CODE_0B1B:
	MOV.w A, $02B0+x
	MOV.b $D0+x, A
	BEQ.b CODE_0B45
	MOV.w A, $02B1+x
	MOV.b $D1+x, A
	MOV.w A, $02C1+x
	CLRC
	ADC.w A, $0281+x
	AND.b A, #$7F
	MOV.w $02A0+x, A
	SETC
	SBC.w A, $0281+x
	MOV.b Y, $D0+x
	PUSH Y
	POP X
	CALL.w CODE_0C7E
	MOV.w $0290+x, A
	MOV A, Y
	MOV.w $0291+x, A
CODE_0B45:
	CALL.w CODE_0C6D
CODE_0B48:
	PUSH X
	MOV.b A, $24
	ASL A
	MOV.b Y, #$00
	MOV.b X, #$18
	DIV YA, X
	MOV X, A
	MOV.w A, DATA_0B97+$01+y
	MOV.b $26, A
	MOV.w A, DATA_0B97+y
	MOV.b $25, A
	MOV.w A, DATA_0B97+$03+y
	PUSH A
	MOV.w A, DATA_0B97+$02+y
	POP Y
	SUBW.b YA, $25
	MOV.b Y, $23
	MUL YA
	MOV A, Y
	MOV.b Y, #$00
	ADDW.b YA, $25
	MOV.b $26, Y
	ASL A
	ROL.b $26
	ASL A
	ROL.b $26
	MOV.b $25, A
	BRA.b CODE_0B7E

CODE_0B7A:
	LSR.b $26
	ROR A
	INC X
CODE_0B7E:
	CMP.b X, #$08
	BNE.b CODE_0B7A
	MOV.b $25, A
	POP X
	MOV A, X
	XCN A
	LSR A
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV Y, A
	MOV.b A, $25
	CALL.w CODE_10F1
	INC Y
	MOV.b A, $26
	CALL.w CODE_10F1
	RET

DATA_0B97:
	dw $085F,$08DE,$0965,$09F4,$0A8C,$0B2C,$0BD6,$0C8B
	dw $0D4A,$0E14,$0EEA,$0FCD,$10BE

CODE_0BB1:
	MOV.b A, $B0+x
	BEQ.b CODE_0BBE
	MOV.b A, #$20
	MOV.b Y, #$02
	DEC.b $B0+x
	CALL.w CODE_0C9B
CODE_0BBE:
	MOV.b Y, $E1+x
	BEQ.b CODE_0BE5
	MOV.w A, $0310+x
	CBNE.b $E0+x, CODE_0BE3
	OR.b $1E, $1A
	MOV.w A, $0300+x
	BPL.b CODE_0BD7
	INC Y
	BNE.b CODE_0BD7
	MOV.b A, #$80
	BRA.b CODE_0BDB

CODE_0BD7:
	CLRC
	ADC.w A, $0301+x
CODE_0BDB:
	MOV.w $0300+x, A
	CALL.w CODE_0DDD
	BRA.b CODE_0BEA

CODE_0BE3:
	INC.b $E0+x
CODE_0BE5:
	MOV.b A, #$FF
	CALL.w CODE_0DE8
CODE_0BEA:
	MOV.b A, $B1+x
	BEQ.b CODE_0BF7
	MOV.b A, #$20
	MOV.b Y, #$03
	DEC.b $B1+x
	CALL.w CODE_0C9B
CODE_0BF7:
	MOV.b A, $1A
	AND.b A, $1E
	BEQ.b CODE_0C44
	MOV.w A, $0321+x
	MOV Y, A
	MOV.w A, $0320+x
	MOVW.b $23, YA
CODE_0C06:
	MOV A, X
	XCN A
	LSR A
	INC A
	MOV.b $16, A
CODE_0C0C:
	MOV.b Y, $24
	MOV.w A, DATA_0C45+$01+y
	SETC
	SBC.w A, DATA_0C45+y
	MOV.b Y, $23
	MUL YA
	MOV A, Y
	MOV.b Y, $24
	CLRC
	ADC.w A, DATA_0C45+y
	MOV Y, A
	MOV.w A, $0241+x
	MUL YA
	MOV.w A, $0341+x
	ASL A
	BBC0.b $16, CODE_0C2C
	ASL A
CODE_0C2C:
	MOV A, Y
	BCC.b CODE_0C32
	EOR.b A, #$FF
	INC A
CODE_0C32:
	MOV.b Y, $16
	CALL.w CODE_10F1
	MOV.b Y, #$18
	MOV.b A, #$00
	SUBW.b YA, $23
	MOVW.b $23, YA
	DEC.b $16
	BBC3.b $16, CODE_0C0C
CODE_0C44:
	RET

DATA_0C45:
	db $00,$06,$0C,$10,$15,$1B,$21,$26,$2C,$30,$35,$3B,$41,$45,$4B,$50
	db $56,$5C,$61,$65,$6B,$70,$75,$7B,$7F,$7F

CODE_0C5F:
	MOV.b A, $29
	EOR.b A, $2A
	LSR A
	LSR A
	NOTC
	ROR.b $29
	ROR.b $2A
	DEC.b $29
	RET

CODE_0C6D:
	MOV.w A, $0281+x
	CMP.b A, #$6C
	BCC.b CODE_0C76
	MOV.b A, #$6B
CODE_0C76:
	MOV.b $24, A
	MOV.w A, $0280+x
	MOV.b $23, A
	RET

CODE_0C7E:
	NOTC
	ROR.b $16
	BPL.b CODE_0C86
	EOR.b A, #$FF
	INC A
CODE_0C86:
	MOV.b Y, #$00
	DIV YA, X
	PUSH A
	MOV.b A, #$00
	DIV YA, X
	POP Y
	MOV.b X, $1B
CODE_0C90:
	BBC7.b $16, CODE_0C9A
	MOVW.b $25, YA
	MOV.b A, #$00
	MOV Y, A
	SUBW.b YA, $25
CODE_0C9A:
	RET

CODE_0C9B:
	OR.b $1E, $1A
CODE_0C9E:
	MOVW.b $25, YA
	MOVW.b $27, YA
	PUSH X
	POP Y
	CLRC
	BNE.b CODE_0CB1
	ADC.b $27, #$1F
	MOV.b A, #$00
	MOV.b ($25)+y, A
	INC Y
	BRA.b CODE_0CBA

CODE_0CB1:
	ADC.b $27, #$10
	CALL.w CODE_0CB8
	INC Y
CODE_0CB8:
	MOV.b A, ($25)+y
CODE_0CBA:
	ADC.b A, ($27)+y
	MOV.b ($25)+y, A
	RET

CODE_0CBF:
	MOV.w A, $0351+x
	BNE.b CODE_0CDC
	MOV.w A, $0390+x
	BNE.b CODE_0CDC
	MOV.w A, $0360+x
	CMP.w A, $0361+x
	BEQ.b CODE_0CD7
	MOV.b A, #$01
	CMP.b A, $A0+x
	BNE.b CODE_0CDC
CODE_0CD7:
	MOV.b A, $1A
	TSET.w $002E, A
CODE_0CDC:
	CLR7.b $17
	MOV.b A, $D0+x
	BEQ.b CODE_0D03
	MOV.b A, $D1+x
	BEQ.b CODE_0CEA
	DEC.b $D1+x
	BRA.b CODE_0D03

CODE_0CEA:
	SET7.b $17
	MOV.b A, #$80
	MOV.b Y, #$02
	DEC.b $D0+x
	CALL.w CODE_0C9E
	MOV.b A, $D0+x
	BNE.b CODE_0D03
	CLRC
	MOV.w A, $02A1+x
	ADC.w A, $0271+x
	MOV.w $0280+x, A
CODE_0D03:
	CALL.w CODE_0C6D
	MOV.b A, $C1+x
	BEQ.b CODE_0D53
	MOV.w A, $02E0+x
	CBNE.b $C0+x, CODE_0D51
	MOV.b A, $A1+x
	CMP.w A, $02E1+x
	BNE.b CODE_0D1C
	MOV.w A, $02F1+x
	BRA.b CODE_0D27

CODE_0D1C:
	INC.b $A1+x
	MOV Y, A
	BEQ.b CODE_0D23
	MOV.b A, $C1+x
CODE_0D23:
	CLRC
	ADC.w A, $02F0+x
CODE_0D27:
	MOV.b $C1+x, A
	MOV.w A, $02D0+x
	CLRC
	ADC.w A, $02D1+x
	MOV.w $02D0+x, A
CODE_0D33:
	MOV.b $16, A
	ASL A
	ASL A
	BCC.b CODE_0D3B
	EOR.b A, #$FF
CODE_0D3B:
	MOV Y, A
	MOV.b A, $C1+x
	CMP.b A, #$F1
	BCC.b CODE_0D47
	AND.b A, #$0F
	MUL YA
	BRA.b CODE_0D4B

CODE_0D47:
	MUL YA
	MOV A, Y
	MOV.b Y, #$00
CODE_0D4B:
	CALL.w CODE_0DC8
CODE_0D4E:
	JMP.w CODE_0B48

CODE_0D51:
	INC.b $C0+x
CODE_0D53:
	BBS7.b $17, CODE_0D4E
	RET

CODE_0D57:
	CLR7.b $17
	MOV.b A, $E1+x
	BEQ.b CODE_0D66
	MOV.w A, $0310+x
	CBNE.b $E0+x, CODE_0D66
	CALL.w CODE_0DD0
CODE_0D66:
	MOV.w A, $0321+x
	MOV Y, A
	MOV.w A, $0320+x
	MOVW.b $23, YA
	MOV.b A, $B1+x
	BEQ.b CODE_0D7D
	MOV.w A, $0331+x
	MOV Y, A
	MOV.w A, $0330+x
	CALL.w CODE_0DB2
CODE_0D7D:
	BBC7.b $17, CODE_0D83
	CALL.w CODE_0C06
CODE_0D83:
	CLR7.b $17
	CALL.w CODE_0C6D
	MOV.b A, $D0+x
	BEQ.b CODE_0D9A
	MOV.b A, $D1+x
	BNE.b CODE_0D9A
	MOV.w A, $0291+x
	MOV Y, A
	MOV.w A, $0290+x
	CALL.w CODE_0DB2
CODE_0D9A:
	MOV.b A, $C1+x
	BEQ.b CODE_0D53
	MOV.w A, $02E0+x
	CBNE.b $C0+x, CODE_0D53
	MOV.b Y, $22
	MOV.w A, $02D1+x
	MUL YA
	MOV A, Y
	CLRC
	ADC.w A, $02D0+x
	JMP.w CODE_0D33

CODE_0DB2:
	SET7.b $17
	MOV.b $16, Y
	CALL.w CODE_0C90
	PUSH Y
	MOV.b Y, $22
	MUL YA
	MOV.b $25, Y
	MOV.b $26, #$00
	MOV.b Y, $22
	POP A
	MUL YA
	ADDW.b YA, $25
CODE_0DC8:
	CALL.w CODE_0C90
	ADDW.b YA, $23
	MOVW.b $23, YA
	RET

CODE_0DD0:
	SET7.b $17
	MOV.b Y, $22
	MOV.w A, $0301+x
	MUL YA
	MOV A, Y
	CLRC
	ADC.w A, $0300+x
CODE_0DDD:
	ASL A
	BCC.b CODE_0DE2
	EOR.b A, #$FF
CODE_0DE2:
	MOV.b Y, $E1+x
	MUL YA
	MOV A, Y
	EOR.b A, #$FF
CODE_0DE8:
	MOV.b Y, $35
	MUL YA
	MOV.w A, $0210+x
	MUL YA
	MOV.w A, $0221+x
	MUL YA
	MOV.w A, $0391+x
	MUL YA
	MOV.w A, $03A0+x
	MUL YA
	MOV A, Y
	MUL YA
	MOV A, Y
	MOV.w $0241+x, A
	RET

DATA_0E02:
	dw CODE_0E5D
	dw CODE_0EF1
	dw CODE_0EFE
	dw CODE_0F02
	dw CODE_0F25
	dw CODE_0F34
	dw CODE_0F39
	dw CODE_0F53
	dw CODE_0F6F
	dw CODE_0F73
	dw CODE_0F77
	dw CODE_0F7B
	dw CODE_0F9E
	dw CODE_0FA9
	dw CODE_0FB8
	dw CODE_0FBD
	dw CODE_0FD4
	dw CODE_0FE4
	dw CODE_0FF1
	dw CODE_1002
	dw CODE_1003
	dw CODE_1009
	dw CODE_103B
	dw CODE_104E
	dw CODE_1058
	dw CODE_1079
	dw CODE_1087
	dw CODE_10C6
	dw CODE_10CA
	dw CODE_10CE

CODE_0E3E:
	ASL A
	MOV Y, A
	INC Y
	MOV.w A, DATA_0E02+y
	PUSH A
	DEC Y
	MOV.w A, DATA_0E02+y
	PUSH A
CODE_0E4A:
	MOV.b A, ($80+x)
	INC.b $80+x
	BNE.b CODE_0E52
	INC.b $81+x
CODE_0E52:
	MOV Y, A
	RET

CODE_0E54:
	MOV.b A, ($80+x)
	INC.b $80+x
	BNE.b CODE_0E5C
	INC.b $81+x
CODE_0E5C:
	RET

CODE_0E5D:
	CMP.w A, $0211+x
	BNE.b CODE_0E63
	RET

CODE_0E63:
	MOV.w $0211+x, A
	MOV.b Y, #$10
	MUL YA
	MOVW.b $2B, YA
	CLRC
	ADC.b $2B, $04
	ADC.b $2C, $05
	MOV.b A, $1A
	TCLR.w $0030, A
	MOV.b Y, #$00
	MOV.b A, ($2B)+y
	OR.b A, #$80
	MOV.b $12, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.b $13, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.w $0210+x, A
	INC Y
	MOV.b A, ($2B)+y
	CMP.b A, #$80
	BCC.b CODE_0E9E
	AND.b A, #$1F
	AND.b $2F, #$20
	TSET.w $002F, A
	OR.b $30, $1A
	MOV.b A, #$00
CODE_0E9E:
	MOV.b $14, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.w $0270+x, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.w $0271+x, A
	MOV.b Y, #$0C
	MOV.b A, ($2B)+y
	MOV.w $03B0+x, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.w $02D1+x, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.b $C1+x, A
	MOV.w $02F1+x, A
	INC Y
	MOV.b A, ($2B)+y
	MOV.w $02E0+x, A
	MOV.b A, #$00
	MOV.w $02E1+x, A
	MOV.w $0390+x, A
	MOV A, X
	XCN A
	LSR A
	OR.b A, #!REGISTER_DSP_ChannelXSourceNumber
	MOV Y, A
	MOV.b A, $14
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC Y
	MOV.b A, $12
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC Y
	MOV.b A, $13
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC Y
	MOV.b A, #$00
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

CODE_0EF1:
	ASL A
	MOV.b $A0+x, A
	MOV.b A, $1A
	TSET.w $002E, A
	POP A
	POP A
	JMP.w CODE_0941

CODE_0EFE:
	MOV.w $0200+x, A
	RET

CODE_0F02:
	MOV.b $1F, A
	CALL.w CODE_0E4A
	MOV.b $45, A
	PUSH X
	MOV.b X, #$00
	MOV.b $20, #$01
CODE_0F0F:
	MOV.b A, $1F
	AND.b A, $20
	BEQ.b CODE_0F1A
	MOV.b A, $45
	MOV.w $0200+x, A
CODE_0F1A:
	INC X
	INC X
	ASL.b $20
	BNE.b CODE_0F0F
	POP X
	CALL.w CODE_0E4A
	RET

CODE_0F25:
	AND.b A, #$01
	BEQ.b CODE_0F30
	MOV.w A, $0390+x
	BMI.b CODE_0F33
	MOV.b A, #$01
CODE_0F30:
	MOV.w $0390+x, A
CODE_0F33:
	RET

CODE_0F34:
	ASL A
	MOV.w $0361+x, A
	RET

CODE_0F39:
	MOV.b A, #$00
	MOV.w $0350+x, A
	MOV A, Y
CODE_0F3F:
	MOV.w $0341+x, A
	AND.b A, #$1F
	CMP.b A, #$19
	BCC.b CODE_0F4A
	MOV.b A, #$18
CODE_0F4A:
	MOV.w $0321+x, A
	MOV.b A, #$00
	MOV.w $0320+x, A
	RET

CODE_0F53:
	MOV.b $B1+x, A
	PUSH A
	CALL.w CODE_0E4A
	MOV.w $0340+x, A
	SETC
	SBC.w A, $0321+x
	POP X
	CALL.w CODE_0C7E
	MOV.w $0330+x, A
	MOV A, Y
	MOV.w $0331+x, A
	CALL.w CODE_0E4A
	RET

CODE_0F6F:
	MOV.w $0350+x, A
	RET

CODE_0F73:
	MOV.w $02A1+x, A
	RET

CODE_0F77:
	MOV.w $0261+x, A
	RET

CODE_0F7B:
	MOV.b $1F, A
	CALL.w CODE_0E4A
	MOV.b $03, A
	PUSH X
	MOV.b X, #$00
	MOV.b $20, #$01
CODE_0F88:
	MOV.b A, $1F
	AND.b A, $20
	BEQ.b CODE_0F93
	MOV.b A, $03
	MOV.w $0260+x, A
CODE_0F93:
	INC X
	INC X
	ASL.b $20
	BNE.b CODE_0F88
	POP X
	CALL.w CODE_0E4A
	RET

CODE_0F9E:
	MOV.w $0221+x, A
	MOV.b A, #$00
	MOV.w $0220+x, A
	MOV.b $B0+x, A
	RET

CODE_0FA9:
	MOV.w $0301+x, A
	CALL.w CODE_0E4A
	MOV.b $E1+x, A
	CALL.w CODE_0E4A
	MOV.w $0310+x, A
	RET

CODE_0FB8:
	MOV.b A, #$00
	MOV.b $E1+x, A
	RET

CODE_0FBD:
	MOV.w $02D1+x, A
	CALL.w CODE_0E4A
	MOV.b $C1+x, A
	MOV.w $02F1+x, A
	CALL.w CODE_0E4A
	MOV.w $02E0+x, A
	MOV.b A, #$00
	MOV.w $02E1+x, A
	RET

CODE_0FD4:
	MOV.w $02E1+x, A
	PUSH A
	MOV.b Y, #$00
	MOV.b A, $C1+x
	POP X
	DIV YA, X
	MOV.b X, $1B
	MOV.w $02F0+x, A
	RET

CODE_0FE4:
	MOV.b A, #$00
	MOV.b $C1+x, A
	MOV.w $02F1+x, A
	MOV.b A, #$00
	MOV.w $02E1+x, A
	RET

CODE_0FF1:
	MOV A, Y
	MOV.w $02B0+x, A
	CALL.w CODE_0E4A
	MOV.w $02C1+x, A
	CALL.w CODE_0E4A
	MOV.w $02B1+x, A
	RET

CODE_1002:
	RET

CODE_1003:
	MOV.b A, #$00
	MOV.w $02B0+x, A
	RET

CODE_1009:
	CALL.w CODE_0850
	CALL.w CODE_0E4A
	MOV.b Y, #$08
	MUL YA
	MOV X, A
	MOV.b Y, #!REGISTER_DSP_ChannelXFIRFilerCoefficients
CODE_1015:
	MOV.w A, DATA_102B+x
	CALL.w CODE_10F1
	INC X
	MOV A, Y
	CLRC
	ADC.b A, #$10
	MOV Y, A
	BPL.b CODE_1015
	MOV.b X, $1B
	CALL.w CODE_0E4A
	MOV.b $33, A
	RET

DATA_102B:
	db $7F,$00,$00,$00,$00,$00,$00,$00,$FF,$08,$17,$24,$24,$17,$08,$FF

CODE_103B:
	MOV.b $31, A
	CALL.w CODE_0E4A
	MOV.b A, #$00
	MOVW.b $41, YA
	CALL.w CODE_0E4A
	MOV.b A, #$00
	MOVW.b $43, YA
	CLR5.b $2F
	RET

CODE_104E:
	MOV.b A, #$00
	MOV Y, A
	MOVW.b $41, YA
	MOVW.b $43, YA
	SET5.b $2F
	RET

CODE_1058:
	MOV.b $3E, A
	CALL.w CODE_0E4A
	MOV.b $3F, A
	SETC
	SBC.b A, $42
	MOV.b X, $3E
	CALL.w CODE_0C7E
	MOVW.b $3A, YA
	CALL.w CODE_0E4A
	MOV.b $40, A
	SETC
	SBC.b A, $44
	MOV.b X, $3E
	CALL.w CODE_0C7E
	MOVW.b $3C, YA
	RET

CODE_1079:
	MOV.b $21, A
	CALL.w CODE_0E4A
	MOV.b $15, A
	CALL.w CODE_0E4A
	CALL.w CODE_10AA
	RET

CODE_1087:
	MOV.b $1F, A
	CALL.w CODE_0E4A
	MOV.b $21, A
	CALL.w CODE_0E4A
	MOV.b $15, A
	PUSH X
	MOV.b X, #$00
	MOV.b $20, #$01
CODE_1099:
	MOV.b A, $1F
	AND.b A, $20
	BEQ.b CODE_10A2
	CALL.w CODE_10AA
CODE_10A2:
	INC X
	INC X
	ASL.b $20
	BNE.b CODE_1099
	POP X
	RET

CODE_10AA:
	PUSH X
	MOV.b A, $21
	MOV.b $B0+x, A
	PUSH A
	MOV.b A, $15
	MOV.w $0240+x, A
	SETC
	SBC.w A, $0221+x
	POP X
	CALL.w CODE_0C7E
	POP X
	MOV.w $0230+x, A
	MOV A, Y
	MOV.w $0231+x, A
	RET

CODE_10C6:
	MOV.w $0380+x, A
	RET

CODE_10CA:
	MOV.w $0371+x, A
	RET

CODE_10CE:
	MOV.b $1F, A
	CALL.w CODE_0E4A
	MOV.b $21, A
	PUSH X
	MOV.b X, #$00
	MOV.b $20, #$01
CODE_10DB:
	MOV.b A, $1F
	AND.b A, $20
	BEQ.b CODE_10E6
	MOV.b A, $21
	MOV.w $0391+x, A
CODE_10E6:
	INC X
	INC X
	ASL.b $20
	BNE.b CODE_10DB
	POP X
	CALL.w CODE_0E4A
	RET

CODE_10F1:
	MOV.w !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.w !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

CODE_10F8:
	MOV.b $10, #$00
	MOV.w A, $130C
	MOV.w Y, $130D
	MOVW.b $25, YA
	CALL.w CODE_1111
	MOV.b $10, #$40
	MOV.w A, $130E
	MOV.w Y, $130F
	MOVW.b $25, YA
CODE_1111:
	MOV.b $11, #$3F
CODE_1114:
	MOV.b A, $11
	ASL A
	MOV Y, A
	MOV.b A, ($25)+y
	MOV.b $27, A
	INC Y
	MOV.b A, ($25)+y
	MOV.b $28, A
	MOV.b A, $11
	CLRC
	ADC.b A, $10
	MOV.b Y, #$04
	MUL YA
	MOVW.b $2B, YA
	CLRC
	ADC.b $2C, #$04
	MOV.b A, $27
	CLRC
	ADC.b A, #$02
	MOV.b Y, #$00
	MOV.b ($2B)+y, A
	INC Y
	MOV.b A, $28
	ADC.b A, #$00
	MOV.b ($2B)+y, A
	DEC Y
	MOV.b A, ($27)+y
	CLRC
	ADC.b A, ($2B)+y
	MOV.b Y, #$02
	MOV.b ($2B)+y, A
	DEC Y
	MOV.b A, ($27)+y
	ADC.b A, ($2B)+y
	MOV.b Y, #$03
	MOV.b ($2B)+y, A
	DEC.b $11
	BPL.b CODE_1114
	RET

CODE_1157:
	MOV.b $25, #$1300
	MOV.b $26, #$1300>>8
	CLRC
	MOV.b A, $25
	ADC.b A, #$10
	MOV.b $27, A
	MOV.b A, $26
	ADC.b A, #$00
	MOV.b $28, A
	MOVW.b YA, $27
	MOVW.b $04, YA
	MOV.b Y, #$00
	CALL.w CODE_1192
	MOVW.b $06, YA
	MOV.b Y, #$02
	CALL.w CODE_1192
	MOVW.b $08, YA
	MOV.b Y, #$04
	CALL.w CODE_1192
	MOVW.b $0A, YA
	MOV.b Y, #$06
	CALL.w CODE_1192
	MOVW.b $0C, YA
	MOV.b Y, #$08
	CALL.w CODE_1192
	MOVW.b $0E, YA
	RET

CODE_1192:
	MOV.b A, ($25)+y
	PUSH A
	INC Y
	MOV.b A, ($25)+y
	MOV Y, A
	POP A
	ADDW.b YA, $27
	MOVW.b $27, YA
	RET

CODE_119F:
	MOV.b A, !REGISTER_SPC700_APUPort3
	CMP.b A, $01
	BNE.b CODE_11A6
	RET

CODE_11A6:
	MOV.b $01, A
	MOV.b A, !REGISTER_SPC700_APUPort0
	CMP.b A, #$60
	BCC.b CODE_11CF
	CMP.b A, #$80
	BEQ.b CODE_11D6
	CMP.b A, #$81
	BEQ.b CODE_11DB
	CMP.b A, #$82
	BEQ.b CODE_11ED
	CMP.b A, #$83
	BEQ.b CODE_11FC
	CMP.b A, #$84
	BEQ.b CODE_1201
	CMP.b A, #$85
	BEQ.b CODE_1225
	CMP.b A, #$86
	BEQ.b CODE_1220
CODE_11CA:
	MOV.b A, $01
	MOV.b !REGISTER_SPC700_APUPort0, A
	RET

CODE_11CF:
	MOV.b $00, A
	MOV.b $02, !REGISTER_SPC700_APUPort1
	BRA.b CODE_11CA

CODE_11D6:
	CALL.w CODE_080F
	BRA.b CODE_11CA

CODE_11DB:
	MOV.b $36, #$60
	MOV.b $37, #$00
	SETC
	SBC.b A, $35
	MOV.b X, $36
	CALL.w CODE_0C7E
	MOVW.b $38, YA
	BRA.b CODE_11CA

CODE_11ED:
	MOV.b A, #$01
	CALL.w CODE_0850
	MOV.b A, #$FF
	MOV.b Y, #!REGISTER_DSP_DSPStatusFlags
	CALL.w CODE_10F1
	JMP.w !REGISTER_SPC700_IPLROMLoc

CODE_11FC:
	MOV.b $4B, !REGISTER_SPC700_APUPort1
	BRA.b CODE_11CA

CODE_1201:
	MOV.b $25, !REGISTER_SPC700_APUPort1
	MOV.b $26, !REGISTER_SPC700_APUPort2
	MOV.b A, $01
	MOV.b !REGISTER_SPC700_APUPort0, A
	INC.b $01
	MOV.b A, $01
	MOV.b Y, #$10
CODE_1211:
	CMP.b A, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_1218
	DEC Y
	BNE.b CODE_1211
CODE_1218:
	MOV.b A, !REGISTER_SPC700_APUPort1
	MOV.b Y, #$00
	MOV.b ($25)+y, A
	BRA.b CODE_11CA

CODE_1220:
	MOV.b $4E, !REGISTER_SPC700_APUPort1
	BRA.b CODE_11CA

CODE_1225:
	MOV.b X, #$00
CODE_1227:
	MOV.w A, $0360+x
	CALL.w CODE_1275
	MOV.b A, $91+x
	CALL.w CODE_1275
	MOV.w A, $0211+x
	CALL.w CODE_1275
	MOV.w A, $0281+x
	CALL.w CODE_1275
	MOV.w A, $0361+x
	CALL.w CODE_1275
	MOV.w A, $0221+x
	CALL.w CODE_1275
	MOV.w A, $0341+x
	CALL.w CODE_1275
	INC X
	INC X
	CMP.b X, #$10
	BCC.b CODE_1227
	MOV.b A, $45
	CALL.w CODE_1275
	MOV.b A, $46
	MOV.b $26, $47
	LSR.b $26
	ROR A
	CALL.w CODE_1275
	MOV.b A, $26
	OR.b A, $4A
	CALL.w CODE_1275
	MOV.b A, $03
	CALL.w CODE_1275
	JMP.w CODE_11CA

CODE_1275:
	MOV.b !REGISTER_SPC700_APUPort1, A
	MOV.b A, $01
	MOV.b !REGISTER_SPC700_APUPort0, A
	INC.b $01
	MOV.b A, $01
	MOV.b Y, #$10
CODE_1281:
	CMP.b A, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_1288
	DEC Y
	BNE.b CODE_1281
CODE_1288:
	RET
namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC11505(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC11505

Main:
	dw DATA_1960	:	dw DATA_1960+$0000
	dw DATA_56F1	:	dw DATA_56F1+$3959
	dw DATA_905E	:	dw DATA_905E+$0000
	dw DATA_9072	:	dw DATA_9072+$0014
	dw DATA_9086	:	dw DATA_9086+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000
	dw DATA_91DE	:	dw DATA_91DE+$0000

DATA_1960:
	incbin "Samples/00.brr"

DATA_56F1:
	incbin "Samples/01.brr"

DATA_905E:
	incbin "Samples/02.brr"

DATA_9072:
	incbin "Samples/03.brr"

DATA_9086:
	incbin "Samples/04.brr"

DATA_91DE:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC20000(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC20000

Main:
	dw DATA_9270	:	dw DATA_9270+$0000
	dw DATA_AAAB	:	dw DATA_AAAB+$110F
	dw DATA_D2E7	:	dw DATA_D2E7+$1121
	dw DATA_EC17	:	dw DATA_EC17+$0FDD
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000
	dw DATA_FFF8	:	dw DATA_FFF8+$0000

DATA_9270:
	incbin "Samples/05.brr"

DATA_AAAB:
	incbin "Samples/06.brr"

DATA_D2E7:
	incbin "Samples/07.brr"

DATA_EC17:
	incbin "Samples/08.brr"

DATA_FFF8:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC26E10(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC26E10

Main:
	dw DATA_9880	:	dw DATA_9880+$0000
	dw DATA_CABF	:	dw DATA_CABF+$2EE8
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000
	dw DATA_F9A7	:	dw DATA_F9A7+$0000

DATA_9880:
	incbin "Samples/09.brr"

DATA_CABF:
	incbin "Samples/0A.brr"

DATA_F9A7:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC3004A(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC3004A

Main:
	dw DATA_3080	:	dw DATA_3080+$0014
	dw DATA_611A	:	dw DATA_611A+$2F8A
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000
	dw DATA_90A4	:	dw DATA_90A4+$0000

DATA_3080:
	incbin "Samples/0B.brr"

DATA_611A:
	incbin "Samples/0C.brr"

DATA_90A4:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC544A5(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC544A5

Main:
	dw DATA_3680	:	dw DATA_3680+$0014
	dw DATA_4281	:	dw DATA_4281+$0D43
	dw DATA_5C80	:	dw DATA_5C80+$0A10
	dw DATA_7046	:	dw DATA_7046+$0EFC
	dw DATA_7F56	:	dw DATA_7F56+$0014
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000
	dw DATA_7F7E	:	dw DATA_7F7E+$0000

DATA_3680:
	incbin "Samples/0D.brr"

DATA_4281:
	incbin "Samples/0E.brr"

DATA_5C80:
	incbin "Samples/0F.brr"

DATA_7046:
	incbin "Samples/10.brr"

DATA_7F56:
	incbin "Samples/11.brr"

DATA_7F7E:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC611F3(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC611F3

Main:
	dw DATA_A080	:	dw DATA_A080+$0014
	dw DATA_A92A	:	dw DATA_A92A+$06B9
	dw DATA_B3A8	:	dw DATA_B3A8+$0398
	dw DATA_BB05	:	dw DATA_BB05+$033E
	dw DATA_C81D	:	dw DATA_C81D+$02ED
	dw DATA_D076	:	dw DATA_D076+$0869
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000
	dw DATA_E136	:	dw DATA_E136+$0000

DATA_A080:
	incbin "Samples/12.brr"

DATA_A92A:
	incbin "Samples/13.brr"

DATA_B3A8:
	incbin "Samples/14.brr"

DATA_BB05:
	incbin "Samples/15.brr"

DATA_C81D:
	incbin "Samples/16.brr"

DATA_D076:
	incbin "Samples/17.brr"

DATA_E136:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC65331(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC65331

Main:
	dw DATA_A080	:	dw DATA_A080+$0014
	dw DATA_A7DD	:	dw DATA_A7DD+$04E5
	dw DATA_B2EB	:	dw DATA_B2EB+$0605
	dw DATA_BED1	:	dw DATA_BED1+$01D6
	dw DATA_C6B5	:	dw DATA_C6B5+$05AB
	dw DATA_D1CC	:	dw DATA_D1CC+$01F1
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000
	dw DATA_D7A6	:	dw DATA_D7A6+$0000

DATA_A080:
	incbin "Samples/18.brr"

DATA_A7DD:
	incbin "Samples/19.brr"

DATA_B2EB:
	incbin "Samples/1A.brr"

DATA_BED1:
	incbin "Samples/1B.brr"

DATA_C6B5:
	incbin "Samples/1C.brr"

DATA_D1CC:
	incbin "Samples/1D.brr"

DATA_D7A6:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC68ADF(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC68ADF

Main:
	dw DATA_A080	:	dw DATA_A080+$0014
	dw DATA_A7DD	:	dw DATA_A7DD+$06B9
	dw DATA_B54F	:	dw DATA_B54F+$0749
	dw DATA_BE6E	:	dw DATA_BE6E+$02ED
	dw DATA_C6C7	:	dw DATA_C6C7+$087B
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000
	dw DATA_D7CF	:	dw DATA_D7CF+$0000

DATA_A080:
	incbin "Samples/1E.brr"

DATA_A7DD:
	incbin "Samples/1F.brr"

DATA_B54F:
	incbin "Samples/20.brr"

DATA_BE6E:
	incbin "Samples/21.brr"

DATA_C6C7:
	incbin "Samples/22.brr"

DATA_D7CF:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC711F3(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC711F3

Main:
	dw DATA_A080	:	dw DATA_A080+$0014
	dw DATA_A7DD	:	dw DATA_A7DD+$0158
	dw DATA_AD54	:	dw DATA_AD54+$02C9
	dw DATA_B433	:	dw DATA_B433+$01D6
	dw DATA_BD76	:	dw DATA_BD76+$0E87
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000
	dw DATA_D169	:	dw DATA_D169+$0000

DATA_A080:
	incbin "Samples/23.brr"

DATA_A7DD:
	incbin "Samples/24.brr"

DATA_AD54:
	incbin "Samples/25.brr"

DATA_B433:
	incbin "Samples/26.brr"

DATA_BD76:
	incbin "Samples/27.brr"

DATA_D169:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC74364(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC74364

Main:
	dw DATA_A080	:	dw DATA_A080+$0014
	dw DATA_A26A	:	dw DATA_A26A+$04E5
	dw DATA_ABA4	:	dw DATA_ABA4+$0605
	dw DATA_B7C0	:	dw DATA_B7C0+$05EA
	dw DATA_C7C3	:	dw DATA_C7C3+$056C
	dw DATA_CF20	:	dw DATA_CF20+$03E9
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000
	dw DATA_D309	:	dw DATA_D309+$0000

DATA_A080:
	incbin "Samples/28.brr"

DATA_A26A:
	incbin "Samples/29.brr"

DATA_ABA4:
	incbin "Samples/2A.brr"

DATA_B7C0:
	incbin "Samples/2B.brr"

DATA_C7C3:
	incbin "Samples/2C.brr"

DATA_CF20:
	incbin "Samples/2D.brr"

DATA_D309:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_SampleBankC77675(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_SampleBankC77675

Main:
	dw DATA_A080	:	dw DATA_A080+$0014
	dw DATA_A7DD	:	dw DATA_A7DD+$0158
	dw DATA_AD81	:	dw DATA_AD81+$0749
	dw DATA_B6A0	:	dw DATA_B6A0+$02ED
	dw DATA_BEF9	:	dw DATA_BEF9+$0428
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000
	dw DATA_CBB7	:	dw DATA_CBB7+$0000

DATA_A080:
	incbin "Samples/2E.brr"

DATA_A7DD:
	incbin "Samples/2F.brr"

DATA_AD81:
	incbin "Samples/30.brr"

DATA_B6A0:
	incbin "Samples/31.brr"

DATA_BEF9:
	incbin "Samples/32.brr"

DATA_CBB7:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_DATA_C8B25D(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_DATA_C8B25D

Main:
	incbin "Music/DATA_C8B25D.bin"

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_DATA_D2DFC6(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_DATA_D2DFC6

Main:
	incbin "Music/DATA_D2DFC6.bin"

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_DATA_DBE9CF(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_DATA_DBE9CF

Main:
	incbin "Music/DATA_DBE9CF.bin"

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_ROTR_DATA_DFE772(Base)
%InsertMacroAtXPosition(<Base>)
namespace ROTR_DATA_DFE772

Main:
	incbin "Music/DATA_DFE772.bin"

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################
