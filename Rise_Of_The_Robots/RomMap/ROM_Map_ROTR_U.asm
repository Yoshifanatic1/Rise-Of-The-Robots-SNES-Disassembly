
macro ROTR_GameSpecificAssemblySettings()
	!ROM_ROTR_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_ROTR_E = $0002							;/

	%SetROMToAssembleForHack(ROTR_U, !ROMID)
endmacro

macro ROTR_LoadGameSpecificMainSNESFiles()
	incsrc ../SPC700/ARAMPtrs_ROTR.asm
	incsrc ../Misc_Defines_ROTR.asm
	incsrc ../RAM_Map_ROTR.asm
	incsrc ../Routine_Macros_ROTR.asm
	incsrc ../SNES_Macros_ROTR.asm
	%LoadExtraRAMFile("SRAM_Map_ROTR.asm", !GameID, ROTR)
endmacro

macro ROTR_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_ROTR.asm
	incsrc ../Misc_Defines_ROTR.asm
	incsrc ../SPC700/SPC700_Routine_Macros_ROTR.asm
	incsrc ../SPC700/SPC700_Macros_ROTR.asm
endmacro

macro ROTR_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro ROTR_LoadGameSpecificMSU1Files()
endmacro

macro ROTR_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 4
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Acclaim Entertainment"
	!Define_Global_DeveloperName = "Mirage"
	!Define_Global_ReleaseDate = "December 1994"
	!Define_Global_BaseROMMD5Hash = "db35a37e7b84d4168171c49e6cb9d827"

	!Define_Global_MakerCode = "51"
	!Define_Global_GameCode = "AROE"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "RISE OF THE ROBOTS   "
	!Define_Global_ROMLayout = !ROMLayout_HiROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_4MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $5E0D
	!UnusedNativeModeVector1 = $0000
	!UnusedNativeModeVector2 = $0000
	!NativeModeCOPVector = CODE_C080E0
	!NativeModeBRKVector = CODE_C080E4
	!NativeModeAbortVector = $0000
	!NativeModeNMIVector = CODE_C080E8
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_C080EC
	!UnusedEmulationModeVector1 = $0B5C			;\ Note: JML $7DE00B
	!UnusedEmulationModeVector2 = $7DE0			;/
	!EmulationModeCOPVector = $0E5C				;\ Note: JML $7DE00E
	!EmulationModeBRKVector = $7DE0				;/
	!EmulationModeAbortVector = $005C			;\ Note: JML $008000
	!EmulationModeNMIVector = $0080				;/
	!EmulationModeResetVector = CODE_C08000
	!EmulationModeIRQVector = CODE_C080DF
endmacro

macro ROTR_LoadROMMap()
	%ROTRBankC0Macros(!BANK_00, !BANK_00)
	%ROTRBankC1Macros(!BANK_01, !BANK_01)
	%ROTRBankC2Macros(!BANK_02, !BANK_02)
	%ROTRBankC3Macros(!BANK_03, !BANK_03)
	%ROTRBankC4Macros(!BANK_04, !BANK_04)
	%ROTRBankC5Macros(!BANK_05, !BANK_05)
	%ROTRBankC6Macros(!BANK_06, !BANK_06)
	%ROTRBankC7Macros(!BANK_07, !BANK_07)
	%ROTRBankC8Macros(!BANK_08, !BANK_08)
	%ROTRBankC9Macros(!BANK_09, !BANK_09)
	%ROTRBankCAMacros(!BANK_0A, !BANK_0A)
	%ROTRBankCBMacros(!BANK_0B, !BANK_0B)
	%ROTRBankCCMacros(!BANK_0C, !BANK_0C)
	%ROTRBankCDMacros(!BANK_0D, !BANK_0D)
	%ROTRBankCEMacros(!BANK_0E, !BANK_0E)
	%ROTRBankCFMacros(!BANK_0F, !BANK_0F)
	%ROTRBankD0Macros(!BANK_10, !BANK_10)
	%ROTRBankD1Macros(!BANK_11, !BANK_11)
	%ROTRBankD2Macros(!BANK_12, !BANK_12)
	%ROTRBankD3Macros(!BANK_13, !BANK_13)
	%ROTRBankD4Macros(!BANK_14, !BANK_14)
	%ROTRBankD5Macros(!BANK_15, !BANK_15)
	%ROTRBankD6Macros(!BANK_16, !BANK_16)
	%ROTRBankD7Macros(!BANK_17, !BANK_17)
	%ROTRBankD8Macros(!BANK_18, !BANK_18)
	%ROTRBankD9Macros(!BANK_19, !BANK_19)
	%ROTRBankDAMacros(!BANK_1A, !BANK_1A)
	%ROTRBankDBMacros(!BANK_1B, !BANK_1B)
	%ROTRBankDCMacros(!BANK_1C, !BANK_1C)
	%ROTRBankDDMacros(!BANK_1D, !BANK_1D)
	%ROTRBankDEMacros(!BANK_1E, !BANK_1E)
	%ROTRBankDFMacros(!BANK_1F, !BANK_1F)
	%ROTRBankE0Macros(!BANK_20, !BANK_20)
	%ROTRBankE1Macros(!BANK_21, !BANK_21)
	%ROTRBankE2Macros(!BANK_22, !BANK_22)
	%ROTRBankE3Macros(!BANK_23, !BANK_23)
	%ROTRBankE4Macros(!BANK_24, !BANK_24)
	%ROTRBankE5Macros(!BANK_25, !BANK_25)
	%ROTRBankE6Macros(!BANK_26, !BANK_26)
	%ROTRBankE7Macros(!BANK_27, !BANK_27)
	%ROTRBankE8Macros(!BANK_28, !BANK_28)
	%ROTRBankE9Macros(!BANK_29, !BANK_29)
	%ROTRBankEAMacros(!BANK_2A, !BANK_2A)
	%ROTRBankEBMacros(!BANK_2B, !BANK_2B)
	%ROTRBankECMacros(!BANK_2C, !BANK_2C)
	%ROTRBankEDMacros(!BANK_2D, !BANK_2D)
	%ROTRBankEEMacros(!BANK_2E, !BANK_2E)
	%ROTRBankEFMacros(!BANK_2F, !BANK_2F)
	%ROTRBankF0Macros(!BANK_30, !BANK_30)
	%ROTRBankF1Macros(!BANK_31, !BANK_31)
	%ROTRBankF2Macros(!BANK_32, !BANK_32)
	%ROTRBankF3Macros(!BANK_33, !BANK_33)
	%ROTRBankF4Macros(!BANK_34, !BANK_34)
	%ROTRBankF5Macros(!BANK_35, !BANK_35)
	%ROTRBankF6Macros(!BANK_36, !BANK_36)
	%ROTRBankF7Macros(!BANK_37, !BANK_37)
	%ROTRBankF8Macros(!BANK_38, !BANK_38)
	%ROTRBankF9Macros(!BANK_39, !BANK_39)
	%ROTRBankFAMacros(!BANK_3A, !BANK_3A)
	%ROTRBankFBMacros(!BANK_3B, !BANK_3B)
	%ROTRBankFCMacros(!BANK_3C, !BANK_3C)
	%ROTRBankFDMacros(!BANK_3D, !BANK_3D)
	%ROTRBankFEMacros(!BANK_3E, !BANK_3E)
	%ROTRBankFFMacros(!BANK_3F, !BANK_3F)
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTR_LoadSPC700ROMMap()
%SPC700RoutinePointer(ROTR_SPC700_Engine_Init, ROTR_SPC700Block0Start, ROTR_SPC700Block0End)
%SPC700RoutinePointer(ROTR_SPC700_Engine_Main, ROTR_SPC700Block1Start, ROTR_SPC700Block1End)
%SPC700RoutinePointer(ROTR_SampleBankC11505_Main, ROTR_SPC700Block2Start, ROTR_SPC700Block2End)
%SPC700RoutinePointer(ROTR_SampleBankC20000_Main, ROTR_SPC700Block3Start, ROTR_SPC700Block3End)
%SPC700RoutinePointer(ROTR_SampleBankC26E10_Main, ROTR_SPC700Block4Start, ROTR_SPC700Block4End)
%SPC700RoutinePointer(ROTR_SampleBankC3004A_Main, ROTR_SPC700Block5Start, ROTR_SPC700Block5End)
%SPC700RoutinePointer(ROTR_SampleBankC544A5_Main, ROTR_SPC700Block6Start, ROTR_SPC700Block6End)
%SPC700RoutinePointer(ROTR_SampleBankC611F3_Main, ROTR_SPC700Block7Start, ROTR_SPC700Block7End)
%SPC700RoutinePointer(ROTR_SampleBankC65331_Main, ROTR_SPC700Block8Start, ROTR_SPC700Block8End)
%SPC700RoutinePointer(ROTR_SampleBankC68ADF_Main, ROTR_SPC700Block9Start, ROTR_SPC700Block9End)
%SPC700RoutinePointer(ROTR_SampleBankC711F3_Main, ROTR_SPC700Block10Start, ROTR_SPC700Block10End)
%SPC700RoutinePointer(ROTR_SampleBankC74364_Main, ROTR_SPC700Block11Start, ROTR_SPC700Block11End)
%SPC700RoutinePointer(ROTR_SampleBankC77675_Main, ROTR_SPC700Block12Start, ROTR_SPC700Block12End)
%SPC700RoutinePointer(ROTR_DATA_C8B25D_Main, ROTR_SPC700Block13Start, ROTR_SPC700Block13End)
%SPC700RoutinePointer(ROTR_DATA_D2DFC6_Main, ROTR_SPC700Block14Start, ROTR_SPC700Block14End)
%SPC700RoutinePointer(ROTR_DATA_DBE9CF_Main, ROTR_SPC700Block15Start, ROTR_SPC700Block15End)
%SPC700RoutinePointer(ROTR_DATA_DFE772_Main, ROTR_SPC700Block16Start, ROTR_SPC700Block16End)

ROTR_SPC700Block0Start:
	%SPC700_RT00_ROTR_SPC700_Engine($0004)
ROTR_SPC700Block0End:
ROTR_SPC700Block1Start:
	%SPC700_RT01_ROTR_SPC700_Engine($0600)
ROTR_SPC700Block1End:
ROTR_SPC700Block2Start:
	%SPC700_ROTR_SampleBankC11505($18E0)
ROTR_SPC700Block2End:
ROTR_SPC700Block3Start:
	%SPC700_ROTR_SampleBankC20000($91F0)
ROTR_SPC700Block3End:
ROTR_SPC700Block4Start:
	%SPC700_ROTR_SampleBankC26E10($9800)
ROTR_SPC700Block4End:
ROTR_SPC700Block5Start:
	%SPC700_ROTR_SampleBankC3004A($3000)
ROTR_SPC700Block5End:
ROTR_SPC700Block6Start:
	%SPC700_ROTR_SampleBankC544A5($3600)
ROTR_SPC700Block6End:
ROTR_SPC700Block7Start:
	%SPC700_ROTR_SampleBankC611F3($A000)
ROTR_SPC700Block7End:
ROTR_SPC700Block8Start:
	%SPC700_ROTR_SampleBankC65331($A000)
ROTR_SPC700Block8End:
ROTR_SPC700Block9Start:
	%SPC700_ROTR_SampleBankC68ADF($A000)
ROTR_SPC700Block9End:
ROTR_SPC700Block10Start:
	%SPC700_ROTR_SampleBankC711F3($A000)
ROTR_SPC700Block10End:
ROTR_SPC700Block11Start:
	%SPC700_ROTR_SampleBankC74364($A000)
ROTR_SPC700Block11End:
ROTR_SPC700Block12Start:
	%SPC700_ROTR_SampleBankC77675($A000)
ROTR_SPC700Block12End:
ROTR_SPC700Block13Start:
	%SPC700_ROTR_DATA_C8B25D($1300)
ROTR_SPC700Block13End:
ROTR_SPC700Block14Start:
	%SPC700_ROTR_DATA_D2DFC6($1300)
ROTR_SPC700Block14End:
ROTR_SPC700Block15Start:
	%SPC700_ROTR_DATA_DBE9CF($1300)
ROTR_SPC700Block15End:
ROTR_SPC700Block16Start:
	%SPC700_ROTR_DATA_DFE772($1300)
ROTR_SPC700Block16End:

endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTR_LoadSuperFXROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################

macro ROTR_LoadMSU1ROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################
