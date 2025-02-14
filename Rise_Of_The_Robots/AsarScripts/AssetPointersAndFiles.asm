; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

hirom
;!ROMVer = $0000						; Note: This is set within the batch script
!ROTR_U = $0001
!ROTR_E = $0002

check bankcross off

org $C00000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl FMVFramePointersStart,(FMVFramePointersEnd-FMVFramePointersStart)/$0C
	dl DynamicSpritesPointersStart,(DynamicSpritesPointersEnd-DynamicSpritesPointersStart)/$0C
	dl UncompressedTilemapsPointersStart,(UncompressedTilemapsPointersEnd-UncompressedTilemapsPointersStart)/$0C
	dl PalettePointersStart,(PalettePointersEnd-PalettePointersStart)/$0C
	dl GarbageDataPointersStart,(GarbageDataPointersEnd-GarbageDataPointersStart)/$0C
	dl UnknownDataPointersStart,(UnknownDataPointersEnd-UnknownDataPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $C1946B,$C1FFAB,GFX_Layer1_TitleScreen_Cyborg_Frame5,GFX_Layer1_TitleScreen_Cyborg_Frame5End
	dl $C3A5AE,$C3FCDE,GFX_Layer1_TitleScreen_Cyborg_Frame1,GFX_Layer1_TitleScreen_Cyborg_Frame1End
	dl $C44B31,$C4A231,GFX_Layer1_TitleScreen_Cyborg_Frame2,GFX_Layer1_TitleScreen_Cyborg_Frame2End
	dl $C4A87B,$C4FFFB,GFX_Layer1_TitleScreen_Cyborg_Frame3,GFX_Layer1_TitleScreen_Cyborg_Frame3End
	dl $C58FD5,$C5A6D5,GFX_Layer2_TitleScreen_Title,GFX_Layer2_TitleScreen_TitleEnd
	dl $C5AD3F,$C5FFFF,GFX_Layer1_TitleScreen_Cyborg_Frame4,GFX_Layer1_TitleScreen_Cyborg_Frame4End
	dl $C812FB,$C8147B,GFX_Sprite_MetalParticles,GFX_Sprite_MetalParticlesEnd
	dl $CAEFD1,$CAFFF1,GFX_Layer2_SmallFonts,GFX_Layer2_SmallFontsEnd
	dl $E4F60D,$E4FA8D,GFX_Layer2_HealthBarTiles,GFX_Layer2_HealthBarTilesEnd
	dl $E4FA8F,$E4FF8F,GFX_Layer2_TimerNumbers,GFX_Layer2_TimerNumbersEnd
	dl $E5A192,$E5A592,GFX_Sprite_Sparks,GFX_Sprite_SparksEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $C002A0,$C00E7F,GFX_Layer1_SplashScreen1Text,GFX_Layer1_SplashScreen1TextEnd
	dl $C00E7F,$C01976,GFX_Layer1_SplashScreen2Text_PAL,GFX_Layer1_SplashScreen2Text_PALEnd
	dl $C01976,$C0223B,GFX_Layer1_SplashScreen2Text_USA,GFX_Layer1_SplashScreen2Text_USAEnd
	dl $C04124,$C04890,GFX_Layer1_AcclaimScreen,GFX_Layer1_AcclaimScreenEnd
	dl $C04922,$C07D58,GFX_Layer1_CrushersArena,GFX_Layer1_CrushersArenaEnd
	dl $C07D58,$C07F86,GFX_Sprite_Battle1Text,GFX_Sprite_Battle1TextEnd
	dl $C2CFBF,$C2FF20,GFX_Layer1_MilitarysArena,GFX_Layer1_MilitarysArenaEnd
	dl $C360F6,$C39F54,GFX_Layer1_PrototypeTitleScreen,GFX_Layer1_PrototypeTitleScreenEnd
	dl $C40040,$C444E7,GFX_Layer1_CyborgArena,GFX_Layer1_CyborgArenaEnd
	dl $C50000,$C541FC,GFX_Layer1_MainMenu,GFX_Layer1_MainMenuEnd
	dl $C541FC,$C544A5,GFX_Layer1_SuperMovesMonitorText,GFX_Layer1_SuperMovesMonitorTextEnd
	dl $C6C2B6,$C6FFFC,GFX_Layer1_SentrysArena,GFX_Layer1_SentrysArenaEnd
	dl $C7A234,$C7D47B,GFX_Layer1_ApesArena,GFX_Layer1_ApesArenaEnd
	dl $C7D47B,$C7FFFA,GFX_Layer1_SupervisorsArena,GFX_Layer1_SupervisorsArenaEnd
	dl $C8D49A,$C8FFFF,GFX_Layer1_LoadersArena,GFX_Layer1_LoadersArenaEnd
	dl $C9D544,$C9EB1A,GFX_Layer1_MirageScreen,GFX_Layer1_MirageScreenEnd
	dl $C9F41C,$C9F64A,GFX_Sprite_Battle2Text,GFX_Sprite_Battle2TextEnd
	dl $CBCB84,$CBDB53,GFX_Layer1_LoaderProfileImage,GFX_Layer1_LoaderProfileImageEnd
	dl $CBDB53,$CBEB20,GFX_Layer1_SentryProfileImage,GFX_Layer1_SentryProfileImageEnd
	dl $CBEB20,$CBFAC7,GFX_Layer1_CyborgProfileImage,GFX_Layer1_CyborgProfileImageEnd
	dl $CBFAC7,$CBFFFB,GFX_Sprite_FloatingMonitor_Frame5,GFX_Sprite_FloatingMonitor_Frame5End
	dl $CCF228,$CCFFE9,GFX_Layer1_CrusherProfileImage,GFX_Layer1_CrusherProfileImageEnd
	dl $CDFD11,$CDFFF0,GFX_Layer1_MissionBriefAndTrainingMonitorText,GFX_Layer1_MissionBriefAndTrainingMonitorTextEnd
	dl $D0F986,$D0FFBC,GFX_Sprite_FloatingMonitor_Frame6,GFX_Sprite_FloatingMonitor_Frame6End
	dl $D592EC,$D59F3A,GFX_Layer1_ApeProfileImage,GFX_Layer1_ApeProfileImageEnd
	dl $D59F3A,$D5AB20,GFX_Layer1_MilitaryProfileImage,GFX_Layer1_MilitaryProfileImageEnd
	dl $D8EF62,$D8F71C,GFX_Sprite_FloatingMonitor_Frame7,GFX_Sprite_FloatingMonitor_Frame7End
	dl $D9CBC0,$D9D62F,GFX_Layer1_SupervisorProfileImage,GFX_Layer1_SupervisorProfileImageEnd
	dl $D9DF91,$D9EA00,GFX_Layer2_NetworkDataBanner,GFX_Layer2_NetworkDataBannerEnd
	dl $DAF1CB,$DAF2F7,GFX_Sprite_FloatingMonitor_Frame2,GFX_Sprite_FloatingMonitor_Frame2End
	dl $DBF7D4,$DBFB04,GFX_Sprite_SuperMoveText,GFX_Sprite_SuperMoveTextEnd
	dl $DDFD69,$DDFFEA,GFX_Layer1_CinematicsMonitorText,GFX_Layer1_CinematicsMonitorTextEnd
	dl $DEBE3C,$DEC0EB,GFX_Sprite_FinalBattleText,GFX_Sprite_FinalBattleTextEnd
	dl $DEC0EB,$DEC8A5,GFX_Sprite_FloatingMonitor_Frame8,GFX_Sprite_FloatingMonitor_Frame8End
	dl $DEC8A5,$DED05F,GFX_Sprite_FloatingMonitor_Frame9,GFX_Sprite_FloatingMonitor_Frame9End
	dl $DED05F,$DED819,GFX_Sprite_FloatingMonitor_Frame10,GFX_Sprite_FloatingMonitor_Frame10End
	dl $DED819,$DEDFD3,GFX_Sprite_FloatingMonitor_Frame11,GFX_Sprite_FloatingMonitor_Frame11End
	dl $DEDFD3,$DEE78D,GFX_Sprite_FloatingMonitor_Frame12,GFX_Sprite_FloatingMonitor_Frame12End
	dl $DEE78D,$DEEF47,GFX_Sprite_FloatingMonitor_Frame13,GFX_Sprite_FloatingMonitor_Frame13End
	dl $DEEF47,$DEF701,GFX_Sprite_FloatingMonitor_Frame14,GFX_Sprite_FloatingMonitor_Frame14End
	dl $DEF701,$DEFFBE,GFX_Layer2_ReplayBanner,GFX_Layer2_ReplayBannerEnd
	dl $DFE88E,$DFF048,GFX_Sprite_FloatingMonitor_Frame15,GFX_Sprite_FloatingMonitor_Frame15End
	dl $DFF048,$DFF802,GFX_Sprite_FloatingMonitor_Frame16,GFX_Sprite_FloatingMonitor_Frame16End
	dl $DFF802,$DFFFBC,GFX_Sprite_FloatingMonitor_Frame17,GFX_Sprite_FloatingMonitor_Frame17End
	dl $E0FA06,$E0FFCF,GFX_Layer1_TimerMonitorText,GFX_Layer1_TimerMonitorTextEnd
	dl $E3FF0F,$E3FFBA,GFX_Sprite_FloatingMonitor_Frame1,GFX_Sprite_FloatingMonitor_Frame1End
	dl $E5A992,$E5ACFB,GFX_Layer1_MainMenuMonitorText,GFX_Layer1_MainMenuMonitorTextEnd
	dl $E5ACFB,$E5B05E,GFX_Layer1_DifficultyMonitorText,GFX_Layer1_DifficultyMonitorTextEnd
	dl $E5B05E,$E5B22B,GFX_Layer1_BoutsMonitorText,GFX_Layer1_BoutsMonitorTextEnd
	dl $E5B305,$E5B533,GFX_Sprite_Battle3Text,GFX_Sprite_Battle3TextEnd
	dl $E5B533,$E5B761,GFX_Sprite_Battle4Text,GFX_Sprite_Battle4TextEnd
	dl $E5B761,$E5B98F,GFX_Sprite_Battle5Text,GFX_Sprite_Battle5TextEnd
	dl $E5B98F,$E5BBBD,GFX_Sprite_Battle6Text,GFX_Sprite_Battle6TextEnd
	dl $E5BBBD,$E5BDEB,GFX_Sprite_Battle7Text,GFX_Sprite_Battle7TextEnd
	dl $E5BDEB,$E5C019,GFX_Sprite_PauseText,GFX_Sprite_PauseTextEnd
	dl $E5C019,$E5C1C6,GFX_Sprite_FloatingMonitor_Frame3,GFX_Sprite_FloatingMonitor_Frame3End
	dl $E5C1C6,$E5C3F4,GFX_Sprite_FloatingMonitor_Frame4,GFX_Sprite_FloatingMonitor_Frame4End
	dl $FFE390,$FFF8BE,GFX_Layer1_UnusedAbsoluteEntertainmentLogoScreen,GFX_Layer1_UnusedAbsoluteEntertainmentLogoScreenEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

FMVFramePointersStart:
	dl $E60000,$E626AA,GFX_Layer1_MilitaryIntro_Frame89,GFX_Layer1_MilitaryIntro_Frame89End
	dl $E626AA,$E626AE,GFX_Layer1_MilitaryIntro_Frame123,GFX_Layer1_MilitaryIntro_Frame123End
	dl $E626AE,$E626B2,GFX_Layer1_MilitaryIntro_Frame124,GFX_Layer1_MilitaryIntro_Frame124End
	dl $E626B2,$E64907,GFX_Layer1_SupervisorIntro_Frame1,GFX_Layer1_SupervisorIntro_Frame1End
	dl $E64907,$E66F16,GFX_Layer1_SupervisorIntro_Frame31,GFX_Layer1_SupervisorIntro_Frame31End
	dl $E66F16,$E66F1A,GFX_Layer1_SupervisorDefeated_Frame3,GFX_Layer1_SupervisorDefeated_Frame3End
	dl $E66F1A,$E66F1E,GFX_Layer1_SupervisorDefeated_Frame4,GFX_Layer1_SupervisorDefeated_Frame4End
	dl $E66F1E,$E66F22,GFX_Layer1_SupervisorDefeated_Frame5,GFX_Layer1_SupervisorDefeated_Frame5End
	dl $E66F22,$E693B1,GFX_Layer1_LoaderDefeated_Frame1,GFX_Layer1_LoaderDefeated_Frame1End
	dl $E693B1,$E6B7B0,GFX_Layer1_CrusherDefeated_Frame1,GFX_Layer1_CrusherDefeated_Frame1End
	dl $E6B7B0,$E6DDA2,GFX_Layer1_CyborgDefeated_Frame1,GFX_Layer1_CyborgDefeated_Frame1End
	dl $E6DDA2,$E6FFFE,GFX_Layer1_CyborgDefeated_Frame25,GFX_Layer1_CyborgDefeated_Frame25End
	dl $E70000,$E70DEB,GFX_Layer1_SentryIntro_Frame16,GFX_Layer1_SentryIntro_Frame16End
	dl $E70DEB,$E725FB,GFX_Layer1_MilitaryIntro_Frame1,GFX_Layer1_MilitaryIntro_Frame1End
	dl $E725FB,$E74461,GFX_Layer1_ApeIntro_Frame1,GFX_Layer1_ApeIntro_Frame1End
	dl $E74461,$E76424,GFX_Layer1_LoaderIntro_Frame1,GFX_Layer1_LoaderIntro_Frame1End
	dl $E76424,$E78609,GFX_Layer1_SupervisorDefeated_Frame1,GFX_Layer1_SupervisorDefeated_Frame1End
	dl $E78609,$E7860D,GFX_Layer1_SupervisorDefeated_Frame6,GFX_Layer1_SupervisorDefeated_Frame6End
	dl $E7860D,$E7A694,GFX_Layer1_SentryDefeated_Frame1,GFX_Layer1_SentryDefeated_Frame1End
	dl $E7A694,$E7C791,GFX_Layer1_ApeDefeated_Frame1,GFX_Layer1_ApeDefeated_Frame1End
	dl $E7C791,$E7DFA1,GFX_Layer1_ApeDefeated_Frame20,GFX_Layer1_ApeDefeated_Frame20End
	dl $E7DFA1,$E7FFFD,GFX_Layer1_ApproachingMetropolis4_Frame51,GFX_Layer1_ApproachingMetropolis4_Frame51End
	dl $E80000,$E806AD,GFX_Layer1_SupervisorIntro_Frame60,GFX_Layer1_SupervisorIntro_Frame60End
	dl $E806AD,$E81B17,GFX_Layer1_SupervisorDefeated_Frame18,GFX_Layer1_SupervisorDefeated_Frame18End
	dl $E81B17,$E8306D,GFX_Layer1_SupervisorDefeated_Frame19,GFX_Layer1_SupervisorDefeated_Frame19End
	dl $E8306D,$E8452C,GFX_Layer1_SupervisorDefeated_Frame20,GFX_Layer1_SupervisorDefeated_Frame20End
	dl $E8452C,$E859AB,GFX_Layer1_SupervisorDefeated_Frame21,GFX_Layer1_SupervisorDefeated_Frame21End
	dl $E859AB,$E86DE2,GFX_Layer1_ApeDefeated_Frame9,GFX_Layer1_ApeDefeated_Frame9End
	dl $E86DE2,$E8831C,GFX_Layer1_ApeDefeated_Frame11,GFX_Layer1_ApeDefeated_Frame11End
	dl $E8831C,$E8981C,GFX_Layer1_ApeDefeated_Frame12,GFX_Layer1_ApeDefeated_Frame12End
	dl $E8981C,$E8ABFC,GFX_Layer1_ApeDefeated_Frame14,GFX_Layer1_ApeDefeated_Frame14End
	dl $E8ABFC,$E8BFC1,GFX_Layer1_ApeDefeated_Frame18,GFX_Layer1_ApeDefeated_Frame18End
	dl $E8BFC1,$E8D3AA,GFX_Layer1_ApeDefeated_Frame19,GFX_Layer1_ApeDefeated_Frame19End
	dl $E8D3AA,$E8E90E,GFX_Layer1_ApeDefeated_Frame21,GFX_Layer1_ApeDefeated_Frame21End
	dl $E8E90E,$E90000,GFX_Layer1_MilitaryDefeated_Frame1,GFX_Layer1_MilitaryDefeated_Frame1End
	dl $E90000,$E9076A,GFX_Layer1_SupervisorIntro_Frame73,GFX_Layer1_SupervisorIntro_Frame73End
	dl $E9076A,$E9076E,GFX_Layer1_SupervisorDefeated_Frame7,GFX_Layer1_SupervisorDefeated_Frame7End
	dl $E9076E,$E91AA5,GFX_Layer1_SupervisorDefeated_Frame16,GFX_Layer1_SupervisorDefeated_Frame16End
	dl $E91AA5,$E92E44,GFX_Layer1_SupervisorDefeated_Frame17,GFX_Layer1_SupervisorDefeated_Frame17End
	dl $E92E44,$E94144,GFX_Layer1_SupervisorDefeated_Frame22,GFX_Layer1_SupervisorDefeated_Frame22End
	dl $E94144,$E952F9,GFX_Layer1_SentryDefeated_Frame15,GFX_Layer1_SentryDefeated_Frame15End
	dl $E952F9,$E96546,GFX_Layer1_ApeDefeated_Frame5,GFX_Layer1_ApeDefeated_Frame5End
	dl $E96546,$E977CF,GFX_Layer1_ApeDefeated_Frame6,GFX_Layer1_ApeDefeated_Frame6End
	dl $E977CF,$E98B84,GFX_Layer1_ApeDefeated_Frame7,GFX_Layer1_ApeDefeated_Frame7End
	dl $E98B84,$E99F44,GFX_Layer1_ApeDefeated_Frame8,GFX_Layer1_ApeDefeated_Frame8End
	dl $E99F44,$E9B2DE,GFX_Layer1_ApeDefeated_Frame10,GFX_Layer1_ApeDefeated_Frame10End
	dl $E9B2DE,$E9C603,GFX_Layer1_ApeDefeated_Frame13,GFX_Layer1_ApeDefeated_Frame13End
	dl $E9C603,$E9D93D,GFX_Layer1_ApeDefeated_Frame15,GFX_Layer1_ApeDefeated_Frame15End
	dl $E9D93D,$E9ECE2,GFX_Layer1_ApeDefeated_Frame16,GFX_Layer1_ApeDefeated_Frame16End
	dl $E9ECE2,$E9FFFE,GFX_Layer1_ApeDefeated_Frame17,GFX_Layer1_ApeDefeated_Frame17End
	dl $EA0000,$EA1015,GFX_Layer1_SentryIntro_Frame17,GFX_Layer1_SentryIntro_Frame17End
	dl $EA1015,$EA20B1,GFX_Layer1_SentryIntro_Frame18,GFX_Layer1_SentryIntro_Frame18End
	dl $EA20B1,$EA30F2,GFX_Layer1_SentryIntro_Frame19,GFX_Layer1_SentryIntro_Frame19End
	dl $EA30F2,$EA423E,GFX_Layer1_SentryIntro_Frame20,GFX_Layer1_SentryIntro_Frame20End
	dl $EA423E,$EA539D,GFX_Layer1_SentryIntro_Frame21,GFX_Layer1_SentryIntro_Frame21End
	dl $EA539D,$EA646E,GFX_Layer1_SentryIntro_Frame22,GFX_Layer1_SentryIntro_Frame22End
	dl $EA646E,$EA6889,GFX_Layer1_ApeIntro_Frame2,GFX_Layer1_ApeIntro_Frame2End
	dl $EA6889,$EA688D,GFX_Layer1_SupervisorDefeated_Frame8,GFX_Layer1_SupervisorDefeated_Frame8End
	dl $EA688D,$EA78B1,GFX_Layer1_SupervisorDefeated_Frame23,GFX_Layer1_SupervisorDefeated_Frame23End
	dl $EA78B1,$EA88DC,GFX_Layer1_SentryDefeated_Frame12,GFX_Layer1_SentryDefeated_Frame12End
	dl $EA88DC,$EA9A04,GFX_Layer1_SentryDefeated_Frame13,GFX_Layer1_SentryDefeated_Frame13End
	dl $EA9A04,$EAAB5E,GFX_Layer1_SentryDefeated_Frame14,GFX_Layer1_SentryDefeated_Frame14End
	dl $EAAB5E,$EABBB4,GFX_Layer1_SentryDefeated_Frame16,GFX_Layer1_SentryDefeated_Frame16End
	dl $EABBB4,$EACCC0,GFX_Layer1_ApeDefeated_Frame3,GFX_Layer1_ApeDefeated_Frame3End
	dl $EACCC0,$EADE0E,GFX_Layer1_ApeDefeated_Frame4,GFX_Layer1_ApeDefeated_Frame4End
	dl $EADE0E,$EAEF86,GFX_Layer1_CyborgIntro_Frame1,GFX_Layer1_CyborgIntro_Frame1End
	dl $EAEF86,$EAFFFF,GFX_Layer1_CyborgIntro_Frame2,GFX_Layer1_CyborgIntro_Frame2End
	dl $EB0000,$EB0F07,GFX_Layer1_SentryIntro_Frame23,GFX_Layer1_SentryIntro_Frame23End
	dl $EB0F07,$EB1DFA,GFX_Layer1_SentryIntro_Frame27,GFX_Layer1_SentryIntro_Frame27End
	dl $EB1DFA,$EB2CE6,GFX_Layer1_SentryIntro_Frame28,GFX_Layer1_SentryIntro_Frame28End
	dl $EB2CE6,$EB3BDA,GFX_Layer1_SentryIntro_Frame29,GFX_Layer1_SentryIntro_Frame29End
	dl $EB3BDA,$EB4AD0,GFX_Layer1_CrusherIntro_Frame94,GFX_Layer1_CrusherIntro_Frame94End
	dl $EB4AD0,$EB5991,GFX_Layer1_CrusherIntro_Frame95,GFX_Layer1_CrusherIntro_Frame95End
	dl $EB5991,$EB6863,GFX_Layer1_CrusherIntro_Frame98,GFX_Layer1_CrusherIntro_Frame98End
	dl $EB6863,$EB7748,GFX_Layer1_CrusherIntro_Frame99,GFX_Layer1_CrusherIntro_Frame99End
	dl $EB7748,$EB774C,GFX_Layer1_SupervisorDefeated_Frame9,GFX_Layer1_SupervisorDefeated_Frame9End
	dl $EB774C,$EB860E,GFX_Layer1_SupervisorDefeated_Frame15,GFX_Layer1_SupervisorDefeated_Frame15End
	dl $EB860E,$EB953B,GFX_Layer1_SentryDefeated_Frame11,GFX_Layer1_SentryDefeated_Frame11End
	dl $EB953B,$EBA4D5,GFX_Layer1_SentryDefeated_Frame17,GFX_Layer1_SentryDefeated_Frame17End
	dl $EBA4D5,$EBB4A2,GFX_Layer1_SentryDefeated_Frame18,GFX_Layer1_SentryDefeated_Frame18End
	dl $EBB4A2,$EBC3D1,GFX_Layer1_SentryDefeated_Frame19,GFX_Layer1_SentryDefeated_Frame19End
	dl $EBC3D1,$EBD1EC,GFX_Layer1_SentryDefeated_Frame20,GFX_Layer1_SentryDefeated_Frame20End
	dl $EBD1EC,$EBE137,GFX_Layer1_ApeDefeated_Frame2,GFX_Layer1_ApeDefeated_Frame2End
	dl $EBE137,$EBF0D6,GFX_Layer1_CyborgIntro_Frame3,GFX_Layer1_CyborgIntro_Frame3End
	dl $EBF0D6,$EBFFFE,GFX_Layer1_CyborgIntro_Frame4,GFX_Layer1_CyborgIntro_Frame4End
	dl $EC0000,$EC0E24,GFX_Layer1_SentryIntro_Frame24,GFX_Layer1_SentryIntro_Frame24End
	dl $EC0E24,$EC1C92,GFX_Layer1_SentryIntro_Frame26,GFX_Layer1_SentryIntro_Frame26End
	dl $EC1C92,$EC2B2B,GFX_Layer1_SentryIntro_Frame30,GFX_Layer1_SentryIntro_Frame30End
	dl $EC2B2B,$EC3965,GFX_Layer1_CrusherIntro_Frame87,GFX_Layer1_CrusherIntro_Frame87End
	dl $EC3965,$EC47D6,GFX_Layer1_CrusherIntro_Frame88,GFX_Layer1_CrusherIntro_Frame88End
	dl $EC47D6,$EC5665,GFX_Layer1_CrusherIntro_Frame89,GFX_Layer1_CrusherIntro_Frame89End
	dl $EC5665,$EC64B8,GFX_Layer1_CrusherIntro_Frame90,GFX_Layer1_CrusherIntro_Frame90End
	dl $EC64B8,$EC7311,GFX_Layer1_CrusherIntro_Frame91,GFX_Layer1_CrusherIntro_Frame91End
	dl $EC7311,$EC8199,GFX_Layer1_CrusherIntro_Frame92,GFX_Layer1_CrusherIntro_Frame92End
	dl $EC8199,$EC904B,GFX_Layer1_CrusherIntro_Frame93,GFX_Layer1_CrusherIntro_Frame93End
	dl $EC904B,$EC9F0C,GFX_Layer1_CrusherIntro_Frame96,GFX_Layer1_CrusherIntro_Frame96End
	dl $EC9F0C,$ECAD78,GFX_Layer1_CrusherIntro_Frame97,GFX_Layer1_CrusherIntro_Frame97End
	dl $ECAD78,$ECBC17,GFX_Layer1_CrusherIntro_Frame100,GFX_Layer1_CrusherIntro_Frame100End
	dl $ECBC17,$ECCAAE,GFX_Layer1_CrusherIntro_Frame101,GFX_Layer1_CrusherIntro_Frame101End
	dl $ECCAAE,$ECCAB2,GFX_Layer1_SupervisorDefeated_Frame10,GFX_Layer1_SupervisorDefeated_Frame10End
	dl $ECCAB2,$ECCAB6,GFX_Layer1_SupervisorDefeated_Frame11,GFX_Layer1_SupervisorDefeated_Frame11End
	dl $ECCAB6,$ECD8C8,GFX_Layer1_SupervisorDefeated_Frame50,GFX_Layer1_SupervisorDefeated_Frame50End
	dl $ECD8C8,$ECE6DC,GFX_Layer1_SentryDefeated_Frame10,GFX_Layer1_SentryDefeated_Frame10End
	dl $ECE6DC,$ECF1B0,GFX_Layer1_MilitaryDefeated_Frame3,GFX_Layer1_MilitaryDefeated_Frame3End
	dl $ECF1B0,$ECF1B4,GFX_Layer1_CyborgDefeated_Frame22,GFX_Layer1_CyborgDefeated_Frame22End
	dl $ECF1B4,$ED0000,GFX_Layer1_CyborgIntro_Frame5,GFX_Layer1_CyborgIntro_Frame5End
	dl $ED0000,$ED0CA7,GFX_Layer1_SentryIntro_Frame1,GFX_Layer1_SentryIntro_Frame1End
	dl $ED0CA7,$ED1959,GFX_Layer1_SentryIntro_Frame14,GFX_Layer1_SentryIntro_Frame14End
	dl $ED1959,$ED2683,GFX_Layer1_SentryIntro_Frame15,GFX_Layer1_SentryIntro_Frame15End
	dl $ED2683,$ED344B,GFX_Layer1_SentryIntro_Frame25,GFX_Layer1_SentryIntro_Frame25End
	dl $ED344B,$ED3808,GFX_Layer1_SupervisorIntro_Frame53,GFX_Layer1_SupervisorIntro_Frame53End
	dl $ED3808,$ED44D1,GFX_Layer1_CrusherIntro_Frame82,GFX_Layer1_CrusherIntro_Frame82End
	dl $ED44D1,$ED51BA,GFX_Layer1_CrusherIntro_Frame83,GFX_Layer1_CrusherIntro_Frame83End
	dl $ED51BA,$ED5F0A,GFX_Layer1_CrusherIntro_Frame84,GFX_Layer1_CrusherIntro_Frame84End
	dl $ED5F0A,$ED6CB4,GFX_Layer1_CrusherIntro_Frame85,GFX_Layer1_CrusherIntro_Frame85End
	dl $ED6CB4,$ED7AB6,GFX_Layer1_CrusherIntro_Frame86,GFX_Layer1_CrusherIntro_Frame86End
	dl $ED7AB6,$ED88BD,GFX_Layer1_SupervisorDefeated_Frame24,GFX_Layer1_SupervisorDefeated_Frame24End
	dl $ED88BD,$ED960F,GFX_Layer1_SupervisorDefeated_Frame25,GFX_Layer1_SupervisorDefeated_Frame25End
	dl $ED960F,$EDA27C,GFX_Layer1_SupervisorDefeated_Frame26,GFX_Layer1_SupervisorDefeated_Frame26End
	dl $EDA27C,$EDB07F,GFX_Layer1_SupervisorDefeated_Frame51,GFX_Layer1_SupervisorDefeated_Frame51End
	dl $EDB07F,$EDBD3D,GFX_Layer1_SentryDefeated_Frame2,GFX_Layer1_SentryDefeated_Frame2End
	dl $EDBD3D,$EDCAFE,GFX_Layer1_SentryDefeated_Frame9,GFX_Layer1_SentryDefeated_Frame9End
	dl $EDCAFE,$EDCB02,GFX_Layer1_CyborgDefeated_Frame23,GFX_Layer1_CyborgDefeated_Frame23End
	dl $EDCB02,$EDCB06,GFX_Layer1_CyborgDefeated_Frame24,GFX_Layer1_CyborgDefeated_Frame24End
	dl $EDCB06,$EDCB0A,GFX_Layer1_CyborgDefeated_Frame26,GFX_Layer1_CyborgDefeated_Frame26End
	dl $EDCB0A,$EDCB0E,GFX_Layer1_CyborgDefeated_Frame27,GFX_Layer1_CyborgDefeated_Frame27End
	dl $EDCB0E,$EDCB12,GFX_Layer1_CyborgDefeated_Frame28,GFX_Layer1_CyborgDefeated_Frame28End
	dl $EDCB12,$EDCB16,GFX_Layer1_CyborgDefeated_Frame29,GFX_Layer1_CyborgDefeated_Frame29End
	dl $EDCB16,$EDD8F0,GFX_Layer1_ApproachingMetropolis4_Frame1,GFX_Layer1_ApproachingMetropolis4_Frame1End
	dl $EDD8F0,$EDE6A2,GFX_Layer1_CyborgIntro_Frame6,GFX_Layer1_CyborgIntro_Frame6End
	dl $EDE6A2,$EDF37D,GFX_Layer1_CyborgIntro_Frame7,GFX_Layer1_CyborgIntro_Frame7End
	dl $EDF37D,$EDFFFE,GFX_Layer1_CyborgIntro_Frame8,GFX_Layer1_CyborgIntro_Frame8End
	dl $EE0000,$EE0C0C,GFX_Layer1_SentryIntro_Frame2,GFX_Layer1_SentryIntro_Frame2End
	dl $EE0C0C,$EE17F6,GFX_Layer1_SentryIntro_Frame3,GFX_Layer1_SentryIntro_Frame3End
	dl $EE17F6,$EE237E,GFX_Layer1_SentryIntro_Frame4,GFX_Layer1_SentryIntro_Frame4End
	dl $EE237E,$EE2EF4,GFX_Layer1_SentryIntro_Frame6,GFX_Layer1_SentryIntro_Frame6End
	dl $EE2EF4,$EE3A78,GFX_Layer1_SentryIntro_Frame12,GFX_Layer1_SentryIntro_Frame12End
	dl $EE3A78,$EE467E,GFX_Layer1_SentryIntro_Frame13,GFX_Layer1_SentryIntro_Frame13End
	dl $EE467E,$EE526D,GFX_Layer1_LoaderIntro_Frame129,GFX_Layer1_LoaderIntro_Frame129End
	dl $EE526D,$EE5E00,GFX_Layer1_CrusherIntro_Frame78,GFX_Layer1_CrusherIntro_Frame78End
	dl $EE5E00,$EE69F3,GFX_Layer1_CrusherIntro_Frame79,GFX_Layer1_CrusherIntro_Frame79End
	dl $EE69F3,$EE7633,GFX_Layer1_CrusherIntro_Frame80,GFX_Layer1_CrusherIntro_Frame80End
	dl $EE7633,$EE828F,GFX_Layer1_CrusherIntro_Frame81,GFX_Layer1_CrusherIntro_Frame81End
	dl $EE828F,$EE8E71,GFX_Layer1_SupervisorDefeated_Frame2,GFX_Layer1_SupervisorDefeated_Frame2End
	dl $EE8E71,$EE99F6,GFX_Layer1_SupervisorDefeated_Frame14,GFX_Layer1_SupervisorDefeated_Frame14End
	dl $EE99F6,$EEA5B8,GFX_Layer1_SupervisorDefeated_Frame27,GFX_Layer1_SupervisorDefeated_Frame27End
	dl $EEA5B8,$EEB189,GFX_Layer1_SentryDefeated_Frame4,GFX_Layer1_SentryDefeated_Frame4End
	dl $EEB189,$EEBD04,GFX_Layer1_SentryDefeated_Frame5,GFX_Layer1_SentryDefeated_Frame5End
	dl $EEBD04,$EEC91D,GFX_Layer1_SentryDefeated_Frame6,GFX_Layer1_SentryDefeated_Frame6End
	dl $EEC91D,$EED53E,GFX_Layer1_SentryDefeated_Frame7,GFX_Layer1_SentryDefeated_Frame7End
	dl $EED53E,$EEE0B3,GFX_Layer1_SentryDefeated_Frame8,GFX_Layer1_SentryDefeated_Frame8End
	dl $EEE0B3,$EEEC72,GFX_Layer1_SentryDefeated_Frame21,GFX_Layer1_SentryDefeated_Frame21End
	dl $EEEC72,$EEF410,GFX_Layer1_ApproachingMetropolis4_Frame74,GFX_Layer1_ApproachingMetropolis4_Frame74End
	dl $EEF410,$EEFFFF,GFX_Layer1_CyborgIntro_Frame9,GFX_Layer1_CyborgIntro_Frame9End
	dl $EF0000,$EF0B6D,GFX_Layer1_SentryIntro_Frame5,GFX_Layer1_SentryIntro_Frame5End
	dl $EF0B6D,$EF165D,GFX_Layer1_SentryIntro_Frame7,GFX_Layer1_SentryIntro_Frame7End
	dl $EF165D,$EF211C,GFX_Layer1_SentryIntro_Frame8,GFX_Layer1_SentryIntro_Frame8End
	dl $EF211C,$EF2BBE,GFX_Layer1_SentryIntro_Frame9,GFX_Layer1_SentryIntro_Frame9End
	dl $EF2BBE,$EF36D5,GFX_Layer1_SentryIntro_Frame10,GFX_Layer1_SentryIntro_Frame10End
	dl $EF36D5,$EF4215,GFX_Layer1_SentryIntro_Frame11,GFX_Layer1_SentryIntro_Frame11End
	dl $EF4215,$EF474E,GFX_Layer1_ApeIntro_Frame140,GFX_Layer1_ApeIntro_Frame140End
	dl $EF474E,$EF51F0,GFX_Layer1_CrusherIntro_Frame69,GFX_Layer1_CrusherIntro_Frame69End
	dl $EF51F0,$EF5CB1,GFX_Layer1_CrusherIntro_Frame70,GFX_Layer1_CrusherIntro_Frame70End
	dl $EF5CB1,$EF6750,GFX_Layer1_CrusherIntro_Frame71,GFX_Layer1_CrusherIntro_Frame71End
	dl $EF6750,$EF7206,GFX_Layer1_CrusherIntro_Frame72,GFX_Layer1_CrusherIntro_Frame72End
	dl $EF7206,$EF7CA5,GFX_Layer1_CrusherIntro_Frame73,GFX_Layer1_CrusherIntro_Frame73End
	dl $EF7CA5,$EF875A,GFX_Layer1_CrusherIntro_Frame74,GFX_Layer1_CrusherIntro_Frame74End
	dl $EF875A,$EF923D,GFX_Layer1_CrusherIntro_Frame75,GFX_Layer1_CrusherIntro_Frame75End
	dl $EF923D,$EF9D27,GFX_Layer1_CrusherIntro_Frame76,GFX_Layer1_CrusherIntro_Frame76End
	dl $EF9D27,$EFA84D,GFX_Layer1_CrusherIntro_Frame77,GFX_Layer1_CrusherIntro_Frame77End
	dl $EFAA8F,$EFB542,GFX_Layer1_SupervisorDefeated_Frame28,GFX_Layer1_SupervisorDefeated_Frame28End
	dl $EFB542,$EFBFFB,GFX_Layer1_SupervisorDefeated_Frame29,GFX_Layer1_SupervisorDefeated_Frame29End
	dl $EFBFFB,$EFCB16,GFX_Layer1_SentryDefeated_Frame3,GFX_Layer1_SentryDefeated_Frame3End
	dl $EFCB16,$EFD688,GFX_Layer1_CyborgIntro_Frame10,GFX_Layer1_CyborgIntro_Frame10End
	dl $EFD688,$EFE1D9,GFX_Layer1_CyborgIntro_Frame11,GFX_Layer1_CyborgIntro_Frame11End
	dl $EFE1D9,$EFECCD,GFX_Layer1_CyborgIntro_Frame12,GFX_Layer1_CyborgIntro_Frame12End
	dl $EFECCD,$EFF785,GFX_Layer1_CyborgIntro_Frame13,GFX_Layer1_CyborgIntro_Frame13End
	dl $F00000,$F00A1F,GFX_Layer1_LoaderIntro_Frame128,GFX_Layer1_LoaderIntro_Frame128End
	dl $F00A1F,$F011FE,GFX_Layer1_CrusherIntro_Frame45,GFX_Layer1_CrusherIntro_Frame45End
	dl $F011FE,$F01C56,GFX_Layer1_CrusherIntro_Frame58,GFX_Layer1_CrusherIntro_Frame58End
	dl $F01C56,$F026E3,GFX_Layer1_CrusherIntro_Frame59,GFX_Layer1_CrusherIntro_Frame59End
	dl $F026E3,$F03154,GFX_Layer1_CrusherIntro_Frame60,GFX_Layer1_CrusherIntro_Frame60End
	dl $F03154,$F03B7E,GFX_Layer1_CrusherIntro_Frame61,GFX_Layer1_CrusherIntro_Frame61End
	dl $F03B7E,$F045BC,GFX_Layer1_CrusherIntro_Frame62,GFX_Layer1_CrusherIntro_Frame62End
	dl $F045BC,$F05023,GFX_Layer1_CrusherIntro_Frame63,GFX_Layer1_CrusherIntro_Frame63End
	dl $F05023,$F05A7C,GFX_Layer1_CrusherIntro_Frame64,GFX_Layer1_CrusherIntro_Frame64End
	dl $F05A7C,$F064D2,GFX_Layer1_CrusherIntro_Frame65,GFX_Layer1_CrusherIntro_Frame65End
	dl $F064D2,$F06F06,GFX_Layer1_CrusherIntro_Frame66,GFX_Layer1_CrusherIntro_Frame66End
	dl $F06F06,$F0798C,GFX_Layer1_CrusherIntro_Frame67,GFX_Layer1_CrusherIntro_Frame67End
	dl $F0798C,$F0841A,GFX_Layer1_CrusherIntro_Frame68,GFX_Layer1_CrusherIntro_Frame68End
	dl $F0841A,$F08E91,GFX_Layer1_SupervisorDefeated_Frame30,GFX_Layer1_SupervisorDefeated_Frame30End
	dl $F08E91,$F098B0,GFX_Layer1_SupervisorDefeated_Frame31,GFX_Layer1_SupervisorDefeated_Frame31End
	dl $F098B0,$F0A2FC,GFX_Layer1_MilitaryDefeated_Frame4,GFX_Layer1_MilitaryDefeated_Frame4End
	dl $F0A2FC,$F0AD84,GFX_Layer1_MilitaryDefeated_Frame5,GFX_Layer1_MilitaryDefeated_Frame5End
	dl $F0AD84,$F0B7E1,GFX_Layer1_MilitaryDefeated_Frame6,GFX_Layer1_MilitaryDefeated_Frame6End
	dl $F0B7E1,$F0C22E,GFX_Layer1_MilitaryDefeated_Frame7,GFX_Layer1_MilitaryDefeated_Frame7End
	dl $F0C22E,$F0CC51,GFX_Layer1_MilitaryDefeated_Frame9,GFX_Layer1_MilitaryDefeated_Frame9End
	dl $F0CC51,$F0CC55,GFX_Layer1_CyborgDefeated_Frame30,GFX_Layer1_CyborgDefeated_Frame30End
	dl $F0CC55,$F0CC59,GFX_Layer1_CyborgDefeated_Frame31,GFX_Layer1_CyborgDefeated_Frame31End
	dl $F0CC59,$F0D6AB,GFX_Layer1_ApproachingMetropolis4_Frame96,GFX_Layer1_ApproachingMetropolis4_Frame96End
	dl $F0D6AB,$F0E127,GFX_Layer1_ApproachingMetropolis4_Frame97,GFX_Layer1_ApproachingMetropolis4_Frame97End
	dl $F0E127,$F0EB73,GFX_Layer1_ApproachingMetropolis4_Frame98,GFX_Layer1_ApproachingMetropolis4_Frame98End
	dl $F0EB73,$F0F5A8,GFX_Layer1_ApproachingMetropolis4_Frame102,GFX_Layer1_ApproachingMetropolis4_Frame102End
	dl $F0F5A8,$F0FFFF,GFX_Layer1_CyborgIntro_Frame14,GFX_Layer1_CyborgIntro_Frame14End
	dl $F10000,$F1022F,GFX_Layer1_LoaderIntro_Frame47,GFX_Layer1_LoaderIntro_Frame47End
	dl $F1022F,$F10BD7,GFX_Layer1_CrusherIntro_Frame56,GFX_Layer1_CrusherIntro_Frame56End
	dl $F10BD7,$F115E8,GFX_Layer1_CrusherIntro_Frame57,GFX_Layer1_CrusherIntro_Frame57End
	dl $F117EE,$F121AA,GFX_Layer1_SupervisorDefeated_Frame32,GFX_Layer1_SupervisorDefeated_Frame32End
	dl $F121AA,$F12BAD,GFX_Layer1_MilitaryDefeated_Frame8,GFX_Layer1_MilitaryDefeated_Frame8End
	dl $F12BAD,$F135A8,GFX_Layer1_MilitaryDefeated_Frame10,GFX_Layer1_MilitaryDefeated_Frame10End
	dl $F135A8,$F13F9D,GFX_Layer1_MilitaryDefeated_Frame11,GFX_Layer1_MilitaryDefeated_Frame11End
	dl $F13F9D,$F14981,GFX_Layer1_MilitaryDefeated_Frame12,GFX_Layer1_MilitaryDefeated_Frame12End
	dl $F14981,$F15324,GFX_Layer1_MilitaryDefeated_Frame13,GFX_Layer1_MilitaryDefeated_Frame13End
	dl $F15324,$F15CF6,GFX_Layer1_MilitaryDefeated_Frame14,GFX_Layer1_MilitaryDefeated_Frame14End
	dl $F15CF6,$F1668C,GFX_Layer1_MilitaryDefeated_Frame15,GFX_Layer1_MilitaryDefeated_Frame15End
	dl $F1668C,$F17004,GFX_Layer1_MilitaryDefeated_Frame16,GFX_Layer1_MilitaryDefeated_Frame16End
	dl $F17004,$F179AC,GFX_Layer1_MilitaryDefeated_Frame20,GFX_Layer1_MilitaryDefeated_Frame20End
	dl $F179AC,$F18396,GFX_Layer1_CyborgDefeated_Frame14,GFX_Layer1_CyborgDefeated_Frame14End
	dl $F18396,$F1839A,GFX_Layer1_CyborgDefeated_Frame32,GFX_Layer1_CyborgDefeated_Frame32End
	dl $F1839A,$F18D1A,GFX_Layer1_ApproachingMetropolis4_Frame95,GFX_Layer1_ApproachingMetropolis4_Frame95End
	dl $F18D1A,$F19723,GFX_Layer1_ApproachingMetropolis4_Frame99,GFX_Layer1_ApproachingMetropolis4_Frame99End
	dl $F19723,$F1A120,GFX_Layer1_ApproachingMetropolis4_Frame100,GFX_Layer1_ApproachingMetropolis4_Frame100End
	dl $F1A120,$F1AAA2,GFX_Layer1_ApproachingMetropolis4_Frame101,GFX_Layer1_ApproachingMetropolis4_Frame101End
	dl $F1AAA2,$F1B499,GFX_Layer1_ApproachingMetropolis4_Frame103,GFX_Layer1_ApproachingMetropolis4_Frame103End
	dl $F1B499,$F1BE82,GFX_Layer1_ApproachingMetropolis4_Frame104,GFX_Layer1_ApproachingMetropolis4_Frame104End
	dl $F1BE82,$F1C827,GFX_Layer1_ApproachingMetropolis4_Frame105,GFX_Layer1_ApproachingMetropolis4_Frame105End
	dl $F1C827,$F1D1CF,GFX_Layer1_ApproachingMetropolis4_Frame106,GFX_Layer1_ApproachingMetropolis4_Frame106End
	dl $F1D1CF,$F1DB51,GFX_Layer1_ApproachingMetropolis4_Frame109,GFX_Layer1_ApproachingMetropolis4_Frame109End
	dl $F1DB51,$F1E4EA,GFX_Layer1_ApproachingMetropolis4_Frame110,GFX_Layer1_ApproachingMetropolis4_Frame110End
	dl $F1E4EA,$F1EEC4,GFX_Layer1_CyborgIntro_Frame15,GFX_Layer1_CyborgIntro_Frame15End
	dl $F1EEC4,$F1F864,GFX_Layer1_CyborgIntro_Frame16,GFX_Layer1_CyborgIntro_Frame16End
	dl $F20000,$F2093B,GFX_Layer1_MilitaryIntro_Frame118,GFX_Layer1_MilitaryIntro_Frame118End
	dl $F2093B,$F2122C,GFX_Layer1_LoaderIntro_Frame125,GFX_Layer1_LoaderIntro_Frame125End
	dl $F2122C,$F21B7C,GFX_Layer1_LoaderIntro_Frame126,GFX_Layer1_LoaderIntro_Frame126End
	dl $F21B7C,$F224D3,GFX_Layer1_LoaderIntro_Frame127,GFX_Layer1_LoaderIntro_Frame127End
	dl $F224D3,$F22DEB,GFX_Layer1_CrusherIntro_Frame53,GFX_Layer1_CrusherIntro_Frame53End
	dl $F22DEB,$F23715,GFX_Layer1_CrusherIntro_Frame54,GFX_Layer1_CrusherIntro_Frame54End
	dl $F23715,$F24061,GFX_Layer1_CrusherIntro_Frame55,GFX_Layer1_CrusherIntro_Frame55End
	dl $F24253,$F24BB2,GFX_Layer1_SupervisorDefeated_Frame33,GFX_Layer1_SupervisorDefeated_Frame33End
	dl $F24BB2,$F254ED,GFX_Layer1_SupervisorDefeated_Frame35,GFX_Layer1_SupervisorDefeated_Frame35End
	dl $F254ED,$F25DFF,GFX_Layer1_SentryDefeated_Frame22,GFX_Layer1_SentryDefeated_Frame22End
	dl $F25DFF,$F26761,GFX_Layer1_MilitaryDefeated_Frame17,GFX_Layer1_MilitaryDefeated_Frame17End
	dl $F26761,$F2709A,GFX_Layer1_MilitaryDefeated_Frame18,GFX_Layer1_MilitaryDefeated_Frame18End
	dl $F2709A,$F279CC,GFX_Layer1_MilitaryDefeated_Frame19,GFX_Layer1_MilitaryDefeated_Frame19End
	dl $F279CC,$F282C7,GFX_Layer1_CyborgDefeated_Frame15,GFX_Layer1_CyborgDefeated_Frame15End
	dl $F282C7,$F28A87,GFX_Layer1_ApproachingMetropolis4_Frame75,GFX_Layer1_ApproachingMetropolis4_Frame75End
	dl $F28A87,$F293AB,GFX_Layer1_ApproachingMetropolis4_Frame86,GFX_Layer1_ApproachingMetropolis4_Frame86End
	dl $F293AB,$F29C98,GFX_Layer1_ApproachingMetropolis4_Frame89,GFX_Layer1_ApproachingMetropolis4_Frame89End
	dl $F29C98,$F2A590,GFX_Layer1_ApproachingMetropolis4_Frame91,GFX_Layer1_ApproachingMetropolis4_Frame91End
	dl $F2A590,$F2AEFB,GFX_Layer1_ApproachingMetropolis4_Frame92,GFX_Layer1_ApproachingMetropolis4_Frame92End
	dl $F2AEFB,$F2B868,GFX_Layer1_ApproachingMetropolis4_Frame93,GFX_Layer1_ApproachingMetropolis4_Frame93End
	dl $F2B868,$F2C1B5,GFX_Layer1_ApproachingMetropolis4_Frame94,GFX_Layer1_ApproachingMetropolis4_Frame94End
	dl $F2C1B5,$F2CB23,GFX_Layer1_ApproachingMetropolis4_Frame107,GFX_Layer1_ApproachingMetropolis4_Frame107End
	dl $F2CB23,$F2D432,GFX_Layer1_ApproachingMetropolis4_Frame108,GFX_Layer1_ApproachingMetropolis4_Frame108End
	dl $F2D432,$F2DD62,GFX_Layer1_ApproachingMetropolis4_Frame111,GFX_Layer1_ApproachingMetropolis4_Frame111End
	dl $F2DD62,$F2E6CC,GFX_Layer1_CyborgIntro_Frame17,GFX_Layer1_CyborgIntro_Frame17End
	dl $F2E6CC,$F2EFC2,GFX_Layer1_CyborgIntro_Frame18,GFX_Layer1_CyborgIntro_Frame18End
	dl $F2EFC2,$F2F8B0,GFX_Layer1_CyborgIntro_Frame19,GFX_Layer1_CyborgIntro_Frame19End
	dl $F30000,$F30832,GFX_Layer1_LoaderIntro_Frame122,GFX_Layer1_LoaderIntro_Frame122End
	dl $F30832,$F310D2,GFX_Layer1_LoaderIntro_Frame123,GFX_Layer1_LoaderIntro_Frame123End
	dl $F310D2,$F319AF,GFX_Layer1_LoaderIntro_Frame124,GFX_Layer1_LoaderIntro_Frame124End
	dl $F319AF,$F32095,GFX_Layer1_CrusherIntro_Frame29,GFX_Layer1_CrusherIntro_Frame29End
	dl $F32095,$F328D5,GFX_Layer1_CrusherIntro_Frame48,GFX_Layer1_CrusherIntro_Frame48End
	dl $F328D5,$F33134,GFX_Layer1_CrusherIntro_Frame49,GFX_Layer1_CrusherIntro_Frame49End
	dl $F33134,$F3398F,GFX_Layer1_CrusherIntro_Frame50,GFX_Layer1_CrusherIntro_Frame50End
	dl $F3398F,$F34217,GFX_Layer1_CrusherIntro_Frame51,GFX_Layer1_CrusherIntro_Frame51End
	dl $F34217,$F34AC9,GFX_Layer1_CrusherIntro_Frame52,GFX_Layer1_CrusherIntro_Frame52End
	dl $F34AC9,$F35381,GFX_Layer1_SupervisorDefeated_Frame13,GFX_Layer1_SupervisorDefeated_Frame13End
	dl $F35381,$F35C6D,GFX_Layer1_SupervisorDefeated_Frame34,GFX_Layer1_SupervisorDefeated_Frame34End
	dl $F35C6D,$F36559,GFX_Layer1_SupervisorDefeated_Frame36,GFX_Layer1_SupervisorDefeated_Frame36End
	dl $F36559,$F36DEF,GFX_Layer1_SupervisorDefeated_Frame37,GFX_Layer1_SupervisorDefeated_Frame37End
	dl $F36DEF,$F37627,GFX_Layer1_SupervisorDefeated_Frame38,GFX_Layer1_SupervisorDefeated_Frame38End
	dl $F37627,$F37E9E,GFX_Layer1_CyborgDefeated_Frame12,GFX_Layer1_CyborgDefeated_Frame12End
	dl $F37E9E,$F3877C,GFX_Layer1_CyborgDefeated_Frame16,GFX_Layer1_CyborgDefeated_Frame16End
	dl $F3877C,$F38FE2,GFX_Layer1_CyborgDefeated_Frame17,GFX_Layer1_CyborgDefeated_Frame17End
	dl $F38FE2,$F39882,GFX_Layer1_CyborgDefeated_Frame18,GFX_Layer1_CyborgDefeated_Frame18End
	dl $F39882,$F3A0C2,GFX_Layer1_ApproachingMetropolis4_Frame79,GFX_Layer1_ApproachingMetropolis4_Frame79End
	dl $F3A0C2,$F3A909,GFX_Layer1_ApproachingMetropolis4_Frame81,GFX_Layer1_ApproachingMetropolis4_Frame81End
	dl $F3A909,$F3B17C,GFX_Layer1_ApproachingMetropolis4_Frame82,GFX_Layer1_ApproachingMetropolis4_Frame82End
	dl $F3B17C,$F3BA21,GFX_Layer1_ApproachingMetropolis4_Frame83,GFX_Layer1_ApproachingMetropolis4_Frame83End
	dl $F3BA21,$F3C2D3,GFX_Layer1_ApproachingMetropolis4_Frame84,GFX_Layer1_ApproachingMetropolis4_Frame84End
	dl $F3C2D3,$F3CB65,GFX_Layer1_ApproachingMetropolis4_Frame85,GFX_Layer1_ApproachingMetropolis4_Frame85End
	dl $F3CB65,$F3D44E,GFX_Layer1_ApproachingMetropolis4_Frame87,GFX_Layer1_ApproachingMetropolis4_Frame87End
	dl $F3D44E,$F3DD38,GFX_Layer1_ApproachingMetropolis4_Frame88,GFX_Layer1_ApproachingMetropolis4_Frame88End
	dl $F3DD38,$F3E620,GFX_Layer1_ApproachingMetropolis4_Frame90,GFX_Layer1_ApproachingMetropolis4_Frame90End
	dl $F3E620,$F3EF0C,GFX_Layer1_ApproachingMetropolis4_Frame112,GFX_Layer1_ApproachingMetropolis4_Frame112End
	dl $F3EF0C,$F3F775,GFX_Layer1_ApproachingMetropolis4_Frame113,GFX_Layer1_ApproachingMetropolis4_Frame113End
	dl $F3F775,$F3FFFD,GFX_Layer1_ApproachingMetropolis4_Frame115,GFX_Layer1_ApproachingMetropolis4_Frame115End
	dl $F40000,$F407A8,GFX_Layer1_MilitaryIntro_Frame117,GFX_Layer1_MilitaryIntro_Frame117End
	dl $F407A8,$F40F51,GFX_Layer1_SupervisorIntro_Frame76,GFX_Layer1_SupervisorIntro_Frame76End
	dl $F40F51,$F41745,GFX_Layer1_SupervisorIntro_Frame77,GFX_Layer1_SupervisorIntro_Frame77End
	dl $F41745,$F41F68,GFX_Layer1_SupervisorIntro_Frame78,GFX_Layer1_SupervisorIntro_Frame78End
	dl $F41F68,$F42732,GFX_Layer1_SupervisorIntro_Frame80,GFX_Layer1_SupervisorIntro_Frame80End
	dl $F42732,$F42EE7,GFX_Layer1_SupervisorIntro_Frame81,GFX_Layer1_SupervisorIntro_Frame81End
	dl $F42EE7,$F436ED,GFX_Layer1_SupervisorIntro_Frame83,GFX_Layer1_SupervisorIntro_Frame83End
	dl $F436ED,$F43EF0,GFX_Layer1_SupervisorIntro_Frame84,GFX_Layer1_SupervisorIntro_Frame84End
	dl $F43EF0,$F446DA,GFX_Layer1_SupervisorIntro_Frame85,GFX_Layer1_SupervisorIntro_Frame85End
	dl $F446DA,$F44ED6,GFX_Layer1_SupervisorIntro_Frame86,GFX_Layer1_SupervisorIntro_Frame86End
	dl $F44ED6,$F45690,GFX_Layer1_SupervisorIntro_Frame87,GFX_Layer1_SupervisorIntro_Frame87End
	dl $F45690,$F45B45,GFX_Layer1_CrusherIntro_Frame2,GFX_Layer1_CrusherIntro_Frame2End
	dl $F45B45,$F462E6,GFX_Layer1_CrusherIntro_Frame39,GFX_Layer1_CrusherIntro_Frame39End
	dl $F462E6,$F46AAB,GFX_Layer1_CrusherIntro_Frame40,GFX_Layer1_CrusherIntro_Frame40End
	dl $F46AAB,$F47262,GFX_Layer1_CrusherIntro_Frame43,GFX_Layer1_CrusherIntro_Frame43End
	dl $F47262,$F47A13,GFX_Layer1_CrusherIntro_Frame44,GFX_Layer1_CrusherIntro_Frame44End
	dl $F47A13,$F48219,GFX_Layer1_CrusherIntro_Frame46,GFX_Layer1_CrusherIntro_Frame46End
	dl $F48219,$F48A1D,GFX_Layer1_CrusherIntro_Frame47,GFX_Layer1_CrusherIntro_Frame47End
	dl $F48BC7,$F49372,GFX_Layer1_SupervisorDefeated_Frame39,GFX_Layer1_SupervisorDefeated_Frame39End
	dl $F49372,$F49B38,GFX_Layer1_CyborgDefeated_Frame4,GFX_Layer1_CyborgDefeated_Frame4End
	dl $F49B38,$F4A354,GFX_Layer1_CyborgDefeated_Frame5,GFX_Layer1_CyborgDefeated_Frame5End
	dl $F4A354,$F4AB33,GFX_Layer1_CyborgDefeated_Frame7,GFX_Layer1_CyborgDefeated_Frame7End
	dl $F4AB33,$F4B2D5,GFX_Layer1_CyborgDefeated_Frame8,GFX_Layer1_CyborgDefeated_Frame8End
	dl $F4B2D5,$F4BA79,GFX_Layer1_CyborgDefeated_Frame13,GFX_Layer1_CyborgDefeated_Frame13End
	dl $F4BA79,$F4C258,GFX_Layer1_CyborgDefeated_Frame21,GFX_Layer1_CyborgDefeated_Frame21End
	dl $F4C43A,$F4CBE8,GFX_Layer1_ApproachingMetropolis4_Frame73,GFX_Layer1_ApproachingMetropolis4_Frame73End
	dl $F4CBE8,$F4D3B8,GFX_Layer1_ApproachingMetropolis4_Frame76,GFX_Layer1_ApproachingMetropolis4_Frame76End
	dl $F4D3B8,$F4DB90,GFX_Layer1_ApproachingMetropolis4_Frame77,GFX_Layer1_ApproachingMetropolis4_Frame77End
	dl $F4DB90,$F4E346,GFX_Layer1_ApproachingMetropolis4_Frame78,GFX_Layer1_ApproachingMetropolis4_Frame78End
	dl $F4E346,$F4EB6C,GFX_Layer1_ApproachingMetropolis4_Frame80,GFX_Layer1_ApproachingMetropolis4_Frame80End
	dl $F4EB6C,$F4F399,GFX_Layer1_ApproachingMetropolis4_Frame114,GFX_Layer1_ApproachingMetropolis4_Frame114End
	dl $F50000,$F50780,GFX_Layer1_ApeIntro_Frame85,GFX_Layer1_ApeIntro_Frame85End
	dl $F50780,$F50F06,GFX_Layer1_ApeIntro_Frame86,GFX_Layer1_ApeIntro_Frame86End
	dl $F50F06,$F5163F,GFX_Layer1_ApeIntro_Frame87,GFX_Layer1_ApeIntro_Frame87End
	dl $F5163F,$F51DCF,GFX_Layer1_ApeIntro_Frame88,GFX_Layer1_ApeIntro_Frame88End
	dl $F51DCF,$F52548,GFX_Layer1_ApeIntro_Frame89,GFX_Layer1_ApeIntro_Frame89End
	dl $F52548,$F52CA6,GFX_Layer1_ApeIntro_Frame90,GFX_Layer1_ApeIntro_Frame90End
	dl $F52CA6,$F5340B,GFX_Layer1_ApeIntro_Frame91,GFX_Layer1_ApeIntro_Frame91End
	dl $F5340B,$F53B45,GFX_Layer1_ApeIntro_Frame101,GFX_Layer1_ApeIntro_Frame101End
	dl $F53B45,$F53FBD,GFX_Layer1_ApeIntro_Frame117,GFX_Layer1_ApeIntro_Frame117End
	dl $F53FBD,$F546F6,GFX_Layer1_LoaderIntro_Frame119,GFX_Layer1_LoaderIntro_Frame119End
	dl $F546F6,$F54E48,GFX_Layer1_LoaderIntro_Frame120,GFX_Layer1_LoaderIntro_Frame120End
	dl $F54E48,$F555CC,GFX_Layer1_LoaderIntro_Frame121,GFX_Layer1_LoaderIntro_Frame121End
	dl $F555CC,$F55D03,GFX_Layer1_SupervisorIntro_Frame72,GFX_Layer1_SupervisorIntro_Frame72End
	dl $F55D03,$F56463,GFX_Layer1_SupervisorIntro_Frame79,GFX_Layer1_SupervisorIntro_Frame79End
	dl $F56463,$F56BCB,GFX_Layer1_SupervisorIntro_Frame82,GFX_Layer1_SupervisorIntro_Frame82End
	dl $F56BCB,$F5735E,GFX_Layer1_SupervisorIntro_Frame88,GFX_Layer1_SupervisorIntro_Frame88End
	dl $F5735E,$F57ABB,GFX_Layer1_SupervisorIntro_Frame89,GFX_Layer1_SupervisorIntro_Frame89End
	dl $F57ABB,$F58218,GFX_Layer1_SupervisorIntro_Frame90,GFX_Layer1_SupervisorIntro_Frame90End
	dl $F58218,$F58980,GFX_Layer1_SupervisorIntro_Frame91,GFX_Layer1_SupervisorIntro_Frame91End
	dl $F58980,$F590BF,GFX_Layer1_SupervisorIntro_Frame92,GFX_Layer1_SupervisorIntro_Frame92End
	dl $F590BF,$F597F9,GFX_Layer1_SupervisorIntro_Frame95,GFX_Layer1_SupervisorIntro_Frame95End
	dl $F597F9,$F59F27,GFX_Layer1_SupervisorIntro_Frame99,GFX_Layer1_SupervisorIntro_Frame99End
	dl $F59F27,$F5A66B,GFX_Layer1_CrusherIntro_Frame36,GFX_Layer1_CrusherIntro_Frame36End
	dl $F5A66B,$F5ADB6,GFX_Layer1_CrusherIntro_Frame38,GFX_Layer1_CrusherIntro_Frame38End
	dl $F5ADB6,$F5B550,GFX_Layer1_CrusherIntro_Frame41,GFX_Layer1_CrusherIntro_Frame41End
	dl $F5B550,$F5BCD1,GFX_Layer1_CrusherIntro_Frame42,GFX_Layer1_CrusherIntro_Frame42End
	dl $F5BE67,$F5C5C7,GFX_Layer1_SupervisorDefeated_Frame42,GFX_Layer1_SupervisorDefeated_Frame42End
	dl $F5C5C7,$F5CD52,GFX_Layer1_SupervisorDefeated_Frame43,GFX_Layer1_SupervisorDefeated_Frame43End
	dl $F5CD52,$F5D4BC,GFX_Layer1_SentryDefeated_Frame23,GFX_Layer1_SentryDefeated_Frame23End
	dl $F5D4BC,$F5DC38,GFX_Layer1_CyborgDefeated_Frame2,GFX_Layer1_CyborgDefeated_Frame2End
	dl $F5DC38,$F5E3C1,GFX_Layer1_CyborgDefeated_Frame3,GFX_Layer1_CyborgDefeated_Frame3End
	dl $F5E3C1,$F5EB39,GFX_Layer1_CyborgDefeated_Frame9,GFX_Layer1_CyborgDefeated_Frame9End
	dl $F5EB39,$F5F278,GFX_Layer1_CyborgDefeated_Frame10,GFX_Layer1_CyborgDefeated_Frame10End
	dl $F5F278,$F5FA09,GFX_Layer1_CyborgDefeated_Frame20,GFX_Layer1_CyborgDefeated_Frame20End
	dl $F60000,$F60516,GFX_Layer1_ApeIntro_Frame33,GFX_Layer1_ApeIntro_Frame33End
	dl $F60516,$F60BD8,GFX_Layer1_ApeIntro_Frame83,GFX_Layer1_ApeIntro_Frame83End
	dl $F60BD8,$F612DF,GFX_Layer1_ApeIntro_Frame84,GFX_Layer1_ApeIntro_Frame84End
	dl $F612DF,$F619D9,GFX_Layer1_ApeIntro_Frame92,GFX_Layer1_ApeIntro_Frame92End
	dl $F619D9,$F620AC,GFX_Layer1_ApeIntro_Frame94,GFX_Layer1_ApeIntro_Frame94End
	dl $F620AC,$F6277B,GFX_Layer1_LoaderIntro_Frame112,GFX_Layer1_LoaderIntro_Frame112End
	dl $F6277B,$F62E5E,GFX_Layer1_LoaderIntro_Frame113,GFX_Layer1_LoaderIntro_Frame113End
	dl $F62E5E,$F63563,GFX_Layer1_LoaderIntro_Frame115,GFX_Layer1_LoaderIntro_Frame115End
	dl $F63563,$F63C53,GFX_Layer1_LoaderIntro_Frame116,GFX_Layer1_LoaderIntro_Frame116End
	dl $F63C53,$F64334,GFX_Layer1_LoaderIntro_Frame117,GFX_Layer1_LoaderIntro_Frame117End
	dl $F64334,$F64A31,GFX_Layer1_LoaderIntro_Frame118,GFX_Layer1_LoaderIntro_Frame118End
	dl $F64A31,$F65107,GFX_Layer1_SupervisorIntro_Frame18,GFX_Layer1_SupervisorIntro_Frame18End
	dl $F65107,$F657C9,GFX_Layer1_SupervisorIntro_Frame61,GFX_Layer1_SupervisorIntro_Frame61End
	dl $F657C9,$F65E86,GFX_Layer1_SupervisorIntro_Frame64,GFX_Layer1_SupervisorIntro_Frame64End
	dl $F65E86,$F665B3,GFX_Layer1_SupervisorIntro_Frame74,GFX_Layer1_SupervisorIntro_Frame74End
	dl $F665B3,$F66CA0,GFX_Layer1_SupervisorIntro_Frame75,GFX_Layer1_SupervisorIntro_Frame75End
	dl $F66CA0,$F673BD,GFX_Layer1_SupervisorIntro_Frame93,GFX_Layer1_SupervisorIntro_Frame93End
	dl $F673BD,$F67AD9,GFX_Layer1_SupervisorIntro_Frame94,GFX_Layer1_SupervisorIntro_Frame94End
	dl $F67AD9,$F681D3,GFX_Layer1_SupervisorIntro_Frame98,GFX_Layer1_SupervisorIntro_Frame98End
	dl $F681D3,$F688B5,GFX_Layer1_CrusherIntro_Frame28,GFX_Layer1_CrusherIntro_Frame28End
	dl $F688B5,$F68FB3,GFX_Layer1_CrusherIntro_Frame30,GFX_Layer1_CrusherIntro_Frame30End
	dl $F68FB3,$F696AA,GFX_Layer1_CrusherIntro_Frame31,GFX_Layer1_CrusherIntro_Frame31End
	dl $F696AA,$F69DBA,GFX_Layer1_CrusherIntro_Frame32,GFX_Layer1_CrusherIntro_Frame32End
	dl $F69DBA,$F6A4E1,GFX_Layer1_CrusherIntro_Frame33,GFX_Layer1_CrusherIntro_Frame33End
	dl $F6A4E1,$F6AC02,GFX_Layer1_CrusherIntro_Frame34,GFX_Layer1_CrusherIntro_Frame34End
	dl $F6AC02,$F6B324,GFX_Layer1_CrusherIntro_Frame35,GFX_Layer1_CrusherIntro_Frame35End
	dl $F6B324,$F6BA4A,GFX_Layer1_CrusherIntro_Frame37,GFX_Layer1_CrusherIntro_Frame37End
	dl $F6BA4A,$F6C15C,GFX_Layer1_SupervisorDefeated_Frame12,GFX_Layer1_SupervisorDefeated_Frame12End
	dl $F6C15C,$F6C868,GFX_Layer1_SupervisorDefeated_Frame40,GFX_Layer1_SupervisorDefeated_Frame40End
	dl $F6C868,$F6CF5F,GFX_Layer1_SupervisorDefeated_Frame41,GFX_Layer1_SupervisorDefeated_Frame41End
	dl $F6CF5F,$F6D674,GFX_Layer1_SupervisorDefeated_Frame44,GFX_Layer1_SupervisorDefeated_Frame44End
	dl $F6D674,$F6DD93,GFX_Layer1_SupervisorDefeated_Frame45,GFX_Layer1_SupervisorDefeated_Frame45End
	dl $F6DD93,$F6E492,GFX_Layer1_SupervisorDefeated_Frame46,GFX_Layer1_SupervisorDefeated_Frame46End
	dl $F6E492,$F6EB5E,GFX_Layer1_SupervisorDefeated_Frame49,GFX_Layer1_SupervisorDefeated_Frame49End
	dl $F6EB5E,$F6F220,GFX_Layer1_CyborgDefeated_Frame6,GFX_Layer1_CyborgDefeated_Frame6End
	dl $F6F220,$F6F8E5,GFX_Layer1_ApproachingMetropolis4_Frame71,GFX_Layer1_ApproachingMetropolis4_Frame71End
	dl $F6F8E5,$F6FFFF,GFX_Layer1_ApproachingMetropolis4_Frame72,GFX_Layer1_ApproachingMetropolis4_Frame72End
	dl $F70000,$F70670,GFX_Layer1_MilitaryIntro_Frame119,GFX_Layer1_MilitaryIntro_Frame119End
	dl $F70670,$F70CD0,GFX_Layer1_ApeIntro_Frame59,GFX_Layer1_ApeIntro_Frame59End
	dl $F70CD0,$F71358,GFX_Layer1_ApeIntro_Frame72,GFX_Layer1_ApeIntro_Frame72End
	dl $F71358,$F719C9,GFX_Layer1_ApeIntro_Frame73,GFX_Layer1_ApeIntro_Frame73End
	dl $F719C9,$F72066,GFX_Layer1_ApeIntro_Frame74,GFX_Layer1_ApeIntro_Frame74End
	dl $F72066,$F72706,GFX_Layer1_ApeIntro_Frame76,GFX_Layer1_ApeIntro_Frame76End
	dl $F72706,$F72D9F,GFX_Layer1_ApeIntro_Frame81,GFX_Layer1_ApeIntro_Frame81End
	dl $F72D9F,$F73452,GFX_Layer1_ApeIntro_Frame82,GFX_Layer1_ApeIntro_Frame82End
	dl $F73452,$F73B0D,GFX_Layer1_ApeIntro_Frame93,GFX_Layer1_ApeIntro_Frame93End
	dl $F73B0D,$F74198,GFX_Layer1_ApeIntro_Frame95,GFX_Layer1_ApeIntro_Frame95End
	dl $F74198,$F747D2,GFX_Layer1_ApeIntro_Frame97,GFX_Layer1_ApeIntro_Frame97End
	dl $F747D2,$F74E4F,GFX_Layer1_LoaderIntro_Frame110,GFX_Layer1_LoaderIntro_Frame110End
	dl $F74E4F,$F75504,GFX_Layer1_LoaderIntro_Frame111,GFX_Layer1_LoaderIntro_Frame111End
	dl $F75504,$F75BAF,GFX_Layer1_LoaderIntro_Frame114,GFX_Layer1_LoaderIntro_Frame114End
	dl $F75BAF,$F76256,GFX_Layer1_SupervisorIntro_Frame17,GFX_Layer1_SupervisorIntro_Frame17End
	dl $F76256,$F768D1,GFX_Layer1_SupervisorIntro_Frame19,GFX_Layer1_SupervisorIntro_Frame19End
	dl $F768D1,$F76F6E,GFX_Layer1_SupervisorIntro_Frame59,GFX_Layer1_SupervisorIntro_Frame59End
	dl $F76F6E,$F77629,GFX_Layer1_SupervisorIntro_Frame62,GFX_Layer1_SupervisorIntro_Frame62End
	dl $F77629,$F77CCF,GFX_Layer1_SupervisorIntro_Frame63,GFX_Layer1_SupervisorIntro_Frame63End
	dl $F77CCF,$F78352,GFX_Layer1_SupervisorIntro_Frame65,GFX_Layer1_SupervisorIntro_Frame65End
	dl $F78352,$F789E9,GFX_Layer1_SupervisorIntro_Frame69,GFX_Layer1_SupervisorIntro_Frame69End
	dl $F789E9,$F79088,GFX_Layer1_SupervisorIntro_Frame70,GFX_Layer1_SupervisorIntro_Frame70End
	dl $F79088,$F7973D,GFX_Layer1_SupervisorIntro_Frame71,GFX_Layer1_SupervisorIntro_Frame71End
	dl $F7973D,$F79DF6,GFX_Layer1_SupervisorIntro_Frame96,GFX_Layer1_SupervisorIntro_Frame96End
	dl $F79DF6,$F7A46E,GFX_Layer1_SupervisorIntro_Frame97,GFX_Layer1_SupervisorIntro_Frame97End
	dl $F7A46E,$F7AAD8,GFX_Layer1_CrusherIntro_Frame26,GFX_Layer1_CrusherIntro_Frame26End
	dl $F7AAD8,$F7B180,GFX_Layer1_CrusherIntro_Frame27,GFX_Layer1_CrusherIntro_Frame27End
	dl $F7B180,$F7B820,GFX_Layer1_SupervisorDefeated_Frame47,GFX_Layer1_SupervisorDefeated_Frame47End
	dl $F7B820,$F7BECF,GFX_Layer1_SupervisorDefeated_Frame48,GFX_Layer1_SupervisorDefeated_Frame48End
	dl $F7BECF,$F7C52E,GFX_Layer1_SupervisorDefeated_Frame52,GFX_Layer1_SupervisorDefeated_Frame52End
	dl $F7C52E,$F7CB90,GFX_Layer1_SupervisorDefeated_Frame54,GFX_Layer1_SupervisorDefeated_Frame54End
	dl $F7CB90,$F7D205,GFX_Layer1_SupervisorDefeated_Frame55,GFX_Layer1_SupervisorDefeated_Frame55End
	dl $F7D205,$F7D868,GFX_Layer1_LoaderDefeated_Frame2,GFX_Layer1_LoaderDefeated_Frame2End
	dl $F7D868,$F7DF1E,GFX_Layer1_ApproachingMetropolis4_Frame64,GFX_Layer1_ApproachingMetropolis4_Frame64End
	dl $F7DF1E,$F7E59B,GFX_Layer1_ApproachingMetropolis4_Frame65,GFX_Layer1_ApproachingMetropolis4_Frame65End
	dl $F7E59B,$F7EC56,GFX_Layer1_ApproachingMetropolis4_Frame67,GFX_Layer1_ApproachingMetropolis4_Frame67End
	dl $F7EC56,$F7F2ED,GFX_Layer1_ApproachingMetropolis4_Frame68,GFX_Layer1_ApproachingMetropolis4_Frame68End
	dl $F7F2ED,$F7F972,GFX_Layer1_ApproachingMetropolis4_Frame69,GFX_Layer1_ApproachingMetropolis4_Frame69End
	dl $F7F972,$F80000,GFX_Layer1_ApproachingMetropolis4_Frame70,GFX_Layer1_ApproachingMetropolis4_Frame70End
	dl $F80000,$F80629,GFX_Layer1_MilitaryIntro_Frame120,GFX_Layer1_MilitaryIntro_Frame120End
	dl $F80629,$F80C30,GFX_Layer1_MilitaryIntro_Frame121,GFX_Layer1_MilitaryIntro_Frame121End
	dl $F80C30,$F8122A,GFX_Layer1_ApeIntro_Frame55,GFX_Layer1_ApeIntro_Frame55End
	dl $F8122A,$F81859,GFX_Layer1_ApeIntro_Frame56,GFX_Layer1_ApeIntro_Frame56End
	dl $F81859,$F81E50,GFX_Layer1_ApeIntro_Frame57,GFX_Layer1_ApeIntro_Frame57End
	dl $F81E50,$F82449,GFX_Layer1_ApeIntro_Frame58,GFX_Layer1_ApeIntro_Frame58End
	dl $F82449,$F82A71,GFX_Layer1_ApeIntro_Frame60,GFX_Layer1_ApeIntro_Frame60End
	dl $F82A71,$F83083,GFX_Layer1_ApeIntro_Frame71,GFX_Layer1_ApeIntro_Frame71End
	dl $F83083,$F836C2,GFX_Layer1_ApeIntro_Frame75,GFX_Layer1_ApeIntro_Frame75End
	dl $F836C2,$F83CBF,GFX_Layer1_ApeIntro_Frame77,GFX_Layer1_ApeIntro_Frame77End
	dl $F83CBF,$F842B8,GFX_Layer1_ApeIntro_Frame79,GFX_Layer1_ApeIntro_Frame79End
	dl $F842B8,$F848F5,GFX_Layer1_ApeIntro_Frame80,GFX_Layer1_ApeIntro_Frame80End
	dl $F848F5,$F84F2F,GFX_Layer1_ApeIntro_Frame98,GFX_Layer1_ApeIntro_Frame98End
	dl $F84F2F,$F85531,GFX_Layer1_ApeIntro_Frame100,GFX_Layer1_ApeIntro_Frame100End
	dl $F85531,$F85B52,GFX_Layer1_ApeIntro_Frame142,GFX_Layer1_ApeIntro_Frame142End
	dl $F85B52,$F8618A,GFX_Layer1_LoaderIntro_Frame109,GFX_Layer1_LoaderIntro_Frame109End
	dl $F8618A,$F86785,GFX_Layer1_SupervisorIntro_Frame15,GFX_Layer1_SupervisorIntro_Frame15End
	dl $F86785,$F86D86,GFX_Layer1_SupervisorIntro_Frame16,GFX_Layer1_SupervisorIntro_Frame16End
	dl $F86D86,$F87398,GFX_Layer1_SupervisorIntro_Frame21,GFX_Layer1_SupervisorIntro_Frame21End
	dl $F87398,$F879AC,GFX_Layer1_SupervisorIntro_Frame22,GFX_Layer1_SupervisorIntro_Frame22End
	dl $F879AC,$F87FE3,GFX_Layer1_SupervisorIntro_Frame57,GFX_Layer1_SupervisorIntro_Frame57End
	dl $F87FE3,$F88610,GFX_Layer1_SupervisorIntro_Frame58,GFX_Layer1_SupervisorIntro_Frame58End
	dl $F88610,$F88C29,GFX_Layer1_SupervisorIntro_Frame66,GFX_Layer1_SupervisorIntro_Frame66End
	dl $F88C29,$F8926C,GFX_Layer1_SupervisorIntro_Frame68,GFX_Layer1_SupervisorIntro_Frame68End
	dl $F8926C,$F897EE,GFX_Layer1_CrusherIntro_Frame20,GFX_Layer1_CrusherIntro_Frame20End
	dl $F897EE,$F89DF3,GFX_Layer1_CrusherIntro_Frame24,GFX_Layer1_CrusherIntro_Frame24End
	dl $F89DF3,$F8A426,GFX_Layer1_CrusherIntro_Frame25,GFX_Layer1_CrusherIntro_Frame25End
	dl $F8A426,$F8AA50,GFX_Layer1_SupervisorDefeated_Frame53,GFX_Layer1_SupervisorDefeated_Frame53End
	dl $F8AA50,$F8B068,GFX_Layer1_SupervisorDefeated_Frame56,GFX_Layer1_SupervisorDefeated_Frame56End
	dl $F8B068,$F8B67D,GFX_Layer1_SupervisorDefeated_Frame58,GFX_Layer1_SupervisorDefeated_Frame58End
	dl $F8B67D,$F8BC74,GFX_Layer1_SupervisorDefeated_Frame61,GFX_Layer1_SupervisorDefeated_Frame61End
	dl $F8BC74,$F8C26A,GFX_Layer1_SupervisorDefeated_Frame62,GFX_Layer1_SupervisorDefeated_Frame62End
	dl $F8C26A,$F8C86B,GFX_Layer1_SupervisorDefeated_Frame64,GFX_Layer1_SupervisorDefeated_Frame64End
	dl $F8C86B,$F8CE7C,GFX_Layer1_SupervisorDefeated_Frame68,GFX_Layer1_SupervisorDefeated_Frame68End
	dl $F8CE7C,$F8D488,GFX_Layer1_LoaderDefeated_Frame6,GFX_Layer1_LoaderDefeated_Frame6End
	dl $F8D488,$F8DAD6,GFX_Layer1_LoaderDefeated_Frame7,GFX_Layer1_LoaderDefeated_Frame7End
	dl $F8DAD6,$F8E12C,GFX_Layer1_CyborgDefeated_Frame11,GFX_Layer1_CyborgDefeated_Frame11End
	dl $F8E12C,$F8E76E,GFX_Layer1_CyborgDefeated_Frame19,GFX_Layer1_CyborgDefeated_Frame19End
	dl $F8E76E,$F8ED91,GFX_Layer1_ApproachingMetropolis4_Frame60,GFX_Layer1_ApproachingMetropolis4_Frame60End
	dl $F8ED91,$F8F393,GFX_Layer1_ApproachingMetropolis4_Frame61,GFX_Layer1_ApproachingMetropolis4_Frame61End
	dl $F8F393,$F8F9B1,GFX_Layer1_ApproachingMetropolis4_Frame63,GFX_Layer1_ApproachingMetropolis4_Frame63End
	dl $F8F9B1,$F90000,GFX_Layer1_ApproachingMetropolis4_Frame66,GFX_Layer1_ApproachingMetropolis4_Frame66End
	dl $F90000,$F905CA,GFX_Layer1_MilitaryIntro_Frame116,GFX_Layer1_MilitaryIntro_Frame116End
	dl $F905CA,$F90BAD,GFX_Layer1_MilitaryIntro_Frame122,GFX_Layer1_MilitaryIntro_Frame122End
	dl $F90BAD,$F9117E,GFX_Layer1_ApeIntro_Frame51,GFX_Layer1_ApeIntro_Frame51End
	dl $F9117E,$F91760,GFX_Layer1_ApeIntro_Frame52,GFX_Layer1_ApeIntro_Frame52End
	dl $F91760,$F91D35,GFX_Layer1_ApeIntro_Frame53,GFX_Layer1_ApeIntro_Frame53End
	dl $F91D35,$F92328,GFX_Layer1_ApeIntro_Frame54,GFX_Layer1_ApeIntro_Frame54End
	dl $F92328,$F928F7,GFX_Layer1_ApeIntro_Frame61,GFX_Layer1_ApeIntro_Frame61End
	dl $F928F7,$F92ECA,GFX_Layer1_ApeIntro_Frame62,GFX_Layer1_ApeIntro_Frame62End
	dl $F92ECA,$F93495,GFX_Layer1_ApeIntro_Frame63,GFX_Layer1_ApeIntro_Frame63End
	dl $F93495,$F93A72,GFX_Layer1_ApeIntro_Frame67,GFX_Layer1_ApeIntro_Frame67End
	dl $F93A72,$F9403C,GFX_Layer1_ApeIntro_Frame70,GFX_Layer1_ApeIntro_Frame70End
	dl $F9403C,$F9460F,GFX_Layer1_ApeIntro_Frame99,GFX_Layer1_ApeIntro_Frame99End
	dl $F9460F,$F94BB7,GFX_Layer1_ApeIntro_Frame102,GFX_Layer1_ApeIntro_Frame102End
	dl $F94BB7,$F95161,GFX_Layer1_ApeIntro_Frame106,GFX_Layer1_ApeIntro_Frame106End
	dl $F95161,$F956FB,GFX_Layer1_ApeIntro_Frame107,GFX_Layer1_ApeIntro_Frame107End
	dl $F956FB,$F95C95,GFX_Layer1_ApeIntro_Frame125,GFX_Layer1_ApeIntro_Frame125End
	dl $F95C95,$F9626F,GFX_Layer1_ApeIntro_Frame143,GFX_Layer1_ApeIntro_Frame143End
	dl $F9626F,$F9647C,GFX_Layer1_LoaderIntro_Frame40,GFX_Layer1_LoaderIntro_Frame40End
	dl $F9647C,$F96A2F,GFX_Layer1_LoaderIntro_Frame106,GFX_Layer1_LoaderIntro_Frame106End
	dl $F96A2F,$F97018,GFX_Layer1_LoaderIntro_Frame107,GFX_Layer1_LoaderIntro_Frame107End
	dl $F97018,$F9760C,GFX_Layer1_LoaderIntro_Frame108,GFX_Layer1_LoaderIntro_Frame108End
	dl $F9760C,$F97BE5,GFX_Layer1_SupervisorIntro_Frame14,GFX_Layer1_SupervisorIntro_Frame14End
	dl $F97BE5,$F981A6,GFX_Layer1_SupervisorIntro_Frame20,GFX_Layer1_SupervisorIntro_Frame20End
	dl $F981A6,$F9875F,GFX_Layer1_SupervisorIntro_Frame23,GFX_Layer1_SupervisorIntro_Frame23End
	dl $F9875F,$F98D33,GFX_Layer1_CrusherIntro_Frame1,GFX_Layer1_CrusherIntro_Frame1End
	dl $F98D33,$F992D6,GFX_Layer1_CrusherIntro_Frame14,GFX_Layer1_CrusherIntro_Frame14End
	dl $F992D6,$F99888,GFX_Layer1_CrusherIntro_Frame15,GFX_Layer1_CrusherIntro_Frame15End
	dl $F99888,$F99E3A,GFX_Layer1_CrusherIntro_Frame16,GFX_Layer1_CrusherIntro_Frame16End
	dl $F99E3A,$F9A3E9,GFX_Layer1_CrusherIntro_Frame18,GFX_Layer1_CrusherIntro_Frame18End
	dl $F9A3E9,$F9A992,GFX_Layer1_CrusherIntro_Frame19,GFX_Layer1_CrusherIntro_Frame19End
	dl $F9A992,$F9AF48,GFX_Layer1_CrusherIntro_Frame22,GFX_Layer1_CrusherIntro_Frame22End
	dl $F9AF48,$F9B514,GFX_Layer1_CrusherIntro_Frame23,GFX_Layer1_CrusherIntro_Frame23End
	dl $F9B64E,$F9BC30,GFX_Layer1_SupervisorDefeated_Frame57,GFX_Layer1_SupervisorDefeated_Frame57End
	dl $F9BC30,$F9C1D6,GFX_Layer1_SupervisorDefeated_Frame59,GFX_Layer1_SupervisorDefeated_Frame59End
	dl $F9C1D6,$F9C7A8,GFX_Layer1_SupervisorDefeated_Frame60,GFX_Layer1_SupervisorDefeated_Frame60End
	dl $F9C7A8,$F9CD76,GFX_Layer1_SupervisorDefeated_Frame63,GFX_Layer1_SupervisorDefeated_Frame63End
	dl $F9CD76,$F9D34B,GFX_Layer1_SupervisorDefeated_Frame65,GFX_Layer1_SupervisorDefeated_Frame65End
	dl $F9D34B,$F9D910,GFX_Layer1_SupervisorDefeated_Frame66,GFX_Layer1_SupervisorDefeated_Frame66End
	dl $F9D910,$F9DEB6,GFX_Layer1_SupervisorDefeated_Frame67,GFX_Layer1_SupervisorDefeated_Frame67End
	dl $F9DEB6,$F9E48F,GFX_Layer1_LoaderDefeated_Frame3,GFX_Layer1_LoaderDefeated_Frame3End
	dl $F9E48F,$F9EA39,GFX_Layer1_ApproachingMetropolis4_Frame14,GFX_Layer1_ApproachingMetropolis4_Frame14End
	dl $F9EA39,$F9EFDB,GFX_Layer1_ApproachingMetropolis4_Frame53,GFX_Layer1_ApproachingMetropolis4_Frame53End
	dl $F9EFDB,$F9F581,GFX_Layer1_ApproachingMetropolis4_Frame59,GFX_Layer1_ApproachingMetropolis4_Frame59End
	dl $F9F581,$F9FB62,GFX_Layer1_ApproachingMetropolis4_Frame62,GFX_Layer1_ApproachingMetropolis4_Frame62End
	dl $FA0000,$FA0548,GFX_Layer1_ApeIntro_Frame21,GFX_Layer1_ApeIntro_Frame21End
	dl $FA0548,$FA0A94,GFX_Layer1_ApeIntro_Frame23,GFX_Layer1_ApeIntro_Frame23End
	dl $FA0A94,$FA0FEB,GFX_Layer1_ApeIntro_Frame24,GFX_Layer1_ApeIntro_Frame24End
	dl $FA0FEB,$FA1544,GFX_Layer1_ApeIntro_Frame25,GFX_Layer1_ApeIntro_Frame25End
	dl $FA1544,$FA1AB4,GFX_Layer1_ApeIntro_Frame26,GFX_Layer1_ApeIntro_Frame26End
	dl $FA1AB4,$FA201A,GFX_Layer1_ApeIntro_Frame27,GFX_Layer1_ApeIntro_Frame27End
	dl $FA201A,$FA25B0,GFX_Layer1_ApeIntro_Frame28,GFX_Layer1_ApeIntro_Frame28End
	dl $FA25B0,$FA2B28,GFX_Layer1_ApeIntro_Frame29,GFX_Layer1_ApeIntro_Frame29End
	dl $FA2B28,$FA3091,GFX_Layer1_ApeIntro_Frame30,GFX_Layer1_ApeIntro_Frame30End
	dl $FA3091,$FA3605,GFX_Layer1_ApeIntro_Frame31,GFX_Layer1_ApeIntro_Frame31End
	dl $FA3605,$FA3B6C,GFX_Layer1_ApeIntro_Frame32,GFX_Layer1_ApeIntro_Frame32End
	dl $FA3B6C,$FA40C3,GFX_Layer1_ApeIntro_Frame41,GFX_Layer1_ApeIntro_Frame41End
	dl $FA40C3,$FA4627,GFX_Layer1_ApeIntro_Frame42,GFX_Layer1_ApeIntro_Frame42End
	dl $FA4627,$FA4BA7,GFX_Layer1_ApeIntro_Frame43,GFX_Layer1_ApeIntro_Frame43End
	dl $FA4BA7,$FA50F6,GFX_Layer1_ApeIntro_Frame44,GFX_Layer1_ApeIntro_Frame44End
	dl $FA50F6,$FA566C,GFX_Layer1_ApeIntro_Frame50,GFX_Layer1_ApeIntro_Frame50End
	dl $FA566C,$FA5BFD,GFX_Layer1_ApeIntro_Frame64,GFX_Layer1_ApeIntro_Frame64End
	dl $FA5BFD,$FA618A,GFX_Layer1_ApeIntro_Frame68,GFX_Layer1_ApeIntro_Frame68End
	dl $FA618A,$FA6708,GFX_Layer1_ApeIntro_Frame78,GFX_Layer1_ApeIntro_Frame78End
	dl $FA6708,$FA6C90,GFX_Layer1_ApeIntro_Frame103,GFX_Layer1_ApeIntro_Frame103End
	dl $FA6C90,$FA71DE,GFX_Layer1_ApeIntro_Frame108,GFX_Layer1_ApeIntro_Frame108End
	dl $FA71DE,$FA7741,GFX_Layer1_ApeIntro_Frame141,GFX_Layer1_ApeIntro_Frame141End
	dl $FA7741,$FA7CA1,GFX_Layer1_ApeIntro_Frame144,GFX_Layer1_ApeIntro_Frame144End
	dl $FA7CA1,$FA81F1,GFX_Layer1_LoaderIntro_Frame99,GFX_Layer1_LoaderIntro_Frame99End
	dl $FA81F1,$FA8740,GFX_Layer1_LoaderIntro_Frame103,GFX_Layer1_LoaderIntro_Frame103End
	dl $FA8740,$FA8CC5,GFX_Layer1_LoaderIntro_Frame104,GFX_Layer1_LoaderIntro_Frame104End
	dl $FA8CC5,$FA9255,GFX_Layer1_LoaderIntro_Frame105,GFX_Layer1_LoaderIntro_Frame105End
	dl $FA9255,$FA97BF,GFX_Layer1_SupervisorIntro_Frame13,GFX_Layer1_SupervisorIntro_Frame13End
	dl $FA97BF,$FA9D2B,GFX_Layer1_SupervisorIntro_Frame56,GFX_Layer1_SupervisorIntro_Frame56End
	dl $FA9D2B,$FAA2AF,GFX_Layer1_SupervisorIntro_Frame67,GFX_Layer1_SupervisorIntro_Frame67End
	dl $FAA2AF,$FAA827,GFX_Layer1_CrusherIntro_Frame9,GFX_Layer1_CrusherIntro_Frame9End
	dl $FAA827,$FAAD8D,GFX_Layer1_CrusherIntro_Frame10,GFX_Layer1_CrusherIntro_Frame10End
	dl $FAAD8D,$FAB304,GFX_Layer1_CrusherIntro_Frame11,GFX_Layer1_CrusherIntro_Frame11End
	dl $FAB304,$FAB85A,GFX_Layer1_CrusherIntro_Frame12,GFX_Layer1_CrusherIntro_Frame12End
	dl $FAB85A,$FABDDE,GFX_Layer1_CrusherIntro_Frame13,GFX_Layer1_CrusherIntro_Frame13End
	dl $FABDDE,$FAC36C,GFX_Layer1_CrusherIntro_Frame17,GFX_Layer1_CrusherIntro_Frame17End
	dl $FAC36C,$FAC8F5,GFX_Layer1_CrusherIntro_Frame21,GFX_Layer1_CrusherIntro_Frame21End
	dl $FAC8F5,$FACE89,GFX_Layer1_SupervisorDefeated_Frame69,GFX_Layer1_SupervisorDefeated_Frame69End
	dl $FACE89,$FAD3E7,GFX_Layer1_SupervisorDefeated_Frame70,GFX_Layer1_SupervisorDefeated_Frame70End
	dl $FAD3E7,$FAD96C,GFX_Layer1_SupervisorDefeated_Frame72,GFX_Layer1_SupervisorDefeated_Frame72End
	dl $FAD96C,$FADEFF,GFX_Layer1_LoaderDefeated_Frame4,GFX_Layer1_LoaderDefeated_Frame4End
	dl $FADEFF,$FAE45B,GFX_Layer1_LoaderDefeated_Frame5,GFX_Layer1_LoaderDefeated_Frame5End
	dl $FAE45B,$FAE514,GFX_Layer1_LoaderDefeated_Frame8,GFX_Layer1_LoaderDefeated_Frame8End
	dl $FAE514,$FAEA63,GFX_Layer1_ApproachingMetropolis4_Frame54,GFX_Layer1_ApproachingMetropolis4_Frame54End
	dl $FAEA63,$FAEFE4,GFX_Layer1_ApproachingMetropolis4_Frame55,GFX_Layer1_ApproachingMetropolis4_Frame55End
	dl $FAEFE4,$FAF554,GFX_Layer1_ApproachingMetropolis4_Frame56,GFX_Layer1_ApproachingMetropolis4_Frame56End
	dl $FAF554,$FAFAA3,GFX_Layer1_ApproachingMetropolis4_Frame57,GFX_Layer1_ApproachingMetropolis4_Frame57End
	dl $FAFAA3,$FAFFFF,GFX_Layer1_ApproachingMetropolis4_Frame58,GFX_Layer1_ApproachingMetropolis4_Frame58End
	dl $FB0000,$FB04FC,GFX_Layer1_ApeIntro_Frame12,GFX_Layer1_ApeIntro_Frame12End
	dl $FB04FC,$FB09DB,GFX_Layer1_ApeIntro_Frame14,GFX_Layer1_ApeIntro_Frame14End
	dl $FB09DB,$FB0ED6,GFX_Layer1_ApeIntro_Frame19,GFX_Layer1_ApeIntro_Frame19End
	dl $FB0ED6,$FB13D3,GFX_Layer1_ApeIntro_Frame20,GFX_Layer1_ApeIntro_Frame20End
	dl $FB13D3,$FB1906,GFX_Layer1_ApeIntro_Frame22,GFX_Layer1_ApeIntro_Frame22End
	dl $FB1906,$FB1DEA,GFX_Layer1_ApeIntro_Frame35,GFX_Layer1_ApeIntro_Frame35End
	dl $FB1DEA,$FB2309,GFX_Layer1_ApeIntro_Frame36,GFX_Layer1_ApeIntro_Frame36End
	dl $FB2309,$FB281D,GFX_Layer1_ApeIntro_Frame39,GFX_Layer1_ApeIntro_Frame39End
	dl $FB281D,$FB2D51,GFX_Layer1_ApeIntro_Frame40,GFX_Layer1_ApeIntro_Frame40End
	dl $FB2D51,$FB326F,GFX_Layer1_ApeIntro_Frame45,GFX_Layer1_ApeIntro_Frame45End
	dl $FB326F,$FB375D,GFX_Layer1_ApeIntro_Frame46,GFX_Layer1_ApeIntro_Frame46End
	dl $FB375D,$FB3C4B,GFX_Layer1_ApeIntro_Frame48,GFX_Layer1_ApeIntro_Frame48End
	dl $FB3C4B,$FB413C,GFX_Layer1_ApeIntro_Frame49,GFX_Layer1_ApeIntro_Frame49End
	dl $FB413C,$FB4662,GFX_Layer1_ApeIntro_Frame66,GFX_Layer1_ApeIntro_Frame66End
	dl $FB4662,$FB4B6A,GFX_Layer1_ApeIntro_Frame69,GFX_Layer1_ApeIntro_Frame69End
	dl $FB4B6A,$FB509A,GFX_Layer1_ApeIntro_Frame105,GFX_Layer1_ApeIntro_Frame105End
	dl $FB509A,$FB55B6,GFX_Layer1_ApeIntro_Frame111,GFX_Layer1_ApeIntro_Frame111End
	dl $FB55B6,$FB5AE0,GFX_Layer1_ApeIntro_Frame115,GFX_Layer1_ApeIntro_Frame115End
	dl $FB5AE0,$FB5FEB,GFX_Layer1_ApeIntro_Frame116,GFX_Layer1_ApeIntro_Frame116End
	dl $FB5FEB,$FB6525,GFX_Layer1_ApeIntro_Frame122,GFX_Layer1_ApeIntro_Frame122End
	dl $FB6525,$FB6A2C,GFX_Layer1_ApeIntro_Frame124,GFX_Layer1_ApeIntro_Frame124End
	dl $FB6A2C,$FB6F29,GFX_Layer1_ApeIntro_Frame127,GFX_Layer1_ApeIntro_Frame127End
	dl $FB6F29,$FB742B,GFX_Layer1_LoaderIntro_Frame89,GFX_Layer1_LoaderIntro_Frame89End
	dl $FB742B,$FB7950,GFX_Layer1_LoaderIntro_Frame90,GFX_Layer1_LoaderIntro_Frame90End
	dl $FB7950,$FB7E7E,GFX_Layer1_LoaderIntro_Frame91,GFX_Layer1_LoaderIntro_Frame91End
	dl $FB7E7E,$FB83B9,GFX_Layer1_LoaderIntro_Frame92,GFX_Layer1_LoaderIntro_Frame92End
	dl $FB83B9,$FB88D5,GFX_Layer1_LoaderIntro_Frame93,GFX_Layer1_LoaderIntro_Frame93End
	dl $FB88D5,$FB8DB9,GFX_Layer1_LoaderIntro_Frame94,GFX_Layer1_LoaderIntro_Frame94End
	dl $FB8DB9,$FB929F,GFX_Layer1_LoaderIntro_Frame95,GFX_Layer1_LoaderIntro_Frame95End
	dl $FB929F,$FB979E,GFX_Layer1_LoaderIntro_Frame96,GFX_Layer1_LoaderIntro_Frame96End
	dl $FB979E,$FB9CB0,GFX_Layer1_LoaderIntro_Frame97,GFX_Layer1_LoaderIntro_Frame97End
	dl $FB9CB0,$FBA1C9,GFX_Layer1_LoaderIntro_Frame98,GFX_Layer1_LoaderIntro_Frame98End
	dl $FBA1C9,$FBA6EE,GFX_Layer1_LoaderIntro_Frame100,GFX_Layer1_LoaderIntro_Frame100End
	dl $FBA6EE,$FBAC36,GFX_Layer1_LoaderIntro_Frame101,GFX_Layer1_LoaderIntro_Frame101End
	dl $FBAC36,$FBB16C,GFX_Layer1_LoaderIntro_Frame102,GFX_Layer1_LoaderIntro_Frame102End
	dl $FBB16C,$FBB69F,GFX_Layer1_SupervisorIntro_Frame12,GFX_Layer1_SupervisorIntro_Frame12End
	dl $FBB69F,$FBBBC7,GFX_Layer1_SupervisorIntro_Frame24,GFX_Layer1_SupervisorIntro_Frame24End
	dl $FBBBC7,$FBC0BA,GFX_Layer1_CrusherIntro_Frame5,GFX_Layer1_CrusherIntro_Frame5End
	dl $FBC0BA,$FBC5A1,GFX_Layer1_CrusherIntro_Frame6,GFX_Layer1_CrusherIntro_Frame6End
	dl $FBC5A1,$FBCAB0,GFX_Layer1_CrusherIntro_Frame7,GFX_Layer1_CrusherIntro_Frame7End
	dl $FBCAB0,$FBCFDA,GFX_Layer1_CrusherIntro_Frame8,GFX_Layer1_CrusherIntro_Frame8End
	dl $FBCFDA,$FBD50F,GFX_Layer1_SupervisorDefeated_Frame71,GFX_Layer1_SupervisorDefeated_Frame71End
	dl $FBD50F,$FBDA42,GFX_Layer1_SupervisorDefeated_Frame73,GFX_Layer1_SupervisorDefeated_Frame73End
	dl $FBDA42,$FBDF80,GFX_Layer1_SupervisorDefeated_Frame74,GFX_Layer1_SupervisorDefeated_Frame74End
	dl $FBDF80,$FBE4A3,GFX_Layer1_SupervisorDefeated_Frame75,GFX_Layer1_SupervisorDefeated_Frame75End
	dl $FBE4A3,$FBE9DB,GFX_Layer1_SupervisorDefeated_Frame76,GFX_Layer1_SupervisorDefeated_Frame76End
	dl $FBE9DB,$FBEEED,GFX_Layer1_SupervisorDefeated_Frame77,GFX_Layer1_SupervisorDefeated_Frame77End
	dl $FBEEED,$FBF3F5,GFX_Layer1_SupervisorDefeated_Frame78,GFX_Layer1_SupervisorDefeated_Frame78End
	dl $FBF3F5,$FBF5E5,GFX_Layer1_ApproachingMetropolis4_Frame35,GFX_Layer1_ApproachingMetropolis4_Frame35End
	dl $FBF5E5,$FBFAD5,GFX_Layer1_ApproachingMetropolis4_Frame52,GFX_Layer1_ApproachingMetropolis4_Frame52End
	dl $FBFAD5,$FBFFFF,GFX_Layer1_ApproachingMetropolis4_Frame116,GFX_Layer1_ApproachingMetropolis4_Frame116End
	dl $FC0000,$FC0489,GFX_Layer1_MilitaryIntro_Frame81,GFX_Layer1_MilitaryIntro_Frame81End
	dl $FC0489,$FC0938,GFX_Layer1_MilitaryIntro_Frame82,GFX_Layer1_MilitaryIntro_Frame82End
	dl $FC0938,$FC0DBC,GFX_Layer1_MilitaryIntro_Frame111,GFX_Layer1_MilitaryIntro_Frame111End
	dl $FC0DBC,$FC11FF,GFX_Layer1_MilitaryIntro_Frame115,GFX_Layer1_MilitaryIntro_Frame115End
	dl $FC11FF,$FC164C,GFX_Layer1_ApeIntro_Frame3,GFX_Layer1_ApeIntro_Frame3End
	dl $FC164C,$FC1A98,GFX_Layer1_ApeIntro_Frame8,GFX_Layer1_ApeIntro_Frame8End
	dl $FC1A98,$FC1EF2,GFX_Layer1_ApeIntro_Frame9,GFX_Layer1_ApeIntro_Frame9End
	dl $FC1EF2,$FC23B2,GFX_Layer1_ApeIntro_Frame10,GFX_Layer1_ApeIntro_Frame10End
	dl $FC23B2,$FC2877,GFX_Layer1_ApeIntro_Frame11,GFX_Layer1_ApeIntro_Frame11End
	dl $FC2877,$FC2D46,GFX_Layer1_ApeIntro_Frame13,GFX_Layer1_ApeIntro_Frame13End
	dl $FC2D46,$FC31E9,GFX_Layer1_ApeIntro_Frame15,GFX_Layer1_ApeIntro_Frame15End
	dl $FC31E9,$FC366D,GFX_Layer1_ApeIntro_Frame16,GFX_Layer1_ApeIntro_Frame16End
	dl $FC366D,$FC3ADC,GFX_Layer1_ApeIntro_Frame17,GFX_Layer1_ApeIntro_Frame17End
	dl $FC3ADC,$FC3F6D,GFX_Layer1_ApeIntro_Frame18,GFX_Layer1_ApeIntro_Frame18End
	dl $FC3F6D,$FC442E,GFX_Layer1_ApeIntro_Frame37,GFX_Layer1_ApeIntro_Frame37End
	dl $FC442E,$FC490D,GFX_Layer1_ApeIntro_Frame38,GFX_Layer1_ApeIntro_Frame38End
	dl $FC490D,$FC4D89,GFX_Layer1_ApeIntro_Frame47,GFX_Layer1_ApeIntro_Frame47End
	dl $FC4D89,$FC525E,GFX_Layer1_ApeIntro_Frame104,GFX_Layer1_ApeIntro_Frame104End
	dl $FC525E,$FC56FB,GFX_Layer1_ApeIntro_Frame109,GFX_Layer1_ApeIntro_Frame109End
	dl $FC56FB,$FC5B4E,GFX_Layer1_ApeIntro_Frame110,GFX_Layer1_ApeIntro_Frame110End
	dl $FC5B4E,$FC601B,GFX_Layer1_ApeIntro_Frame112,GFX_Layer1_ApeIntro_Frame112End
	dl $FC601B,$FC64F1,GFX_Layer1_ApeIntro_Frame113,GFX_Layer1_ApeIntro_Frame113End
	dl $FC64F1,$FC699B,GFX_Layer1_ApeIntro_Frame114,GFX_Layer1_ApeIntro_Frame114End
	dl $FC699B,$FC6DE6,GFX_Layer1_ApeIntro_Frame120,GFX_Layer1_ApeIntro_Frame120End
	dl $FC6DE6,$FC72BF,GFX_Layer1_ApeIntro_Frame121,GFX_Layer1_ApeIntro_Frame121End
	dl $FC72BF,$FC7782,GFX_Layer1_ApeIntro_Frame123,GFX_Layer1_ApeIntro_Frame123End
	dl $FC7782,$FC7C4B,GFX_Layer1_ApeIntro_Frame126,GFX_Layer1_ApeIntro_Frame126End
	dl $FC7C4B,$FC8108,GFX_Layer1_ApeIntro_Frame128,GFX_Layer1_ApeIntro_Frame128End
	dl $FC8108,$FC8575,GFX_Layer1_ApeIntro_Frame130,GFX_Layer1_ApeIntro_Frame130End
	dl $FC8575,$FC89E7,GFX_Layer1_ApeIntro_Frame131,GFX_Layer1_ApeIntro_Frame131End
	dl $FC89E7,$FC8E63,GFX_Layer1_ApeIntro_Frame132,GFX_Layer1_ApeIntro_Frame132End
	dl $FC8E63,$FC92A3,GFX_Layer1_ApeIntro_Frame133,GFX_Layer1_ApeIntro_Frame133End
	dl $FC92A3,$FC96F2,GFX_Layer1_ApeIntro_Frame136,GFX_Layer1_ApeIntro_Frame136End
	dl $FC96F2,$FC9B9A,GFX_Layer1_ApeIntro_Frame137,GFX_Layer1_ApeIntro_Frame137End
	dl $FC9B9A,$FCA043,GFX_Layer1_ApeIntro_Frame138,GFX_Layer1_ApeIntro_Frame138End
	dl $FCA043,$FCA499,GFX_Layer1_ApeIntro_Frame139,GFX_Layer1_ApeIntro_Frame139End
	dl $FCA499,$FCA8F6,GFX_Layer1_LoaderIntro_Frame84,GFX_Layer1_LoaderIntro_Frame84End
	dl $FCA8F6,$FCAD53,GFX_Layer1_LoaderIntro_Frame85,GFX_Layer1_LoaderIntro_Frame85End
	dl $FCAD53,$FCB1DA,GFX_Layer1_LoaderIntro_Frame86,GFX_Layer1_LoaderIntro_Frame86End
	dl $FCB1DA,$FCB69F,GFX_Layer1_LoaderIntro_Frame87,GFX_Layer1_LoaderIntro_Frame87End
	dl $FCB69F,$FCBB73,GFX_Layer1_LoaderIntro_Frame88,GFX_Layer1_LoaderIntro_Frame88End
	dl $FCBB73,$FCBFAF,GFX_Layer1_SupervisorIntro_Frame2,GFX_Layer1_SupervisorIntro_Frame2End
	dl $FCBFAF,$FCC431,GFX_Layer1_SupervisorIntro_Frame3,GFX_Layer1_SupervisorIntro_Frame3End
	dl $FCC431,$FCC8BA,GFX_Layer1_SupervisorIntro_Frame4,GFX_Layer1_SupervisorIntro_Frame4End
	dl $FCC8BA,$FCCD3B,GFX_Layer1_SupervisorIntro_Frame5,GFX_Layer1_SupervisorIntro_Frame5End
	dl $FCCD3B,$FCD1F4,GFX_Layer1_SupervisorIntro_Frame6,GFX_Layer1_SupervisorIntro_Frame6End
	dl $FCD1F4,$FCD68B,GFX_Layer1_SupervisorIntro_Frame7,GFX_Layer1_SupervisorIntro_Frame7End
	dl $FCD68B,$FCDB60,GFX_Layer1_SupervisorIntro_Frame8,GFX_Layer1_SupervisorIntro_Frame8End
	dl $FCDB60,$FCE000,GFX_Layer1_SupervisorIntro_Frame9,GFX_Layer1_SupervisorIntro_Frame9End
	dl $FCE000,$FCE4A5,GFX_Layer1_SupervisorIntro_Frame10,GFX_Layer1_SupervisorIntro_Frame10End
	dl $FCE4A5,$FCE943,GFX_Layer1_SupervisorIntro_Frame11,GFX_Layer1_SupervisorIntro_Frame11End
	dl $FCE943,$FCEDB8,GFX_Layer1_SupervisorIntro_Frame25,GFX_Layer1_SupervisorIntro_Frame25End
	dl $FCEDB8,$FCF24C,GFX_Layer1_SupervisorIntro_Frame55,GFX_Layer1_SupervisorIntro_Frame55End
	dl $FCF24C,$FCF6C4,GFX_Layer1_CrusherIntro_Frame3,GFX_Layer1_CrusherIntro_Frame3End
	dl $FCF6C4,$FCFB5C,GFX_Layer1_CrusherIntro_Frame4,GFX_Layer1_CrusherIntro_Frame4End
	dl $FCFB5C,$FCFBAE,GFX_Layer1_CrusherDefeated_Frame26,GFX_Layer1_CrusherDefeated_Frame26End
	dl $FCFBAE,$FCFFFE,GFX_Layer1_ApproachingMetropolis4_Frame15,GFX_Layer1_ApproachingMetropolis4_Frame15End
	dl $FD0000,$FD0135,GFX_Layer1_MilitaryIntro_Frame28,GFX_Layer1_MilitaryIntro_Frame28End
	dl $FD0135,$FD03EB,GFX_Layer1_MilitaryIntro_Frame72,GFX_Layer1_MilitaryIntro_Frame72End
	dl $FD03EB,$FD0728,GFX_Layer1_MilitaryIntro_Frame73,GFX_Layer1_MilitaryIntro_Frame73End
	dl $FD0728,$FD0A5F,GFX_Layer1_MilitaryIntro_Frame74,GFX_Layer1_MilitaryIntro_Frame74End
	dl $FD0A5F,$FD0D55,GFX_Layer1_MilitaryIntro_Frame75,GFX_Layer1_MilitaryIntro_Frame75End
	dl $FD0D55,$FD10C0,GFX_Layer1_MilitaryIntro_Frame76,GFX_Layer1_MilitaryIntro_Frame76End
	dl $FD10C0,$FD13FF,GFX_Layer1_MilitaryIntro_Frame77,GFX_Layer1_MilitaryIntro_Frame77End
	dl $FD13FF,$FD1756,GFX_Layer1_MilitaryIntro_Frame78,GFX_Layer1_MilitaryIntro_Frame78End
	dl $FD1756,$FD1B0D,GFX_Layer1_MilitaryIntro_Frame79,GFX_Layer1_MilitaryIntro_Frame79End
	dl $FD1B0D,$FD1EED,GFX_Layer1_MilitaryIntro_Frame80,GFX_Layer1_MilitaryIntro_Frame80End
	dl $FD1EED,$FD22F4,GFX_Layer1_MilitaryIntro_Frame83,GFX_Layer1_MilitaryIntro_Frame83End
	dl $FD22F4,$FD25D2,GFX_Layer1_MilitaryIntro_Frame84,GFX_Layer1_MilitaryIntro_Frame84End
	dl $FD25D2,$FD2933,GFX_Layer1_MilitaryIntro_Frame110,GFX_Layer1_MilitaryIntro_Frame110End
	dl $FD2933,$FD2CBA,GFX_Layer1_MilitaryIntro_Frame112,GFX_Layer1_MilitaryIntro_Frame112End
	dl $FD2CBA,$FD2FD5,GFX_Layer1_MilitaryIntro_Frame113,GFX_Layer1_MilitaryIntro_Frame113End
	dl $FD2FD5,$FD3308,GFX_Layer1_MilitaryIntro_Frame114,GFX_Layer1_MilitaryIntro_Frame114End
	dl $FD3308,$FD3701,GFX_Layer1_ApeIntro_Frame4,GFX_Layer1_ApeIntro_Frame4End
	dl $FD3701,$FD3AA1,GFX_Layer1_ApeIntro_Frame5,GFX_Layer1_ApeIntro_Frame5End
	dl $FD3AA1,$FD3EC3,GFX_Layer1_ApeIntro_Frame6,GFX_Layer1_ApeIntro_Frame6End
	dl $FD3EC3,$FD42E7,GFX_Layer1_ApeIntro_Frame7,GFX_Layer1_ApeIntro_Frame7End
	dl $FD42E7,$FD46F2,GFX_Layer1_ApeIntro_Frame118,GFX_Layer1_ApeIntro_Frame118End
	dl $FD46F2,$FD4B28,GFX_Layer1_ApeIntro_Frame119,GFX_Layer1_ApeIntro_Frame119End
	dl $FD4B28,$FD4F5B,GFX_Layer1_ApeIntro_Frame129,GFX_Layer1_ApeIntro_Frame129End
	dl $FD4F5B,$FD5333,GFX_Layer1_ApeIntro_Frame134,GFX_Layer1_ApeIntro_Frame134End
	dl $FD5333,$FD574B,GFX_Layer1_ApeIntro_Frame135,GFX_Layer1_ApeIntro_Frame135End
	dl $FD574B,$FD59E4,GFX_Layer1_LoaderIntro_Frame59,GFX_Layer1_LoaderIntro_Frame59End
	dl $FD59E4,$FD5C87,GFX_Layer1_LoaderIntro_Frame60,GFX_Layer1_LoaderIntro_Frame60End
	dl $FD5C87,$FD5F43,GFX_Layer1_LoaderIntro_Frame61,GFX_Layer1_LoaderIntro_Frame61End
	dl $FD5F43,$FD6216,GFX_Layer1_LoaderIntro_Frame62,GFX_Layer1_LoaderIntro_Frame62End
	dl $FD6216,$FD64E0,GFX_Layer1_LoaderIntro_Frame63,GFX_Layer1_LoaderIntro_Frame63End
	dl $FD64E0,$FD67B7,GFX_Layer1_LoaderIntro_Frame64,GFX_Layer1_LoaderIntro_Frame64End
	dl $FD67B7,$FD6A9C,GFX_Layer1_LoaderIntro_Frame65,GFX_Layer1_LoaderIntro_Frame65End
	dl $FD6A9C,$FD6D75,GFX_Layer1_LoaderIntro_Frame66,GFX_Layer1_LoaderIntro_Frame66End
	dl $FD6D75,$FD7067,GFX_Layer1_LoaderIntro_Frame67,GFX_Layer1_LoaderIntro_Frame67End
	dl $FD7067,$FD7396,GFX_Layer1_LoaderIntro_Frame68,GFX_Layer1_LoaderIntro_Frame68End
	dl $FD7396,$FD76D4,GFX_Layer1_LoaderIntro_Frame69,GFX_Layer1_LoaderIntro_Frame69End
	dl $FD76D4,$FD7A1E,GFX_Layer1_LoaderIntro_Frame70,GFX_Layer1_LoaderIntro_Frame70End
	dl $FD7A1E,$FD7D5E,GFX_Layer1_LoaderIntro_Frame71,GFX_Layer1_LoaderIntro_Frame71End
	dl $FD7D5E,$FD808A,GFX_Layer1_LoaderIntro_Frame72,GFX_Layer1_LoaderIntro_Frame72End
	dl $FD808A,$FD83F6,GFX_Layer1_LoaderIntro_Frame73,GFX_Layer1_LoaderIntro_Frame73End
	dl $FD83F6,$FD874D,GFX_Layer1_LoaderIntro_Frame74,GFX_Layer1_LoaderIntro_Frame74End
	dl $FD874D,$FD8ABC,GFX_Layer1_LoaderIntro_Frame75,GFX_Layer1_LoaderIntro_Frame75End
	dl $FD8ABC,$FD8E14,GFX_Layer1_LoaderIntro_Frame76,GFX_Layer1_LoaderIntro_Frame76End
	dl $FD8E14,$FD9175,GFX_Layer1_LoaderIntro_Frame77,GFX_Layer1_LoaderIntro_Frame77End
	dl $FD9175,$FD94D5,GFX_Layer1_LoaderIntro_Frame78,GFX_Layer1_LoaderIntro_Frame78End
	dl $FD94D5,$FD983D,GFX_Layer1_LoaderIntro_Frame79,GFX_Layer1_LoaderIntro_Frame79End
	dl $FD983D,$FD9BBC,GFX_Layer1_LoaderIntro_Frame80,GFX_Layer1_LoaderIntro_Frame80End
	dl $FD9BBC,$FD9F50,GFX_Layer1_LoaderIntro_Frame81,GFX_Layer1_LoaderIntro_Frame81End
	dl $FD9F50,$FDA366,GFX_Layer1_LoaderIntro_Frame82,GFX_Layer1_LoaderIntro_Frame82End
	dl $FDA366,$FDA795,GFX_Layer1_LoaderIntro_Frame83,GFX_Layer1_LoaderIntro_Frame83End
	dl $FDA795,$FDABB0,GFX_Layer1_SupervisorIntro_Frame26,GFX_Layer1_SupervisorIntro_Frame26End
	dl $FDABB0,$FDAFC1,GFX_Layer1_SupervisorIntro_Frame27,GFX_Layer1_SupervisorIntro_Frame27End
	dl $FDAFC1,$FDB3C8,GFX_Layer1_SupervisorIntro_Frame28,GFX_Layer1_SupervisorIntro_Frame28End
	dl $FDB3C8,$FDB7D0,GFX_Layer1_SupervisorIntro_Frame29,GFX_Layer1_SupervisorIntro_Frame29End
	dl $FDB7D0,$FDBBA8,GFX_Layer1_SupervisorIntro_Frame30,GFX_Layer1_SupervisorIntro_Frame30End
	dl $FDBBA8,$FDBE76,GFX_Layer1_SupervisorIntro_Frame46,GFX_Layer1_SupervisorIntro_Frame46End
	dl $FDBE76,$FDC161,GFX_Layer1_SupervisorIntro_Frame48,GFX_Layer1_SupervisorIntro_Frame48End
	dl $FDC161,$FDC466,GFX_Layer1_SupervisorIntro_Frame49,GFX_Layer1_SupervisorIntro_Frame49End
	dl $FDC466,$FDC7BD,GFX_Layer1_SupervisorIntro_Frame50,GFX_Layer1_SupervisorIntro_Frame50End
	dl $FDC7BD,$FDCB5B,GFX_Layer1_SupervisorIntro_Frame51,GFX_Layer1_SupervisorIntro_Frame51End
	dl $FDCB5B,$FDCF05,GFX_Layer1_SupervisorIntro_Frame52,GFX_Layer1_SupervisorIntro_Frame52End
	dl $FDCF05,$FDD314,GFX_Layer1_SupervisorIntro_Frame54,GFX_Layer1_SupervisorIntro_Frame54End
	dl $FDD314,$FDD5C5,GFX_Layer1_SupervisorIntro_Frame100,GFX_Layer1_SupervisorIntro_Frame100End
	dl $FDD5C5,$FDD8B5,GFX_Layer1_SupervisorIntro_Frame101,GFX_Layer1_SupervisorIntro_Frame101End
	dl $FDD8B5,$FDDB57,GFX_Layer1_SupervisorIntro_Frame102,GFX_Layer1_SupervisorIntro_Frame102End
	dl $FDDB57,$FDDE27,GFX_Layer1_SupervisorIntro_Frame103,GFX_Layer1_SupervisorIntro_Frame103End
	dl $FDDE27,$FDE146,GFX_Layer1_SupervisorIntro_Frame104,GFX_Layer1_SupervisorIntro_Frame104End
	dl $FDE146,$FDE434,GFX_Layer1_SupervisorIntro_Frame105,GFX_Layer1_SupervisorIntro_Frame105End
	dl $FDE434,$FDE71A,GFX_Layer1_SupervisorIntro_Frame106,GFX_Layer1_SupervisorIntro_Frame106End
	dl $FDE7C0,$FDEB25,GFX_Layer1_CrusherDefeated_Frame2,GFX_Layer1_CrusherDefeated_Frame2End
	dl $FDEB25,$FDEEA4,GFX_Layer1_CrusherDefeated_Frame3,GFX_Layer1_CrusherDefeated_Frame3End
	dl $FDEEA4,$FDF1D7,GFX_Layer1_CrusherDefeated_Frame4,GFX_Layer1_CrusherDefeated_Frame4End
	dl $FDF1D7,$FDF4D7,GFX_Layer1_CrusherDefeated_Frame5,GFX_Layer1_CrusherDefeated_Frame5End
	dl $FDF4D7,$FDF7D4,GFX_Layer1_ApproachingMetropolis4_Frame13,GFX_Layer1_ApproachingMetropolis4_Frame13End
	dl $FDF7D4,$FDFAC5,GFX_Layer1_ApproachingMetropolis4_Frame16,GFX_Layer1_ApproachingMetropolis4_Frame16End
	dl $FDFAC5,$FDFD8F,GFX_Layer1_ApproachingMetropolis4_Frame119,GFX_Layer1_ApproachingMetropolis4_Frame119End
	dl $FE0000,$FE01DD,GFX_Layer1_MilitaryIntro_Frame13,GFX_Layer1_MilitaryIntro_Frame13End
	dl $FE01DD,$FE0382,GFX_Layer1_MilitaryIntro_Frame15,GFX_Layer1_MilitaryIntro_Frame15End
	dl $FE0382,$FE054E,GFX_Layer1_MilitaryIntro_Frame16,GFX_Layer1_MilitaryIntro_Frame16End
	dl $FE054E,$FE0707,GFX_Layer1_MilitaryIntro_Frame17,GFX_Layer1_MilitaryIntro_Frame17End
	dl $FE0707,$FE0897,GFX_Layer1_MilitaryIntro_Frame18,GFX_Layer1_MilitaryIntro_Frame18End
	dl $FE0897,$FE0A78,GFX_Layer1_MilitaryIntro_Frame19,GFX_Layer1_MilitaryIntro_Frame19End
	dl $FE0A78,$FE0C54,GFX_Layer1_MilitaryIntro_Frame20,GFX_Layer1_MilitaryIntro_Frame20End
	dl $FE0C54,$FE0E2C,GFX_Layer1_MilitaryIntro_Frame21,GFX_Layer1_MilitaryIntro_Frame21End
	dl $FE0E2C,$FE0FD4,GFX_Layer1_MilitaryIntro_Frame22,GFX_Layer1_MilitaryIntro_Frame22End
	dl $FE0FD4,$FE1160,GFX_Layer1_MilitaryIntro_Frame24,GFX_Layer1_MilitaryIntro_Frame24End
	dl $FE1160,$FE1304,GFX_Layer1_MilitaryIntro_Frame26,GFX_Layer1_MilitaryIntro_Frame26End
	dl $FE1304,$FE1483,GFX_Layer1_MilitaryIntro_Frame54,GFX_Layer1_MilitaryIntro_Frame54End
	dl $FE1483,$FE1617,GFX_Layer1_MilitaryIntro_Frame55,GFX_Layer1_MilitaryIntro_Frame55End
	dl $FE1617,$FE17CE,GFX_Layer1_MilitaryIntro_Frame56,GFX_Layer1_MilitaryIntro_Frame56End
	dl $FE17CE,$FE197A,GFX_Layer1_MilitaryIntro_Frame57,GFX_Layer1_MilitaryIntro_Frame57End
	dl $FE197A,$FE1B52,GFX_Layer1_MilitaryIntro_Frame58,GFX_Layer1_MilitaryIntro_Frame58End
	dl $FE1B52,$FE1D48,GFX_Layer1_MilitaryIntro_Frame59,GFX_Layer1_MilitaryIntro_Frame59End
	dl $FE1D48,$FE1F4F,GFX_Layer1_MilitaryIntro_Frame60,GFX_Layer1_MilitaryIntro_Frame60End
	dl $FE1F4F,$FE213C,GFX_Layer1_MilitaryIntro_Frame61,GFX_Layer1_MilitaryIntro_Frame61End
	dl $FE213C,$FE231F,GFX_Layer1_MilitaryIntro_Frame62,GFX_Layer1_MilitaryIntro_Frame62End
	dl $FE231F,$FE2518,GFX_Layer1_MilitaryIntro_Frame63,GFX_Layer1_MilitaryIntro_Frame63End
	dl $FE2518,$FE271A,GFX_Layer1_MilitaryIntro_Frame64,GFX_Layer1_MilitaryIntro_Frame64End
	dl $FE271A,$FE2997,GFX_Layer1_MilitaryIntro_Frame65,GFX_Layer1_MilitaryIntro_Frame65End
	dl $FE2997,$FE2C1E,GFX_Layer1_MilitaryIntro_Frame66,GFX_Layer1_MilitaryIntro_Frame66End
	dl $FE2C1E,$FE2E90,GFX_Layer1_MilitaryIntro_Frame67,GFX_Layer1_MilitaryIntro_Frame67End
	dl $FE2E90,$FE3103,GFX_Layer1_MilitaryIntro_Frame68,GFX_Layer1_MilitaryIntro_Frame68End
	dl $FE3103,$FE3365,GFX_Layer1_MilitaryIntro_Frame69,GFX_Layer1_MilitaryIntro_Frame69End
	dl $FE3365,$FE35C5,GFX_Layer1_MilitaryIntro_Frame70,GFX_Layer1_MilitaryIntro_Frame70End
	dl $FE35C5,$FE3823,GFX_Layer1_MilitaryIntro_Frame71,GFX_Layer1_MilitaryIntro_Frame71End
	dl $FE3823,$FE3A8A,GFX_Layer1_MilitaryIntro_Frame85,GFX_Layer1_MilitaryIntro_Frame85End
	dl $FE3A8A,$FE3C25,GFX_Layer1_MilitaryIntro_Frame86,GFX_Layer1_MilitaryIntro_Frame86End
	dl $FE3C25,$FE3E13,GFX_Layer1_MilitaryIntro_Frame105,GFX_Layer1_MilitaryIntro_Frame105End
	dl $FE3E13,$FE3FFA,GFX_Layer1_MilitaryIntro_Frame106,GFX_Layer1_MilitaryIntro_Frame106End
	dl $FE3FFA,$FE41F1,GFX_Layer1_MilitaryIntro_Frame107,GFX_Layer1_MilitaryIntro_Frame107End
	dl $FE41F1,$FE4441,GFX_Layer1_MilitaryIntro_Frame108,GFX_Layer1_MilitaryIntro_Frame108End
	dl $FE4441,$FE46B7,GFX_Layer1_MilitaryIntro_Frame109,GFX_Layer1_MilitaryIntro_Frame109End
	dl $FE46B7,$FE4801,GFX_Layer1_LoaderIntro_Frame16,GFX_Layer1_LoaderIntro_Frame16End
	dl $FE4801,$FE4989,GFX_Layer1_LoaderIntro_Frame22,GFX_Layer1_LoaderIntro_Frame22End
	dl $FE4989,$FE4B0F,GFX_Layer1_LoaderIntro_Frame26,GFX_Layer1_LoaderIntro_Frame26End
	dl $FE4B0F,$FE4CA2,GFX_Layer1_LoaderIntro_Frame28,GFX_Layer1_LoaderIntro_Frame28End
	dl $FE4CA2,$FE4E46,GFX_Layer1_LoaderIntro_Frame29,GFX_Layer1_LoaderIntro_Frame29End
	dl $FE4E46,$FE4FF6,GFX_Layer1_LoaderIntro_Frame30,GFX_Layer1_LoaderIntro_Frame30End
	dl $FE4FF6,$FE519E,GFX_Layer1_LoaderIntro_Frame31,GFX_Layer1_LoaderIntro_Frame31End
	dl $FE519E,$FE536C,GFX_Layer1_LoaderIntro_Frame32,GFX_Layer1_LoaderIntro_Frame32End
	dl $FE536C,$FE552A,GFX_Layer1_LoaderIntro_Frame33,GFX_Layer1_LoaderIntro_Frame33End
	dl $FE552A,$FE56E4,GFX_Layer1_LoaderIntro_Frame34,GFX_Layer1_LoaderIntro_Frame34End
	dl $FE56E4,$FE58AE,GFX_Layer1_LoaderIntro_Frame35,GFX_Layer1_LoaderIntro_Frame35End
	dl $FE58AE,$FE5A80,GFX_Layer1_LoaderIntro_Frame36,GFX_Layer1_LoaderIntro_Frame36End
	dl $FE5A80,$FE5C44,GFX_Layer1_LoaderIntro_Frame37,GFX_Layer1_LoaderIntro_Frame37End
	dl $FE5C44,$FE5E1C,GFX_Layer1_LoaderIntro_Frame38,GFX_Layer1_LoaderIntro_Frame38End
	dl $FE5E1C,$FE6026,GFX_Layer1_LoaderIntro_Frame39,GFX_Layer1_LoaderIntro_Frame39End
	dl $FE6026,$FE6231,GFX_Layer1_LoaderIntro_Frame41,GFX_Layer1_LoaderIntro_Frame41End
	dl $FE6231,$FE646E,GFX_Layer1_LoaderIntro_Frame42,GFX_Layer1_LoaderIntro_Frame42End
	dl $FE646E,$FE6694,GFX_Layer1_LoaderIntro_Frame43,GFX_Layer1_LoaderIntro_Frame43End
	dl $FE6694,$FE68A6,GFX_Layer1_LoaderIntro_Frame44,GFX_Layer1_LoaderIntro_Frame44End
	dl $FE68A6,$FE6AD0,GFX_Layer1_LoaderIntro_Frame45,GFX_Layer1_LoaderIntro_Frame45End
	dl $FE6AD0,$FE6CFB,GFX_Layer1_LoaderIntro_Frame46,GFX_Layer1_LoaderIntro_Frame46End
	dl $FE6CFB,$FE6F57,GFX_Layer1_LoaderIntro_Frame48,GFX_Layer1_LoaderIntro_Frame48End
	dl $FE6F57,$FE71D8,GFX_Layer1_LoaderIntro_Frame49,GFX_Layer1_LoaderIntro_Frame49End
	dl $FE71D8,$FE7458,GFX_Layer1_LoaderIntro_Frame50,GFX_Layer1_LoaderIntro_Frame50End
	dl $FE7458,$FE76CE,GFX_Layer1_LoaderIntro_Frame51,GFX_Layer1_LoaderIntro_Frame51End
	dl $FE76CE,$FE794F,GFX_Layer1_LoaderIntro_Frame52,GFX_Layer1_LoaderIntro_Frame52End
	dl $FE794F,$FE7BCE,GFX_Layer1_LoaderIntro_Frame53,GFX_Layer1_LoaderIntro_Frame53End
	dl $FE7BCE,$FE7E5C,GFX_Layer1_LoaderIntro_Frame54,GFX_Layer1_LoaderIntro_Frame54End
	dl $FE7E5C,$FE80CB,GFX_Layer1_LoaderIntro_Frame55,GFX_Layer1_LoaderIntro_Frame55End
	dl $FE80CB,$FE8353,GFX_Layer1_LoaderIntro_Frame56,GFX_Layer1_LoaderIntro_Frame56End
	dl $FE8353,$FE85E1,GFX_Layer1_LoaderIntro_Frame57,GFX_Layer1_LoaderIntro_Frame57End
	dl $FE85E1,$FE8854,GFX_Layer1_LoaderIntro_Frame58,GFX_Layer1_LoaderIntro_Frame58End
	dl $FE8854,$FE8A7A,GFX_Layer1_SupervisorIntro_Frame32,GFX_Layer1_SupervisorIntro_Frame32End
	dl $FE8A7A,$FE8C83,GFX_Layer1_SupervisorIntro_Frame33,GFX_Layer1_SupervisorIntro_Frame33End
	dl $FE8C83,$FE8ED3,GFX_Layer1_SupervisorIntro_Frame34,GFX_Layer1_SupervisorIntro_Frame34End
	dl $FE8ED3,$FE912D,GFX_Layer1_SupervisorIntro_Frame35,GFX_Layer1_SupervisorIntro_Frame35End
	dl $FE912D,$FE934B,GFX_Layer1_SupervisorIntro_Frame36,GFX_Layer1_SupervisorIntro_Frame36End
	dl $FE934B,$FE9596,GFX_Layer1_SupervisorIntro_Frame37,GFX_Layer1_SupervisorIntro_Frame37End
	dl $FE9596,$FE979E,GFX_Layer1_SupervisorIntro_Frame38,GFX_Layer1_SupervisorIntro_Frame38End
	dl $FE979E,$FE99E5,GFX_Layer1_SupervisorIntro_Frame39,GFX_Layer1_SupervisorIntro_Frame39End
	dl $FE99E5,$FE9C45,GFX_Layer1_SupervisorIntro_Frame40,GFX_Layer1_SupervisorIntro_Frame40End
	dl $FE9C45,$FE9E83,GFX_Layer1_SupervisorIntro_Frame41,GFX_Layer1_SupervisorIntro_Frame41End
	dl $FE9E83,$FEA0F0,GFX_Layer1_SupervisorIntro_Frame42,GFX_Layer1_SupervisorIntro_Frame42End
	dl $FEA0F0,$FEA35D,GFX_Layer1_SupervisorIntro_Frame43,GFX_Layer1_SupervisorIntro_Frame43End
	dl $FEA35D,$FEA5BE,GFX_Layer1_SupervisorIntro_Frame44,GFX_Layer1_SupervisorIntro_Frame44End
	dl $FEA5BE,$FEA7F6,GFX_Layer1_SupervisorIntro_Frame45,GFX_Layer1_SupervisorIntro_Frame45End
	dl $FEA7F6,$FEAA6D,GFX_Layer1_SupervisorIntro_Frame47,GFX_Layer1_SupervisorIntro_Frame47End
	dl $FEACC5,$FEAE4C,GFX_Layer1_LoaderDefeated_Frame15,GFX_Layer1_LoaderDefeated_Frame15End
	dl $FEAE4C,$FEB047,GFX_Layer1_LoaderDefeated_Frame16,GFX_Layer1_LoaderDefeated_Frame16End
	dl $FEB047,$FEB244,GFX_Layer1_LoaderDefeated_Frame17,GFX_Layer1_LoaderDefeated_Frame17End
	dl $FEB244,$FEB3D6,GFX_Layer1_LoaderDefeated_Frame18,GFX_Layer1_LoaderDefeated_Frame18End
	dl $FEB3D6,$FEB573,GFX_Layer1_LoaderDefeated_Frame19,GFX_Layer1_LoaderDefeated_Frame19End
	dl $FEB573,$FEB71B,GFX_Layer1_LoaderDefeated_Frame20,GFX_Layer1_LoaderDefeated_Frame20End
	dl $FEB71B,$FEB93C,GFX_Layer1_CrusherDefeated_Frame6,GFX_Layer1_CrusherDefeated_Frame6End
	dl $FEB93C,$FEBB27,GFX_Layer1_CrusherDefeated_Frame7,GFX_Layer1_CrusherDefeated_Frame7End
	dl $FEBB27,$FEBCF0,GFX_Layer1_CrusherDefeated_Frame8,GFX_Layer1_CrusherDefeated_Frame8End
	dl $FEBCF0,$FEBEC8,GFX_Layer1_CrusherDefeated_Frame9,GFX_Layer1_CrusherDefeated_Frame9End
	dl $FEBEC8,$FEC082,GFX_Layer1_CrusherDefeated_Frame10,GFX_Layer1_CrusherDefeated_Frame10End
	dl $FEC082,$FEC232,GFX_Layer1_CrusherDefeated_Frame11,GFX_Layer1_CrusherDefeated_Frame11End
	dl $FEC232,$FEC3CB,GFX_Layer1_CrusherDefeated_Frame12,GFX_Layer1_CrusherDefeated_Frame12End
	dl $FEC3CB,$FEC574,GFX_Layer1_CrusherDefeated_Frame13,GFX_Layer1_CrusherDefeated_Frame13End
	dl $FEC574,$FEC715,GFX_Layer1_CrusherDefeated_Frame14,GFX_Layer1_CrusherDefeated_Frame14End
	dl $FEC715,$FEC89F,GFX_Layer1_CrusherDefeated_Frame15,GFX_Layer1_CrusherDefeated_Frame15End
	dl $FEC89F,$FECA30,GFX_Layer1_CrusherDefeated_Frame16,GFX_Layer1_CrusherDefeated_Frame16End
	dl $FECA30,$FECBB9,GFX_Layer1_CrusherDefeated_Frame17,GFX_Layer1_CrusherDefeated_Frame17End
	dl $FECBB9,$FECD63,GFX_Layer1_CrusherDefeated_Frame21,GFX_Layer1_CrusherDefeated_Frame21End
	dl $FECD63,$FECF3A,GFX_Layer1_CrusherDefeated_Frame22,GFX_Layer1_CrusherDefeated_Frame22End
	dl $FECF3A,$FED0D9,GFX_Layer1_CrusherDefeated_Frame23,GFX_Layer1_CrusherDefeated_Frame23End
	dl $FED0D9,$FED267,GFX_Layer1_CrusherDefeated_Frame24,GFX_Layer1_CrusherDefeated_Frame24End
	dl $FED267,$FED43B,GFX_Layer1_ApproachingMetropolis4_Frame17,GFX_Layer1_ApproachingMetropolis4_Frame17End
	dl $FED43B,$FED625,GFX_Layer1_ApproachingMetropolis4_Frame25,GFX_Layer1_ApproachingMetropolis4_Frame25End
	dl $FED625,$FED827,GFX_Layer1_ApproachingMetropolis4_Frame26,GFX_Layer1_ApproachingMetropolis4_Frame26End
	dl $FED827,$FEDA51,GFX_Layer1_ApproachingMetropolis4_Frame27,GFX_Layer1_ApproachingMetropolis4_Frame27End
	dl $FEDA51,$FEDC50,GFX_Layer1_ApproachingMetropolis4_Frame28,GFX_Layer1_ApproachingMetropolis4_Frame28End
	dl $FEDC50,$FEDE46,GFX_Layer1_ApproachingMetropolis4_Frame29,GFX_Layer1_ApproachingMetropolis4_Frame29End
	dl $FEDE46,$FEE04F,GFX_Layer1_ApproachingMetropolis4_Frame30,GFX_Layer1_ApproachingMetropolis4_Frame30End
	dl $FEE04F,$FEE24B,GFX_Layer1_ApproachingMetropolis4_Frame31,GFX_Layer1_ApproachingMetropolis4_Frame31End
	dl $FEE24B,$FEE4A0,GFX_Layer1_ApproachingMetropolis4_Frame32,GFX_Layer1_ApproachingMetropolis4_Frame32End
	dl $FEE4A0,$FEE6BA,GFX_Layer1_ApproachingMetropolis4_Frame33,GFX_Layer1_ApproachingMetropolis4_Frame33End
	dl $FEE6BA,$FEE91B,GFX_Layer1_ApproachingMetropolis4_Frame34,GFX_Layer1_ApproachingMetropolis4_Frame34End
	dl $FEE91B,$FEEB34,GFX_Layer1_ApproachingMetropolis4_Frame36,GFX_Layer1_ApproachingMetropolis4_Frame36End
	dl $FEEB34,$FEED84,GFX_Layer1_ApproachingMetropolis4_Frame37,GFX_Layer1_ApproachingMetropolis4_Frame37End
	dl $FEED84,$FEEFAD,GFX_Layer1_ApproachingMetropolis4_Frame38,GFX_Layer1_ApproachingMetropolis4_Frame38End
	dl $FEEFAD,$FEF180,GFX_Layer1_ApproachingMetropolis4_Frame39,GFX_Layer1_ApproachingMetropolis4_Frame39End
	dl $FEF180,$FEF36D,GFX_Layer1_ApproachingMetropolis4_Frame40,GFX_Layer1_ApproachingMetropolis4_Frame40End
	dl $FEF36D,$FEF549,GFX_Layer1_ApproachingMetropolis4_Frame117,GFX_Layer1_ApproachingMetropolis4_Frame117End
	dl $FEF549,$FEF726,GFX_Layer1_ApproachingMetropolis4_Frame118,GFX_Layer1_ApproachingMetropolis4_Frame118End
	dl $FF0000,$FF00A9,GFX_Layer1_MilitaryIntro_Frame2,GFX_Layer1_MilitaryIntro_Frame2End
	dl $FF00A9,$FF00E1,GFX_Layer1_MilitaryIntro_Frame3,GFX_Layer1_MilitaryIntro_Frame3End
	dl $FF00E1,$FF0168,GFX_Layer1_MilitaryIntro_Frame4,GFX_Layer1_MilitaryIntro_Frame4End
	dl $FF0168,$FF01EC,GFX_Layer1_MilitaryIntro_Frame5,GFX_Layer1_MilitaryIntro_Frame5End
	dl $FF01EC,$FF0262,GFX_Layer1_MilitaryIntro_Frame6,GFX_Layer1_MilitaryIntro_Frame6End
	dl $FF0262,$FF0310,GFX_Layer1_MilitaryIntro_Frame7,GFX_Layer1_MilitaryIntro_Frame7End
	dl $FF0310,$FF03D6,GFX_Layer1_MilitaryIntro_Frame8,GFX_Layer1_MilitaryIntro_Frame8End
	dl $FF03D6,$FF04AA,GFX_Layer1_MilitaryIntro_Frame9,GFX_Layer1_MilitaryIntro_Frame9End
	dl $FF04AA,$FF0569,GFX_Layer1_MilitaryIntro_Frame10,GFX_Layer1_MilitaryIntro_Frame10End
	dl $FF0569,$FF0695,GFX_Layer1_MilitaryIntro_Frame11,GFX_Layer1_MilitaryIntro_Frame11End
	dl $FF0695,$FF07E5,GFX_Layer1_MilitaryIntro_Frame12,GFX_Layer1_MilitaryIntro_Frame12End
	dl $FF07E5,$FF093F,GFX_Layer1_MilitaryIntro_Frame14,GFX_Layer1_MilitaryIntro_Frame14End
	dl $FF093F,$FF0AB7,GFX_Layer1_MilitaryIntro_Frame23,GFX_Layer1_MilitaryIntro_Frame23End
	dl $FF0AB7,$FF0C24,GFX_Layer1_MilitaryIntro_Frame25,GFX_Layer1_MilitaryIntro_Frame25End
	dl $FF0C24,$FF0D9F,GFX_Layer1_MilitaryIntro_Frame27,GFX_Layer1_MilitaryIntro_Frame27End
	dl $FF0D9F,$FF0E8C,GFX_Layer1_MilitaryIntro_Frame29,GFX_Layer1_MilitaryIntro_Frame29End
	dl $FF0E8C,$FF0F72,GFX_Layer1_MilitaryIntro_Frame30,GFX_Layer1_MilitaryIntro_Frame30End
	dl $FF0F72,$FF1079,GFX_Layer1_MilitaryIntro_Frame31,GFX_Layer1_MilitaryIntro_Frame31End
	dl $FF1079,$FF11A6,GFX_Layer1_MilitaryIntro_Frame32,GFX_Layer1_MilitaryIntro_Frame32End
	dl $FF11A6,$FF12F7,GFX_Layer1_MilitaryIntro_Frame33,GFX_Layer1_MilitaryIntro_Frame33End
	dl $FF12F7,$FF1431,GFX_Layer1_MilitaryIntro_Frame34,GFX_Layer1_MilitaryIntro_Frame34End
	dl $FF1431,$FF1568,GFX_Layer1_MilitaryIntro_Frame35,GFX_Layer1_MilitaryIntro_Frame35End
	dl $FF1568,$FF1612,GFX_Layer1_MilitaryIntro_Frame36,GFX_Layer1_MilitaryIntro_Frame36End
	dl $FF1612,$FF16A0,GFX_Layer1_MilitaryIntro_Frame37,GFX_Layer1_MilitaryIntro_Frame37End
	dl $FF16A0,$FF1728,GFX_Layer1_MilitaryIntro_Frame38,GFX_Layer1_MilitaryIntro_Frame38End
	dl $FF1728,$FF17D2,GFX_Layer1_MilitaryIntro_Frame39,GFX_Layer1_MilitaryIntro_Frame39End
	dl $FF17D2,$FF184E,GFX_Layer1_MilitaryIntro_Frame40,GFX_Layer1_MilitaryIntro_Frame40End
	dl $FF184E,$FF18E8,GFX_Layer1_MilitaryIntro_Frame41,GFX_Layer1_MilitaryIntro_Frame41End
	dl $FF18E8,$FF198E,GFX_Layer1_MilitaryIntro_Frame42,GFX_Layer1_MilitaryIntro_Frame42End
	dl $FF198E,$FF1A46,GFX_Layer1_MilitaryIntro_Frame43,GFX_Layer1_MilitaryIntro_Frame43End
	dl $FF1A46,$FF1AE8,GFX_Layer1_MilitaryIntro_Frame44,GFX_Layer1_MilitaryIntro_Frame44End
	dl $FF1AE8,$FF1B94,GFX_Layer1_MilitaryIntro_Frame45,GFX_Layer1_MilitaryIntro_Frame45End
	dl $FF1B94,$FF1C5C,GFX_Layer1_MilitaryIntro_Frame46,GFX_Layer1_MilitaryIntro_Frame46End
	dl $FF1C5C,$FF1D42,GFX_Layer1_MilitaryIntro_Frame47,GFX_Layer1_MilitaryIntro_Frame47End
	dl $FF1D42,$FF1E26,GFX_Layer1_MilitaryIntro_Frame48,GFX_Layer1_MilitaryIntro_Frame48End
	dl $FF1E26,$FF1EF6,GFX_Layer1_MilitaryIntro_Frame49,GFX_Layer1_MilitaryIntro_Frame49End
	dl $FF1EF6,$FF1FC2,GFX_Layer1_MilitaryIntro_Frame50,GFX_Layer1_MilitaryIntro_Frame50End
	dl $FF1FC2,$FF20C4,GFX_Layer1_MilitaryIntro_Frame51,GFX_Layer1_MilitaryIntro_Frame51End
	dl $FF20C4,$FF21F8,GFX_Layer1_MilitaryIntro_Frame52,GFX_Layer1_MilitaryIntro_Frame52End
	dl $FF21F8,$FF234B,GFX_Layer1_MilitaryIntro_Frame53,GFX_Layer1_MilitaryIntro_Frame53End
	dl $FF234B,$FF244D,GFX_Layer1_MilitaryIntro_Frame87,GFX_Layer1_MilitaryIntro_Frame87End
	dl $FF244D,$FF24FD,GFX_Layer1_MilitaryIntro_Frame88,GFX_Layer1_MilitaryIntro_Frame88End
	dl $FF24FD,$FF25AB,GFX_Layer1_MilitaryIntro_Frame90,GFX_Layer1_MilitaryIntro_Frame90End
	dl $FF25AB,$FF266F,GFX_Layer1_MilitaryIntro_Frame91,GFX_Layer1_MilitaryIntro_Frame91End
	dl $FF266F,$FF272F,GFX_Layer1_MilitaryIntro_Frame92,GFX_Layer1_MilitaryIntro_Frame92End
	dl $FF272F,$FF2801,GFX_Layer1_MilitaryIntro_Frame93,GFX_Layer1_MilitaryIntro_Frame93End
	dl $FF2801,$FF28E5,GFX_Layer1_MilitaryIntro_Frame94,GFX_Layer1_MilitaryIntro_Frame94End
	dl $FF28E5,$FF29DB,GFX_Layer1_MilitaryIntro_Frame95,GFX_Layer1_MilitaryIntro_Frame95End
	dl $FF29DB,$FF2ABD,GFX_Layer1_MilitaryIntro_Frame96,GFX_Layer1_MilitaryIntro_Frame96End
	dl $FF2ABD,$FF2B7F,GFX_Layer1_MilitaryIntro_Frame97,GFX_Layer1_MilitaryIntro_Frame97End
	dl $FF2B7F,$FF2C77,GFX_Layer1_MilitaryIntro_Frame98,GFX_Layer1_MilitaryIntro_Frame98End
	dl $FF2C77,$FF2D97,GFX_Layer1_MilitaryIntro_Frame99,GFX_Layer1_MilitaryIntro_Frame99End
	dl $FF2D97,$FF2EC1,GFX_Layer1_MilitaryIntro_Frame100,GFX_Layer1_MilitaryIntro_Frame100End
	dl $FF2EC1,$FF301C,GFX_Layer1_MilitaryIntro_Frame101,GFX_Layer1_MilitaryIntro_Frame101End
	dl $FF301C,$FF3186,GFX_Layer1_MilitaryIntro_Frame102,GFX_Layer1_MilitaryIntro_Frame102End
	dl $FF3186,$FF32B6,GFX_Layer1_MilitaryIntro_Frame103,GFX_Layer1_MilitaryIntro_Frame103End
	dl $FF32B6,$FF33F8,GFX_Layer1_MilitaryIntro_Frame104,GFX_Layer1_MilitaryIntro_Frame104End
	dl $FF33F8,$FF3529,GFX_Layer1_ApeIntro_Frame34,GFX_Layer1_ApeIntro_Frame34End
	dl $FF3529,$FF35F7,GFX_Layer1_ApeIntro_Frame65,GFX_Layer1_ApeIntro_Frame65End
	dl $FF35F7,$FF3711,GFX_Layer1_ApeIntro_Frame96,GFX_Layer1_ApeIntro_Frame96End
	dl $FF3711,$FF383F,GFX_Layer1_LoaderIntro_Frame2,GFX_Layer1_LoaderIntro_Frame2End
	dl $FF383F,$FF39A9,GFX_Layer1_LoaderIntro_Frame3,GFX_Layer1_LoaderIntro_Frame3End
	dl $FF39A9,$FF3ADD,GFX_Layer1_LoaderIntro_Frame4,GFX_Layer1_LoaderIntro_Frame4End
	dl $FF3ADD,$FF3C40,GFX_Layer1_LoaderIntro_Frame5,GFX_Layer1_LoaderIntro_Frame5End
	dl $FF3C40,$FF3DA4,GFX_Layer1_LoaderIntro_Frame6,GFX_Layer1_LoaderIntro_Frame6End
	dl $FF3DA4,$FF3EF2,GFX_Layer1_LoaderIntro_Frame7,GFX_Layer1_LoaderIntro_Frame7End
	dl $FF3EF2,$FF4020,GFX_Layer1_LoaderIntro_Frame8,GFX_Layer1_LoaderIntro_Frame8End
	dl $FF4020,$FF4164,GFX_Layer1_LoaderIntro_Frame9,GFX_Layer1_LoaderIntro_Frame9End
	dl $FF4164,$FF42AA,GFX_Layer1_LoaderIntro_Frame10,GFX_Layer1_LoaderIntro_Frame10End
	dl $FF42AA,$FF43DA,GFX_Layer1_LoaderIntro_Frame11,GFX_Layer1_LoaderIntro_Frame11End
	dl $FF43DA,$FF4516,GFX_Layer1_LoaderIntro_Frame12,GFX_Layer1_LoaderIntro_Frame12End
	dl $FF4516,$FF463E,GFX_Layer1_LoaderIntro_Frame13,GFX_Layer1_LoaderIntro_Frame13End
	dl $FF463E,$FF4785,GFX_Layer1_LoaderIntro_Frame14,GFX_Layer1_LoaderIntro_Frame14End
	dl $FF4785,$FF48B5,GFX_Layer1_LoaderIntro_Frame15,GFX_Layer1_LoaderIntro_Frame15End
	dl $FF48B5,$FF49E3,GFX_Layer1_LoaderIntro_Frame17,GFX_Layer1_LoaderIntro_Frame17End
	dl $FF49E3,$FF4B3D,GFX_Layer1_LoaderIntro_Frame18,GFX_Layer1_LoaderIntro_Frame18End
	dl $FF4B3D,$FF4C89,GFX_Layer1_LoaderIntro_Frame19,GFX_Layer1_LoaderIntro_Frame19End
	dl $FF4C89,$FF4DEB,GFX_Layer1_LoaderIntro_Frame20,GFX_Layer1_LoaderIntro_Frame20End
	dl $FF4DEB,$FF4F4A,GFX_Layer1_LoaderIntro_Frame21,GFX_Layer1_LoaderIntro_Frame21End
	dl $FF4F4A,$FF509E,GFX_Layer1_LoaderIntro_Frame23,GFX_Layer1_LoaderIntro_Frame23End
	dl $FF509E,$FF51F0,GFX_Layer1_LoaderIntro_Frame24,GFX_Layer1_LoaderIntro_Frame24End
	dl $FF51F0,$FF534C,GFX_Layer1_LoaderIntro_Frame25,GFX_Layer1_LoaderIntro_Frame25End
	dl $FF534C,$FF54C2,GFX_Layer1_LoaderIntro_Frame27,GFX_Layer1_LoaderIntro_Frame27End
	dl $FF5510,$FF557A,GFX_Layer1_LoaderDefeated_Frame9,GFX_Layer1_LoaderDefeated_Frame9End
	dl $FF557A,$FF55E8,GFX_Layer1_LoaderDefeated_Frame10,GFX_Layer1_LoaderDefeated_Frame10End
	dl $FF55E8,$FF56A1,GFX_Layer1_LoaderDefeated_Frame11,GFX_Layer1_LoaderDefeated_Frame11End
	dl $FF56A1,$FF57AD,GFX_Layer1_LoaderDefeated_Frame12,GFX_Layer1_LoaderDefeated_Frame12End
	dl $FF57AD,$FF58BB,GFX_Layer1_LoaderDefeated_Frame13,GFX_Layer1_LoaderDefeated_Frame13End
	dl $FF58BB,$FF59ED,GFX_Layer1_LoaderDefeated_Frame14,GFX_Layer1_LoaderDefeated_Frame14End
	dl $FF59ED,$FF5B2D,GFX_Layer1_LoaderDefeated_Frame21,GFX_Layer1_LoaderDefeated_Frame21End
	dl $FF5B2D,$FF5C6D,GFX_Layer1_LoaderDefeated_Frame22,GFX_Layer1_LoaderDefeated_Frame22End
	dl $FF5C6D,$FF5D95,GFX_Layer1_LoaderDefeated_Frame23,GFX_Layer1_LoaderDefeated_Frame23End
	dl $FF5D95,$FF5EAA,GFX_Layer1_LoaderDefeated_Frame24,GFX_Layer1_LoaderDefeated_Frame24End
	dl $FF5EAA,$FF5F6A,GFX_Layer1_LoaderDefeated_Frame25,GFX_Layer1_LoaderDefeated_Frame25End
	dl $FF5F6A,$FF5F88,GFX_Layer1_LoaderDefeated_Frame26,GFX_Layer1_LoaderDefeated_Frame26End
	dl $FF5F88,$FF5FC4,GFX_Layer1_MilitaryDefeated_Frame2,GFX_Layer1_MilitaryDefeated_Frame2End
	dl $FF5FC4,$FF6139,GFX_Layer1_CrusherDefeated_Frame18,GFX_Layer1_CrusherDefeated_Frame18End
	dl $FF6139,$FF62A4,GFX_Layer1_CrusherDefeated_Frame19,GFX_Layer1_CrusherDefeated_Frame19End
	dl $FF62A4,$FF6408,GFX_Layer1_CrusherDefeated_Frame20,GFX_Layer1_CrusherDefeated_Frame20End
	dl $FF6408,$FF6585,GFX_Layer1_CrusherDefeated_Frame25,GFX_Layer1_CrusherDefeated_Frame25End
	dl $FF6585,$FF65AF,GFX_Layer1_CrusherDefeated_Frame27,GFX_Layer1_CrusherDefeated_Frame27End
	dl $FF65AF,$FF65B3,GFX_Layer1_CyborgDefeated_Frame33,GFX_Layer1_CyborgDefeated_Frame33End
	dl $FF65B3,$FF65B7,GFX_Layer1_CyborgDefeated_Frame34,GFX_Layer1_CyborgDefeated_Frame34End
	dl $FF65B7,$FF65BB,GFX_Layer1_CyborgDefeated_Frame35,GFX_Layer1_CyborgDefeated_Frame35End
	dl $FF65BB,$FF65BF,GFX_Layer1_CyborgDefeated_Frame36,GFX_Layer1_CyborgDefeated_Frame36End
	dl $FF65BF,$FF65C3,GFX_Layer1_CyborgDefeated_Frame37,GFX_Layer1_CyborgDefeated_Frame37End
	dl $FF65C3,$FF65C7,GFX_Layer1_CyborgDefeated_Frame38,GFX_Layer1_CyborgDefeated_Frame38End
	dl $FF65C7,$FF65CB,GFX_Layer1_CyborgDefeated_Frame39,GFX_Layer1_CyborgDefeated_Frame39End
	dl $FF65CB,$FF65CF,GFX_Layer1_CyborgDefeated_Frame40,GFX_Layer1_CyborgDefeated_Frame40End
	dl $FF65CF,$FF65D3,GFX_Layer1_CyborgDefeated_Frame41,GFX_Layer1_CyborgDefeated_Frame41End
	dl $FF65D3,$FF65D7,GFX_Layer1_ApproachingMetropolis4_Frame2,GFX_Layer1_ApproachingMetropolis4_Frame2End
	dl $FF65D7,$FF65DB,GFX_Layer1_ApproachingMetropolis4_Frame3,GFX_Layer1_ApproachingMetropolis4_Frame3End
	dl $FF65DB,$FF65DF,GFX_Layer1_ApproachingMetropolis4_Frame4,GFX_Layer1_ApproachingMetropolis4_Frame4End
	dl $FF65DF,$FF65E3,GFX_Layer1_ApproachingMetropolis4_Frame5,GFX_Layer1_ApproachingMetropolis4_Frame5End
	dl $FF65E3,$FF65E7,GFX_Layer1_ApproachingMetropolis4_Frame6,GFX_Layer1_ApproachingMetropolis4_Frame6End
	dl $FF65E7,$FF65EB,GFX_Layer1_ApproachingMetropolis4_Frame7,GFX_Layer1_ApproachingMetropolis4_Frame7End
	dl $FF65EB,$FF65EF,GFX_Layer1_ApproachingMetropolis4_Frame8,GFX_Layer1_ApproachingMetropolis4_Frame8End
	dl $FF65EF,$FF65F3,GFX_Layer1_ApproachingMetropolis4_Frame9,GFX_Layer1_ApproachingMetropolis4_Frame9End
	dl $FF65F3,$FF65F7,GFX_Layer1_ApproachingMetropolis4_Frame10,GFX_Layer1_ApproachingMetropolis4_Frame10End
	dl $FF65F7,$FF65FB,GFX_Layer1_ApproachingMetropolis4_Frame12,GFX_Layer1_ApproachingMetropolis4_Frame12End
	dl $FF65FB,$FF6770,GFX_Layer1_ApproachingMetropolis4_Frame18,GFX_Layer1_ApproachingMetropolis4_Frame18End
	dl $FF6770,$FF689A,GFX_Layer1_ApproachingMetropolis4_Frame19,GFX_Layer1_ApproachingMetropolis4_Frame19End
	dl $FF689A,$FF699C,GFX_Layer1_ApproachingMetropolis4_Frame20,GFX_Layer1_ApproachingMetropolis4_Frame20End
	dl $FF699C,$FF6A9B,GFX_Layer1_ApproachingMetropolis4_Frame21,GFX_Layer1_ApproachingMetropolis4_Frame21End
	dl $FF6A9B,$FF6B65,GFX_Layer1_ApproachingMetropolis4_Frame22,GFX_Layer1_ApproachingMetropolis4_Frame22End
	dl $FF6B65,$FF6C23,GFX_Layer1_ApproachingMetropolis4_Frame23,GFX_Layer1_ApproachingMetropolis4_Frame23End
	dl $FF6C23,$FF6CEA,GFX_Layer1_ApproachingMetropolis4_Frame24,GFX_Layer1_ApproachingMetropolis4_Frame24End
	dl $FF6CEA,$FF6D26,GFX_Layer1_ApproachingMetropolis4_Frame41,GFX_Layer1_ApproachingMetropolis4_Frame41End
	dl $FF6D26,$FF6D5E,GFX_Layer1_ApproachingMetropolis4_Frame42,GFX_Layer1_ApproachingMetropolis4_Frame42End
	dl $FF6D5E,$FF6D9A,GFX_Layer1_ApproachingMetropolis4_Frame43,GFX_Layer1_ApproachingMetropolis4_Frame43End
	dl $FF6D9A,$FF6DC4,GFX_Layer1_ApproachingMetropolis4_Frame44,GFX_Layer1_ApproachingMetropolis4_Frame44End
	dl $FF6DC4,$FF6E04,GFX_Layer1_ApproachingMetropolis4_Frame45,GFX_Layer1_ApproachingMetropolis4_Frame45End
	dl $FF6E04,$FF6E36,GFX_Layer1_ApproachingMetropolis4_Frame46,GFX_Layer1_ApproachingMetropolis4_Frame46End
	dl $FF6E36,$FF6E72,GFX_Layer1_ApproachingMetropolis4_Frame47,GFX_Layer1_ApproachingMetropolis4_Frame47End
	dl $FF6E72,$FF6EAE,GFX_Layer1_ApproachingMetropolis4_Frame48,GFX_Layer1_ApproachingMetropolis4_Frame48End
	dl $FF6EAE,$FF6EE8,GFX_Layer1_ApproachingMetropolis4_Frame49,GFX_Layer1_ApproachingMetropolis4_Frame49End
	dl $FF6EE8,$FF6F30,GFX_Layer1_ApproachingMetropolis4_Frame50,GFX_Layer1_ApproachingMetropolis4_Frame50End
	dl $FF6F30,$FF708D,GFX_Layer1_ApproachingMetropolis4_Frame120,GFX_Layer1_ApproachingMetropolis4_Frame120End
	dl $FF708D,$FF70DC,GFX_Layer1_ApproachingMetropolis4_Frame121,GFX_Layer1_ApproachingMetropolis4_Frame121End
FMVFramePointersEnd:

;--------------------------------------------------------------------

DynamicSpritesPointersStart:
	dl $C10085,$C11505,GFX_Sprite_Cyborg_MainMenu16,GFX_Sprite_Cyborg_MainMenu16End
	dl $C60073,$C611F3,GFX_Sprite_Crusher_FarKick3,GFX_Sprite_Crusher_FarKick3End
	dl $C70073,$C711F3,GFX_Sprite_Ape_FarKick2,GFX_Sprite_Ape_FarKick2End
	dl $C80079,$C812F9,GFX_Sprite_Crusher_FarKick4,GFX_Sprite_Crusher_FarKick4End
	dl $C81509,$C82B09,GFX_Sprite_Cyborg_MainMenu2,GFX_Sprite_Cyborg_MainMenu2End
	dl $C82B9A,$C8421A,GFX_Sprite_Cyborg_MainMenu3,GFX_Sprite_Cyborg_MainMenu3End
	dl $C842AB,$C8592B,GFX_Sprite_Cyborg_MainMenu4,GFX_Sprite_Cyborg_MainMenu4End
	dl $C859B6,$C86F36,GFX_Sprite_Cyborg_MainMenu5,GFX_Sprite_Cyborg_MainMenu5End
	dl $C86FC1,$C88541,GFX_Sprite_Cyborg_MainMenu6,GFX_Sprite_Cyborg_MainMenu6End
	dl $C885CF,$C89BCF,GFX_Sprite_Cyborg_MainMenu7,GFX_Sprite_Cyborg_MainMenu7End
	dl $C89C5D,$C8B25D,GFX_Sprite_Cyborg_MainMenu8,GFX_Sprite_Cyborg_MainMenu8End
	dl $C90079,$C912F9,GFX_Sprite_Crusher_FarKick5,GFX_Sprite_Crusher_FarKick5End
	dl $C91381,$C92881,GFX_Sprite_Cyborg_MainMenu1,GFX_Sprite_Cyborg_MainMenu1End
	dl $C9290C,$C93E8C,GFX_Sprite_Cyborg_MainMenu9,GFX_Sprite_Cyborg_MainMenu9End
	dl $C93F14,$C95414,GFX_Sprite_Cyborg_MainMenu10,GFX_Sprite_Cyborg_MainMenu10End
	dl $C9549C,$C9699C,GFX_Sprite_Cyborg_MainMenu11,GFX_Sprite_Cyborg_MainMenu11End
	dl $C96A24,$C97F24,GFX_Sprite_Cyborg_MainMenu12,GFX_Sprite_Cyborg_MainMenu12End
	dl $C97FAC,$C994AC,GFX_Sprite_Cyborg_MainMenu13,GFX_Sprite_Cyborg_MainMenu13End
	dl $C99534,$C9AA34,GFX_Sprite_Cyborg_MainMenu14,GFX_Sprite_Cyborg_MainMenu14End
	dl $C9AABC,$C9BFBC,GFX_Sprite_Cyborg_MainMenu15,GFX_Sprite_Cyborg_MainMenu15End
	dl $C9C044,$C9D544,GFX_Sprite_Cyborg_MainMenu17,GFX_Sprite_Cyborg_MainMenu17End
	dl $CA0031,$CA06B1,GFX_Sprite_Cyborg_StandIdle2,GFX_Sprite_Cyborg_StandIdle2End
	dl $CA0718,$CA1698,GFX_Sprite_Crusher_DuckKick3,GFX_Sprite_Crusher_DuckKick3End
	dl $CA16FF,$CA267F,GFX_Sprite_Crusher_DuckPunch2,GFX_Sprite_Crusher_DuckPunch2End
	dl $CA26E6,$CA3666,GFX_Sprite_Crusher_DuckPunch3,GFX_Sprite_Crusher_DuckPunch3End
	dl $CA36D3,$CA4753,GFX_Sprite_Crusher_DuckPunch4,GFX_Sprite_Crusher_DuckPunch4End
	dl $CA47BD,$CA57BD,GFX_Sprite_Crusher_DuckPunch5,GFX_Sprite_Crusher_DuckPunch5End
	dl $CA582A,$CA68AA,GFX_Sprite_Crusher_FarKick2,GFX_Sprite_Crusher_FarKick2End
	dl $CA6917,$CA7997,GFX_Sprite_Crusher_Dead5,GFX_Sprite_Crusher_Dead5End
	dl $CA7A07,$CA8B07,GFX_Sprite_Crusher_Dead6,GFX_Sprite_Crusher_Dead6End
	dl $CA8B71,$CA9B71,GFX_Sprite_Ape_DuckPunch6,GFX_Sprite_Ape_DuckPunch6End
	dl $CA9BDE,$CAAC5E,GFX_Sprite_Ape_DuckPunch7,GFX_Sprite_Ape_DuckPunch7End
	dl $CAACCE,$CABDCE,GFX_Sprite_Ape_DuckPunch8,GFX_Sprite_Ape_DuckPunch8End
	dl $CABE38,$CACE38,GFX_Sprite_Ape_FarKick1,GFX_Sprite_Ape_FarKick1End
	dl $CACEA5,$CADF25,GFX_Sprite_Ape_FarKick4,GFX_Sprite_Ape_FarKick4End
	dl $CADF8F,$CAEF8F,GFX_Sprite_Ape_FarKick5,GFX_Sprite_Ape_FarKick5End
	dl $CB0FE9,$CB1F69,GFX_Sprite_Crusher_FarPunch3,GFX_Sprite_Crusher_FarPunch3End
	dl $CB1FCD,$CB2ECD,GFX_Sprite_Crusher_LowBlowHurt4,GFX_Sprite_Crusher_LowBlowHurt4End
	dl $CB2F34,$CB3EB4,GFX_Sprite_Crusher_Dead3,GFX_Sprite_Crusher_Dead3End
	dl $CB3F18,$CB4E18,GFX_Sprite_Crusher_StandBlock2,GFX_Sprite_Crusher_StandBlock2End
	dl $CB4E7C,$CB5D7C,GFX_Sprite_Crusher_BallGrab6,GFX_Sprite_Crusher_BallGrab6End
	dl $CB5DE0,$CB6CE0,GFX_Sprite_Sentry_FarKick4,GFX_Sprite_Sentry_FarKick4End
	dl $CB6D47,$CB7CC7,GFX_Sprite_Sentry_DoubleKick6,GFX_Sprite_Sentry_DoubleKick6End
	dl $CB7D2B,$CB8C2B,GFX_Sprite_Ape_FarPunch1,GFX_Sprite_Ape_FarPunch1End
	dl $CB8C8F,$CB9B8F,GFX_Sprite_Ape_Walk1,GFX_Sprite_Ape_Walk1End
	dl $CB9BF6,$CBAB76,GFX_Sprite_Ape_OverheadPunch14,GFX_Sprite_Ape_OverheadPunch14End
	dl $CBABDD,$CBBB5D,GFX_Sprite_Ape_Jump1,GFX_Sprite_Ape_Jump1End
	dl $CBBBC4,$CBCB44,GFX_Sprite_Ape_ClosePunch5,GFX_Sprite_Ape_ClosePunch5End
	dl $CC0061,$CC0EE1,GFX_Sprite_Crusher_DuckKick2,GFX_Sprite_Crusher_DuckKick2End
	dl $CC0F42,$CC1DC2,GFX_Sprite_Crusher_Jump2,GFX_Sprite_Crusher_Jump2End
	dl $CC1E23,$CC2CA3,GFX_Sprite_Crusher_Jump3,GFX_Sprite_Crusher_Jump3End
	dl $CC2D04,$CC3B84,GFX_Sprite_Crusher_LowBlowHurt3,GFX_Sprite_Crusher_LowBlowHurt3End
	dl $CC3BE5,$CC4A65,GFX_Sprite_Crusher_Dead2,GFX_Sprite_Crusher_Dead2End
	dl $CC4AC6,$CC5946,GFX_Sprite_Crusher_Dead4,GFX_Sprite_Crusher_Dead4End
	dl $CC59A7,$CC6827,GFX_Sprite_Crusher_BallGrab2,GFX_Sprite_Crusher_BallGrab2End
	dl $CC6888,$CC7708,GFX_Sprite_Crusher_BallGrab3,GFX_Sprite_Crusher_BallGrab3End
	dl $CC776C,$CC866C,GFX_Sprite_Ape_Walk2,GFX_Sprite_Ape_Walk2End
	dl $CC86D0,$CC95D0,GFX_Sprite_Ape_Walk3,GFX_Sprite_Ape_Walk3End
	dl $CC9634,$CCA534,GFX_Sprite_Ape_DuckPunch5,GFX_Sprite_Ape_DuckPunch5End
	dl $CCA598,$CCB498,GFX_Sprite_Ape_OverheadPunch1,GFX_Sprite_Ape_OverheadPunch1End
	dl $CCB4FC,$CCC3FC,GFX_Sprite_Ape_FarKick3,GFX_Sprite_Ape_FarKick3End
	dl $CCC460,$CCD360,GFX_Sprite_Ape_Ducking1,GFX_Sprite_Ape_Ducking1End
	dl $CCD3C4,$CCE2C4,GFX_Sprite_Ape_Ducking2,GFX_Sprite_Ape_Ducking2End
	dl $CCE328,$CCF228,GFX_Sprite_Ape_ClosePunch4,GFX_Sprite_Ape_ClosePunch4End
	dl $CD0061,$CD0EE1,GFX_Sprite_Crusher_BallGrab4,GFX_Sprite_Crusher_BallGrab4End
	dl $CD0F42,$CD1DC2,GFX_Sprite_Crusher_BallGrab5,GFX_Sprite_Crusher_BallGrab5End
	dl $CD1E23,$CD2CA3,GFX_Sprite_Crusher_BallGrab7,GFX_Sprite_Crusher_BallGrab7End
	dl $CD2D04,$CD3B84,GFX_Sprite_Crusher_BallGrab9,GFX_Sprite_Crusher_BallGrab9End
	dl $CD3BE5,$CD4A65,GFX_Sprite_Crusher_BallGrab10,GFX_Sprite_Crusher_BallGrab10End
	dl $CD4AC6,$CD5946,GFX_Sprite_Crusher_BallGrab11,GFX_Sprite_Crusher_BallGrab11End
	dl $CD59A7,$CD6827,GFX_Sprite_Crusher_BallGrab12,GFX_Sprite_Crusher_BallGrab12End
	dl $CD6888,$CD7708,GFX_Sprite_Crusher_BallGrab13,GFX_Sprite_Crusher_BallGrab13End
	dl $CD7769,$CD85E9,GFX_Sprite_Sentry_FarKick5,GFX_Sprite_Sentry_FarKick5End
	dl $CD864A,$CD94CA,GFX_Sprite_Sentry_DoubleKick5,GFX_Sprite_Sentry_DoubleKick5End
	dl $CD952B,$CDA3AB,GFX_Sprite_Ape_Walk7,GFX_Sprite_Ape_Walk7End
	dl $CDA40C,$CDB28C,GFX_Sprite_Ape_DuckPunch1,GFX_Sprite_Ape_DuckPunch1End
	dl $CDB2ED,$CDC16D,GFX_Sprite_Ape_DuckPunch2,GFX_Sprite_Ape_DuckPunch2End
	dl $CDC1CE,$CDD04E,GFX_Sprite_Ape_DuckPunch3,GFX_Sprite_Ape_DuckPunch3End
	dl $CDD0AF,$CDDF2F,GFX_Sprite_Ape_Ducking3,GFX_Sprite_Ape_Ducking3End
	dl $CDDF90,$CDEE10,GFX_Sprite_Ape_Ducking4,GFX_Sprite_Ape_Ducking4End
	dl $CDEE71,$CDFCF1,GFX_Sprite_Ape_ClosePunch1,GFX_Sprite_Ape_ClosePunch1End
	dl $CE005E,$CE0E5E,GFX_Sprite_Crusher_Ducking4,GFX_Sprite_Crusher_Ducking4End
	dl $CE0EBC,$CE1CBC,GFX_Sprite_Crusher_DuckKick4,GFX_Sprite_Crusher_DuckKick4End
	dl $CE1D1A,$CE2B1A,GFX_Sprite_Crusher_DuckKick5,GFX_Sprite_Crusher_DuckKick5End
	dl $CE2B78,$CE3978,GFX_Sprite_Crusher_StandBlock4,GFX_Sprite_Crusher_StandBlock4End
	dl $CE39D6,$CE47D6,GFX_Sprite_Crusher_Walk6,GFX_Sprite_Crusher_Walk6End
	dl $CE4834,$CE5634,GFX_Sprite_Crusher_BallGrab1,GFX_Sprite_Crusher_BallGrab1End
	dl $CE5692,$CE6492,GFX_Sprite_Sentry_JumpKick2,GFX_Sprite_Sentry_JumpKick2End
	dl $CE64F0,$CE72F0,GFX_Sprite_Sentry_Walk8,GFX_Sprite_Sentry_Walk8End
	dl $CE734E,$CE814E,GFX_Sprite_Sentry_HighBlowHurt2,GFX_Sprite_Sentry_HighBlowHurt2End
	dl $CE81AC,$CE8FAC,GFX_Sprite_Ape_StandBlock1,GFX_Sprite_Ape_StandBlock1End
	dl $CE900A,$CE9E0A,GFX_Sprite_Ape_StandBlock2,GFX_Sprite_Ape_StandBlock2End
	dl $CE9E68,$CEAC68,GFX_Sprite_Ape_Walk4,GFX_Sprite_Ape_Walk4End
	dl $CEACC6,$CEBAC6,GFX_Sprite_Ape_Walk5,GFX_Sprite_Ape_Walk5End
	dl $CEBB24,$CEC924,GFX_Sprite_Ape_Walk6,GFX_Sprite_Ape_Walk6End
	dl $CEC982,$CED782,GFX_Sprite_Ape_DuckPunch4,GFX_Sprite_Ape_DuckPunch4End
	dl $CED7E0,$CEE5E0,GFX_Sprite_Ape_LowBlowHurt4,GFX_Sprite_Ape_LowBlowHurt4End
	dl $CF005B,$CF0DDB,GFX_Sprite_Crusher_Ducking3,GFX_Sprite_Crusher_Ducking3End
	dl $CF0E36,$CF1BB6,GFX_Sprite_Crusher_Ducking5,GFX_Sprite_Crusher_Ducking5End
	dl $CF1C11,$CF2991,GFX_Sprite_Crusher_Ducking6,GFX_Sprite_Crusher_Ducking6End
	dl $CF29EC,$CF376C,GFX_Sprite_Crusher_DuckBlock1,GFX_Sprite_Crusher_DuckBlock1End
	dl $CF37C7,$CF4547,GFX_Sprite_Crusher_DuckKick1,GFX_Sprite_Crusher_DuckKick1End
	dl $CF45A2,$CF5322,GFX_Sprite_Crusher_DuckPunch1,GFX_Sprite_Crusher_DuckPunch1End
	dl $CF537D,$CF60FD,GFX_Sprite_Crusher_DuckHurt1,GFX_Sprite_Crusher_DuckHurt1End
	dl $CF6158,$CF6ED8,GFX_Sprite_Crusher_FarPunch1,GFX_Sprite_Crusher_FarPunch1End
	dl $CF6F33,$CF7CB3,GFX_Sprite_Crusher_FarPunch2,GFX_Sprite_Crusher_FarPunch2End
	dl $CF7D0E,$CF8A8E,GFX_Sprite_Crusher_FarKick1,GFX_Sprite_Crusher_FarKick1End
	dl $CF8AE9,$CF9869,GFX_Sprite_Crusher_StandBlock3,GFX_Sprite_Crusher_StandBlock3End
	dl $CF98C4,$CFA644,GFX_Sprite_Crusher_Walk2,GFX_Sprite_Crusher_Walk2End
	dl $CFA6A2,$CFB4A2,GFX_Sprite_Ape_LowBlowHurt5,GFX_Sprite_Ape_LowBlowHurt5End
	dl $CFB500,$CFC300,GFX_Sprite_Ape_Dead2,GFX_Sprite_Ape_Dead2End
	dl $CFC35E,$CFD15E,GFX_Sprite_Ape_Dead5,GFX_Sprite_Ape_Dead5End
	dl $CFD1BC,$CFDFBC,GFX_Sprite_Ape_ClosePunch2,GFX_Sprite_Ape_ClosePunch2End
	dl $CFDFDB,$CFE35B,GFX_Sprite_Military_Somersault9,GFX_Sprite_Military_Somersault9End
	dl $D0005B,$D00DDB,GFX_Sprite_Crusher_Walk5,GFX_Sprite_Crusher_Walk5End
	dl $D00E36,$D01BB6,GFX_Sprite_Crusher_Walk7,GFX_Sprite_Crusher_Walk7End
	dl $D01C11,$D02991,GFX_Sprite_Crusher_BallGrab8,GFX_Sprite_Crusher_BallGrab8End
	dl $D029EC,$D0376C,GFX_Sprite_Sentry_CloseKick1,GFX_Sprite_Sentry_CloseKick1End
	dl $D037C7,$D04547,GFX_Sprite_Sentry_FarPunch5,GFX_Sprite_Sentry_FarPunch5End
	dl $D045A2,$D05322,GFX_Sprite_Sentry_Walk2,GFX_Sprite_Sentry_Walk2End
	dl $D0537D,$D060FD,GFX_Sprite_Sentry_DoubleKick7,GFX_Sprite_Sentry_DoubleKick7End
	dl $D06158,$D06ED8,GFX_Sprite_Sentry_HighBlowHurt3,GFX_Sprite_Sentry_HighBlowHurt3End
	dl $D06F33,$D07CB3,GFX_Sprite_Ape_StandIdle1,GFX_Sprite_Ape_StandIdle1End
	dl $D07D0E,$D08A8E,GFX_Sprite_Ape_StandIdle2,GFX_Sprite_Ape_StandIdle2End
	dl $D08AE9,$D09869,GFX_Sprite_Ape_StandIdle3,GFX_Sprite_Ape_StandIdle3End
	dl $D098C4,$D0A644,GFX_Sprite_Ape_FarPunch4,GFX_Sprite_Ape_FarPunch4End
	dl $D0A69F,$D0B41F,GFX_Sprite_Ape_Walk8,GFX_Sprite_Ape_Walk8End
	dl $D0B47A,$D0C1FA,GFX_Sprite_Ape_Walk9,GFX_Sprite_Ape_Walk9End
	dl $D0C255,$D0CFD5,GFX_Sprite_Ape_OverheadPunch2,GFX_Sprite_Ape_OverheadPunch2End
	dl $D0D030,$D0DDB0,GFX_Sprite_Ape_OverheadPunch11,GFX_Sprite_Ape_OverheadPunch11End
	dl $D0DE0B,$D0EB8B,GFX_Sprite_Ape_OverheadPunch13,GFX_Sprite_Ape_OverheadPunch13End
	dl $D0EBE6,$D0F966,GFX_Sprite_Ape_LowBlowHurt1,GFX_Sprite_Ape_LowBlowHurt1End
	dl $D10DB7,$D11AB7,GFX_Sprite_Crusher_Jump4,GFX_Sprite_Crusher_Jump4End
	dl $D11B0F,$D1280F,GFX_Sprite_Crusher_FarPunch4,GFX_Sprite_Crusher_FarPunch4End
	dl $D12867,$D13567,GFX_Sprite_Crusher_LowBlowHurt2,GFX_Sprite_Crusher_LowBlowHurt2End
	dl $D135BF,$D142BF,GFX_Sprite_Crusher_StandBlock1,GFX_Sprite_Crusher_StandBlock1End
	dl $D14317,$D15017,GFX_Sprite_Crusher_Walk3,GFX_Sprite_Crusher_Walk3End
	dl $D1506F,$D15D6F,GFX_Sprite_Crusher_Walk4,GFX_Sprite_Crusher_Walk4End
	dl $D15DC7,$D16AC7,GFX_Sprite_Crusher_JumpKick1,GFX_Sprite_Crusher_JumpKick1End
	dl $D16B1F,$D1781F,GFX_Sprite_Sentry_CloseKick2,GFX_Sprite_Sentry_CloseKick2End
	dl $D17877,$D18577,GFX_Sprite_Sentry_Jump1,GFX_Sprite_Sentry_Jump1End
	dl $D185CF,$D192CF,GFX_Sprite_Sentry_JumpKick1,GFX_Sprite_Sentry_JumpKick1End
	dl $D19327,$D1A027,GFX_Sprite_Sentry_StandBlock1,GFX_Sprite_Sentry_StandBlock1End
	dl $D1A07F,$D1AD7F,GFX_Sprite_Sentry_FarPunch4,GFX_Sprite_Sentry_FarPunch4End
	dl $D1ADDA,$D1BB5A,GFX_Sprite_Ape_LowBlowHurt2,GFX_Sprite_Ape_LowBlowHurt2End
	dl $D1BBB5,$D1C935,GFX_Sprite_Ape_LowBlowHurt3,GFX_Sprite_Ape_LowBlowHurt3End
	dl $D1C990,$D1D710,GFX_Sprite_Ape_Dead1,GFX_Sprite_Ape_Dead1End
	dl $D1D76B,$D1E4EB,GFX_Sprite_Ape_Dead3,GFX_Sprite_Ape_Dead3End
	dl $D1E546,$D1F2C6,GFX_Sprite_Ape_ClosePunch3,GFX_Sprite_Ape_ClosePunch3End
	dl $D20055,$D20CD5,GFX_Sprite_Crusher_StandIdle1,GFX_Sprite_Crusher_StandIdle1End
	dl $D20D2A,$D219AA,GFX_Sprite_Crusher_StandIdle3,GFX_Sprite_Crusher_StandIdle3End
	dl $D219FF,$D2267F,GFX_Sprite_Crusher_Ducking1,GFX_Sprite_Crusher_Ducking1End
	dl $D226D4,$D23354,GFX_Sprite_Crusher_Ducking2,GFX_Sprite_Crusher_Ducking2End
	dl $D233A9,$D24029,GFX_Sprite_Crusher_Jump1,GFX_Sprite_Crusher_Jump1End
	dl $D2407E,$D24CFE,GFX_Sprite_Crusher_Dead1,GFX_Sprite_Crusher_Dead1End
	dl $D24D56,$D25A56,GFX_Sprite_Sentry_Walk3,GFX_Sprite_Sentry_Walk3End
	dl $D25AAE,$D267AE,GFX_Sprite_Sentry_Walk5,GFX_Sprite_Sentry_Walk5End
	dl $D26806,$D27506,GFX_Sprite_Sentry_Walk6,GFX_Sprite_Sentry_Walk6End
	dl $D2755E,$D2825E,GFX_Sprite_Sentry_Walk7,GFX_Sprite_Sentry_Walk7End
	dl $D282B6,$D28FB6,GFX_Sprite_Sentry_Walk9,GFX_Sprite_Sentry_Walk9End
	dl $D2900E,$D29D0E,GFX_Sprite_Sentry_DoubleKick4,GFX_Sprite_Sentry_DoubleKick4End
	dl $D29D66,$D2AA66,GFX_Sprite_Sentry_DoubleKick11,GFX_Sprite_Sentry_DoubleKick11End
	dl $D2AABE,$D2B7BE,GFX_Sprite_Ape_FarPunch5,GFX_Sprite_Ape_FarPunch5End
	dl $D2B816,$D2C516,GFX_Sprite_Ape_Jump2,GFX_Sprite_Ape_Jump2End
	dl $D2C56E,$D2D26E,GFX_Sprite_Ape_Dead4,GFX_Sprite_Ape_Dead4End
	dl $D2D2C6,$D2DFC6,GFX_Sprite_Supervisor_LungeAttack6,GFX_Sprite_Supervisor_LungeAttack6End
	dl $D30055,$D30CD5,GFX_Sprite_Crusher_Walk1,GFX_Sprite_Crusher_Walk1End
	dl $D30D2A,$D319AA,GFX_Sprite_Crusher_Walk10,GFX_Sprite_Crusher_Walk10End
	dl $D319FF,$D3267F,GFX_Sprite_Crusher_Walk11,GFX_Sprite_Crusher_Walk11End
	dl $D326D4,$D33354,GFX_Sprite_Sentry_StandIdle1,GFX_Sprite_Sentry_StandIdle1End
	dl $D333A9,$D34029,GFX_Sprite_Sentry_StandIdle2,GFX_Sprite_Sentry_StandIdle2End
	dl $D3407E,$D34CFE,GFX_Sprite_Sentry_StandIdle3,GFX_Sprite_Sentry_StandIdle3End
	dl $D34D53,$D359D3,GFX_Sprite_Sentry_StandIdle4,GFX_Sprite_Sentry_StandIdle4End
	dl $D35A28,$D366A8,GFX_Sprite_Sentry_CloseKick3,GFX_Sprite_Sentry_CloseKick3End
	dl $D366FD,$D3737D,GFX_Sprite_Sentry_CloseKick4,GFX_Sprite_Sentry_CloseKick4End
	dl $D373D2,$D38052,GFX_Sprite_Sentry_LowBlowHurt1,GFX_Sprite_Sentry_LowBlowHurt1End
	dl $D380A7,$D38D27,GFX_Sprite_Sentry_LowBlowHurt2,GFX_Sprite_Sentry_LowBlowHurt2End
	dl $D38D7C,$D399FC,GFX_Sprite_Sentry_StandBlock2,GFX_Sprite_Sentry_StandBlock2End
	dl $D39A51,$D3A6D1,GFX_Sprite_Sentry_Dead2,GFX_Sprite_Sentry_Dead2End
	dl $D3A726,$D3B3A6,GFX_Sprite_Sentry_DuckHurt3,GFX_Sprite_Sentry_DuckHurt3End
	dl $D3B3FB,$D3C07B,GFX_Sprite_Sentry_Ducking1,GFX_Sprite_Sentry_Ducking1End
	dl $D3C0D0,$D3CD50,GFX_Sprite_Sentry_Walk1,GFX_Sprite_Sentry_Walk1End
	dl $D3CDA5,$D3DA25,GFX_Sprite_Sentry_Walk4,GFX_Sprite_Sentry_Walk4End
	dl $D3DA7A,$D3E6FA,GFX_Sprite_Ape_FarPunch2,GFX_Sprite_Ape_FarPunch2End
	dl $D3E74F,$D3F3CF,GFX_Sprite_Ape_OverheadPunch3,GFX_Sprite_Ape_OverheadPunch3End
	dl $D40034,$D40734,GFX_Sprite_Cyborg_StandIdle1,GFX_Sprite_Cyborg_StandIdle1End
	dl $D40786,$D41386,GFX_Sprite_Crusher_StandIdle2,GFX_Sprite_Crusher_StandIdle2End
	dl $D413D8,$D41FD8,GFX_Sprite_Crusher_DuckBlock2,GFX_Sprite_Crusher_DuckBlock2End
	dl $D4202A,$D42C2A,GFX_Sprite_Crusher_DuckHurt2,GFX_Sprite_Crusher_DuckHurt2End
	dl $D42C7C,$D4387C,GFX_Sprite_Crusher_LowBlowHurt1,GFX_Sprite_Crusher_LowBlowHurt1End
	dl $D438CE,$D444CE,GFX_Sprite_Crusher_Walk8,GFX_Sprite_Crusher_Walk8End
	dl $D44520,$D45120,GFX_Sprite_Crusher_Walk9,GFX_Sprite_Crusher_Walk9End
	dl $D45172,$D45D72,GFX_Sprite_Sentry_CloseKick5,GFX_Sprite_Sentry_CloseKick5End
	dl $D45DC4,$D469C4,GFX_Sprite_Sentry_LowBlowHurt3,GFX_Sprite_Sentry_LowBlowHurt3End
	dl $D46A16,$D47616,GFX_Sprite_Sentry_FarPunch1,GFX_Sprite_Sentry_FarPunch1End
	dl $D47668,$D48268,GFX_Sprite_Sentry_FarPunch2,GFX_Sprite_Sentry_FarPunch2End
	dl $D482BA,$D48EBA,GFX_Sprite_Sentry_Ducking5,GFX_Sprite_Sentry_Ducking5End
	dl $D48F0C,$D49B0C,GFX_Sprite_Sentry_DuckKick1,GFX_Sprite_Sentry_DuckKick1End
	dl $D49B5E,$D4A75E,GFX_Sprite_Sentry_DuckHurt2,GFX_Sprite_Sentry_DuckHurt2End
	dl $D4A7B0,$D4B3B0,GFX_Sprite_Sentry_Ducking4,GFX_Sprite_Sentry_Ducking4End
	dl $D4C064,$D4CCE4,GFX_Sprite_Ape_OverheadPunch4,GFX_Sprite_Ape_OverheadPunch4End
	dl $D4CD39,$D4D9B9,GFX_Sprite_Ape_OverheadPunch12,GFX_Sprite_Ape_OverheadPunch12End
	dl $D4E6C2,$D4F342,GFX_Sprite_Loader_FarKick3,GFX_Sprite_Loader_FarKick3End
	dl $D5004F,$D50BCF,GFX_Sprite_Crusher_Jump5,GFX_Sprite_Crusher_Jump5End
	dl $D50C21,$D51821,GFX_Sprite_Sentry_Ducking3,GFX_Sprite_Sentry_Ducking3End
	dl $D51873,$D52473,GFX_Sprite_Sentry_Walk10,GFX_Sprite_Sentry_Walk10End
	dl $D524C5,$D530C5,GFX_Sprite_Sentry_DoubleKick1,GFX_Sprite_Sentry_DoubleKick1End
	dl $D53117,$D53D17,GFX_Sprite_Sentry_HighBlowHurt1,GFX_Sprite_Sentry_HighBlowHurt1End
	dl $D53D69,$D54969,GFX_Sprite_Ape_FarPunch3,GFX_Sprite_Ape_FarPunch3End
	dl $D549BB,$D555BB,GFX_Sprite_Ape_OverheadPunch6,GFX_Sprite_Ape_OverheadPunch6End
	dl $D5560D,$D5620D,GFX_Sprite_Loader_DuckPunch5,GFX_Sprite_Loader_DuckPunch5End
	dl $D5625F,$D56E5F,GFX_Sprite_Loader_FarKick2,GFX_Sprite_Loader_FarKick2End
	dl $D57A9A,$D5869A,GFX_Sprite_Supervisor_LungeAttack7,GFX_Sprite_Supervisor_LungeAttack7End
	dl $D586EC,$D592EC,GFX_Sprite_Supervisor_LungeAttack8,GFX_Sprite_Supervisor_LungeAttack8End
	dl $D6094D,$D6144D,GFX_Sprite_Sentry_FarKick3,GFX_Sprite_Sentry_FarKick3End
	dl $D61499,$D61F99,GFX_Sprite_Sentry_LowBlowHurt4,GFX_Sprite_Sentry_LowBlowHurt4End
	dl $D61FE8,$D62B68,GFX_Sprite_Sentry_LowBlowHurt5,GFX_Sprite_Sentry_LowBlowHurt5End
	dl $D62BB7,$D63737,GFX_Sprite_Sentry_FarPunch3,GFX_Sprite_Sentry_FarPunch3End
	dl $D63786,$D64306,GFX_Sprite_Sentry_DuckKick6,GFX_Sprite_Sentry_DuckKick6End
	dl $D64355,$D64ED5,GFX_Sprite_Sentry_DuckHurt1,GFX_Sprite_Sentry_DuckHurt1End
	dl $D64F24,$D65AA4,GFX_Sprite_Sentry_Ducking2,GFX_Sprite_Sentry_Ducking2End
	dl $D65AF3,$D66673,GFX_Sprite_Sentry_DoubleKick10,GFX_Sprite_Sentry_DoubleKick10End
	dl $D67276,$D67DF6,GFX_Sprite_Ape_StandBlock3,GFX_Sprite_Ape_StandBlock3End
	dl $D67E45,$D689C5,GFX_Sprite_Ape_StandBlock4,GFX_Sprite_Ape_StandBlock4End
	dl $D68A14,$D69594,GFX_Sprite_Ape_StandBlock5,GFX_Sprite_Ape_StandBlock5End
	dl $D695E3,$D6A163,GFX_Sprite_Ape_OverheadPunch5,GFX_Sprite_Ape_OverheadPunch5End
	dl $D6A1B2,$D6AD32,GFX_Sprite_Ape_OverheadPunch7,GFX_Sprite_Ape_OverheadPunch7End
	dl $D6AD81,$D6B901,GFX_Sprite_Ape_OverheadPunch10,GFX_Sprite_Ape_OverheadPunch10End
	dl $D6B950,$D6C4D0,GFX_Sprite_Loader_CloseKick4,GFX_Sprite_Loader_CloseKick4End
	dl $D6C51F,$D6D09F,GFX_Sprite_Loader_JumpKick5,GFX_Sprite_Loader_JumpKick5End
	dl $D6D0EE,$D6DC6E,GFX_Sprite_Loader_BladePunch3,GFX_Sprite_Loader_BladePunch3End
	dl $D6DCBD,$D6E83D,GFX_Sprite_Loader_BladePunch4,GFX_Sprite_Loader_BladePunch4End
	dl $D6E88C,$D6F40C,GFX_Sprite_Loader_FarKick1,GFX_Sprite_Loader_FarKick1End
	dl $D6F45B,$D6FFDB,GFX_Sprite_Loader_FarKick5,GFX_Sprite_Loader_FarKick5End
	dl $D70049,$D70AC9,GFX_Sprite_Crusher_DuckBlock3,GFX_Sprite_Crusher_DuckBlock3End
	dl $D70B12,$D71592,GFX_Sprite_Crusher_DuckHurt3,GFX_Sprite_Crusher_DuckHurt3End
	dl $D715D5,$D71F55,GFX_Sprite_Crusher_DuckHurt4,GFX_Sprite_Crusher_DuckHurt4End
	dl $D71F9E,$D72A1E,GFX_Sprite_Sentry_FarKick1,GFX_Sprite_Sentry_FarKick1End
	dl $D72A6A,$D7356A,GFX_Sprite_Sentry_Dead1,GFX_Sprite_Sentry_Dead1End
	dl $D735B3,$D74033,GFX_Sprite_Sentry_Dead3,GFX_Sprite_Sentry_Dead3End
	dl $D7407F,$D74B7F,GFX_Sprite_Sentry_DuckBlock1,GFX_Sprite_Sentry_DuckBlock1End
	dl $D74BCB,$D756CB,GFX_Sprite_Sentry_DuckBlock2,GFX_Sprite_Sentry_DuckBlock2End
	dl $D75717,$D76217,GFX_Sprite_Sentry_DoubleKick2,GFX_Sprite_Sentry_DoubleKick2End
	dl $D76263,$D76D63,GFX_Sprite_Sentry_DoubleKick3,GFX_Sprite_Sentry_DoubleKick3End
	dl $D76DAF,$D778AF,GFX_Sprite_Ape_OverheadPunch8,GFX_Sprite_Ape_OverheadPunch8End
	dl $D778FB,$D783FB,GFX_Sprite_Ape_OverheadPunch9,GFX_Sprite_Ape_OverheadPunch9End
	dl $D78447,$D78F47,GFX_Sprite_Ape_JumpKick1,GFX_Sprite_Ape_JumpKick1End
	dl $D78F93,$D79A93,GFX_Sprite_Loader_FarPunch3,GFX_Sprite_Loader_FarPunch3End
	dl $D79ADF,$D7A5DF,GFX_Sprite_Loader_CloseKick5,GFX_Sprite_Loader_CloseKick5End
	dl $D7A62B,$D7B12B,GFX_Sprite_Loader_DuckPunch3,GFX_Sprite_Loader_DuckPunch3End
	dl $D7B177,$D7BC77,GFX_Sprite_Loader_DuckPunch4,GFX_Sprite_Loader_DuckPunch4End
	dl $D7BCC3,$D7C7C3,GFX_Sprite_Loader_JumpKick4,GFX_Sprite_Loader_JumpKick4End
	dl $D7C80F,$D7D30F,GFX_Sprite_Loader_BladePunch2,GFX_Sprite_Loader_BladePunch2End
	dl $D7D35B,$D7DE5B,GFX_Sprite_Loader_FarKick4,GFX_Sprite_Loader_FarKick4End
	dl $D7DEA7,$D7E9A7,GFX_Sprite_Supervisor_DuckKick8,GFX_Sprite_Supervisor_DuckKick8End
	dl $D7E9F3,$D7F4F3,GFX_Sprite_Supervisor_LungeAttack5,GFX_Sprite_Supervisor_LungeAttack5End
	dl $D80AFE,$D8157E,GFX_Sprite_Sentry_DuckKick5,GFX_Sprite_Sentry_DuckKick5End
	dl $D815C7,$D82047,GFX_Sprite_Sentry_DuckPunch4,GFX_Sprite_Sentry_DuckPunch4End
	dl $D82090,$D82B10,GFX_Sprite_Sentry_DoubleKick9,GFX_Sprite_Sentry_DoubleKick9End
	dl $D82B59,$D835D9,GFX_Sprite_Ape_JumpKick2,GFX_Sprite_Ape_JumpKick2End
	dl $D83622,$D840A2,GFX_Sprite_Ape_JumpKick4,GFX_Sprite_Ape_JumpKick4End
	dl $D840EB,$D84B6B,GFX_Sprite_Military_StandBlock1,GFX_Sprite_Military_StandBlock1End
	dl $D84BB4,$D85634,GFX_Sprite_Military_DuckKick5,GFX_Sprite_Military_DuckKick5End
	dl $D8567D,$D860FD,GFX_Sprite_Military_ClosePunch3,GFX_Sprite_Military_ClosePunch3End
	dl $D86146,$D86BC6,GFX_Sprite_Military_ClosePunch5,GFX_Sprite_Military_ClosePunch5End
	dl $D86C0F,$D8768F,GFX_Sprite_Military_LowBlowHurt1,GFX_Sprite_Military_LowBlowHurt1End
	dl $D876D8,$D88158,GFX_Sprite_Military_Dead1,GFX_Sprite_Military_Dead1End
	dl $D881A1,$D88C21,GFX_Sprite_Military_ClawStrike1,GFX_Sprite_Military_ClawStrike1End
	dl $D88C6A,$D896EA,GFX_Sprite_Loader_FarPunch2,GFX_Sprite_Loader_FarPunch2End
	dl $D89733,$D8A1B3,GFX_Sprite_Loader_FarPunch4,GFX_Sprite_Loader_FarPunch4End
	dl $D8A1FC,$D8AC7C,GFX_Sprite_Loader_CloseKick2,GFX_Sprite_Loader_CloseKick2End
	dl $D8ACC5,$D8B745,GFX_Sprite_Loader_CloseKick3,GFX_Sprite_Loader_CloseKick3End
	dl $D8B78E,$D8C20E,GFX_Sprite_Loader_BladePunch5,GFX_Sprite_Loader_BladePunch5End
	dl $D8C257,$D8CCD7,GFX_Sprite_Loader_HighBlowHurt4,GFX_Sprite_Loader_HighBlowHurt4End
	dl $D8CD20,$D8D7A0,GFX_Sprite_Loader_Dead3,GFX_Sprite_Loader_Dead3End
	dl $D8D7E9,$D8E269,GFX_Sprite_Loader_Dead4,GFX_Sprite_Loader_Dead4End
	dl $D8E2B2,$D8ED32,GFX_Sprite_Supervisor_DuckKick7,GFX_Sprite_Supervisor_DuckKick7End
	dl $D9003A,$D9083A,GFX_Sprite_Cyborg_ClosePunch3,GFX_Sprite_Cyborg_ClosePunch3End
	dl $D90880,$D91280,GFX_Sprite_Sentry_DuckPunch1,GFX_Sprite_Sentry_DuckPunch1End
	dl $D912C6,$D91CC6,GFX_Sprite_Military_DuckKick3,GFX_Sprite_Military_DuckKick3End
	dl $D91D0C,$D9270C,GFX_Sprite_Military_FarKick1,GFX_Sprite_Military_FarKick1End
	dl $D92752,$D93152,GFX_Sprite_Military_FarKick11,GFX_Sprite_Military_FarKick11End
	dl $D93198,$D93B98,GFX_Sprite_Military_CloseKick1,GFX_Sprite_Military_CloseKick1End
	dl $D93BDE,$D945DE,GFX_Sprite_Military_CloseKick4,GFX_Sprite_Military_CloseKick4End
	dl $D94624,$D95024,GFX_Sprite_Military_ClosePunch2,GFX_Sprite_Military_ClosePunch2End
	dl $D9506A,$D95A6A,GFX_Sprite_Military_ClosePunch4,GFX_Sprite_Military_ClosePunch4End
	dl $D95AB0,$D964B0,GFX_Sprite_Military_LowBlowHurt2,GFX_Sprite_Military_LowBlowHurt2End
	dl $D964F6,$D96EF6,GFX_Sprite_Military_LowBlowHurt3,GFX_Sprite_Military_LowBlowHurt3End
	dl $D96F3C,$D9793C,GFX_Sprite_Military_LowBlowHurt5,GFX_Sprite_Military_LowBlowHurt5End
	dl $D97982,$D98382,GFX_Sprite_Military_ClawStrike2,GFX_Sprite_Military_ClawStrike2End
	dl $D983C8,$D98DC8,GFX_Sprite_Loader_FarPunch5,GFX_Sprite_Loader_FarPunch5End
	dl $D98E0E,$D9980E,GFX_Sprite_Loader_DuckHurt4,GFX_Sprite_Loader_DuckHurt4End
	dl $D99854,$D9A254,GFX_Sprite_Loader_StandBlock3,GFX_Sprite_Loader_StandBlock3End
	dl $D9A29A,$D9AC9A,GFX_Sprite_Loader_StandBlock4,GFX_Sprite_Loader_StandBlock4End
	dl $D9ACE0,$D9B6E0,GFX_Sprite_Loader_HighBlowHurt5,GFX_Sprite_Loader_HighBlowHurt5End
	dl $D9C1C0,$D9CBC0,GFX_Sprite_Supervisor_LungeAttack4,GFX_Sprite_Supervisor_LungeAttack4End
	dl $DA0043,$DA09C3,GFX_Sprite_Sentry_DuckKick2,GFX_Sprite_Sentry_DuckKick2End
	dl $DA0A06,$DA1386,GFX_Sprite_Sentry_DuckKick4,GFX_Sprite_Sentry_DuckKick4End
	dl $DA13C9,$DA1D49,GFX_Sprite_Sentry_DuckPunch2,GFX_Sprite_Sentry_DuckPunch2End
	dl $DA1D8C,$DA270C,GFX_Sprite_Sentry_DuckPunch3,GFX_Sprite_Sentry_DuckPunch3End
	dl $DA274F,$DA30CF,GFX_Sprite_Sentry_DoubleKick8,GFX_Sprite_Sentry_DoubleKick8End
	dl $DA4529,$DA4EA9,GFX_Sprite_Military_StandIdle3,GFX_Sprite_Military_StandIdle3End
	dl $DA4EEC,$DA586C,GFX_Sprite_Military_StandBlock2,GFX_Sprite_Military_StandBlock2End
	dl $DA58AF,$DA622F,GFX_Sprite_Military_FarPunch5,GFX_Sprite_Military_FarPunch5End
	dl $DA6272,$DA6BF2,GFX_Sprite_Military_Ducking1,GFX_Sprite_Military_Ducking1End
	dl $DA6C35,$DA75B5,GFX_Sprite_Military_CloseKick2,GFX_Sprite_Military_CloseKick2End
	dl $DA75F8,$DA7F78,GFX_Sprite_Military_CloseKick5,GFX_Sprite_Military_CloseKick5End
	dl $DA7FBB,$DA893B,GFX_Sprite_Military_ClosePunch1,GFX_Sprite_Military_ClosePunch1End
	dl $DA897E,$DA92FE,GFX_Sprite_Military_LowBlowHurt4,GFX_Sprite_Military_LowBlowHurt4End
	dl $DA9341,$DA9CC1,GFX_Sprite_Military_Dead2,GFX_Sprite_Military_Dead2End
	dl $DA9D04,$DAA684,GFX_Sprite_Military_HighBlowHurt3,GFX_Sprite_Military_HighBlowHurt3End
	dl $DAA6C7,$DAB047,GFX_Sprite_Military_HighBlowHurt4,GFX_Sprite_Military_HighBlowHurt4End
	dl $DAB08A,$DABA0A,GFX_Sprite_Military_Somersault1,GFX_Sprite_Military_Somersault1End
	dl $DABA4D,$DAC3CD,GFX_Sprite_Military_ClawStrike5,GFX_Sprite_Military_ClawStrike5End
	dl $DAC410,$DACD90,GFX_Sprite_Military_ClawStrike6,GFX_Sprite_Military_ClawStrike6End
	dl $DACDD3,$DAD753,GFX_Sprite_Loader_FarPunch1,GFX_Sprite_Loader_FarPunch1End
	dl $DAD796,$DAE116,GFX_Sprite_Loader_DuckPunch2,GFX_Sprite_Loader_DuckPunch2End
	dl $DAE159,$DAEAD9,GFX_Sprite_Loader_DuckHurt3,GFX_Sprite_Loader_DuckHurt3End
	dl $DB0040,$DB0940,GFX_Sprite_Crusher_DuckHurt5,GFX_Sprite_Crusher_DuckHurt5End
	dl $DB0980,$DB1280,GFX_Sprite_Ape_JumpKick3,GFX_Sprite_Ape_JumpKick3End
	dl $DB12C0,$DB1BC0,GFX_Sprite_Military_StandIdle1,GFX_Sprite_Military_StandIdle1End
	dl $DB1C00,$DB2500,GFX_Sprite_Military_StandIdle2,GFX_Sprite_Military_StandIdle2End
	dl $DB2540,$DB2E40,GFX_Sprite_Military_FarPunch1,GFX_Sprite_Military_FarPunch1End
	dl $DB2E80,$DB3780,GFX_Sprite_Military_FarPunch4,GFX_Sprite_Military_FarPunch4End
	dl $DB37C0,$DB40C0,GFX_Sprite_Military_DuckKick2,GFX_Sprite_Military_DuckKick2End
	dl $DB4100,$DB4A00,GFX_Sprite_Military_DuckKick4,GFX_Sprite_Military_DuckKick4End
	dl $DB4A40,$DB5340,GFX_Sprite_Military_FarKick6,GFX_Sprite_Military_FarKick6End
	dl $DB5380,$DB5C80,GFX_Sprite_Military_Walk1,GFX_Sprite_Military_Walk1End
	dl $DB5CC0,$DB65C0,GFX_Sprite_Military_Walk2,GFX_Sprite_Military_Walk2End
	dl $DB6600,$DB6F00,GFX_Sprite_Military_Walk7,GFX_Sprite_Military_Walk7End
	dl $DB6F40,$DB7840,GFX_Sprite_Military_Walk8,GFX_Sprite_Military_Walk8End
	dl $DB7880,$DB8180,GFX_Sprite_Military_HighBlowHurt1,GFX_Sprite_Military_HighBlowHurt1End
	dl $DB81C0,$DB8AC0,GFX_Sprite_Military_HighBlowHurt5,GFX_Sprite_Military_HighBlowHurt5End
	dl $DB8B00,$DB9400,GFX_Sprite_Military_Somersault2,GFX_Sprite_Military_Somersault2End
	dl $DB9440,$DB9D40,GFX_Sprite_Military_ClawStrike3,GFX_Sprite_Military_ClawStrike3End
	dl $DB9D80,$DBA680,GFX_Sprite_Military_ClawStrike4,GFX_Sprite_Military_ClawStrike4End
	dl $DBA6C0,$DBAFC0,GFX_Sprite_Loader_StandIdle2,GFX_Sprite_Loader_StandIdle2End
	dl $DBB000,$DBB900,GFX_Sprite_Loader_CloseKick1,GFX_Sprite_Loader_CloseKick1End
	dl $DBB943,$DBC2C3,GFX_Sprite_Loader_DuckHurt5,GFX_Sprite_Loader_DuckHurt5End
	dl $DBC306,$DBCC86,GFX_Sprite_Loader_StandBlock5,GFX_Sprite_Loader_StandBlock5End
	dl $DBCCC9,$DBD649,GFX_Sprite_Loader_HighBlowHurt2,GFX_Sprite_Loader_HighBlowHurt2End
	dl $DBD68C,$DBE00C,GFX_Sprite_Loader_Walk8,GFX_Sprite_Loader_Walk8End
	dl $DBE04F,$DBE9CF,GFX_Sprite_Supervisor_JumpKick5,GFX_Sprite_Supervisor_JumpKick5End
	dl $DC003D,$DC08BD,GFX_Sprite_Cyborg_FarPunch5,GFX_Sprite_Cyborg_FarPunch5End
	dl $DC08FA,$DC117A,GFX_Sprite_Sentry_FarKick2,GFX_Sprite_Sentry_FarKick2End
	dl $DC11B7,$DC1A37,GFX_Sprite_Sentry_DuckKick3,GFX_Sprite_Sentry_DuckKick3End
	dl $DC1A74,$DC22F4,GFX_Sprite_Military_Ducking2,GFX_Sprite_Military_Ducking2End
	dl $DC2331,$DC2BB1,GFX_Sprite_Military_DuckBlock2,GFX_Sprite_Military_DuckBlock2End
	dl $DC2BEE,$DC346E,GFX_Sprite_Military_DuckHurt3,GFX_Sprite_Military_DuckHurt3End
	dl $DC34AB,$DC3D2B,GFX_Sprite_Military_DuckHurt4,GFX_Sprite_Military_DuckHurt4End
	dl $DC3D68,$DC45E8,GFX_Sprite_Military_DuckHurt5,GFX_Sprite_Military_DuckHurt5End
	dl $DC4628,$DC4F28,GFX_Sprite_Loader_Ducking2,GFX_Sprite_Loader_Ducking2End
	dl $DC4F68,$DC5868,GFX_Sprite_Loader_Ducking4,GFX_Sprite_Loader_Ducking4End
	dl $DC58A8,$DC61A8,GFX_Sprite_Loader_Ducking5,GFX_Sprite_Loader_Ducking5End
	dl $DC61E8,$DC6AE8,GFX_Sprite_Loader_DuckKick5,GFX_Sprite_Loader_DuckKick5End
	dl $DC6B28,$DC7428,GFX_Sprite_Loader_DuckPunch1,GFX_Sprite_Loader_DuckPunch1End
	dl $DC7468,$DC7D68,GFX_Sprite_Loader_StandBlock2,GFX_Sprite_Loader_StandBlock2End
	dl $DC7DA8,$DC86A8,GFX_Sprite_Loader_JumpKick3,GFX_Sprite_Loader_JumpKick3End
	dl $DC86E8,$DC8FE8,GFX_Sprite_Loader_BladePunch1,GFX_Sprite_Loader_BladePunch1End
	dl $DC9028,$DC9928,GFX_Sprite_Loader_LowBlowHurt3,GFX_Sprite_Loader_LowBlowHurt3End
	dl $DC9968,$DCA268,GFX_Sprite_Loader_LowBlowHurt4,GFX_Sprite_Loader_LowBlowHurt4End
	dl $DCA2A8,$DCABA8,GFX_Sprite_Loader_LowBlowHurt5,GFX_Sprite_Loader_LowBlowHurt5End
	dl $DCABE8,$DCB4E8,GFX_Sprite_Loader_HighBlowHurt1,GFX_Sprite_Loader_HighBlowHurt1End
	dl $DCB528,$DCBE28,GFX_Sprite_Loader_HighBlowHurt3,GFX_Sprite_Loader_HighBlowHurt3End
	dl $DCBE68,$DCC768,GFX_Sprite_Loader_Dead1,GFX_Sprite_Loader_Dead1End
	dl $DCC7A8,$DCD0A8,GFX_Sprite_Loader_Dead5,GFX_Sprite_Loader_Dead5End
	dl $DCD0E8,$DCD9E8,GFX_Sprite_Loader_Walk1,GFX_Sprite_Loader_Walk1End
	dl $DCDA28,$DCE328,GFX_Sprite_Loader_Walk2,GFX_Sprite_Loader_Walk2End
	dl $DCE368,$DCEC68,GFX_Sprite_Loader_Walk9,GFX_Sprite_Loader_Walk9End
	dl $DCECA8,$DCF5A8,GFX_Sprite_Loader_Walk10,GFX_Sprite_Loader_Walk10End
	dl $DCF5E8,$DCFEE8,GFX_Sprite_Supervisor_JumpKick6,GFX_Sprite_Supervisor_JumpKick6End
	dl $DD003D,$DD08BD,GFX_Sprite_Military_CloseKick3,GFX_Sprite_Military_CloseKick3End
	dl $DD08FA,$DD117A,GFX_Sprite_Military_JumpKick2,GFX_Sprite_Military_JumpKick2End
	dl $DD11B7,$DD1A37,GFX_Sprite_Military_Walk3,GFX_Sprite_Military_Walk3End
	dl $DD1A74,$DD22F4,GFX_Sprite_Military_Walk4,GFX_Sprite_Military_Walk4End
	dl $DD2331,$DD2BB1,GFX_Sprite_Military_Walk5,GFX_Sprite_Military_Walk5End
	dl $DD2BEE,$DD346E,GFX_Sprite_Military_Walk6,GFX_Sprite_Military_Walk6End
	dl $DD34AB,$DD3D2B,GFX_Sprite_Military_HighBlowHurt2,GFX_Sprite_Military_HighBlowHurt2End
	dl $DD3D68,$DD45E8,GFX_Sprite_Military_DuckPunch5,GFX_Sprite_Military_DuckPunch5End
	dl $DD4625,$DD4EA5,GFX_Sprite_Loader_StandIdle1,GFX_Sprite_Loader_StandIdle1End
	dl $DD4EE2,$DD5762,GFX_Sprite_Loader_StandIdle3,GFX_Sprite_Loader_StandIdle3End
	dl $DD579F,$DD601F,GFX_Sprite_Loader_Ducking1,GFX_Sprite_Loader_Ducking1End
	dl $DD605C,$DD68DC,GFX_Sprite_Loader_Ducking3,GFX_Sprite_Loader_Ducking3End
	dl $DD6919,$DD7199,GFX_Sprite_Loader_Ducking6,GFX_Sprite_Loader_Ducking6End
	dl $DD71D6,$DD7A56,GFX_Sprite_Loader_DuckBlock2,GFX_Sprite_Loader_DuckBlock2End
	dl $DD7A93,$DD8313,GFX_Sprite_Loader_DuckBlock4,GFX_Sprite_Loader_DuckBlock4End
	dl $DD8350,$DD8BD0,GFX_Sprite_Loader_DuckHurt2,GFX_Sprite_Loader_DuckHurt2End
	dl $DD8C0D,$DD948D,GFX_Sprite_Loader_StandBlock1,GFX_Sprite_Loader_StandBlock1End
	dl $DD94CA,$DD9D4A,GFX_Sprite_Loader_Jump1,GFX_Sprite_Loader_Jump1End
	dl $DD9D87,$DDA607,GFX_Sprite_Loader_Jump2,GFX_Sprite_Loader_Jump2End
	dl $DDA644,$DDAEC4,GFX_Sprite_Loader_JumpKick2,GFX_Sprite_Loader_JumpKick2End
	dl $DDAF01,$DDB781,GFX_Sprite_Loader_LowBlowHurt1,GFX_Sprite_Loader_LowBlowHurt1End
	dl $DDB7BE,$DDC03E,GFX_Sprite_Loader_LowBlowHurt2,GFX_Sprite_Loader_LowBlowHurt2End
	dl $DDC07B,$DDC8FB,GFX_Sprite_Loader_Dead2,GFX_Sprite_Loader_Dead2End
	dl $DDC938,$DDD1B8,GFX_Sprite_Loader_Walk3,GFX_Sprite_Loader_Walk3End
	dl $DDD1F5,$DDDA75,GFX_Sprite_Loader_Walk4,GFX_Sprite_Loader_Walk4End
	dl $DDDAB2,$DDE332,GFX_Sprite_Loader_Walk5,GFX_Sprite_Loader_Walk5End
	dl $DDE36F,$DDEBEF,GFX_Sprite_Loader_Walk6,GFX_Sprite_Loader_Walk6End
	dl $DDEC2C,$DDF4AC,GFX_Sprite_Loader_Walk7,GFX_Sprite_Loader_Walk7End
	dl $DDF4E9,$DDFD69,GFX_Sprite_Supervisor_DuckKick6,GFX_Sprite_Supervisor_DuckKick6End
	dl $DE003A,$DE083A,GFX_Sprite_Cyborg_Dead6,GFX_Sprite_Cyborg_Dead6End
	dl $DE0874,$DE1074,GFX_Sprite_Cyborg_ShoulderDash12,GFX_Sprite_Cyborg_ShoulderDash12End
	dl $DE10AE,$DE18AE,GFX_Sprite_Military_FarPunch2,GFX_Sprite_Military_FarPunch2End
	dl $DE18E8,$DE20E8,GFX_Sprite_Military_FarPunch3,GFX_Sprite_Military_FarPunch3End
	dl $DE2122,$DE2922,GFX_Sprite_Military_Ducking3,GFX_Sprite_Military_Ducking3End
	dl $DE295C,$DE315C,GFX_Sprite_Military_DuckHurt1,GFX_Sprite_Military_DuckHurt1End
	dl $DE3196,$DE3996,GFX_Sprite_Military_DuckHurt2,GFX_Sprite_Military_DuckHurt2End
	dl $DE39D0,$DE41D0,GFX_Sprite_Military_FarKick7,GFX_Sprite_Military_FarKick7End
	dl $DE420A,$DE4A0A,GFX_Sprite_Military_Jump1,GFX_Sprite_Military_Jump1End
	dl $DE4A44,$DE5244,GFX_Sprite_Military_HighBlowHurt6,GFX_Sprite_Military_HighBlowHurt6End
	dl $DE527E,$DE5A7E,GFX_Sprite_Military_DuckPunch2,GFX_Sprite_Military_DuckPunch2End
	dl $DE5AB8,$DE62B8,GFX_Sprite_Military_DuckPunch3,GFX_Sprite_Military_DuckPunch3End
	dl $DE62F2,$DE6AF2,GFX_Sprite_Military_DuckPunch4,GFX_Sprite_Military_DuckPunch4End
	dl $DE6B2C,$DE732C,GFX_Sprite_Loader_DuckBlock3,GFX_Sprite_Loader_DuckBlock3End
	dl $DE7366,$DE7B66,GFX_Sprite_Loader_DuckKick1,GFX_Sprite_Loader_DuckKick1End
	dl $DE7BA0,$DE83A0,GFX_Sprite_Loader_DuckKick3,GFX_Sprite_Loader_DuckKick3End
	dl $DE83DA,$DE8BDA,GFX_Sprite_Loader_DuckKick4,GFX_Sprite_Loader_DuckKick4End
	dl $DE8C14,$DE9414,GFX_Sprite_Loader_Jump3,GFX_Sprite_Loader_Jump3End
	dl $DE944E,$DE9C4E,GFX_Sprite_Supervisor_CloseKick4,GFX_Sprite_Supervisor_CloseKick4End
	dl $DE9C88,$DEA488,GFX_Sprite_Supervisor_CloseKick5,GFX_Sprite_Supervisor_CloseKick5End
	dl $DEA4C2,$DEACC2,GFX_Sprite_Supervisor_JumpKick4,GFX_Sprite_Supervisor_JumpKick4End
	dl $DEACFF,$DEB57F,GFX_Sprite_Supervisor_FarPunch3,GFX_Sprite_Supervisor_FarPunch3End
	dl $DEB5BC,$DEBE3C,GFX_Sprite_Supervisor_FarPunch4,GFX_Sprite_Supervisor_FarPunch4End
	dl $DF0037,$DF07B7,GFX_Sprite_Cyborg_ClosePunch1,GFX_Sprite_Cyborg_ClosePunch1End
	dl $DF07EE,$DF0F6E,GFX_Sprite_Cyborg_ClosePunch2,GFX_Sprite_Cyborg_ClosePunch2End
	dl $DF0FA5,$DF1725,GFX_Sprite_Cyborg_CloseKick5,GFX_Sprite_Cyborg_CloseKick5End
	dl $DF175C,$DF1EDC,GFX_Sprite_Cyborg_DuckPunch4,GFX_Sprite_Cyborg_DuckPunch4End
	dl $DF1F13,$DF2693,GFX_Sprite_Cyborg_DuckPunch5,GFX_Sprite_Cyborg_DuckPunch5End
	dl $DF26CA,$DF2E4A,GFX_Sprite_Cyborg_DuckKick5,GFX_Sprite_Cyborg_DuckKick5End
	dl $DF2E81,$DF3601,GFX_Sprite_Cyborg_FarPunch4,GFX_Sprite_Cyborg_FarPunch4End
	dl $DF3638,$DF3DB8,GFX_Sprite_Cyborg_JumpKick2,GFX_Sprite_Cyborg_JumpKick2End
	dl $DF3DEF,$DF456F,GFX_Sprite_Cyborg_Headbutt2,GFX_Sprite_Cyborg_Headbutt2End
	dl $DF45A6,$DF4D26,GFX_Sprite_Cyborg_Headbutt3,GFX_Sprite_Cyborg_Headbutt3End
	dl $DF4D5D,$DF54DD,GFX_Sprite_Cyborg_Headbutt4,GFX_Sprite_Cyborg_Headbutt4End
	dl $DF5514,$DF5C94,GFX_Sprite_Cyborg_FarKick5,GFX_Sprite_Cyborg_FarKick5End
	dl $DF5CCB,$DF644B,GFX_Sprite_Cyborg_Dead4,GFX_Sprite_Cyborg_Dead4End
	dl $DF6482,$DF6C02,GFX_Sprite_Cyborg_Dead7,GFX_Sprite_Cyborg_Dead7End
	dl $DF6C39,$DF73B9,GFX_Sprite_Cyborg_ShoulderDash3,GFX_Sprite_Cyborg_ShoulderDash3End
	dl $DF73F0,$DF7B70,GFX_Sprite_Cyborg_ShoulderDash4,GFX_Sprite_Cyborg_ShoulderDash4End
	dl $DF7BA7,$DF8327,GFX_Sprite_Cyborg_ShoulderDash9,GFX_Sprite_Cyborg_ShoulderDash9End
	dl $DF835E,$DF8ADE,GFX_Sprite_Cyborg_ShoulderDash10,GFX_Sprite_Cyborg_ShoulderDash10End
	dl $DF8B15,$DF9295,GFX_Sprite_Cyborg_ShoulderDash11,GFX_Sprite_Cyborg_ShoulderDash11End
	dl $DF92CC,$DF9A4C,GFX_Sprite_Military_Ducking4,GFX_Sprite_Military_Ducking4End
	dl $DF9A83,$DFA203,GFX_Sprite_Military_Ducking5,GFX_Sprite_Military_Ducking5End
	dl $DFA23A,$DFA9BA,GFX_Sprite_Military_DuckBlock1,GFX_Sprite_Military_DuckBlock1End
	dl $DFA9F1,$DFB171,GFX_Sprite_Military_DuckKick1,GFX_Sprite_Military_DuckKick1End
	dl $DFB1A8,$DFB928,GFX_Sprite_Military_FarKick2,GFX_Sprite_Military_FarKick2End
	dl $DFB95F,$DFC0DF,GFX_Sprite_Military_FarKick8,GFX_Sprite_Military_FarKick8End
	dl $DFC116,$DFC896,GFX_Sprite_Military_FarKick10,GFX_Sprite_Military_FarKick10End
	dl $DFC8CD,$DFD04D,GFX_Sprite_Military_Jump2,GFX_Sprite_Military_Jump2End
	dl $DFD084,$DFD804,GFX_Sprite_Military_Dead3,GFX_Sprite_Military_Dead3End
	dl $DFD83B,$DFDFBB,GFX_Sprite_Military_DuckPunch1,GFX_Sprite_Military_DuckPunch1End
	dl $DFDFF2,$DFE772,GFX_Sprite_Military_DuckPunch8,GFX_Sprite_Military_DuckPunch8End
	dl $E00034,$E00734,GFX_Sprite_Cyborg_StandIdle5,GFX_Sprite_Cyborg_StandIdle5End
	dl $E00768,$E00E68,GFX_Sprite_Cyborg_CloseKick4,GFX_Sprite_Cyborg_CloseKick4End
	dl $E00E9C,$E0159C,GFX_Sprite_Cyborg_DuckPunch3,GFX_Sprite_Cyborg_DuckPunch3End
	dl $E015D0,$E01CD0,GFX_Sprite_Cyborg_LowBlowHurt2,GFX_Sprite_Cyborg_LowBlowHurt2End
	dl $E01D04,$E02404,GFX_Sprite_Cyborg_Walk1,GFX_Sprite_Cyborg_Walk1End
	dl $E02438,$E02B38,GFX_Sprite_Cyborg_Walk7,GFX_Sprite_Cyborg_Walk7End
	dl $E02B6C,$E0326C,GFX_Sprite_Cyborg_Walk8,GFX_Sprite_Cyborg_Walk8End
	dl $E032A0,$E039A0,GFX_Sprite_Cyborg_Jump2,GFX_Sprite_Cyborg_Jump2End
	dl $E039D4,$E040D4,GFX_Sprite_Cyborg_Headbutt1,GFX_Sprite_Cyborg_Headbutt1End
	dl $E04108,$E04808,GFX_Sprite_Cyborg_FarKick4,GFX_Sprite_Cyborg_FarKick4End
	dl $E0483C,$E04F3C,GFX_Sprite_Cyborg_Dead3,GFX_Sprite_Cyborg_Dead3End
	dl $E04F70,$E05670,GFX_Sprite_Cyborg_Dead5,GFX_Sprite_Cyborg_Dead5End
	dl $E056A4,$E05DA4,GFX_Sprite_Cyborg_Dead9,GFX_Sprite_Cyborg_Dead9End
	dl $E05DD8,$E064D8,GFX_Sprite_Cyborg_ShoulderDash1,GFX_Sprite_Cyborg_ShoulderDash1End
	dl $E0650C,$E06C0C,GFX_Sprite_Cyborg_ShoulderDash2,GFX_Sprite_Cyborg_ShoulderDash2End
	dl $E06C40,$E07340,GFX_Sprite_Cyborg_ShoulderDash5,GFX_Sprite_Cyborg_ShoulderDash5End
	dl $E07374,$E07A74,GFX_Sprite_Cyborg_ShoulderDash6,GFX_Sprite_Cyborg_ShoulderDash6End
	dl $E07AA8,$E081A8,GFX_Sprite_Cyborg_ShoulderDash7,GFX_Sprite_Cyborg_ShoulderDash7End
	dl $E081DC,$E088DC,GFX_Sprite_Cyborg_ShoulderDash8,GFX_Sprite_Cyborg_ShoulderDash8End
	dl $E08910,$E09010,GFX_Sprite_Cyborg_ShoulderDash13,GFX_Sprite_Cyborg_ShoulderDash13End
	dl $E09044,$E09744,GFX_Sprite_Cyborg_ShoulderDash14,GFX_Sprite_Cyborg_ShoulderDash14End
	dl $E09778,$E09E78,GFX_Sprite_Military_JumpKick1,GFX_Sprite_Military_JumpKick1End
	dl $E09EAC,$E0A5AC,GFX_Sprite_Military_Somersault3,GFX_Sprite_Military_Somersault3End
	dl $E0A5E0,$E0ACE0,GFX_Sprite_Military_DuckPunch6,GFX_Sprite_Military_DuckPunch6End
	dl $E0AD17,$E0B497,GFX_Sprite_Loader_DuckBlock1,GFX_Sprite_Loader_DuckBlock1End
	dl $E0B4CE,$E0BC4E,GFX_Sprite_Loader_DuckKick2,GFX_Sprite_Loader_DuckKick2End
	dl $E0BC85,$E0C405,GFX_Sprite_Loader_DuckHurt1,GFX_Sprite_Loader_DuckHurt1End
	dl $E0C43C,$E0CBBC,GFX_Sprite_Loader_Jump4,GFX_Sprite_Loader_Jump4End
	dl $E0CBF3,$E0D373,GFX_Sprite_Loader_JumpKick1,GFX_Sprite_Loader_JumpKick1End
	dl $E0D3AA,$E0DB2A,GFX_Sprite_Loader_CurlUp1,GFX_Sprite_Loader_CurlUp1End
	dl $E0DB61,$E0E2E1,GFX_Sprite_Supervisor_DuckPunch3,GFX_Sprite_Supervisor_DuckPunch3End
	dl $E0E318,$E0EA98,GFX_Sprite_Supervisor_DuckPunch4,GFX_Sprite_Supervisor_DuckPunch4End
	dl $E0EACF,$E0F24F,GFX_Sprite_Supervisor_DuckPunch5,GFX_Sprite_Supervisor_DuckPunch5End
	dl $E0F286,$E0FA06,GFX_Sprite_Supervisor_LungeAttack3,GFX_Sprite_Supervisor_LungeAttack3End
	dl $E10031,$E106B1,GFX_Sprite_Cyborg_StandIdle3,GFX_Sprite_Cyborg_StandIdle3End
	dl $E106E2,$E10D62,GFX_Sprite_Cyborg_StandIdle4,GFX_Sprite_Cyborg_StandIdle4End
	dl $E10D93,$E11413,GFX_Sprite_Cyborg_StandBlock1,GFX_Sprite_Cyborg_StandBlock1End
	dl $E11444,$E11AC4,GFX_Sprite_Cyborg_StandBlock2,GFX_Sprite_Cyborg_StandBlock2End
	dl $E11AF5,$E12175,GFX_Sprite_Cyborg_Ducking1,GFX_Sprite_Cyborg_Ducking1End
	dl $E121A6,$E12826,GFX_Sprite_Cyborg_Ducking2,GFX_Sprite_Cyborg_Ducking2End
	dl $E12857,$E12ED7,GFX_Sprite_Cyborg_Ducking3,GFX_Sprite_Cyborg_Ducking3End
	dl $E12F08,$E13588,GFX_Sprite_Cyborg_Ducking4,GFX_Sprite_Cyborg_Ducking4End
	dl $E135B9,$E13C39,GFX_Sprite_Cyborg_DuckKick4,GFX_Sprite_Cyborg_DuckKick4End
	dl $E13C6A,$E142EA,GFX_Sprite_Cyborg_FarPunch1,GFX_Sprite_Cyborg_FarPunch1End
	dl $E1431B,$E1499B,GFX_Sprite_Cyborg_LowBlowHurt1,GFX_Sprite_Cyborg_LowBlowHurt1End
	dl $E149CC,$E1504C,GFX_Sprite_Cyborg_LowBlowHurt3,GFX_Sprite_Cyborg_LowBlowHurt3End
	dl $E1507D,$E156FD,GFX_Sprite_Cyborg_Walk2,GFX_Sprite_Cyborg_Walk2End
	dl $E1572E,$E15DAE,GFX_Sprite_Cyborg_Walk3,GFX_Sprite_Cyborg_Walk3End
	dl $E15DDF,$E1645F,GFX_Sprite_Cyborg_Walk4,GFX_Sprite_Cyborg_Walk4End
	dl $E16490,$E16B10,GFX_Sprite_Cyborg_Walk5,GFX_Sprite_Cyborg_Walk5End
	dl $E16B41,$E171C1,GFX_Sprite_Cyborg_Walk6,GFX_Sprite_Cyborg_Walk6End
	dl $E171F2,$E17872,GFX_Sprite_Cyborg_Jump1,GFX_Sprite_Cyborg_Jump1End
	dl $E178A3,$E17F23,GFX_Sprite_Cyborg_JumpKick1,GFX_Sprite_Cyborg_JumpKick1End
	dl $E17F54,$E185D4,GFX_Sprite_Cyborg_HighBlowHurt1,GFX_Sprite_Cyborg_HighBlowHurt1End
	dl $E18605,$E18C85,GFX_Sprite_Cyborg_HighBlowHurt2,GFX_Sprite_Cyborg_HighBlowHurt2End
	dl $E18CB6,$E19336,GFX_Sprite_Cyborg_HighBlowHurt3,GFX_Sprite_Cyborg_HighBlowHurt3End
	dl $E19367,$E199E7,GFX_Sprite_Cyborg_HighBlowHurt4,GFX_Sprite_Cyborg_HighBlowHurt4End
	dl $E19A18,$E1A098,GFX_Sprite_Cyborg_Headbutt5,GFX_Sprite_Cyborg_Headbutt5End
	dl $E1A0C9,$E1A749,GFX_Sprite_Cyborg_Headbutt6,GFX_Sprite_Cyborg_Headbutt6End
	dl $E1A77A,$E1ADFA,GFX_Sprite_Cyborg_FarKick1,GFX_Sprite_Cyborg_FarKick1End
	dl $E1AE2B,$E1B4AB,GFX_Sprite_Cyborg_FarKick3,GFX_Sprite_Cyborg_FarKick3End
	dl $E1B4DC,$E1BB5C,GFX_Sprite_Cyborg_SlidePunch1,GFX_Sprite_Cyborg_SlidePunch1End
	dl $E1BB8D,$E1C20D,GFX_Sprite_Cyborg_SlidePunch3,GFX_Sprite_Cyborg_SlidePunch3End
	dl $E1C23E,$E1C8BE,GFX_Sprite_Cyborg_SlidePunch5,GFX_Sprite_Cyborg_SlidePunch5End
	dl $E1C8E3,$E1CD63,GFX_Sprite_Military_Somersault6,GFX_Sprite_Military_Somersault6End
	dl $E1CD97,$E1D497,GFX_Sprite_Military_DuckPunch7,GFX_Sprite_Military_DuckPunch7End
	dl $E1D4CB,$E1DBCB,GFX_Sprite_Loader_Jump5,GFX_Sprite_Loader_Jump5End
	dl $E1DBFF,$E1E2FF,GFX_Sprite_Loader_Jump6,GFX_Sprite_Loader_Jump6End
	dl $E1E333,$E1EA33,GFX_Sprite_Loader_CurlUp2,GFX_Sprite_Loader_CurlUp2End
	dl $E1EA67,$E1F167,GFX_Sprite_Supervisor_ClosePunch5,GFX_Sprite_Supervisor_ClosePunch5End
	dl $E1F19B,$E1F89B,GFX_Sprite_Supervisor_FarKick8,GFX_Sprite_Supervisor_FarKick8End
	dl $E1F8CF,$E1FFCF,GFX_Sprite_Supervisor_DuckKick5,GFX_Sprite_Supervisor_DuckKick5End
	dl $E2002E,$E2062E,GFX_Sprite_Cyborg_CloseKick3,GFX_Sprite_Cyborg_CloseKick3End
	dl $E2065C,$E20C5C,GFX_Sprite_Cyborg_DuckBlock2,GFX_Sprite_Cyborg_DuckBlock2End
	dl $E20C8A,$E2128A,GFX_Sprite_Cyborg_DuckPunch2,GFX_Sprite_Cyborg_DuckPunch2End
	dl $E212B8,$E218B8,GFX_Sprite_Cyborg_DuckKick1,GFX_Sprite_Cyborg_DuckKick1End
	dl $E218E6,$E21EE6,GFX_Sprite_Cyborg_DuckHurt4,GFX_Sprite_Cyborg_DuckHurt4End
	dl $E21F14,$E22514,GFX_Sprite_Cyborg_FarPunch2,GFX_Sprite_Cyborg_FarPunch2End
	dl $E22542,$E22B42,GFX_Sprite_Cyborg_FarPunch3,GFX_Sprite_Cyborg_FarPunch3End
	dl $E22B70,$E23170,GFX_Sprite_Cyborg_LowBlowHurt4,GFX_Sprite_Cyborg_LowBlowHurt4End
	dl $E2319E,$E2379E,GFX_Sprite_Cyborg_LowBlowHurt5,GFX_Sprite_Cyborg_LowBlowHurt5End
	dl $E237CC,$E23DCC,GFX_Sprite_Cyborg_Headbutt9,GFX_Sprite_Cyborg_Headbutt9End
	dl $E23DFA,$E243FA,GFX_Sprite_Cyborg_SlidePunch2,GFX_Sprite_Cyborg_SlidePunch2End
	dl $E24428,$E24A28,GFX_Sprite_Cyborg_SlidePunch4,GFX_Sprite_Cyborg_SlidePunch4End
	dl $E24A59,$E250D9,GFX_Sprite_Cyborg_Dead1,GFX_Sprite_Cyborg_Dead1End
	dl $E2510A,$E2578A,GFX_Sprite_Cyborg_Dead2,GFX_Sprite_Cyborg_Dead2End
	dl $E257BB,$E25E3B,GFX_Sprite_Cyborg_Dead8,GFX_Sprite_Cyborg_Dead8End
	dl $E25E6C,$E264EC,GFX_Sprite_Military_FarKick3,GFX_Sprite_Military_FarKick3End
	dl $E2651D,$E26B9D,GFX_Sprite_Military_FarKick4,GFX_Sprite_Military_FarKick4End
	dl $E26BCE,$E2724E,GFX_Sprite_Military_FarKick5,GFX_Sprite_Military_FarKick5End
	dl $E2727C,$E2787C,GFX_Sprite_Military_FarKick9,GFX_Sprite_Military_FarKick9End
	dl $E2789B,$E27C1B,GFX_Sprite_Military_Somersault16,GFX_Sprite_Military_Somersault16End
	dl $E27C4C,$E282CC,GFX_Sprite_Loader_CurlUp3,GFX_Sprite_Loader_CurlUp3End
	dl $E282FD,$E2897D,GFX_Sprite_Loader_CurlUp4,GFX_Sprite_Loader_CurlUp4End
	dl $E289AB,$E28FAB,GFX_Sprite_Loader_CurlUp5,GFX_Sprite_Loader_CurlUp5End
	dl $E28FD9,$E295D9,GFX_Sprite_Supervisor_ClosePunch3,GFX_Sprite_Supervisor_ClosePunch3End
	dl $E2960A,$E29C8A,GFX_Sprite_Supervisor_ClosePunch4,GFX_Sprite_Supervisor_ClosePunch4End
	dl $E29CB8,$E2A2B8,GFX_Sprite_Supervisor_CloseKick3,GFX_Sprite_Supervisor_CloseKick3End
	dl $E2A2E6,$E2A8E6,GFX_Sprite_Supervisor_DuckPunch2,GFX_Sprite_Supervisor_DuckPunch2End
	dl $E2A914,$E2AF14,GFX_Sprite_Supervisor_FarKick4,GFX_Sprite_Supervisor_FarKick4End
	dl $E2AF42,$E2B542,GFX_Sprite_Supervisor_FarKick6,GFX_Sprite_Supervisor_FarKick6End
	dl $E2B570,$E2BB70,GFX_Sprite_Supervisor_FarKick9,GFX_Sprite_Supervisor_FarKick9End
	dl $E2BB9E,$E2C19E,GFX_Sprite_Supervisor_LungeAttack2,GFX_Sprite_Supervisor_LungeAttack2End
	dl $E2C1CC,$E2C7CC,GFX_Sprite_Supervisor_JumpKick3,GFX_Sprite_Supervisor_JumpKick3End
	dl $E2C7FD,$E2CE7D,GFX_Sprite_Supervisor_FarPunch2,GFX_Sprite_Supervisor_FarPunch2End
	dl $E2CEAB,$E2D4AB,GFX_Sprite_Supervisor_Jump3,GFX_Sprite_Supervisor_Jump3End
	dl $E2D4D9,$E2DAD9,GFX_Sprite_Supervisor_LowBlowHurt1,GFX_Sprite_Supervisor_LowBlowHurt1End
	dl $E2DB07,$E2E107,GFX_Sprite_Supervisor_Melting36,GFX_Sprite_Supervisor_Melting36End
	dl $E2E135,$E2E735,GFX_Sprite_Supervisor_Melting37,GFX_Sprite_Supervisor_Melting37End
	dl $E2E763,$E2ED63,GFX_Sprite_Supervisor_Melting38,GFX_Sprite_Supervisor_Melting38End
	dl $E2ED91,$E2F391,GFX_Sprite_Supervisor_Melting39,GFX_Sprite_Supervisor_Melting39End
	dl $E2F3BF,$E2F9BF,GFX_Sprite_Supervisor_Melting40,GFX_Sprite_Supervisor_Melting40End
	dl $E2F9ED,$E2FFED,GFX_Sprite_Supervisor_Melting41,GFX_Sprite_Supervisor_Melting41End
	dl $E3002B,$E305AB,GFX_Sprite_Cyborg_CloseKick1,GFX_Sprite_Cyborg_CloseKick1End
	dl $E305D6,$E30B56,GFX_Sprite_Cyborg_CloseKick2,GFX_Sprite_Cyborg_CloseKick2End
	dl $E30B81,$E31101,GFX_Sprite_Cyborg_Ducking5,GFX_Sprite_Cyborg_Ducking5End
	dl $E3112C,$E316AC,GFX_Sprite_Cyborg_Ducking6,GFX_Sprite_Cyborg_Ducking6End
	dl $E316D7,$E31C57,GFX_Sprite_Cyborg_DuckBlock1,GFX_Sprite_Cyborg_DuckBlock1End
	dl $E31C82,$E32202,GFX_Sprite_Cyborg_DuckPunch1,GFX_Sprite_Cyborg_DuckPunch1End
	dl $E3222D,$E327AD,GFX_Sprite_Cyborg_DuckKick2,GFX_Sprite_Cyborg_DuckKick2End
	dl $E327D8,$E32D58,GFX_Sprite_Cyborg_DuckKick3,GFX_Sprite_Cyborg_DuckKick3End
	dl $E32D83,$E33303,GFX_Sprite_Cyborg_DuckHurt1,GFX_Sprite_Cyborg_DuckHurt1End
	dl $E3332E,$E338AE,GFX_Sprite_Cyborg_DuckHurt2,GFX_Sprite_Cyborg_DuckHurt2End
	dl $E338D9,$E33E59,GFX_Sprite_Cyborg_Headbutt7,GFX_Sprite_Cyborg_Headbutt7End
	dl $E33E84,$E34404,GFX_Sprite_Cyborg_Headbutt8,GFX_Sprite_Cyborg_Headbutt8End
	dl $E3442F,$E349AF,GFX_Sprite_Cyborg_FarKick2,GFX_Sprite_Cyborg_FarKick2End
	dl $E349DA,$E34F5A,GFX_Sprite_Cyborg_Dead10,GFX_Sprite_Cyborg_Dead10End
	dl $E34F85,$E35505,GFX_Sprite_Cyborg_Dead11,GFX_Sprite_Cyborg_Dead11End
	dl $E35530,$E35AB0,GFX_Sprite_Military_Somersault4,GFX_Sprite_Military_Somersault4End
	dl $E35ADB,$E3605B,GFX_Sprite_Supervisor_StandIdle1,GFX_Sprite_Supervisor_StandIdle1End
	dl $E36086,$E36606,GFX_Sprite_Supervisor_StandIdle4,GFX_Sprite_Supervisor_StandIdle4End
	dl $E36631,$E36BB1,GFX_Sprite_Supervisor_ClosePunch2,GFX_Sprite_Supervisor_ClosePunch2End
	dl $E36BDC,$E3715C,GFX_Sprite_Supervisor_DuckPunch1,GFX_Sprite_Supervisor_DuckPunch1End
	dl $E37187,$E37707,GFX_Sprite_Supervisor_FarKick1,GFX_Sprite_Supervisor_FarKick1End
	dl $E37732,$E37CB2,GFX_Sprite_Supervisor_FarKick2,GFX_Sprite_Supervisor_FarKick2End
	dl $E37CDD,$E3825D,GFX_Sprite_Supervisor_FarKick3,GFX_Sprite_Supervisor_FarKick3End
	dl $E38288,$E38808,GFX_Sprite_Supervisor_FarKick5,GFX_Sprite_Supervisor_FarKick5End
	dl $E38833,$E38DB3,GFX_Sprite_Supervisor_FarKick7,GFX_Sprite_Supervisor_FarKick7End
	dl $E38DDE,$E3935E,GFX_Sprite_Supervisor_Walk6,GFX_Sprite_Supervisor_Walk6End
	dl $E39389,$E39909,GFX_Sprite_Supervisor_Walk7,GFX_Sprite_Supervisor_Walk7End
	dl $E39934,$E39EB4,GFX_Sprite_Supervisor_Jump2,GFX_Sprite_Supervisor_Jump2End
	dl $E39EDF,$E3A45F,GFX_Sprite_Supervisor_HighBlowHurt1,GFX_Sprite_Supervisor_HighBlowHurt1End
	dl $E3A48A,$E3AA0A,GFX_Sprite_Supervisor_HighBlowHurt2,GFX_Sprite_Supervisor_HighBlowHurt2End
	dl $E3AA35,$E3AFB5,GFX_Sprite_Supervisor_HighBlowHurt3,GFX_Sprite_Supervisor_HighBlowHurt3End
	dl $E3AFE0,$E3B560,GFX_Sprite_Supervisor_LowBlowHurt2,GFX_Sprite_Supervisor_LowBlowHurt2End
	dl $E3B58B,$E3BB0B,GFX_Sprite_Supervisor_LowBlowHurt3,GFX_Sprite_Supervisor_LowBlowHurt3End
	dl $E3BB36,$E3C0B6,GFX_Sprite_Supervisor_LowBlowHurt4,GFX_Sprite_Supervisor_LowBlowHurt4End
	dl $E3C0E1,$E3C661,GFX_Sprite_Supervisor_Ducking1,GFX_Sprite_Supervisor_Ducking1End
	dl $E3C68C,$E3CC0C,GFX_Sprite_Supervisor_Melting26,GFX_Sprite_Supervisor_Melting26End
	dl $E3CC37,$E3D1B7,GFX_Sprite_Supervisor_Melting27,GFX_Sprite_Supervisor_Melting27End
	dl $E3D1E2,$E3D762,GFX_Sprite_Supervisor_Melting28,GFX_Sprite_Supervisor_Melting28End
	dl $E3D78D,$E3DD0D,GFX_Sprite_Supervisor_Melting29,GFX_Sprite_Supervisor_Melting29End
	dl $E3DD38,$E3E2B8,GFX_Sprite_Supervisor_Melting30,GFX_Sprite_Supervisor_Melting30End
	dl $E3E2E3,$E3E863,GFX_Sprite_Supervisor_Melting31,GFX_Sprite_Supervisor_Melting31End
	dl $E3E88E,$E3EE0E,GFX_Sprite_Supervisor_Melting32,GFX_Sprite_Supervisor_Melting32End
	dl $E3EE39,$E3F3B9,GFX_Sprite_Supervisor_Melting33,GFX_Sprite_Supervisor_Melting33End
	dl $E3F3E4,$E3F964,GFX_Sprite_Supervisor_Melting34,GFX_Sprite_Supervisor_Melting34End
	dl $E3F98F,$E3FF0F,GFX_Sprite_Supervisor_Melting35,GFX_Sprite_Supervisor_Melting35End
	dl $E40028,$E40528,GFX_Sprite_Cyborg_DuckHurt3,GFX_Sprite_Cyborg_DuckHurt3End
	dl $E40535,$E405B5,GFX_Sprite_Cyborg_WeirdSquare1,GFX_Sprite_Cyborg_WeirdSquare1End
	dl $E405DD,$E40ADD,GFX_Sprite_Military_Somersault5,GFX_Sprite_Military_Somersault5End
	dl $E40AFF,$E40EFF,GFX_Sprite_Military_Somersault7,GFX_Sprite_Military_Somersault7End
	dl $E40F21,$E41321,GFX_Sprite_Military_Somersault8,GFX_Sprite_Military_Somersault8End
	dl $E41349,$E41849,GFX_Sprite_Supervisor_StandIdle2,GFX_Sprite_Supervisor_StandIdle2End
	dl $E41871,$E41D71,GFX_Sprite_Supervisor_StandIdle3,GFX_Sprite_Supervisor_StandIdle3End
	dl $E41D99,$E42299,GFX_Sprite_Supervisor_StandIdle5,GFX_Sprite_Supervisor_StandIdle5End
	dl $E422C1,$E427C1,GFX_Sprite_Supervisor_ClosePunch1,GFX_Sprite_Supervisor_ClosePunch1End
	dl $E427E9,$E42CE9,GFX_Sprite_Supervisor_CloseKick1,GFX_Sprite_Supervisor_CloseKick1End
	dl $E42D11,$E43211,GFX_Sprite_Supervisor_CloseKick2,GFX_Sprite_Supervisor_CloseKick2End
	dl $E43239,$E43739,GFX_Sprite_Supervisor_FarKick10,GFX_Sprite_Supervisor_FarKick10End
	dl $E43761,$E43C61,GFX_Sprite_Supervisor_FarKick11,GFX_Sprite_Supervisor_FarKick11End
	dl $E43C86,$E44106,GFX_Sprite_Supervisor_DuckKick4,GFX_Sprite_Supervisor_DuckKick4End
	dl $E4412E,$E4462E,GFX_Sprite_Supervisor_LungeAttack1,GFX_Sprite_Supervisor_LungeAttack1End
	dl $E44653,$E44AD3,GFX_Sprite_Supervisor_JumpKick2,GFX_Sprite_Supervisor_JumpKick2End
	dl $E44AF8,$E44F78,GFX_Sprite_Supervisor_FarPunch1,GFX_Sprite_Supervisor_FarPunch1End
	dl $E44FA0,$E454A0,GFX_Sprite_Supervisor_Walk1,GFX_Sprite_Supervisor_Walk1End
	dl $E454C5,$E45945,GFX_Sprite_Supervisor_Walk2,GFX_Sprite_Supervisor_Walk2End
	dl $E4596A,$E45DEA,GFX_Sprite_Supervisor_Walk3,GFX_Sprite_Supervisor_Walk3End
	dl $E45E12,$E46312,GFX_Sprite_Supervisor_Walk5,GFX_Sprite_Supervisor_Walk5End
	dl $E4633A,$E4683A,GFX_Sprite_Supervisor_Jump1,GFX_Sprite_Supervisor_Jump1End
	dl $E46862,$E46D62,GFX_Sprite_Supervisor_Jump4,GFX_Sprite_Supervisor_Jump4End
	dl $E46D87,$E47207,GFX_Sprite_Supervisor_Jump5,GFX_Sprite_Supervisor_Jump5End
	dl $E4722F,$E4772F,GFX_Sprite_Supervisor_Jump6,GFX_Sprite_Supervisor_Jump6End
	dl $E47757,$E47C57,GFX_Sprite_Supervisor_Jump7,GFX_Sprite_Supervisor_Jump7End
	dl $E47C7F,$E4817F,GFX_Sprite_Supervisor_PreMelt1,GFX_Sprite_Supervisor_PreMelt1End
	dl $E481A7,$E486A7,GFX_Sprite_Supervisor_PreMelt2,GFX_Sprite_Supervisor_PreMelt2End
	dl $E486CF,$E48BCF,GFX_Sprite_Supervisor_StandBlock1,GFX_Sprite_Supervisor_StandBlock1End
	dl $E48BF7,$E490F7,GFX_Sprite_Supervisor_StandBlock2,GFX_Sprite_Supervisor_StandBlock2End
	dl $E4911F,$E4961F,GFX_Sprite_Supervisor_StandBlock3,GFX_Sprite_Supervisor_StandBlock3End
	dl $E49647,$E49B47,GFX_Sprite_Supervisor_Ducking2,GFX_Sprite_Supervisor_Ducking2End
	dl $E49B6F,$E4A06F,GFX_Sprite_Supervisor_Ducking3,GFX_Sprite_Supervisor_Ducking3End
	dl $E4A094,$E4A514,GFX_Sprite_Supervisor_Melting20,GFX_Sprite_Supervisor_Melting20End
	dl $E4A539,$E4A9B9,GFX_Sprite_Supervisor_Melting21,GFX_Sprite_Supervisor_Melting21End
	dl $E4A9DE,$E4AE5E,GFX_Sprite_Supervisor_Melting22,GFX_Sprite_Supervisor_Melting22End
	dl $E4AE83,$E4B303,GFX_Sprite_Supervisor_Melting23,GFX_Sprite_Supervisor_Melting23End
	dl $E4B328,$E4B7A8,GFX_Sprite_Supervisor_Melting24,GFX_Sprite_Supervisor_Melting24End
	dl $E4B7CD,$E4BC4D,GFX_Sprite_Supervisor_Melting25,GFX_Sprite_Supervisor_Melting25End
	dl $E4BC78,$E4C1F8,GFX_Sprite_Supervisor_Dead1,GFX_Sprite_Supervisor_Dead1End
	dl $E4C223,$E4C7A3,GFX_Sprite_Supervisor_Dead2,GFX_Sprite_Supervisor_Dead2End
	dl $E4C7CE,$E4CD4E,GFX_Sprite_Supervisor_Dead3,GFX_Sprite_Supervisor_Dead3End
	dl $E4CD79,$E4D2F9,GFX_Sprite_Supervisor_Dead4,GFX_Sprite_Supervisor_Dead4End
	dl $E4D321,$E4D821,GFX_Sprite_Supervisor_Dead5,GFX_Sprite_Supervisor_Dead5End
	dl $E4D849,$E4DD49,GFX_Sprite_Supervisor_Dead6,GFX_Sprite_Supervisor_Dead6End
	dl $E4DD6E,$E4E1EE,GFX_Sprite_Supervisor_Dead7,GFX_Sprite_Supervisor_Dead7End
	dl $E4E213,$E4E693,GFX_Sprite_Supervisor_Dead8,GFX_Sprite_Supervisor_Dead8End
	dl $E4E6BB,$E4EBBB,GFX_Sprite_Supervisor_Dead10,GFX_Sprite_Supervisor_Dead10End
	dl $E4EBE3,$E4F0E3,GFX_Sprite_Supervisor_Dead11,GFX_Sprite_Supervisor_Dead11End
	dl $E4F10B,$E4F60B,GFX_Sprite_Supervisor_Dead12,GFX_Sprite_Supervisor_Dead12End
	dl $E5000D,$E5008D,GFX_Sprite_Cyborg_WeirdSquare2,GFX_Sprite_Cyborg_WeirdSquare2End
	dl $E5009A,$E5011A,GFX_Sprite_Cyborg_WeirdSquare3,GFX_Sprite_Cyborg_WeirdSquare3End
	dl $E50DBC,$E511BC,GFX_Sprite_Military_Somersault10,GFX_Sprite_Military_Somersault10End
	dl $E511DE,$E515DE,GFX_Sprite_Military_Somersault11,GFX_Sprite_Military_Somersault11End
	dl $E51600,$E51A00,GFX_Sprite_Military_Somersault12,GFX_Sprite_Military_Somersault12End
	dl $E51A22,$E51E22,GFX_Sprite_Military_Somersault13,GFX_Sprite_Military_Somersault13End
	dl $E51E44,$E52244,GFX_Sprite_Military_Somersault14,GFX_Sprite_Military_Somersault14End
	dl $E52266,$E52666,GFX_Sprite_Military_Somersault15,GFX_Sprite_Military_Somersault15End
	dl $E52688,$E52A88,GFX_Sprite_Military_Somersault17,GFX_Sprite_Military_Somersault17End
	dl $E530E7,$E53467,GFX_Sprite_Supervisor_DuckKick1,GFX_Sprite_Supervisor_DuckKick1End
	dl $E53489,$E53889,GFX_Sprite_Supervisor_DuckKick2,GFX_Sprite_Supervisor_DuckKick2End
	dl $E538AB,$E53CAB,GFX_Sprite_Supervisor_DuckKick3,GFX_Sprite_Supervisor_DuckKick3End
	dl $E53CCD,$E540CD,GFX_Sprite_Supervisor_JumpKick1,GFX_Sprite_Supervisor_JumpKick1End
	dl $E540EF,$E544EF,GFX_Sprite_Supervisor_Walk4,GFX_Sprite_Supervisor_Walk4End
	dl $E54511,$E54911,GFX_Sprite_Supervisor_PreMelt3,GFX_Sprite_Supervisor_PreMelt3End
	dl $E54933,$E54D33,GFX_Sprite_Supervisor_PreMelt4,GFX_Sprite_Supervisor_PreMelt4End
	dl $E54D4F,$E5504F,GFX_Sprite_Supervisor_PreMelt5,GFX_Sprite_Supervisor_PreMelt5End
	dl $E55071,$E55471,GFX_Sprite_Supervisor_Ducking4,GFX_Sprite_Supervisor_Ducking4End
	dl $E55490,$E55810,GFX_Sprite_Supervisor_Ducking5,GFX_Sprite_Supervisor_Ducking5End
	dl $E55829,$E55AA9,GFX_Sprite_Supervisor_Melting1,GFX_Sprite_Supervisor_Melting1End
	dl $E55AC2,$E55D42,GFX_Sprite_Supervisor_Melting2,GFX_Sprite_Supervisor_Melting2End
	dl $E55D58,$E55F58,GFX_Sprite_Supervisor_Melting3,GFX_Sprite_Supervisor_Melting3End
	dl $E55F71,$E561F1,GFX_Sprite_Supervisor_Melting4,GFX_Sprite_Supervisor_Melting4End
	dl $E56210,$E56590,GFX_Sprite_Supervisor_Melting5,GFX_Sprite_Supervisor_Melting5End
	dl $E565AF,$E5692F,GFX_Sprite_Supervisor_Melting6,GFX_Sprite_Supervisor_Melting6End
	dl $E5694E,$E56CCE,GFX_Sprite_Supervisor_Melting7,GFX_Sprite_Supervisor_Melting7End
	dl $E56CEA,$E56FEA,GFX_Sprite_Supervisor_Melting8,GFX_Sprite_Supervisor_Melting8End
	dl $E57006,$E57306,GFX_Sprite_Supervisor_Melting9,GFX_Sprite_Supervisor_Melting9End
	dl $E57325,$E576A5,GFX_Sprite_Supervisor_Melting10,GFX_Sprite_Supervisor_Melting10End
	dl $E576C4,$E57A44,GFX_Sprite_Supervisor_Melting11,GFX_Sprite_Supervisor_Melting11End
	dl $E57A66,$E57E66,GFX_Sprite_Supervisor_Melting12,GFX_Sprite_Supervisor_Melting12End
	dl $E57E88,$E58288,GFX_Sprite_Supervisor_Melting13,GFX_Sprite_Supervisor_Melting13End
	dl $E582AA,$E586AA,GFX_Sprite_Supervisor_Melting14,GFX_Sprite_Supervisor_Melting14End
	dl $E586CC,$E58ACC,GFX_Sprite_Supervisor_Melting15,GFX_Sprite_Supervisor_Melting15End
	dl $E58AEE,$E58EEE,GFX_Sprite_Supervisor_Melting16,GFX_Sprite_Supervisor_Melting16End
	dl $E58F10,$E59310,GFX_Sprite_Supervisor_Melting17,GFX_Sprite_Supervisor_Melting17End
	dl $E5932F,$E596AF,GFX_Sprite_Supervisor_Melting18,GFX_Sprite_Supervisor_Melting18End
	dl $E596CE,$E59A4E,GFX_Sprite_Supervisor_Melting19,GFX_Sprite_Supervisor_Melting19End
	dl $E59A70,$E59E70,GFX_Sprite_Supervisor_Dead9,GFX_Sprite_Supervisor_Dead9End
DynamicSpritesPointersEnd:

;--------------------------------------------------------------------

UncompressedTilemapsPointersStart:
	dl $C18E2B,$C1946B,TM_Layer1_TitleScreen_Cyborg_Frame5,TM_Layer1_TitleScreen_Cyborg_Frame5End
	dl $C39F5E,$C3A5AE,TM_Layer1_TitleScreen_Cyborg_Frame1,TM_Layer1_TitleScreen_Cyborg_Frame1End
	dl $C444F1,$C44B31,TM_Layer1_TitleScreen_Cyborg_Frame2,TM_Layer1_TitleScreen_Cyborg_Frame2End
	dl $C4A23B,$C4A87B,TM_Layer1_TitleScreen_Cyborg_Frame3,TM_Layer1_TitleScreen_Cyborg_Frame3End
	dl $C58E35,$C58FD5,TM_Layer2_TitleScreen_Title,TM_Layer2_TitleScreen_TitleEnd
	dl $C5A6FF,$C5AD3F,TM_Layer1_TitleScreen_Cyborg_Frame4,TM_Layer1_TitleScreen_Cyborg_Frame4End
UncompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

PalettePointersStart:
	dl $000001,PAL_Sprite_Cyborg_Ptrs,PAL_Sprite_Cyborg,PAL_Sprite_CyborgEnd
	dl $000001,PAL_Layer1_TitleScreen_Cyborg_Ptrs,PAL_Layer1_TitleScreen_Cyborg,PAL_Layer1_TitleScreen_CyborgEnd
	dl $000001,PAL_Sprite_Crusher_Ptrs,PAL_Sprite_Crusher,PAL_Sprite_CrusherEnd
	dl $000001,PAL_Sprite_Sentry_Ptrs,PAL_Sprite_Sentry,PAL_Sprite_SentryEnd
	dl $000001,PAL_Layer2_TitleScreen_Title_Ptrs,PAL_Layer2_TitleScreen_Title,PAL_Layer2_TitleScreen_TitleEnd
	dl $000001,PAL_Sprite_Ape_Ptrs,PAL_Sprite_Ape,PAL_Sprite_ApeEnd
	dl $000001,PAL_Sprite_Military_Ptrs,PAL_Sprite_Military,PAL_Sprite_MilitaryEnd
	dl $000001,PAL_Sprite_Loader_Ptrs,PAL_Sprite_Loader,PAL_Sprite_LoaderEnd
	dl $000001,PAL_Sprite_Supervisor_Ptrs,PAL_Sprite_Supervisor,PAL_Sprite_SupervisorEnd
	dl $000001,PAL_Sprite_Sparks_Ptrs,PAL_Sprite_Sparks,PAL_Sprite_SparksEnd
	dl $000001,PAL_Layer1_Unknown_Ptrs,PAL_Layer1_Unknown,PAL_Layer1_UnknownEnd
	dl $000001,PAL_Sprite_MainMenuCyborg_Ptrs,PAL_Sprite_MainMenuCyborg,PAL_Sprite_MainMenuCyborgEnd
	dl $000001,PAL_All_Unknown_Ptrs,PAL_All_Unknown,PAL_All_UnknownEnd
	dl $000001,PAL_All_MainMenu_Ptrs,PAL_All_MainMenu,PAL_All_MainMenuEnd
	dl $000001,PAL_Layer1_RedCyborgIntroFMV_Ptrs,PAL_Layer1_RedCyborgIntroFMV,PAL_Layer1_RedCyborgIntroFMVEnd
PalettePointersEnd:

PAL_Sprite_Cyborg_Ptrs:
	db $02 : dw $0000
	dl $000000,$C048E2,$C04902				; Blue
	dl $000000,$C04902,$C04922				; Red

PAL_Layer1_TitleScreen_Cyborg_Ptrs:
	db $01 : dw $0000
	dl $000000,$C3FCDE,$C3FEDE

PAL_Sprite_Crusher_Ptrs:
	db $01 : dw $0000
	dl $000000,$C40000,$C40020

PAL_Sprite_Sentry_Ptrs:
	db $01 : dw $0000
	dl $000000,$C40020,$C40040

PAL_Layer2_TitleScreen_Title_Ptrs:
	db $01 : dw $0000
	dl $000000,$C5A6D5,$C5A6F5

PAL_Sprite_Ape_Ptrs:
	db $01 : dw $0000
	dl $000000,$CAEF8F,$CAEFAF

PAL_Sprite_Military_Ptrs:
	db $01 : dw $0000
	dl $000000,$CAEFAF,$CAEFCF

PAL_Sprite_Loader_Ptrs:
	db $01 : dw $0000
	dl $000000,$CBCB44,$CBCB64

PAL_Sprite_Supervisor_Ptrs:
	db $01 : dw $0000
	dl $000000,$CBCB64,$CBCB84

PAL_Sprite_Sparks_Ptrs:
	db $01 : dw $0000
	dl $000000,$CEF45F,$CEF47F

PAL_Layer1_Unknown_Ptrs:
	db $01 : dw $0000
	dl $000000,$CFF1AA,$CFF1C8

PAL_Sprite_MainMenuCyborg_Ptrs:
	db $01 : dw $0000
	dl $000000,$D0F966,$D0F986

PAL_All_Unknown_Ptrs:
	db $01 : dw $0000
	dl $000000,$E5A592,$E5A792

PAL_All_MainMenu_Ptrs:
	db $01 : dw $0000
	dl $000000,$E5A792,$E5A992

PAL_Layer1_RedCyborgIntroFMV_Ptrs:
	db $01 : dw $0000
	dl $000000,$E5C3F4,$E5C4F4

;--------------------------------------------------------------------

GarbageDataPointersStart:
	dl $C07F86,$C08000,UNK_C07F86,UNK_C07F86End
	dl $C1FFAB,$C20000,UNK_C1FFAB,UNK_C1FFABEnd
	dl $C2FF5A,$C30000,UNK_C2FF5A,UNK_C2FF5AEnd
	dl $C3FEDE,$C40000,UNK_C3FEDE,UNK_C3FEDEEnd
	dl $C4FFFB,$C50000,UNK_C4FFFB,UNK_C4FFFBEnd
	dl $C6FFFC,$C70000,UNK_C6FFFC,UNK_C6FFFCEnd
	dl $C7FFFA,$C80000,UNK_C7FFFA,UNK_C7FFFAEnd
	dl $C9F64A,$CA0000,UNK_C9F64A,UNK_C9F64AEnd
	dl $CAFFF1,$CB0000,UNK_CAFFF1,UNK_CAFFF1End
	dl $CBFFFB,$CC0000,UNK_CBFFFB,UNK_CBFFFBEnd
	dl $CCFFE9,$CD0000,UNK_CCFFE9,UNK_CCFFE9End
	dl $CDFCF1,$CDFD11,UNK_CDFCF1,UNK_CDFCF1End
	dl $CDFFF0,$CE0000,UNK_CDFFF0,UNK_CDFFF0End
	dl $CEF6AF,$CF0000,UNK_CEF6AF,UNK_CEF6AFEnd
	dl $CFF8A8,$D00000,UNK_CFF8A8,UNK_CFF8A8End
	dl $D0FFBC,$D10000,UNK_D0FFBC,UNK_D0FFBCEnd
	dl $D2EE70,$D30000,UNK_D2EE70,UNK_D2EE70End
	dl $D3F44D,$D40000,UNK_D3F44D,UNK_D3F44DEnd
	dl $D4FFD3,$D50000,UNK_D4FFD3,UNK_D4FFD3End
	dl $D5B3F6,$D60000,UNK_D5B3F6,UNK_D5B3F6End
	dl $D6FFDB,$D70000,UNK_D6FFDB,UNK_D6FFDBEnd
	dl $D7F723,$D80000,UNK_D7F723,UNK_D7F723End
	dl $D8F71C,$D90000,UNK_D8F71C,UNK_D8F71CEnd
	dl $D9EA00,$DA0000,UNK_D9EA00,UNK_D9EA00End
	dl $DAF2F7,$DB0000,UNK_DAF2F7,UNK_DAF2F7End
	dl $DBFB04,$DC0000,UNK_DBFB04,UNK_DBFB04End
	dl $DCFFB5,$DD0000,UNK_DCFFB5,UNK_DCFFB5End
	dl $DDFFEA,$DE0000,UNK_DDFFEA,UNK_DDFFEAEnd
	dl $DEFFBE,$DF0000,UNK_DEFFBE,UNK_DEFFBEEnd
	dl $DFFFBC,$E00000,UNK_DFFFBC,UNK_DFFFBCEnd
	dl $E0FFCF,$E10000,UNK_E0FFCF,UNK_E0FFCFEnd
	dl $E1FFCF,$E20000,UNK_E1FFCF,UNK_E1FFCFEnd
	dl $E2FFED,$E30000,UNK_E2FFED,UNK_E2FFEDEnd
	dl $E3FFBA,$E40000,UNK_E3FFBA,UNK_E3FFBAEnd
	dl $E4FF8F,$E50000,UNK_E4FF8F,UNK_E4FF8FEnd
	dl $E5C4F4,$E60000,UNK_E5C4F4,UNK_E5C4F4End
	dl $E6FFFE,$E70000,UNK_E6FFFE,UNK_E6FFFEEnd
	dl $E7FFFD,$E80000,UNK_E7FFFD,UNK_E7FFFDEnd
	dl $E9FFFE,$EA0000,UNK_E9FFFE,UNK_E9FFFEEnd
	dl $EBFFFE,$EC0000,UNK_EBFFFE,UNK_EBFFFEEnd
	dl $EDFFFE,$EE0000,UNK_EDFFFE,UNK_EDFFFEEnd
	dl $EFF785,$F00000,UNK_EFF785,UNK_EFF785End
	dl $F1F864,$F20000,UNK_F1F864,UNK_F1F864End
	dl $F2F8B0,$F30000,UNK_F2F8B0,UNK_F2F8B0End
	dl $F3FFFD,$F40000,UNK_F3FFFD,UNK_F3FFFDEnd
	dl $F4F399,$F50000,UNK_F4F399,UNK_F4F399End
	dl $F5FA09,$F60000,UNK_F5FA09,UNK_F5FA09End
	dl $F9FB62,$FA0000,UNK_F9FB62,UNK_F9FB62End
	dl $FCFFFE,$FD0000,UNK_FCFFFE,UNK_FCFFFEEnd
	dl $FDFD8F,$FE0000,UNK_FDFD8F,UNK_FDFD8FEnd
	dl $FEF726,$FF0000,UNK_FEF726,UNK_FEF726End
	dl $FF70DC,$FFE390,UNK_FF70DC,UNK_FF70DCEnd
GarbageDataPointersEnd:

;--------------------------------------------------------------------

UnknownDataPointersStart:
	dl $CB0000,$CB0F82,DATA_CB0000,DATA_CB0000End
	dl $CEE5E0,$CEF45F,DATA_CEE5E0,DATA_CEE5E0End
	dl $D4D9B9,$D4E66D,DATA_D4D9B9,DATA_D4D9B9End
	dl $D60000,$D60901,DATA_D60000,DATA_D60000End
	dl $D66673,$D67227,DATA_D66673,DATA_D66673End
	dl $D9B6E0,$D9C17A,DATA_D9B6E0,DATA_D9B6E0End
	dl $DA3B0C,$DA44E6,DATA_DA3B0C,DATA_DA3B0CEnd
UnknownDataPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $C8B261,$C8D496,DATA_C8B25D,DATA_C8B25DEnd
	dl $D2DFCA,$D2E5AA,DATA_D2DFC6,DATA_D2DFC6End
	dl $DBE9D3,$DBF32E,DATA_DBE9CF,DATA_DBE9CFEnd
	dl $DFE776,$DFE88A,DATA_DFE772,DATA_DFE772End
MusicPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $C11589,$C1531A,BRRFile00,BRRFile00End
	dl $C1531A,$C18C87,BRRFile01,BRRFile01End
	dl $C18C87,$C18C9B,BRRFile02,BRRFile02End
	dl $C18C9B,$C18CAF,BRRFile03,BRRFile03End
	dl $C18CAF,$C18E07,BRRFile04,BRRFile04End
	dl $C20084,$C218BF,BRRFile05,BRRFile05End
	dl $C218BF,$C240FB,BRRFile06,BRRFile06End
	dl $C240FB,$C25A2B,BRRFile07,BRRFile07End
	dl $C25A2B,$C26E0C,BRRFile08,BRRFile08End
	dl $C26E94,$C2A0D3,BRRFile09,BRRFile09End
	dl $C2A0D3,$C2CFBB,BRRFile0A,BRRFile0AEnd
	dl $C300CE,$C33168,BRRFile0B,BRRFile0BEnd
	dl $C33168,$C360F2,BRRFile0C,BRRFile0CEnd
	dl $C54529,$C5512A,BRRFile0D,BRRFile0DEnd
	dl $C5512A,$C56B29,BRRFile0E,BRRFile0EEnd
	dl $C56B29,$C57EEF,BRRFile0F,BRRFile0FEnd
	dl $C57EEF,$C58DFF,BRRFile10,BRRFile10End
	dl $C58DFF,$C58E27,BRRFile11,BRRFile11End
	dl $C61277,$C61B21,BRRFile12,BRRFile12End
	dl $C61B21,$C6259F,BRRFile13,BRRFile13End
	dl $C6259F,$C62CFC,BRRFile14,BRRFile14End
	dl $C62CFC,$C63A14,BRRFile15,BRRFile15End
	dl $C63A14,$C6426D,BRRFile16,BRRFile16End
	dl $C6426D,$C6532D,BRRFile17,BRRFile17End
	dl $C653B5,$C65B12,BRRFile18,BRRFile18End
	dl $C65B12,$C66620,BRRFile19,BRRFile19End
	dl $C66620,$C67206,BRRFile1A,BRRFile1AEnd
	dl $C67206,$C679EA,BRRFile1B,BRRFile1BEnd
	dl $C679EA,$C68501,BRRFile1C,BRRFile1CEnd
	dl $C68501,$C68ADB,BRRFile1D,BRRFile1DEnd
	dl $C68B63,$C692C0,BRRFile1E,BRRFile1EEnd
	dl $C692C0,$C6A032,BRRFile1F,BRRFile1FEnd
	dl $C6A032,$C6A951,BRRFile20,BRRFile20End
	dl $C6A951,$C6B1AA,BRRFile21,BRRFile21End
	dl $C6B1AA,$C6C2B2,BRRFile22,BRRFile22End
	dl $C71277,$C719D4,BRRFile23,BRRFile23End
	dl $C719D4,$C71F4B,BRRFile24,BRRFile24End
	dl $C71F4B,$C7262A,BRRFile25,BRRFile25End
	dl $C7262A,$C72F6D,BRRFile26,BRRFile26End
	dl $C72F6D,$C74360,BRRFile27,BRRFile27End
	dl $C743E8,$C745D2,BRRFile28,BRRFile28End
	dl $C745D2,$C74F0C,BRRFile29,BRRFile29End
	dl $C74F0C,$C75B28,BRRFile2A,BRRFile2AEnd
	dl $C75B28,$C76B2B,BRRFile2B,BRRFile2BEnd
	dl $C76B2B,$C77288,BRRFile2C,BRRFile2CEnd
	dl $C77288,$C77671,BRRFile2D,BRRFile2DEnd
	dl $C776F9,$C77E56,BRRFile2E,BRRFile2EEnd
	dl $C77E56,$C783FA,BRRFile2F,BRRFile2FEnd
	dl $C783FA,$C78D19,BRRFile30,BRRFile30End
	dl $C78D19,$C79572,BRRFile31,BRRFile31End
	dl $C79572,$C7A230,BRRFile32,BRRFile32End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Layer1_TitleScreen_Cyborg_Frame5:
	db "GFX_Layer1_TitleScreen_Cyborg_Frame5.bin"
GFX_Layer1_TitleScreen_Cyborg_Frame5End:
GFX_Layer1_TitleScreen_Cyborg_Frame1:
	db "GFX_Layer1_TitleScreen_Cyborg_Frame1.bin"
GFX_Layer1_TitleScreen_Cyborg_Frame1End:
GFX_Layer1_TitleScreen_Cyborg_Frame2:
	db "GFX_Layer1_TitleScreen_Cyborg_Frame2.bin"
GFX_Layer1_TitleScreen_Cyborg_Frame2End:
GFX_Layer1_TitleScreen_Cyborg_Frame3:
	db "GFX_Layer1_TitleScreen_Cyborg_Frame3.bin"
GFX_Layer1_TitleScreen_Cyborg_Frame3End:
GFX_Layer2_TitleScreen_Title:
	db "GFX_Layer2_TitleScreen_Title.bin"
GFX_Layer2_TitleScreen_TitleEnd:
GFX_Layer1_TitleScreen_Cyborg_Frame4:
	db "GFX_Layer1_TitleScreen_Cyborg_Frame4.bin"
GFX_Layer1_TitleScreen_Cyborg_Frame4End:
GFX_Sprite_MetalParticles:
	db "GFX_Sprite_MetalParticles.bin"
GFX_Sprite_MetalParticlesEnd:
GFX_Layer2_SmallFonts:
	db "GFX_Layer2_SmallFonts.bin"
GFX_Layer2_SmallFontsEnd:
GFX_Layer2_HealthBarTiles:
	db "GFX_Layer2_HealthBarTiles.bin"
GFX_Layer2_HealthBarTilesEnd:
GFX_Layer2_TimerNumbers:
	db "GFX_Layer2_TimerNumbers.bin"
GFX_Layer2_TimerNumbersEnd:
GFX_Sprite_Sparks:
	db "GFX_Sprite_Sparks.bin"
GFX_Sprite_SparksEnd:

;--------------------------------------------------------------------

GFX_Layer1_SplashScreen1Text:
	db "GFX_Layer1_SplashScreen1Text.rnc"
GFX_Layer1_SplashScreen1TextEnd:
GFX_Layer1_SplashScreen2Text_PAL:
	db "GFX_Layer1_SplashScreen2Text_PAL.rnc"
GFX_Layer1_SplashScreen2Text_PALEnd:
GFX_Layer1_SplashScreen2Text_USA:
	db "GFX_Layer1_SplashScreen2Text_USA.rnc"
GFX_Layer1_SplashScreen2Text_USAEnd:
GFX_Layer1_AcclaimScreen:
	db "GFX_Layer1_AcclaimScreen.rnc"
GFX_Layer1_AcclaimScreenEnd:
GFX_Layer1_CrushersArena:
	db "GFX_Layer1_CrushersArena.rnc"
GFX_Layer1_CrushersArenaEnd:
GFX_Sprite_Battle1Text:
	db "GFX_Sprite_Battle1Text.bin"
GFX_Sprite_Battle1TextEnd:
GFX_Layer1_MilitarysArena:
	db "GFX_Layer1_MilitarysArena.rnc"
GFX_Layer1_MilitarysArenaEnd:
GFX_Layer1_PrototypeTitleScreen:
	db "GFX_Layer1_PrototypeTitleScreen.rnc"
GFX_Layer1_PrototypeTitleScreenEnd:
GFX_Layer1_CyborgArena:
	db "GFX_Layer1_CyborgArena.rnc"
GFX_Layer1_CyborgArenaEnd:
GFX_Layer1_MainMenu:
	db "GFX_Layer1_MainMenu.rnc"
GFX_Layer1_MainMenuEnd:
GFX_Layer1_SuperMovesMonitorText:
	db "GFX_Layer1_SuperMovesMonitorText.rnc"
GFX_Layer1_SuperMovesMonitorTextEnd:
GFX_Layer1_SentrysArena:
	db "GFX_Layer1_SentrysArena.rnc"
GFX_Layer1_SentrysArenaEnd:
GFX_Layer1_ApesArena:
	db "GFX_Layer1_ApesArena.rnc"
GFX_Layer1_ApesArenaEnd:
GFX_Layer1_SupervisorsArena:
	db "GFX_Layer1_SupervisorsArena.rnc"
GFX_Layer1_SupervisorsArenaEnd:
GFX_Layer1_LoadersArena:
	db "GFX_Layer1_LoadersArena.rnc"
GFX_Layer1_LoadersArenaEnd:
GFX_Layer1_MirageScreen:
	db "GFX_Layer1_MirageScreen.rnc"
GFX_Layer1_MirageScreenEnd:
GFX_Sprite_Battle2Text:
	db "GFX_Sprite_Battle2Text.bin"
GFX_Sprite_Battle2TextEnd:
GFX_Layer1_LoaderProfileImage:
	db "GFX_Layer1_LoaderProfileImage.rnc"
GFX_Layer1_LoaderProfileImageEnd:
GFX_Layer1_SentryProfileImage:
	db "GFX_Layer1_SentryProfileImage.rnc"
GFX_Layer1_SentryProfileImageEnd:
GFX_Layer1_CyborgProfileImage:
	db "GFX_Layer1_CyborgProfileImage.rnc"
GFX_Layer1_CyborgProfileImageEnd:
GFX_Sprite_FloatingMonitor_Frame5:
	db "GFX_Sprite_FloatingMonitor_Frame5.bin"
GFX_Sprite_FloatingMonitor_Frame5End:
GFX_Layer1_CrusherProfileImage:
	db "GFX_Layer1_CrusherProfileImage.rnc"
GFX_Layer1_CrusherProfileImageEnd:
GFX_Layer1_MissionBriefAndTrainingMonitorText:
	db "GFX_Layer1_MissionBriefAndTrainingMonitorText.rnc"
GFX_Layer1_MissionBriefAndTrainingMonitorTextEnd:
GFX_Sprite_FloatingMonitor_Frame6:
	db "GFX_Sprite_FloatingMonitor_Frame6.bin"
GFX_Sprite_FloatingMonitor_Frame6End:
GFX_Layer1_ApeProfileImage:
	db "GFX_Layer1_ApeProfileImage.rnc"
GFX_Layer1_ApeProfileImageEnd:
GFX_Layer1_MilitaryProfileImage:
	db "GFX_Layer1_MilitaryProfileImage.rnc"
GFX_Layer1_MilitaryProfileImageEnd:
GFX_Sprite_FloatingMonitor_Frame7:
	db "GFX_Sprite_FloatingMonitor_Frame7.bin"
GFX_Sprite_FloatingMonitor_Frame7End:
GFX_Layer1_SupervisorProfileImage:
	db "GFX_Layer1_SupervisorProfileImage.rnc"
GFX_Layer1_SupervisorProfileImageEnd:
GFX_Layer2_NetworkDataBanner:
	db "GFX_Layer2_NetworkDataBanner.rnc"
GFX_Layer2_NetworkDataBannerEnd:
GFX_Sprite_FloatingMonitor_Frame2:
	db "GFX_Sprite_FloatingMonitor_Frame2.bin"
GFX_Sprite_FloatingMonitor_Frame2End:
GFX_Sprite_SuperMoveText:
	db "GFX_Sprite_SuperMoveText.bin"
GFX_Sprite_SuperMoveTextEnd:
GFX_Layer1_CinematicsMonitorText:
	db "GFX_Layer1_CinematicsMonitorText.rnc"
GFX_Layer1_CinematicsMonitorTextEnd:
GFX_Sprite_FinalBattleText:
	db "GFX_Sprite_FinalBattleText.bin"
GFX_Sprite_FinalBattleTextEnd:
GFX_Sprite_FloatingMonitor_Frame8:
	db "GFX_Sprite_FloatingMonitor_Frame8.bin"
GFX_Sprite_FloatingMonitor_Frame8End:
GFX_Sprite_FloatingMonitor_Frame9:
	db "GFX_Sprite_FloatingMonitor_Frame9.bin"
GFX_Sprite_FloatingMonitor_Frame9End:
GFX_Sprite_FloatingMonitor_Frame10:
	db "GFX_Sprite_FloatingMonitor_Frame10.bin"
GFX_Sprite_FloatingMonitor_Frame10End:
GFX_Sprite_FloatingMonitor_Frame11:
	db "GFX_Sprite_FloatingMonitor_Frame11.bin"
GFX_Sprite_FloatingMonitor_Frame11End:
GFX_Sprite_FloatingMonitor_Frame12:
	db "GFX_Sprite_FloatingMonitor_Frame12.bin"
GFX_Sprite_FloatingMonitor_Frame12End:
GFX_Sprite_FloatingMonitor_Frame13:
	db "GFX_Sprite_FloatingMonitor_Frame13.bin"
GFX_Sprite_FloatingMonitor_Frame13End:
GFX_Sprite_FloatingMonitor_Frame14:
	db "GFX_Sprite_FloatingMonitor_Frame14.bin"
GFX_Sprite_FloatingMonitor_Frame14End:
GFX_Layer2_ReplayBanner:
	db "GFX_Layer2_ReplayBanner.rnc"
GFX_Layer2_ReplayBannerEnd:
GFX_Sprite_FloatingMonitor_Frame15:
	db "GFX_Sprite_FloatingMonitor_Frame15.bin"
GFX_Sprite_FloatingMonitor_Frame15End:
GFX_Sprite_FloatingMonitor_Frame16:
	db "GFX_Sprite_FloatingMonitor_Frame16.bin"
GFX_Sprite_FloatingMonitor_Frame16End:
GFX_Sprite_FloatingMonitor_Frame17:
	db "GFX_Sprite_FloatingMonitor_Frame17.bin"
GFX_Sprite_FloatingMonitor_Frame17End:
GFX_Layer1_TimerMonitorText:
	db "GFX_Layer1_TimerMonitorText.rnc"
GFX_Layer1_TimerMonitorTextEnd:
GFX_Sprite_FloatingMonitor_Frame1:
	db "GFX_Sprite_FloatingMonitor_Frame1.bin"
GFX_Sprite_FloatingMonitor_Frame1End:
GFX_Layer1_MainMenuMonitorText:
	db "GFX_Layer1_MainMenuMonitorText.rnc"
GFX_Layer1_MainMenuMonitorTextEnd:
GFX_Layer1_DifficultyMonitorText:
	db "GFX_Layer1_DifficultyMonitorText.rnc"
GFX_Layer1_DifficultyMonitorTextEnd:
GFX_Layer1_BoutsMonitorText:
	db "GFX_Layer1_BoutsMonitorText.rnc"
GFX_Layer1_BoutsMonitorTextEnd:
GFX_Sprite_Battle3Text:
	db "GFX_Sprite_Battle3Text.bin"
GFX_Sprite_Battle3TextEnd:
GFX_Sprite_Battle4Text:
	db "GFX_Sprite_Battle4Text.bin"
GFX_Sprite_Battle4TextEnd:
GFX_Sprite_Battle5Text:
	db "GFX_Sprite_Battle5Text.bin"
GFX_Sprite_Battle5TextEnd:
GFX_Sprite_Battle6Text:
	db "GFX_Sprite_Battle6Text.bin"
GFX_Sprite_Battle6TextEnd:
GFX_Sprite_Battle7Text:
	db "GFX_Sprite_Battle7Text.bin"
GFX_Sprite_Battle7TextEnd:
GFX_Sprite_PauseText:
	db "GFX_Sprite_PauseText.bin"
GFX_Sprite_PauseTextEnd:
GFX_Sprite_FloatingMonitor_Frame3:
	db "GFX_Sprite_FloatingMonitor_Frame3.bin"
GFX_Sprite_FloatingMonitor_Frame3End:
GFX_Sprite_FloatingMonitor_Frame4:
	db "GFX_Sprite_FloatingMonitor_Frame4.bin"
GFX_Sprite_FloatingMonitor_Frame4End:
GFX_Layer1_UnusedAbsoluteEntertainmentLogoScreen:
	db "GFX_Layer1_UnusedAbsoluteEntertainmentLogoScreen.rnc"
GFX_Layer1_UnusedAbsoluteEntertainmentLogoScreenEnd:

;--------------------------------------------------------------------

GFX_Layer1_MilitaryIntro_Frame89:
	db "GFX_Layer1_MilitaryIntro_Frame89.rnc"
GFX_Layer1_MilitaryIntro_Frame89End:
GFX_Layer1_MilitaryIntro_Frame123:
	db "GFX_Layer1_MilitaryIntro_Frame123.rnc"
GFX_Layer1_MilitaryIntro_Frame123End:
GFX_Layer1_MilitaryIntro_Frame124:
	db "GFX_Layer1_MilitaryIntro_Frame124.rnc"
GFX_Layer1_MilitaryIntro_Frame124End:
GFX_Layer1_SupervisorIntro_Frame1:
	db "GFX_Layer1_SupervisorIntro_Frame1.rnc"
GFX_Layer1_SupervisorIntro_Frame1End:
GFX_Layer1_SupervisorIntro_Frame31:
	db "GFX_Layer1_SupervisorIntro_Frame31.rnc"
GFX_Layer1_SupervisorIntro_Frame31End:
GFX_Layer1_SupervisorDefeated_Frame3:
	db "GFX_Layer1_SupervisorDefeated_Frame3.rnc"
GFX_Layer1_SupervisorDefeated_Frame3End:
GFX_Layer1_SupervisorDefeated_Frame4:
	db "GFX_Layer1_SupervisorDefeated_Frame4.rnc"
GFX_Layer1_SupervisorDefeated_Frame4End:
GFX_Layer1_SupervisorDefeated_Frame5:
	db "GFX_Layer1_SupervisorDefeated_Frame5.rnc"
GFX_Layer1_SupervisorDefeated_Frame5End:
GFX_Layer1_LoaderDefeated_Frame1:
	db "GFX_Layer1_LoaderDefeated_Frame1.rnc"
GFX_Layer1_LoaderDefeated_Frame1End:
GFX_Layer1_CrusherDefeated_Frame1:
	db "GFX_Layer1_CrusherDefeated_Frame1.rnc"
GFX_Layer1_CrusherDefeated_Frame1End:
GFX_Layer1_CyborgDefeated_Frame1:
	db "GFX_Layer1_CyborgDefeated_Frame1.rnc"
GFX_Layer1_CyborgDefeated_Frame1End:
GFX_Layer1_CyborgDefeated_Frame25:
	db "GFX_Layer1_CyborgDefeated_Frame25.rnc"
GFX_Layer1_CyborgDefeated_Frame25End:
GFX_Layer1_SentryIntro_Frame16:
	db "GFX_Layer1_SentryIntro_Frame16.rnc"
GFX_Layer1_SentryIntro_Frame16End:
GFX_Layer1_MilitaryIntro_Frame1:
	db "GFX_Layer1_MilitaryIntro_Frame1.rnc"
GFX_Layer1_MilitaryIntro_Frame1End:
GFX_Layer1_ApeIntro_Frame1:
	db "GFX_Layer1_ApeIntro_Frame1.rnc"
GFX_Layer1_ApeIntro_Frame1End:
GFX_Layer1_LoaderIntro_Frame1:
	db "GFX_Layer1_LoaderIntro_Frame1.rnc"
GFX_Layer1_LoaderIntro_Frame1End:
GFX_Layer1_SupervisorDefeated_Frame1:
	db "GFX_Layer1_SupervisorDefeated_Frame1.rnc"
GFX_Layer1_SupervisorDefeated_Frame1End:
GFX_Layer1_SupervisorDefeated_Frame6:
	db "GFX_Layer1_SupervisorDefeated_Frame6.rnc"
GFX_Layer1_SupervisorDefeated_Frame6End:
GFX_Layer1_SentryDefeated_Frame1:
	db "GFX_Layer1_SentryDefeated_Frame1.rnc"
GFX_Layer1_SentryDefeated_Frame1End:
GFX_Layer1_ApeDefeated_Frame1:
	db "GFX_Layer1_ApeDefeated_Frame1.rnc"
GFX_Layer1_ApeDefeated_Frame1End:
GFX_Layer1_ApeDefeated_Frame20:
	db "GFX_Layer1_ApeDefeated_Frame20.rnc"
GFX_Layer1_ApeDefeated_Frame20End:
GFX_Layer1_ApproachingMetropolis4_Frame51:
	db "GFX_Layer1_ApproachingMetropolis4_Frame51.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame51End:
GFX_Layer1_SupervisorIntro_Frame60:
	db "GFX_Layer1_SupervisorIntro_Frame60.rnc"
GFX_Layer1_SupervisorIntro_Frame60End:
GFX_Layer1_SupervisorDefeated_Frame18:
	db "GFX_Layer1_SupervisorDefeated_Frame18.rnc"
GFX_Layer1_SupervisorDefeated_Frame18End:
GFX_Layer1_SupervisorDefeated_Frame19:
	db "GFX_Layer1_SupervisorDefeated_Frame19.rnc"
GFX_Layer1_SupervisorDefeated_Frame19End:
GFX_Layer1_SupervisorDefeated_Frame20:
	db "GFX_Layer1_SupervisorDefeated_Frame20.rnc"
GFX_Layer1_SupervisorDefeated_Frame20End:
GFX_Layer1_SupervisorDefeated_Frame21:
	db "GFX_Layer1_SupervisorDefeated_Frame21.rnc"
GFX_Layer1_SupervisorDefeated_Frame21End:
GFX_Layer1_ApeDefeated_Frame9:
	db "GFX_Layer1_ApeDefeated_Frame9.rnc"
GFX_Layer1_ApeDefeated_Frame9End:
GFX_Layer1_ApeDefeated_Frame11:
	db "GFX_Layer1_ApeDefeated_Frame11.rnc"
GFX_Layer1_ApeDefeated_Frame11End:
GFX_Layer1_ApeDefeated_Frame12:
	db "GFX_Layer1_ApeDefeated_Frame12.rnc"
GFX_Layer1_ApeDefeated_Frame12End:
GFX_Layer1_ApeDefeated_Frame14:
	db "GFX_Layer1_ApeDefeated_Frame14.rnc"
GFX_Layer1_ApeDefeated_Frame14End:
GFX_Layer1_ApeDefeated_Frame18:
	db "GFX_Layer1_ApeDefeated_Frame18.rnc"
GFX_Layer1_ApeDefeated_Frame18End:
GFX_Layer1_ApeDefeated_Frame19:
	db "GFX_Layer1_ApeDefeated_Frame19.rnc"
GFX_Layer1_ApeDefeated_Frame19End:
GFX_Layer1_ApeDefeated_Frame21:
	db "GFX_Layer1_ApeDefeated_Frame21.rnc"
GFX_Layer1_ApeDefeated_Frame21End:
GFX_Layer1_MilitaryDefeated_Frame1:
	db "GFX_Layer1_MilitaryDefeated_Frame1.rnc"
GFX_Layer1_MilitaryDefeated_Frame1End:
GFX_Layer1_SupervisorIntro_Frame73:
	db "GFX_Layer1_SupervisorIntro_Frame73.rnc"
GFX_Layer1_SupervisorIntro_Frame73End:
GFX_Layer1_SupervisorDefeated_Frame7:
	db "GFX_Layer1_SupervisorDefeated_Frame7.rnc"
GFX_Layer1_SupervisorDefeated_Frame7End:
GFX_Layer1_SupervisorDefeated_Frame16:
	db "GFX_Layer1_SupervisorDefeated_Frame16.rnc"
GFX_Layer1_SupervisorDefeated_Frame16End:
GFX_Layer1_SupervisorDefeated_Frame17:
	db "GFX_Layer1_SupervisorDefeated_Frame17.rnc"
GFX_Layer1_SupervisorDefeated_Frame17End:
GFX_Layer1_SupervisorDefeated_Frame22:
	db "GFX_Layer1_SupervisorDefeated_Frame22.rnc"
GFX_Layer1_SupervisorDefeated_Frame22End:
GFX_Layer1_SentryDefeated_Frame15:
	db "GFX_Layer1_SentryDefeated_Frame15.rnc"
GFX_Layer1_SentryDefeated_Frame15End:
GFX_Layer1_ApeDefeated_Frame5:
	db "GFX_Layer1_ApeDefeated_Frame5.rnc"
GFX_Layer1_ApeDefeated_Frame5End:
GFX_Layer1_ApeDefeated_Frame6:
	db "GFX_Layer1_ApeDefeated_Frame6.rnc"
GFX_Layer1_ApeDefeated_Frame6End:
GFX_Layer1_ApeDefeated_Frame7:
	db "GFX_Layer1_ApeDefeated_Frame7.rnc"
GFX_Layer1_ApeDefeated_Frame7End:
GFX_Layer1_ApeDefeated_Frame8:
	db "GFX_Layer1_ApeDefeated_Frame8.rnc"
GFX_Layer1_ApeDefeated_Frame8End:
GFX_Layer1_ApeDefeated_Frame10:
	db "GFX_Layer1_ApeDefeated_Frame10.rnc"
GFX_Layer1_ApeDefeated_Frame10End:
GFX_Layer1_ApeDefeated_Frame13:
	db "GFX_Layer1_ApeDefeated_Frame13.rnc"
GFX_Layer1_ApeDefeated_Frame13End:
GFX_Layer1_ApeDefeated_Frame15:
	db "GFX_Layer1_ApeDefeated_Frame15.rnc"
GFX_Layer1_ApeDefeated_Frame15End:
GFX_Layer1_ApeDefeated_Frame16:
	db "GFX_Layer1_ApeDefeated_Frame16.rnc"
GFX_Layer1_ApeDefeated_Frame16End:
GFX_Layer1_ApeDefeated_Frame17:
	db "GFX_Layer1_ApeDefeated_Frame17.rnc"
GFX_Layer1_ApeDefeated_Frame17End:
GFX_Layer1_SentryIntro_Frame17:
	db "GFX_Layer1_SentryIntro_Frame17.rnc"
GFX_Layer1_SentryIntro_Frame17End:
GFX_Layer1_SentryIntro_Frame18:
	db "GFX_Layer1_SentryIntro_Frame18.rnc"
GFX_Layer1_SentryIntro_Frame18End:
GFX_Layer1_SentryIntro_Frame19:
	db "GFX_Layer1_SentryIntro_Frame19.rnc"
GFX_Layer1_SentryIntro_Frame19End:
GFX_Layer1_SentryIntro_Frame20:
	db "GFX_Layer1_SentryIntro_Frame20.rnc"
GFX_Layer1_SentryIntro_Frame20End:
GFX_Layer1_SentryIntro_Frame21:
	db "GFX_Layer1_SentryIntro_Frame21.rnc"
GFX_Layer1_SentryIntro_Frame21End:
GFX_Layer1_SentryIntro_Frame22:
	db "GFX_Layer1_SentryIntro_Frame22.rnc"
GFX_Layer1_SentryIntro_Frame22End:
GFX_Layer1_ApeIntro_Frame2:
	db "GFX_Layer1_ApeIntro_Frame2.rnc"
GFX_Layer1_ApeIntro_Frame2End:
GFX_Layer1_SupervisorDefeated_Frame8:
	db "GFX_Layer1_SupervisorDefeated_Frame8.rnc"
GFX_Layer1_SupervisorDefeated_Frame8End:
GFX_Layer1_SupervisorDefeated_Frame23:
	db "GFX_Layer1_SupervisorDefeated_Frame23.rnc"
GFX_Layer1_SupervisorDefeated_Frame23End:
GFX_Layer1_SentryDefeated_Frame12:
	db "GFX_Layer1_SentryDefeated_Frame12.rnc"
GFX_Layer1_SentryDefeated_Frame12End:
GFX_Layer1_SentryDefeated_Frame13:
	db "GFX_Layer1_SentryDefeated_Frame13.rnc"
GFX_Layer1_SentryDefeated_Frame13End:
GFX_Layer1_SentryDefeated_Frame14:
	db "GFX_Layer1_SentryDefeated_Frame14.rnc"
GFX_Layer1_SentryDefeated_Frame14End:
GFX_Layer1_SentryDefeated_Frame16:
	db "GFX_Layer1_SentryDefeated_Frame16.rnc"
GFX_Layer1_SentryDefeated_Frame16End:
GFX_Layer1_ApeDefeated_Frame3:
	db "GFX_Layer1_ApeDefeated_Frame3.rnc"
GFX_Layer1_ApeDefeated_Frame3End:
GFX_Layer1_ApeDefeated_Frame4:
	db "GFX_Layer1_ApeDefeated_Frame4.rnc"
GFX_Layer1_ApeDefeated_Frame4End:
GFX_Layer1_CyborgIntro_Frame1:
	db "GFX_Layer1_CyborgIntro_Frame1.rnc"
GFX_Layer1_CyborgIntro_Frame1End:
GFX_Layer1_CyborgIntro_Frame2:
	db "GFX_Layer1_CyborgIntro_Frame2.rnc"
GFX_Layer1_CyborgIntro_Frame2End:
GFX_Layer1_SentryIntro_Frame23:
	db "GFX_Layer1_SentryIntro_Frame23.rnc"
GFX_Layer1_SentryIntro_Frame23End:
GFX_Layer1_SentryIntro_Frame27:
	db "GFX_Layer1_SentryIntro_Frame27.rnc"
GFX_Layer1_SentryIntro_Frame27End:
GFX_Layer1_SentryIntro_Frame28:
	db "GFX_Layer1_SentryIntro_Frame28.rnc"
GFX_Layer1_SentryIntro_Frame28End:
GFX_Layer1_SentryIntro_Frame29:
	db "GFX_Layer1_SentryIntro_Frame29.rnc"
GFX_Layer1_SentryIntro_Frame29End:
GFX_Layer1_CrusherIntro_Frame94:
	db "GFX_Layer1_CrusherIntro_Frame94.rnc"
GFX_Layer1_CrusherIntro_Frame94End:
GFX_Layer1_CrusherIntro_Frame95:
	db "GFX_Layer1_CrusherIntro_Frame95.rnc"
GFX_Layer1_CrusherIntro_Frame95End:
GFX_Layer1_CrusherIntro_Frame98:
	db "GFX_Layer1_CrusherIntro_Frame98.rnc"
GFX_Layer1_CrusherIntro_Frame98End:
GFX_Layer1_CrusherIntro_Frame99:
	db "GFX_Layer1_CrusherIntro_Frame99.rnc"
GFX_Layer1_CrusherIntro_Frame99End:
GFX_Layer1_SupervisorDefeated_Frame9:
	db "GFX_Layer1_SupervisorDefeated_Frame9.rnc"
GFX_Layer1_SupervisorDefeated_Frame9End:
GFX_Layer1_SupervisorDefeated_Frame15:
	db "GFX_Layer1_SupervisorDefeated_Frame15.rnc"
GFX_Layer1_SupervisorDefeated_Frame15End:
GFX_Layer1_SentryDefeated_Frame11:
	db "GFX_Layer1_SentryDefeated_Frame11.rnc"
GFX_Layer1_SentryDefeated_Frame11End:
GFX_Layer1_SentryDefeated_Frame17:
	db "GFX_Layer1_SentryDefeated_Frame17.rnc"
GFX_Layer1_SentryDefeated_Frame17End:
GFX_Layer1_SentryDefeated_Frame18:
	db "GFX_Layer1_SentryDefeated_Frame18.rnc"
GFX_Layer1_SentryDefeated_Frame18End:
GFX_Layer1_SentryDefeated_Frame19:
	db "GFX_Layer1_SentryDefeated_Frame19.rnc"
GFX_Layer1_SentryDefeated_Frame19End:
GFX_Layer1_SentryDefeated_Frame20:
	db "GFX_Layer1_SentryDefeated_Frame20.rnc"
GFX_Layer1_SentryDefeated_Frame20End:
GFX_Layer1_ApeDefeated_Frame2:
	db "GFX_Layer1_ApeDefeated_Frame2.rnc"
GFX_Layer1_ApeDefeated_Frame2End:
GFX_Layer1_CyborgIntro_Frame3:
	db "GFX_Layer1_CyborgIntro_Frame3.rnc"
GFX_Layer1_CyborgIntro_Frame3End:
GFX_Layer1_CyborgIntro_Frame4:
	db "GFX_Layer1_CyborgIntro_Frame4.rnc"
GFX_Layer1_CyborgIntro_Frame4End:
GFX_Layer1_SentryIntro_Frame24:
	db "GFX_Layer1_SentryIntro_Frame24.rnc"
GFX_Layer1_SentryIntro_Frame24End:
GFX_Layer1_SentryIntro_Frame26:
	db "GFX_Layer1_SentryIntro_Frame26.rnc"
GFX_Layer1_SentryIntro_Frame26End:
GFX_Layer1_SentryIntro_Frame30:
	db "GFX_Layer1_SentryIntro_Frame30.rnc"
GFX_Layer1_SentryIntro_Frame30End:
GFX_Layer1_CrusherIntro_Frame87:
	db "GFX_Layer1_CrusherIntro_Frame87.rnc"
GFX_Layer1_CrusherIntro_Frame87End:
GFX_Layer1_CrusherIntro_Frame88:
	db "GFX_Layer1_CrusherIntro_Frame88.rnc"
GFX_Layer1_CrusherIntro_Frame88End:
GFX_Layer1_CrusherIntro_Frame89:
	db "GFX_Layer1_CrusherIntro_Frame89.rnc"
GFX_Layer1_CrusherIntro_Frame89End:
GFX_Layer1_CrusherIntro_Frame90:
	db "GFX_Layer1_CrusherIntro_Frame90.rnc"
GFX_Layer1_CrusherIntro_Frame90End:
GFX_Layer1_CrusherIntro_Frame91:
	db "GFX_Layer1_CrusherIntro_Frame91.rnc"
GFX_Layer1_CrusherIntro_Frame91End:
GFX_Layer1_CrusherIntro_Frame92:
	db "GFX_Layer1_CrusherIntro_Frame92.rnc"
GFX_Layer1_CrusherIntro_Frame92End:
GFX_Layer1_CrusherIntro_Frame93:
	db "GFX_Layer1_CrusherIntro_Frame93.rnc"
GFX_Layer1_CrusherIntro_Frame93End:
GFX_Layer1_CrusherIntro_Frame96:
	db "GFX_Layer1_CrusherIntro_Frame96.rnc"
GFX_Layer1_CrusherIntro_Frame96End:
GFX_Layer1_CrusherIntro_Frame97:
	db "GFX_Layer1_CrusherIntro_Frame97.rnc"
GFX_Layer1_CrusherIntro_Frame97End:
GFX_Layer1_CrusherIntro_Frame100:
	db "GFX_Layer1_CrusherIntro_Frame100.rnc"
GFX_Layer1_CrusherIntro_Frame100End:
GFX_Layer1_CrusherIntro_Frame101:
	db "GFX_Layer1_CrusherIntro_Frame101.rnc"
GFX_Layer1_CrusherIntro_Frame101End:
GFX_Layer1_SupervisorDefeated_Frame10:
	db "GFX_Layer1_SupervisorDefeated_Frame10.rnc"
GFX_Layer1_SupervisorDefeated_Frame10End:
GFX_Layer1_SupervisorDefeated_Frame11:
	db "GFX_Layer1_SupervisorDefeated_Frame11.rnc"
GFX_Layer1_SupervisorDefeated_Frame11End:
GFX_Layer1_SupervisorDefeated_Frame50:
	db "GFX_Layer1_SupervisorDefeated_Frame50.rnc"
GFX_Layer1_SupervisorDefeated_Frame50End:
GFX_Layer1_SentryDefeated_Frame10:
	db "GFX_Layer1_SentryDefeated_Frame10.rnc"
GFX_Layer1_SentryDefeated_Frame10End:
GFX_Layer1_MilitaryDefeated_Frame3:
	db "GFX_Layer1_MilitaryDefeated_Frame3.rnc"
GFX_Layer1_MilitaryDefeated_Frame3End:
GFX_Layer1_CyborgDefeated_Frame22:
	db "GFX_Layer1_CyborgDefeated_Frame22.rnc"
GFX_Layer1_CyborgDefeated_Frame22End:
GFX_Layer1_CyborgIntro_Frame5:
	db "GFX_Layer1_CyborgIntro_Frame5.rnc"
GFX_Layer1_CyborgIntro_Frame5End:
GFX_Layer1_SentryIntro_Frame1:
	db "GFX_Layer1_SentryIntro_Frame1.rnc"
GFX_Layer1_SentryIntro_Frame1End:
GFX_Layer1_SentryIntro_Frame14:
	db "GFX_Layer1_SentryIntro_Frame14.rnc"
GFX_Layer1_SentryIntro_Frame14End:
GFX_Layer1_SentryIntro_Frame15:
	db "GFX_Layer1_SentryIntro_Frame15.rnc"
GFX_Layer1_SentryIntro_Frame15End:
GFX_Layer1_SentryIntro_Frame25:
	db "GFX_Layer1_SentryIntro_Frame25.rnc"
GFX_Layer1_SentryIntro_Frame25End:
GFX_Layer1_SupervisorIntro_Frame53:
	db "GFX_Layer1_SupervisorIntro_Frame53.rnc"
GFX_Layer1_SupervisorIntro_Frame53End:
GFX_Layer1_CrusherIntro_Frame82:
	db "GFX_Layer1_CrusherIntro_Frame82.rnc"
GFX_Layer1_CrusherIntro_Frame82End:
GFX_Layer1_CrusherIntro_Frame83:
	db "GFX_Layer1_CrusherIntro_Frame83.rnc"
GFX_Layer1_CrusherIntro_Frame83End:
GFX_Layer1_CrusherIntro_Frame84:
	db "GFX_Layer1_CrusherIntro_Frame84.rnc"
GFX_Layer1_CrusherIntro_Frame84End:
GFX_Layer1_CrusherIntro_Frame85:
	db "GFX_Layer1_CrusherIntro_Frame85.rnc"
GFX_Layer1_CrusherIntro_Frame85End:
GFX_Layer1_CrusherIntro_Frame86:
	db "GFX_Layer1_CrusherIntro_Frame86.rnc"
GFX_Layer1_CrusherIntro_Frame86End:
GFX_Layer1_SupervisorDefeated_Frame24:
	db "GFX_Layer1_SupervisorDefeated_Frame24.rnc"
GFX_Layer1_SupervisorDefeated_Frame24End:
GFX_Layer1_SupervisorDefeated_Frame25:
	db "GFX_Layer1_SupervisorDefeated_Frame25.rnc"
GFX_Layer1_SupervisorDefeated_Frame25End:
GFX_Layer1_SupervisorDefeated_Frame26:
	db "GFX_Layer1_SupervisorDefeated_Frame26.rnc"
GFX_Layer1_SupervisorDefeated_Frame26End:
GFX_Layer1_SupervisorDefeated_Frame51:
	db "GFX_Layer1_SupervisorDefeated_Frame51.rnc"
GFX_Layer1_SupervisorDefeated_Frame51End:
GFX_Layer1_SentryDefeated_Frame2:
	db "GFX_Layer1_SentryDefeated_Frame2.rnc"
GFX_Layer1_SentryDefeated_Frame2End:
GFX_Layer1_SentryDefeated_Frame9:
	db "GFX_Layer1_SentryDefeated_Frame9.rnc"
GFX_Layer1_SentryDefeated_Frame9End:
GFX_Layer1_CyborgDefeated_Frame23:
	db "GFX_Layer1_CyborgDefeated_Frame23.rnc"
GFX_Layer1_CyborgDefeated_Frame23End:
GFX_Layer1_CyborgDefeated_Frame24:
	db "GFX_Layer1_CyborgDefeated_Frame24.rnc"
GFX_Layer1_CyborgDefeated_Frame24End:
GFX_Layer1_CyborgDefeated_Frame26:
	db "GFX_Layer1_CyborgDefeated_Frame26.rnc"
GFX_Layer1_CyborgDefeated_Frame26End:
GFX_Layer1_CyborgDefeated_Frame27:
	db "GFX_Layer1_CyborgDefeated_Frame27.rnc"
GFX_Layer1_CyborgDefeated_Frame27End:
GFX_Layer1_CyborgDefeated_Frame28:
	db "GFX_Layer1_CyborgDefeated_Frame28.rnc"
GFX_Layer1_CyborgDefeated_Frame28End:
GFX_Layer1_CyborgDefeated_Frame29:
	db "GFX_Layer1_CyborgDefeated_Frame29.rnc"
GFX_Layer1_CyborgDefeated_Frame29End:
GFX_Layer1_ApproachingMetropolis4_Frame1:
	db "GFX_Layer1_ApproachingMetropolis4_Frame1.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame1End:
GFX_Layer1_CyborgIntro_Frame6:
	db "GFX_Layer1_CyborgIntro_Frame6.rnc"
GFX_Layer1_CyborgIntro_Frame6End:
GFX_Layer1_CyborgIntro_Frame7:
	db "GFX_Layer1_CyborgIntro_Frame7.rnc"
GFX_Layer1_CyborgIntro_Frame7End:
GFX_Layer1_CyborgIntro_Frame8:
	db "GFX_Layer1_CyborgIntro_Frame8.rnc"
GFX_Layer1_CyborgIntro_Frame8End:
GFX_Layer1_SentryIntro_Frame2:
	db "GFX_Layer1_SentryIntro_Frame2.rnc"
GFX_Layer1_SentryIntro_Frame2End:
GFX_Layer1_SentryIntro_Frame3:
	db "GFX_Layer1_SentryIntro_Frame3.rnc"
GFX_Layer1_SentryIntro_Frame3End:
GFX_Layer1_SentryIntro_Frame4:
	db "GFX_Layer1_SentryIntro_Frame4.rnc"
GFX_Layer1_SentryIntro_Frame4End:
GFX_Layer1_SentryIntro_Frame6:
	db "GFX_Layer1_SentryIntro_Frame6.rnc"
GFX_Layer1_SentryIntro_Frame6End:
GFX_Layer1_SentryIntro_Frame12:
	db "GFX_Layer1_SentryIntro_Frame12.rnc"
GFX_Layer1_SentryIntro_Frame12End:
GFX_Layer1_SentryIntro_Frame13:
	db "GFX_Layer1_SentryIntro_Frame13.rnc"
GFX_Layer1_SentryIntro_Frame13End:
GFX_Layer1_LoaderIntro_Frame129:
	db "GFX_Layer1_LoaderIntro_Frame129.rnc"
GFX_Layer1_LoaderIntro_Frame129End:
GFX_Layer1_CrusherIntro_Frame78:
	db "GFX_Layer1_CrusherIntro_Frame78.rnc"
GFX_Layer1_CrusherIntro_Frame78End:
GFX_Layer1_CrusherIntro_Frame79:
	db "GFX_Layer1_CrusherIntro_Frame79.rnc"
GFX_Layer1_CrusherIntro_Frame79End:
GFX_Layer1_CrusherIntro_Frame80:
	db "GFX_Layer1_CrusherIntro_Frame80.rnc"
GFX_Layer1_CrusherIntro_Frame80End:
GFX_Layer1_CrusherIntro_Frame81:
	db "GFX_Layer1_CrusherIntro_Frame81.rnc"
GFX_Layer1_CrusherIntro_Frame81End:
GFX_Layer1_SupervisorDefeated_Frame2:
	db "GFX_Layer1_SupervisorDefeated_Frame2.rnc"
GFX_Layer1_SupervisorDefeated_Frame2End:
GFX_Layer1_SupervisorDefeated_Frame14:
	db "GFX_Layer1_SupervisorDefeated_Frame14.rnc"
GFX_Layer1_SupervisorDefeated_Frame14End:
GFX_Layer1_SupervisorDefeated_Frame27:
	db "GFX_Layer1_SupervisorDefeated_Frame27.rnc"
GFX_Layer1_SupervisorDefeated_Frame27End:
GFX_Layer1_SentryDefeated_Frame4:
	db "GFX_Layer1_SentryDefeated_Frame4.rnc"
GFX_Layer1_SentryDefeated_Frame4End:
GFX_Layer1_SentryDefeated_Frame5:
	db "GFX_Layer1_SentryDefeated_Frame5.rnc"
GFX_Layer1_SentryDefeated_Frame5End:
GFX_Layer1_SentryDefeated_Frame6:
	db "GFX_Layer1_SentryDefeated_Frame6.rnc"
GFX_Layer1_SentryDefeated_Frame6End:
GFX_Layer1_SentryDefeated_Frame7:
	db "GFX_Layer1_SentryDefeated_Frame7.rnc"
GFX_Layer1_SentryDefeated_Frame7End:
GFX_Layer1_SentryDefeated_Frame8:
	db "GFX_Layer1_SentryDefeated_Frame8.rnc"
GFX_Layer1_SentryDefeated_Frame8End:
GFX_Layer1_SentryDefeated_Frame21:
	db "GFX_Layer1_SentryDefeated_Frame21.rnc"
GFX_Layer1_SentryDefeated_Frame21End:
GFX_Layer1_ApproachingMetropolis4_Frame74:
	db "GFX_Layer1_ApproachingMetropolis4_Frame74.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame74End:
GFX_Layer1_CyborgIntro_Frame9:
	db "GFX_Layer1_CyborgIntro_Frame9.rnc"
GFX_Layer1_CyborgIntro_Frame9End:
GFX_Layer1_SentryIntro_Frame5:
	db "GFX_Layer1_SentryIntro_Frame5.rnc"
GFX_Layer1_SentryIntro_Frame5End:
GFX_Layer1_SentryIntro_Frame7:
	db "GFX_Layer1_SentryIntro_Frame7.rnc"
GFX_Layer1_SentryIntro_Frame7End:
GFX_Layer1_SentryIntro_Frame8:
	db "GFX_Layer1_SentryIntro_Frame8.rnc"
GFX_Layer1_SentryIntro_Frame8End:
GFX_Layer1_SentryIntro_Frame9:
	db "GFX_Layer1_SentryIntro_Frame9.rnc"
GFX_Layer1_SentryIntro_Frame9End:
GFX_Layer1_SentryIntro_Frame10:
	db "GFX_Layer1_SentryIntro_Frame10.rnc"
GFX_Layer1_SentryIntro_Frame10End:
GFX_Layer1_SentryIntro_Frame11:
	db "GFX_Layer1_SentryIntro_Frame11.rnc"
GFX_Layer1_SentryIntro_Frame11End:
GFX_Layer1_ApeIntro_Frame140:
	db "GFX_Layer1_ApeIntro_Frame140.rnc"
GFX_Layer1_ApeIntro_Frame140End:
GFX_Layer1_CrusherIntro_Frame69:
	db "GFX_Layer1_CrusherIntro_Frame69.rnc"
GFX_Layer1_CrusherIntro_Frame69End:
GFX_Layer1_CrusherIntro_Frame70:
	db "GFX_Layer1_CrusherIntro_Frame70.rnc"
GFX_Layer1_CrusherIntro_Frame70End:
GFX_Layer1_CrusherIntro_Frame71:
	db "GFX_Layer1_CrusherIntro_Frame71.rnc"
GFX_Layer1_CrusherIntro_Frame71End:
GFX_Layer1_CrusherIntro_Frame72:
	db "GFX_Layer1_CrusherIntro_Frame72.rnc"
GFX_Layer1_CrusherIntro_Frame72End:
GFX_Layer1_CrusherIntro_Frame73:
	db "GFX_Layer1_CrusherIntro_Frame73.rnc"
GFX_Layer1_CrusherIntro_Frame73End:
GFX_Layer1_CrusherIntro_Frame74:
	db "GFX_Layer1_CrusherIntro_Frame74.rnc"
GFX_Layer1_CrusherIntro_Frame74End:
GFX_Layer1_CrusherIntro_Frame75:
	db "GFX_Layer1_CrusherIntro_Frame75.rnc"
GFX_Layer1_CrusherIntro_Frame75End:
GFX_Layer1_CrusherIntro_Frame76:
	db "GFX_Layer1_CrusherIntro_Frame76.rnc"
GFX_Layer1_CrusherIntro_Frame76End:
GFX_Layer1_CrusherIntro_Frame77:
	db "GFX_Layer1_CrusherIntro_Frame77.rnc"
GFX_Layer1_CrusherIntro_Frame77End:
GFX_Layer1_SupervisorDefeated_Frame28:
	db "GFX_Layer1_SupervisorDefeated_Frame28.rnc"
GFX_Layer1_SupervisorDefeated_Frame28End:
GFX_Layer1_SupervisorDefeated_Frame29:
	db "GFX_Layer1_SupervisorDefeated_Frame29.rnc"
GFX_Layer1_SupervisorDefeated_Frame29End:
GFX_Layer1_SentryDefeated_Frame3:
	db "GFX_Layer1_SentryDefeated_Frame3.rnc"
GFX_Layer1_SentryDefeated_Frame3End:
GFX_Layer1_CyborgIntro_Frame10:
	db "GFX_Layer1_CyborgIntro_Frame10.rnc"
GFX_Layer1_CyborgIntro_Frame10End:
GFX_Layer1_CyborgIntro_Frame11:
	db "GFX_Layer1_CyborgIntro_Frame11.rnc"
GFX_Layer1_CyborgIntro_Frame11End:
GFX_Layer1_CyborgIntro_Frame12:
	db "GFX_Layer1_CyborgIntro_Frame12.rnc"
GFX_Layer1_CyborgIntro_Frame12End:
GFX_Layer1_CyborgIntro_Frame13:
	db "GFX_Layer1_CyborgIntro_Frame13.rnc"
GFX_Layer1_CyborgIntro_Frame13End:
GFX_Layer1_LoaderIntro_Frame128:
	db "GFX_Layer1_LoaderIntro_Frame128.rnc"
GFX_Layer1_LoaderIntro_Frame128End:
GFX_Layer1_CrusherIntro_Frame45:
	db "GFX_Layer1_CrusherIntro_Frame45.rnc"
GFX_Layer1_CrusherIntro_Frame45End:
GFX_Layer1_CrusherIntro_Frame58:
	db "GFX_Layer1_CrusherIntro_Frame58.rnc"
GFX_Layer1_CrusherIntro_Frame58End:
GFX_Layer1_CrusherIntro_Frame59:
	db "GFX_Layer1_CrusherIntro_Frame59.rnc"
GFX_Layer1_CrusherIntro_Frame59End:
GFX_Layer1_CrusherIntro_Frame60:
	db "GFX_Layer1_CrusherIntro_Frame60.rnc"
GFX_Layer1_CrusherIntro_Frame60End:
GFX_Layer1_CrusherIntro_Frame61:
	db "GFX_Layer1_CrusherIntro_Frame61.rnc"
GFX_Layer1_CrusherIntro_Frame61End:
GFX_Layer1_CrusherIntro_Frame62:
	db "GFX_Layer1_CrusherIntro_Frame62.rnc"
GFX_Layer1_CrusherIntro_Frame62End:
GFX_Layer1_CrusherIntro_Frame63:
	db "GFX_Layer1_CrusherIntro_Frame63.rnc"
GFX_Layer1_CrusherIntro_Frame63End:
GFX_Layer1_CrusherIntro_Frame64:
	db "GFX_Layer1_CrusherIntro_Frame64.rnc"
GFX_Layer1_CrusherIntro_Frame64End:
GFX_Layer1_CrusherIntro_Frame65:
	db "GFX_Layer1_CrusherIntro_Frame65.rnc"
GFX_Layer1_CrusherIntro_Frame65End:
GFX_Layer1_CrusherIntro_Frame66:
	db "GFX_Layer1_CrusherIntro_Frame66.rnc"
GFX_Layer1_CrusherIntro_Frame66End:
GFX_Layer1_CrusherIntro_Frame67:
	db "GFX_Layer1_CrusherIntro_Frame67.rnc"
GFX_Layer1_CrusherIntro_Frame67End:
GFX_Layer1_CrusherIntro_Frame68:
	db "GFX_Layer1_CrusherIntro_Frame68.rnc"
GFX_Layer1_CrusherIntro_Frame68End:
GFX_Layer1_SupervisorDefeated_Frame30:
	db "GFX_Layer1_SupervisorDefeated_Frame30.rnc"
GFX_Layer1_SupervisorDefeated_Frame30End:
GFX_Layer1_SupervisorDefeated_Frame31:
	db "GFX_Layer1_SupervisorDefeated_Frame31.rnc"
GFX_Layer1_SupervisorDefeated_Frame31End:
GFX_Layer1_MilitaryDefeated_Frame4:
	db "GFX_Layer1_MilitaryDefeated_Frame4.rnc"
GFX_Layer1_MilitaryDefeated_Frame4End:
GFX_Layer1_MilitaryDefeated_Frame5:
	db "GFX_Layer1_MilitaryDefeated_Frame5.rnc"
GFX_Layer1_MilitaryDefeated_Frame5End:
GFX_Layer1_MilitaryDefeated_Frame6:
	db "GFX_Layer1_MilitaryDefeated_Frame6.rnc"
GFX_Layer1_MilitaryDefeated_Frame6End:
GFX_Layer1_MilitaryDefeated_Frame7:
	db "GFX_Layer1_MilitaryDefeated_Frame7.rnc"
GFX_Layer1_MilitaryDefeated_Frame7End:
GFX_Layer1_MilitaryDefeated_Frame9:
	db "GFX_Layer1_MilitaryDefeated_Frame9.rnc"
GFX_Layer1_MilitaryDefeated_Frame9End:
GFX_Layer1_CyborgDefeated_Frame30:
	db "GFX_Layer1_CyborgDefeated_Frame30.rnc"
GFX_Layer1_CyborgDefeated_Frame30End:
GFX_Layer1_CyborgDefeated_Frame31:
	db "GFX_Layer1_CyborgDefeated_Frame31.rnc"
GFX_Layer1_CyborgDefeated_Frame31End:
GFX_Layer1_ApproachingMetropolis4_Frame96:
	db "GFX_Layer1_ApproachingMetropolis4_Frame96.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame96End:
GFX_Layer1_ApproachingMetropolis4_Frame97:
	db "GFX_Layer1_ApproachingMetropolis4_Frame97.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame97End:
GFX_Layer1_ApproachingMetropolis4_Frame98:
	db "GFX_Layer1_ApproachingMetropolis4_Frame98.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame98End:
GFX_Layer1_ApproachingMetropolis4_Frame102:
	db "GFX_Layer1_ApproachingMetropolis4_Frame102.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame102End:
GFX_Layer1_CyborgIntro_Frame14:
	db "GFX_Layer1_CyborgIntro_Frame14.rnc"
GFX_Layer1_CyborgIntro_Frame14End:
GFX_Layer1_LoaderIntro_Frame47:
	db "GFX_Layer1_LoaderIntro_Frame47.rnc"
GFX_Layer1_LoaderIntro_Frame47End:
GFX_Layer1_CrusherIntro_Frame56:
	db "GFX_Layer1_CrusherIntro_Frame56.rnc"
GFX_Layer1_CrusherIntro_Frame56End:
GFX_Layer1_CrusherIntro_Frame57:
	db "GFX_Layer1_CrusherIntro_Frame57.rnc"
GFX_Layer1_CrusherIntro_Frame57End:
GFX_Layer1_SupervisorDefeated_Frame32:
	db "GFX_Layer1_SupervisorDefeated_Frame32.rnc"
GFX_Layer1_SupervisorDefeated_Frame32End:
GFX_Layer1_MilitaryDefeated_Frame8:
	db "GFX_Layer1_MilitaryDefeated_Frame8.rnc"
GFX_Layer1_MilitaryDefeated_Frame8End:
GFX_Layer1_MilitaryDefeated_Frame10:
	db "GFX_Layer1_MilitaryDefeated_Frame10.rnc"
GFX_Layer1_MilitaryDefeated_Frame10End:
GFX_Layer1_MilitaryDefeated_Frame11:
	db "GFX_Layer1_MilitaryDefeated_Frame11.rnc"
GFX_Layer1_MilitaryDefeated_Frame11End:
GFX_Layer1_MilitaryDefeated_Frame12:
	db "GFX_Layer1_MilitaryDefeated_Frame12.rnc"
GFX_Layer1_MilitaryDefeated_Frame12End:
GFX_Layer1_MilitaryDefeated_Frame13:
	db "GFX_Layer1_MilitaryDefeated_Frame13.rnc"
GFX_Layer1_MilitaryDefeated_Frame13End:
GFX_Layer1_MilitaryDefeated_Frame14:
	db "GFX_Layer1_MilitaryDefeated_Frame14.rnc"
GFX_Layer1_MilitaryDefeated_Frame14End:
GFX_Layer1_MilitaryDefeated_Frame15:
	db "GFX_Layer1_MilitaryDefeated_Frame15.rnc"
GFX_Layer1_MilitaryDefeated_Frame15End:
GFX_Layer1_MilitaryDefeated_Frame16:
	db "GFX_Layer1_MilitaryDefeated_Frame16.rnc"
GFX_Layer1_MilitaryDefeated_Frame16End:
GFX_Layer1_MilitaryDefeated_Frame20:
	db "GFX_Layer1_MilitaryDefeated_Frame20.rnc"
GFX_Layer1_MilitaryDefeated_Frame20End:
GFX_Layer1_CyborgDefeated_Frame14:
	db "GFX_Layer1_CyborgDefeated_Frame14.rnc"
GFX_Layer1_CyborgDefeated_Frame14End:
GFX_Layer1_CyborgDefeated_Frame32:
	db "GFX_Layer1_CyborgDefeated_Frame32.rnc"
GFX_Layer1_CyborgDefeated_Frame32End:
GFX_Layer1_ApproachingMetropolis4_Frame95:
	db "GFX_Layer1_ApproachingMetropolis4_Frame95.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame95End:
GFX_Layer1_ApproachingMetropolis4_Frame99:
	db "GFX_Layer1_ApproachingMetropolis4_Frame99.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame99End:
GFX_Layer1_ApproachingMetropolis4_Frame100:
	db "GFX_Layer1_ApproachingMetropolis4_Frame100.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame100End:
GFX_Layer1_ApproachingMetropolis4_Frame101:
	db "GFX_Layer1_ApproachingMetropolis4_Frame101.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame101End:
GFX_Layer1_ApproachingMetropolis4_Frame103:
	db "GFX_Layer1_ApproachingMetropolis4_Frame103.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame103End:
GFX_Layer1_ApproachingMetropolis4_Frame104:
	db "GFX_Layer1_ApproachingMetropolis4_Frame104.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame104End:
GFX_Layer1_ApproachingMetropolis4_Frame105:
	db "GFX_Layer1_ApproachingMetropolis4_Frame105.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame105End:
GFX_Layer1_ApproachingMetropolis4_Frame106:
	db "GFX_Layer1_ApproachingMetropolis4_Frame106.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame106End:
GFX_Layer1_ApproachingMetropolis4_Frame109:
	db "GFX_Layer1_ApproachingMetropolis4_Frame109.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame109End:
GFX_Layer1_ApproachingMetropolis4_Frame110:
	db "GFX_Layer1_ApproachingMetropolis4_Frame110.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame110End:
GFX_Layer1_CyborgIntro_Frame15:
	db "GFX_Layer1_CyborgIntro_Frame15.rnc"
GFX_Layer1_CyborgIntro_Frame15End:
GFX_Layer1_CyborgIntro_Frame16:
	db "GFX_Layer1_CyborgIntro_Frame16.rnc"
GFX_Layer1_CyborgIntro_Frame16End:
GFX_Layer1_MilitaryIntro_Frame118:
	db "GFX_Layer1_MilitaryIntro_Frame118.rnc"
GFX_Layer1_MilitaryIntro_Frame118End:
GFX_Layer1_LoaderIntro_Frame125:
	db "GFX_Layer1_LoaderIntro_Frame125.rnc"
GFX_Layer1_LoaderIntro_Frame125End:
GFX_Layer1_LoaderIntro_Frame126:
	db "GFX_Layer1_LoaderIntro_Frame126.rnc"
GFX_Layer1_LoaderIntro_Frame126End:
GFX_Layer1_LoaderIntro_Frame127:
	db "GFX_Layer1_LoaderIntro_Frame127.rnc"
GFX_Layer1_LoaderIntro_Frame127End:
GFX_Layer1_CrusherIntro_Frame53:
	db "GFX_Layer1_CrusherIntro_Frame53.rnc"
GFX_Layer1_CrusherIntro_Frame53End:
GFX_Layer1_CrusherIntro_Frame54:
	db "GFX_Layer1_CrusherIntro_Frame54.rnc"
GFX_Layer1_CrusherIntro_Frame54End:
GFX_Layer1_CrusherIntro_Frame55:
	db "GFX_Layer1_CrusherIntro_Frame55.rnc"
GFX_Layer1_CrusherIntro_Frame55End:
GFX_Layer1_SupervisorDefeated_Frame33:
	db "GFX_Layer1_SupervisorDefeated_Frame33.rnc"
GFX_Layer1_SupervisorDefeated_Frame33End:
GFX_Layer1_SupervisorDefeated_Frame35:
	db "GFX_Layer1_SupervisorDefeated_Frame35.rnc"
GFX_Layer1_SupervisorDefeated_Frame35End:
GFX_Layer1_SentryDefeated_Frame22:
	db "GFX_Layer1_SentryDefeated_Frame22.rnc"
GFX_Layer1_SentryDefeated_Frame22End:
GFX_Layer1_MilitaryDefeated_Frame17:
	db "GFX_Layer1_MilitaryDefeated_Frame17.rnc"
GFX_Layer1_MilitaryDefeated_Frame17End:
GFX_Layer1_MilitaryDefeated_Frame18:
	db "GFX_Layer1_MilitaryDefeated_Frame18.rnc"
GFX_Layer1_MilitaryDefeated_Frame18End:
GFX_Layer1_MilitaryDefeated_Frame19:
	db "GFX_Layer1_MilitaryDefeated_Frame19.rnc"
GFX_Layer1_MilitaryDefeated_Frame19End:
GFX_Layer1_CyborgDefeated_Frame15:
	db "GFX_Layer1_CyborgDefeated_Frame15.rnc"
GFX_Layer1_CyborgDefeated_Frame15End:
GFX_Layer1_ApproachingMetropolis4_Frame75:
	db "GFX_Layer1_ApproachingMetropolis4_Frame75.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame75End:
GFX_Layer1_ApproachingMetropolis4_Frame86:
	db "GFX_Layer1_ApproachingMetropolis4_Frame86.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame86End:
GFX_Layer1_ApproachingMetropolis4_Frame89:
	db "GFX_Layer1_ApproachingMetropolis4_Frame89.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame89End:
GFX_Layer1_ApproachingMetropolis4_Frame91:
	db "GFX_Layer1_ApproachingMetropolis4_Frame91.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame91End:
GFX_Layer1_ApproachingMetropolis4_Frame92:
	db "GFX_Layer1_ApproachingMetropolis4_Frame92.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame92End:
GFX_Layer1_ApproachingMetropolis4_Frame93:
	db "GFX_Layer1_ApproachingMetropolis4_Frame93.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame93End:
GFX_Layer1_ApproachingMetropolis4_Frame94:
	db "GFX_Layer1_ApproachingMetropolis4_Frame94.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame94End:
GFX_Layer1_ApproachingMetropolis4_Frame107:
	db "GFX_Layer1_ApproachingMetropolis4_Frame107.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame107End:
GFX_Layer1_ApproachingMetropolis4_Frame108:
	db "GFX_Layer1_ApproachingMetropolis4_Frame108.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame108End:
GFX_Layer1_ApproachingMetropolis4_Frame111:
	db "GFX_Layer1_ApproachingMetropolis4_Frame111.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame111End:
GFX_Layer1_CyborgIntro_Frame17:
	db "GFX_Layer1_CyborgIntro_Frame17.rnc"
GFX_Layer1_CyborgIntro_Frame17End:
GFX_Layer1_CyborgIntro_Frame18:
	db "GFX_Layer1_CyborgIntro_Frame18.rnc"
GFX_Layer1_CyborgIntro_Frame18End:
GFX_Layer1_CyborgIntro_Frame19:
	db "GFX_Layer1_CyborgIntro_Frame19.rnc"
GFX_Layer1_CyborgIntro_Frame19End:
GFX_Layer1_LoaderIntro_Frame122:
	db "GFX_Layer1_LoaderIntro_Frame122.rnc"
GFX_Layer1_LoaderIntro_Frame122End:
GFX_Layer1_LoaderIntro_Frame123:
	db "GFX_Layer1_LoaderIntro_Frame123.rnc"
GFX_Layer1_LoaderIntro_Frame123End:
GFX_Layer1_LoaderIntro_Frame124:
	db "GFX_Layer1_LoaderIntro_Frame124.rnc"
GFX_Layer1_LoaderIntro_Frame124End:
GFX_Layer1_CrusherIntro_Frame29:
	db "GFX_Layer1_CrusherIntro_Frame29.rnc"
GFX_Layer1_CrusherIntro_Frame29End:
GFX_Layer1_CrusherIntro_Frame48:
	db "GFX_Layer1_CrusherIntro_Frame48.rnc"
GFX_Layer1_CrusherIntro_Frame48End:
GFX_Layer1_CrusherIntro_Frame49:
	db "GFX_Layer1_CrusherIntro_Frame49.rnc"
GFX_Layer1_CrusherIntro_Frame49End:
GFX_Layer1_CrusherIntro_Frame50:
	db "GFX_Layer1_CrusherIntro_Frame50.rnc"
GFX_Layer1_CrusherIntro_Frame50End:
GFX_Layer1_CrusherIntro_Frame51:
	db "GFX_Layer1_CrusherIntro_Frame51.rnc"
GFX_Layer1_CrusherIntro_Frame51End:
GFX_Layer1_CrusherIntro_Frame52:
	db "GFX_Layer1_CrusherIntro_Frame52.rnc"
GFX_Layer1_CrusherIntro_Frame52End:
GFX_Layer1_SupervisorDefeated_Frame13:
	db "GFX_Layer1_SupervisorDefeated_Frame13.rnc"
GFX_Layer1_SupervisorDefeated_Frame13End:
GFX_Layer1_SupervisorDefeated_Frame34:
	db "GFX_Layer1_SupervisorDefeated_Frame34.rnc"
GFX_Layer1_SupervisorDefeated_Frame34End:
GFX_Layer1_SupervisorDefeated_Frame36:
	db "GFX_Layer1_SupervisorDefeated_Frame36.rnc"
GFX_Layer1_SupervisorDefeated_Frame36End:
GFX_Layer1_SupervisorDefeated_Frame37:
	db "GFX_Layer1_SupervisorDefeated_Frame37.rnc"
GFX_Layer1_SupervisorDefeated_Frame37End:
GFX_Layer1_SupervisorDefeated_Frame38:
	db "GFX_Layer1_SupervisorDefeated_Frame38.rnc"
GFX_Layer1_SupervisorDefeated_Frame38End:
GFX_Layer1_CyborgDefeated_Frame12:
	db "GFX_Layer1_CyborgDefeated_Frame12.rnc"
GFX_Layer1_CyborgDefeated_Frame12End:
GFX_Layer1_CyborgDefeated_Frame16:
	db "GFX_Layer1_CyborgDefeated_Frame16.rnc"
GFX_Layer1_CyborgDefeated_Frame16End:
GFX_Layer1_CyborgDefeated_Frame17:
	db "GFX_Layer1_CyborgDefeated_Frame17.rnc"
GFX_Layer1_CyborgDefeated_Frame17End:
GFX_Layer1_CyborgDefeated_Frame18:
	db "GFX_Layer1_CyborgDefeated_Frame18.rnc"
GFX_Layer1_CyborgDefeated_Frame18End:
GFX_Layer1_ApproachingMetropolis4_Frame79:
	db "GFX_Layer1_ApproachingMetropolis4_Frame79.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame79End:
GFX_Layer1_ApproachingMetropolis4_Frame81:
	db "GFX_Layer1_ApproachingMetropolis4_Frame81.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame81End:
GFX_Layer1_ApproachingMetropolis4_Frame82:
	db "GFX_Layer1_ApproachingMetropolis4_Frame82.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame82End:
GFX_Layer1_ApproachingMetropolis4_Frame83:
	db "GFX_Layer1_ApproachingMetropolis4_Frame83.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame83End:
GFX_Layer1_ApproachingMetropolis4_Frame84:
	db "GFX_Layer1_ApproachingMetropolis4_Frame84.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame84End:
GFX_Layer1_ApproachingMetropolis4_Frame85:
	db "GFX_Layer1_ApproachingMetropolis4_Frame85.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame85End:
GFX_Layer1_ApproachingMetropolis4_Frame87:
	db "GFX_Layer1_ApproachingMetropolis4_Frame87.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame87End:
GFX_Layer1_ApproachingMetropolis4_Frame88:
	db "GFX_Layer1_ApproachingMetropolis4_Frame88.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame88End:
GFX_Layer1_ApproachingMetropolis4_Frame90:
	db "GFX_Layer1_ApproachingMetropolis4_Frame90.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame90End:
GFX_Layer1_ApproachingMetropolis4_Frame112:
	db "GFX_Layer1_ApproachingMetropolis4_Frame112.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame112End:
GFX_Layer1_ApproachingMetropolis4_Frame113:
	db "GFX_Layer1_ApproachingMetropolis4_Frame113.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame113End:
GFX_Layer1_ApproachingMetropolis4_Frame115:
	db "GFX_Layer1_ApproachingMetropolis4_Frame115.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame115End:
GFX_Layer1_MilitaryIntro_Frame117:
	db "GFX_Layer1_MilitaryIntro_Frame117.rnc"
GFX_Layer1_MilitaryIntro_Frame117End:
GFX_Layer1_SupervisorIntro_Frame76:
	db "GFX_Layer1_SupervisorIntro_Frame76.rnc"
GFX_Layer1_SupervisorIntro_Frame76End:
GFX_Layer1_SupervisorIntro_Frame77:
	db "GFX_Layer1_SupervisorIntro_Frame77.rnc"
GFX_Layer1_SupervisorIntro_Frame77End:
GFX_Layer1_SupervisorIntro_Frame78:
	db "GFX_Layer1_SupervisorIntro_Frame78.rnc"
GFX_Layer1_SupervisorIntro_Frame78End:
GFX_Layer1_SupervisorIntro_Frame80:
	db "GFX_Layer1_SupervisorIntro_Frame80.rnc"
GFX_Layer1_SupervisorIntro_Frame80End:
GFX_Layer1_SupervisorIntro_Frame81:
	db "GFX_Layer1_SupervisorIntro_Frame81.rnc"
GFX_Layer1_SupervisorIntro_Frame81End:
GFX_Layer1_SupervisorIntro_Frame83:
	db "GFX_Layer1_SupervisorIntro_Frame83.rnc"
GFX_Layer1_SupervisorIntro_Frame83End:
GFX_Layer1_SupervisorIntro_Frame84:
	db "GFX_Layer1_SupervisorIntro_Frame84.rnc"
GFX_Layer1_SupervisorIntro_Frame84End:
GFX_Layer1_SupervisorIntro_Frame85:
	db "GFX_Layer1_SupervisorIntro_Frame85.rnc"
GFX_Layer1_SupervisorIntro_Frame85End:
GFX_Layer1_SupervisorIntro_Frame86:
	db "GFX_Layer1_SupervisorIntro_Frame86.rnc"
GFX_Layer1_SupervisorIntro_Frame86End:
GFX_Layer1_SupervisorIntro_Frame87:
	db "GFX_Layer1_SupervisorIntro_Frame87.rnc"
GFX_Layer1_SupervisorIntro_Frame87End:
GFX_Layer1_CrusherIntro_Frame2:
	db "GFX_Layer1_CrusherIntro_Frame2.rnc"
GFX_Layer1_CrusherIntro_Frame2End:
GFX_Layer1_CrusherIntro_Frame39:
	db "GFX_Layer1_CrusherIntro_Frame39.rnc"
GFX_Layer1_CrusherIntro_Frame39End:
GFX_Layer1_CrusherIntro_Frame40:
	db "GFX_Layer1_CrusherIntro_Frame40.rnc"
GFX_Layer1_CrusherIntro_Frame40End:
GFX_Layer1_CrusherIntro_Frame43:
	db "GFX_Layer1_CrusherIntro_Frame43.rnc"
GFX_Layer1_CrusherIntro_Frame43End:
GFX_Layer1_CrusherIntro_Frame44:
	db "GFX_Layer1_CrusherIntro_Frame44.rnc"
GFX_Layer1_CrusherIntro_Frame44End:
GFX_Layer1_CrusherIntro_Frame46:
	db "GFX_Layer1_CrusherIntro_Frame46.rnc"
GFX_Layer1_CrusherIntro_Frame46End:
GFX_Layer1_CrusherIntro_Frame47:
	db "GFX_Layer1_CrusherIntro_Frame47.rnc"
GFX_Layer1_CrusherIntro_Frame47End:
GFX_Layer1_SupervisorDefeated_Frame39:
	db "GFX_Layer1_SupervisorDefeated_Frame39.rnc"
GFX_Layer1_SupervisorDefeated_Frame39End:
GFX_Layer1_CyborgDefeated_Frame4:
	db "GFX_Layer1_CyborgDefeated_Frame4.rnc"
GFX_Layer1_CyborgDefeated_Frame4End:
GFX_Layer1_CyborgDefeated_Frame5:
	db "GFX_Layer1_CyborgDefeated_Frame5.rnc"
GFX_Layer1_CyborgDefeated_Frame5End:
GFX_Layer1_CyborgDefeated_Frame7:
	db "GFX_Layer1_CyborgDefeated_Frame7.rnc"
GFX_Layer1_CyborgDefeated_Frame7End:
GFX_Layer1_CyborgDefeated_Frame8:
	db "GFX_Layer1_CyborgDefeated_Frame8.rnc"
GFX_Layer1_CyborgDefeated_Frame8End:
GFX_Layer1_CyborgDefeated_Frame13:
	db "GFX_Layer1_CyborgDefeated_Frame13.rnc"
GFX_Layer1_CyborgDefeated_Frame13End:
GFX_Layer1_CyborgDefeated_Frame21:
	db "GFX_Layer1_CyborgDefeated_Frame21.rnc"
GFX_Layer1_CyborgDefeated_Frame21End:
GFX_Layer1_ApproachingMetropolis4_Frame73:
	db "GFX_Layer1_ApproachingMetropolis4_Frame73.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame73End:
GFX_Layer1_ApproachingMetropolis4_Frame76:
	db "GFX_Layer1_ApproachingMetropolis4_Frame76.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame76End:
GFX_Layer1_ApproachingMetropolis4_Frame77:
	db "GFX_Layer1_ApproachingMetropolis4_Frame77.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame77End:
GFX_Layer1_ApproachingMetropolis4_Frame78:
	db "GFX_Layer1_ApproachingMetropolis4_Frame78.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame78End:
GFX_Layer1_ApproachingMetropolis4_Frame80:
	db "GFX_Layer1_ApproachingMetropolis4_Frame80.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame80End:
GFX_Layer1_ApproachingMetropolis4_Frame114:
	db "GFX_Layer1_ApproachingMetropolis4_Frame114.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame114End:
GFX_Layer1_ApeIntro_Frame85:
	db "GFX_Layer1_ApeIntro_Frame85.rnc"
GFX_Layer1_ApeIntro_Frame85End:
GFX_Layer1_ApeIntro_Frame86:
	db "GFX_Layer1_ApeIntro_Frame86.rnc"
GFX_Layer1_ApeIntro_Frame86End:
GFX_Layer1_ApeIntro_Frame87:
	db "GFX_Layer1_ApeIntro_Frame87.rnc"
GFX_Layer1_ApeIntro_Frame87End:
GFX_Layer1_ApeIntro_Frame88:
	db "GFX_Layer1_ApeIntro_Frame88.rnc"
GFX_Layer1_ApeIntro_Frame88End:
GFX_Layer1_ApeIntro_Frame89:
	db "GFX_Layer1_ApeIntro_Frame89.rnc"
GFX_Layer1_ApeIntro_Frame89End:
GFX_Layer1_ApeIntro_Frame90:
	db "GFX_Layer1_ApeIntro_Frame90.rnc"
GFX_Layer1_ApeIntro_Frame90End:
GFX_Layer1_ApeIntro_Frame91:
	db "GFX_Layer1_ApeIntro_Frame91.rnc"
GFX_Layer1_ApeIntro_Frame91End:
GFX_Layer1_ApeIntro_Frame101:
	db "GFX_Layer1_ApeIntro_Frame101.rnc"
GFX_Layer1_ApeIntro_Frame101End:
GFX_Layer1_ApeIntro_Frame117:
	db "GFX_Layer1_ApeIntro_Frame117.rnc"
GFX_Layer1_ApeIntro_Frame117End:
GFX_Layer1_LoaderIntro_Frame119:
	db "GFX_Layer1_LoaderIntro_Frame119.rnc"
GFX_Layer1_LoaderIntro_Frame119End:
GFX_Layer1_LoaderIntro_Frame120:
	db "GFX_Layer1_LoaderIntro_Frame120.rnc"
GFX_Layer1_LoaderIntro_Frame120End:
GFX_Layer1_LoaderIntro_Frame121:
	db "GFX_Layer1_LoaderIntro_Frame121.rnc"
GFX_Layer1_LoaderIntro_Frame121End:
GFX_Layer1_SupervisorIntro_Frame72:
	db "GFX_Layer1_SupervisorIntro_Frame72.rnc"
GFX_Layer1_SupervisorIntro_Frame72End:
GFX_Layer1_SupervisorIntro_Frame79:
	db "GFX_Layer1_SupervisorIntro_Frame79.rnc"
GFX_Layer1_SupervisorIntro_Frame79End:
GFX_Layer1_SupervisorIntro_Frame82:
	db "GFX_Layer1_SupervisorIntro_Frame82.rnc"
GFX_Layer1_SupervisorIntro_Frame82End:
GFX_Layer1_SupervisorIntro_Frame88:
	db "GFX_Layer1_SupervisorIntro_Frame88.rnc"
GFX_Layer1_SupervisorIntro_Frame88End:
GFX_Layer1_SupervisorIntro_Frame89:
	db "GFX_Layer1_SupervisorIntro_Frame89.rnc"
GFX_Layer1_SupervisorIntro_Frame89End:
GFX_Layer1_SupervisorIntro_Frame90:
	db "GFX_Layer1_SupervisorIntro_Frame90.rnc"
GFX_Layer1_SupervisorIntro_Frame90End:
GFX_Layer1_SupervisorIntro_Frame91:
	db "GFX_Layer1_SupervisorIntro_Frame91.rnc"
GFX_Layer1_SupervisorIntro_Frame91End:
GFX_Layer1_SupervisorIntro_Frame92:
	db "GFX_Layer1_SupervisorIntro_Frame92.rnc"
GFX_Layer1_SupervisorIntro_Frame92End:
GFX_Layer1_SupervisorIntro_Frame95:
	db "GFX_Layer1_SupervisorIntro_Frame95.rnc"
GFX_Layer1_SupervisorIntro_Frame95End:
GFX_Layer1_SupervisorIntro_Frame99:
	db "GFX_Layer1_SupervisorIntro_Frame99.rnc"
GFX_Layer1_SupervisorIntro_Frame99End:
GFX_Layer1_CrusherIntro_Frame36:
	db "GFX_Layer1_CrusherIntro_Frame36.rnc"
GFX_Layer1_CrusherIntro_Frame36End:
GFX_Layer1_CrusherIntro_Frame38:
	db "GFX_Layer1_CrusherIntro_Frame38.rnc"
GFX_Layer1_CrusherIntro_Frame38End:
GFX_Layer1_CrusherIntro_Frame41:
	db "GFX_Layer1_CrusherIntro_Frame41.rnc"
GFX_Layer1_CrusherIntro_Frame41End:
GFX_Layer1_CrusherIntro_Frame42:
	db "GFX_Layer1_CrusherIntro_Frame42.rnc"
GFX_Layer1_CrusherIntro_Frame42End:
GFX_Layer1_SupervisorDefeated_Frame42:
	db "GFX_Layer1_SupervisorDefeated_Frame42.rnc"
GFX_Layer1_SupervisorDefeated_Frame42End:
GFX_Layer1_SupervisorDefeated_Frame43:
	db "GFX_Layer1_SupervisorDefeated_Frame43.rnc"
GFX_Layer1_SupervisorDefeated_Frame43End:
GFX_Layer1_SentryDefeated_Frame23:
	db "GFX_Layer1_SentryDefeated_Frame23.rnc"
GFX_Layer1_SentryDefeated_Frame23End:
GFX_Layer1_CyborgDefeated_Frame2:
	db "GFX_Layer1_CyborgDefeated_Frame2.rnc"
GFX_Layer1_CyborgDefeated_Frame2End:
GFX_Layer1_CyborgDefeated_Frame3:
	db "GFX_Layer1_CyborgDefeated_Frame3.rnc"
GFX_Layer1_CyborgDefeated_Frame3End:
GFX_Layer1_CyborgDefeated_Frame9:
	db "GFX_Layer1_CyborgDefeated_Frame9.rnc"
GFX_Layer1_CyborgDefeated_Frame9End:
GFX_Layer1_CyborgDefeated_Frame10:
	db "GFX_Layer1_CyborgDefeated_Frame10.rnc"
GFX_Layer1_CyborgDefeated_Frame10End:
GFX_Layer1_CyborgDefeated_Frame20:
	db "GFX_Layer1_CyborgDefeated_Frame20.rnc"
GFX_Layer1_CyborgDefeated_Frame20End:
GFX_Layer1_ApeIntro_Frame33:
	db "GFX_Layer1_ApeIntro_Frame33.rnc"
GFX_Layer1_ApeIntro_Frame33End:
GFX_Layer1_ApeIntro_Frame83:
	db "GFX_Layer1_ApeIntro_Frame83.rnc"
GFX_Layer1_ApeIntro_Frame83End:
GFX_Layer1_ApeIntro_Frame84:
	db "GFX_Layer1_ApeIntro_Frame84.rnc"
GFX_Layer1_ApeIntro_Frame84End:
GFX_Layer1_ApeIntro_Frame92:
	db "GFX_Layer1_ApeIntro_Frame92.rnc"
GFX_Layer1_ApeIntro_Frame92End:
GFX_Layer1_ApeIntro_Frame94:
	db "GFX_Layer1_ApeIntro_Frame94.rnc"
GFX_Layer1_ApeIntro_Frame94End:
GFX_Layer1_LoaderIntro_Frame112:
	db "GFX_Layer1_LoaderIntro_Frame112.rnc"
GFX_Layer1_LoaderIntro_Frame112End:
GFX_Layer1_LoaderIntro_Frame113:
	db "GFX_Layer1_LoaderIntro_Frame113.rnc"
GFX_Layer1_LoaderIntro_Frame113End:
GFX_Layer1_LoaderIntro_Frame115:
	db "GFX_Layer1_LoaderIntro_Frame115.rnc"
GFX_Layer1_LoaderIntro_Frame115End:
GFX_Layer1_LoaderIntro_Frame116:
	db "GFX_Layer1_LoaderIntro_Frame116.rnc"
GFX_Layer1_LoaderIntro_Frame116End:
GFX_Layer1_LoaderIntro_Frame117:
	db "GFX_Layer1_LoaderIntro_Frame117.rnc"
GFX_Layer1_LoaderIntro_Frame117End:
GFX_Layer1_LoaderIntro_Frame118:
	db "GFX_Layer1_LoaderIntro_Frame118.rnc"
GFX_Layer1_LoaderIntro_Frame118End:
GFX_Layer1_SupervisorIntro_Frame18:
	db "GFX_Layer1_SupervisorIntro_Frame18.rnc"
GFX_Layer1_SupervisorIntro_Frame18End:
GFX_Layer1_SupervisorIntro_Frame61:
	db "GFX_Layer1_SupervisorIntro_Frame61.rnc"
GFX_Layer1_SupervisorIntro_Frame61End:
GFX_Layer1_SupervisorIntro_Frame64:
	db "GFX_Layer1_SupervisorIntro_Frame64.rnc"
GFX_Layer1_SupervisorIntro_Frame64End:
GFX_Layer1_SupervisorIntro_Frame74:
	db "GFX_Layer1_SupervisorIntro_Frame74.rnc"
GFX_Layer1_SupervisorIntro_Frame74End:
GFX_Layer1_SupervisorIntro_Frame75:
	db "GFX_Layer1_SupervisorIntro_Frame75.rnc"
GFX_Layer1_SupervisorIntro_Frame75End:
GFX_Layer1_SupervisorIntro_Frame93:
	db "GFX_Layer1_SupervisorIntro_Frame93.rnc"
GFX_Layer1_SupervisorIntro_Frame93End:
GFX_Layer1_SupervisorIntro_Frame94:
	db "GFX_Layer1_SupervisorIntro_Frame94.rnc"
GFX_Layer1_SupervisorIntro_Frame94End:
GFX_Layer1_SupervisorIntro_Frame98:
	db "GFX_Layer1_SupervisorIntro_Frame98.rnc"
GFX_Layer1_SupervisorIntro_Frame98End:
GFX_Layer1_CrusherIntro_Frame28:
	db "GFX_Layer1_CrusherIntro_Frame28.rnc"
GFX_Layer1_CrusherIntro_Frame28End:
GFX_Layer1_CrusherIntro_Frame30:
	db "GFX_Layer1_CrusherIntro_Frame30.rnc"
GFX_Layer1_CrusherIntro_Frame30End:
GFX_Layer1_CrusherIntro_Frame31:
	db "GFX_Layer1_CrusherIntro_Frame31.rnc"
GFX_Layer1_CrusherIntro_Frame31End:
GFX_Layer1_CrusherIntro_Frame32:
	db "GFX_Layer1_CrusherIntro_Frame32.rnc"
GFX_Layer1_CrusherIntro_Frame32End:
GFX_Layer1_CrusherIntro_Frame33:
	db "GFX_Layer1_CrusherIntro_Frame33.rnc"
GFX_Layer1_CrusherIntro_Frame33End:
GFX_Layer1_CrusherIntro_Frame34:
	db "GFX_Layer1_CrusherIntro_Frame34.rnc"
GFX_Layer1_CrusherIntro_Frame34End:
GFX_Layer1_CrusherIntro_Frame35:
	db "GFX_Layer1_CrusherIntro_Frame35.rnc"
GFX_Layer1_CrusherIntro_Frame35End:
GFX_Layer1_CrusherIntro_Frame37:
	db "GFX_Layer1_CrusherIntro_Frame37.rnc"
GFX_Layer1_CrusherIntro_Frame37End:
GFX_Layer1_SupervisorDefeated_Frame12:
	db "GFX_Layer1_SupervisorDefeated_Frame12.rnc"
GFX_Layer1_SupervisorDefeated_Frame12End:
GFX_Layer1_SupervisorDefeated_Frame40:
	db "GFX_Layer1_SupervisorDefeated_Frame40.rnc"
GFX_Layer1_SupervisorDefeated_Frame40End:
GFX_Layer1_SupervisorDefeated_Frame41:
	db "GFX_Layer1_SupervisorDefeated_Frame41.rnc"
GFX_Layer1_SupervisorDefeated_Frame41End:
GFX_Layer1_SupervisorDefeated_Frame44:
	db "GFX_Layer1_SupervisorDefeated_Frame44.rnc"
GFX_Layer1_SupervisorDefeated_Frame44End:
GFX_Layer1_SupervisorDefeated_Frame45:
	db "GFX_Layer1_SupervisorDefeated_Frame45.rnc"
GFX_Layer1_SupervisorDefeated_Frame45End:
GFX_Layer1_SupervisorDefeated_Frame46:
	db "GFX_Layer1_SupervisorDefeated_Frame46.rnc"
GFX_Layer1_SupervisorDefeated_Frame46End:
GFX_Layer1_SupervisorDefeated_Frame49:
	db "GFX_Layer1_SupervisorDefeated_Frame49.rnc"
GFX_Layer1_SupervisorDefeated_Frame49End:
GFX_Layer1_CyborgDefeated_Frame6:
	db "GFX_Layer1_CyborgDefeated_Frame6.rnc"
GFX_Layer1_CyborgDefeated_Frame6End:
GFX_Layer1_ApproachingMetropolis4_Frame71:
	db "GFX_Layer1_ApproachingMetropolis4_Frame71.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame71End:
GFX_Layer1_ApproachingMetropolis4_Frame72:
	db "GFX_Layer1_ApproachingMetropolis4_Frame72.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame72End:
GFX_Layer1_MilitaryIntro_Frame119:
	db "GFX_Layer1_MilitaryIntro_Frame119.rnc"
GFX_Layer1_MilitaryIntro_Frame119End:
GFX_Layer1_ApeIntro_Frame59:
	db "GFX_Layer1_ApeIntro_Frame59.rnc"
GFX_Layer1_ApeIntro_Frame59End:
GFX_Layer1_ApeIntro_Frame72:
	db "GFX_Layer1_ApeIntro_Frame72.rnc"
GFX_Layer1_ApeIntro_Frame72End:
GFX_Layer1_ApeIntro_Frame73:
	db "GFX_Layer1_ApeIntro_Frame73.rnc"
GFX_Layer1_ApeIntro_Frame73End:
GFX_Layer1_ApeIntro_Frame74:
	db "GFX_Layer1_ApeIntro_Frame74.rnc"
GFX_Layer1_ApeIntro_Frame74End:
GFX_Layer1_ApeIntro_Frame76:
	db "GFX_Layer1_ApeIntro_Frame76.rnc"
GFX_Layer1_ApeIntro_Frame76End:
GFX_Layer1_ApeIntro_Frame81:
	db "GFX_Layer1_ApeIntro_Frame81.rnc"
GFX_Layer1_ApeIntro_Frame81End:
GFX_Layer1_ApeIntro_Frame82:
	db "GFX_Layer1_ApeIntro_Frame82.rnc"
GFX_Layer1_ApeIntro_Frame82End:
GFX_Layer1_ApeIntro_Frame93:
	db "GFX_Layer1_ApeIntro_Frame93.rnc"
GFX_Layer1_ApeIntro_Frame93End:
GFX_Layer1_ApeIntro_Frame95:
	db "GFX_Layer1_ApeIntro_Frame95.rnc"
GFX_Layer1_ApeIntro_Frame95End:
GFX_Layer1_ApeIntro_Frame97:
	db "GFX_Layer1_ApeIntro_Frame97.rnc"
GFX_Layer1_ApeIntro_Frame97End:
GFX_Layer1_LoaderIntro_Frame110:
	db "GFX_Layer1_LoaderIntro_Frame110.rnc"
GFX_Layer1_LoaderIntro_Frame110End:
GFX_Layer1_LoaderIntro_Frame111:
	db "GFX_Layer1_LoaderIntro_Frame111.rnc"
GFX_Layer1_LoaderIntro_Frame111End:
GFX_Layer1_LoaderIntro_Frame114:
	db "GFX_Layer1_LoaderIntro_Frame114.rnc"
GFX_Layer1_LoaderIntro_Frame114End:
GFX_Layer1_SupervisorIntro_Frame17:
	db "GFX_Layer1_SupervisorIntro_Frame17.rnc"
GFX_Layer1_SupervisorIntro_Frame17End:
GFX_Layer1_SupervisorIntro_Frame19:
	db "GFX_Layer1_SupervisorIntro_Frame19.rnc"
GFX_Layer1_SupervisorIntro_Frame19End:
GFX_Layer1_SupervisorIntro_Frame59:
	db "GFX_Layer1_SupervisorIntro_Frame59.rnc"
GFX_Layer1_SupervisorIntro_Frame59End:
GFX_Layer1_SupervisorIntro_Frame62:
	db "GFX_Layer1_SupervisorIntro_Frame62.rnc"
GFX_Layer1_SupervisorIntro_Frame62End:
GFX_Layer1_SupervisorIntro_Frame63:
	db "GFX_Layer1_SupervisorIntro_Frame63.rnc"
GFX_Layer1_SupervisorIntro_Frame63End:
GFX_Layer1_SupervisorIntro_Frame65:
	db "GFX_Layer1_SupervisorIntro_Frame65.rnc"
GFX_Layer1_SupervisorIntro_Frame65End:
GFX_Layer1_SupervisorIntro_Frame69:
	db "GFX_Layer1_SupervisorIntro_Frame69.rnc"
GFX_Layer1_SupervisorIntro_Frame69End:
GFX_Layer1_SupervisorIntro_Frame70:
	db "GFX_Layer1_SupervisorIntro_Frame70.rnc"
GFX_Layer1_SupervisorIntro_Frame70End:
GFX_Layer1_SupervisorIntro_Frame71:
	db "GFX_Layer1_SupervisorIntro_Frame71.rnc"
GFX_Layer1_SupervisorIntro_Frame71End:
GFX_Layer1_SupervisorIntro_Frame96:
	db "GFX_Layer1_SupervisorIntro_Frame96.rnc"
GFX_Layer1_SupervisorIntro_Frame96End:
GFX_Layer1_SupervisorIntro_Frame97:
	db "GFX_Layer1_SupervisorIntro_Frame97.rnc"
GFX_Layer1_SupervisorIntro_Frame97End:
GFX_Layer1_CrusherIntro_Frame26:
	db "GFX_Layer1_CrusherIntro_Frame26.rnc"
GFX_Layer1_CrusherIntro_Frame26End:
GFX_Layer1_CrusherIntro_Frame27:
	db "GFX_Layer1_CrusherIntro_Frame27.rnc"
GFX_Layer1_CrusherIntro_Frame27End:
GFX_Layer1_SupervisorDefeated_Frame47:
	db "GFX_Layer1_SupervisorDefeated_Frame47.rnc"
GFX_Layer1_SupervisorDefeated_Frame47End:
GFX_Layer1_SupervisorDefeated_Frame48:
	db "GFX_Layer1_SupervisorDefeated_Frame48.rnc"
GFX_Layer1_SupervisorDefeated_Frame48End:
GFX_Layer1_SupervisorDefeated_Frame52:
	db "GFX_Layer1_SupervisorDefeated_Frame52.rnc"
GFX_Layer1_SupervisorDefeated_Frame52End:
GFX_Layer1_SupervisorDefeated_Frame54:
	db "GFX_Layer1_SupervisorDefeated_Frame54.rnc"
GFX_Layer1_SupervisorDefeated_Frame54End:
GFX_Layer1_SupervisorDefeated_Frame55:
	db "GFX_Layer1_SupervisorDefeated_Frame55.rnc"
GFX_Layer1_SupervisorDefeated_Frame55End:
GFX_Layer1_LoaderDefeated_Frame2:
	db "GFX_Layer1_LoaderDefeated_Frame2.rnc"
GFX_Layer1_LoaderDefeated_Frame2End:
GFX_Layer1_ApproachingMetropolis4_Frame64:
	db "GFX_Layer1_ApproachingMetropolis4_Frame64.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame64End:
GFX_Layer1_ApproachingMetropolis4_Frame65:
	db "GFX_Layer1_ApproachingMetropolis4_Frame65.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame65End:
GFX_Layer1_ApproachingMetropolis4_Frame67:
	db "GFX_Layer1_ApproachingMetropolis4_Frame67.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame67End:
GFX_Layer1_ApproachingMetropolis4_Frame68:
	db "GFX_Layer1_ApproachingMetropolis4_Frame68.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame68End:
GFX_Layer1_ApproachingMetropolis4_Frame69:
	db "GFX_Layer1_ApproachingMetropolis4_Frame69.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame69End:
GFX_Layer1_ApproachingMetropolis4_Frame70:
	db "GFX_Layer1_ApproachingMetropolis4_Frame70.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame70End:
GFX_Layer1_MilitaryIntro_Frame120:
	db "GFX_Layer1_MilitaryIntro_Frame120.rnc"
GFX_Layer1_MilitaryIntro_Frame120End:
GFX_Layer1_MilitaryIntro_Frame121:
	db "GFX_Layer1_MilitaryIntro_Frame121.rnc"
GFX_Layer1_MilitaryIntro_Frame121End:
GFX_Layer1_ApeIntro_Frame55:
	db "GFX_Layer1_ApeIntro_Frame55.rnc"
GFX_Layer1_ApeIntro_Frame55End:
GFX_Layer1_ApeIntro_Frame56:
	db "GFX_Layer1_ApeIntro_Frame56.rnc"
GFX_Layer1_ApeIntro_Frame56End:
GFX_Layer1_ApeIntro_Frame57:
	db "GFX_Layer1_ApeIntro_Frame57.rnc"
GFX_Layer1_ApeIntro_Frame57End:
GFX_Layer1_ApeIntro_Frame58:
	db "GFX_Layer1_ApeIntro_Frame58.rnc"
GFX_Layer1_ApeIntro_Frame58End:
GFX_Layer1_ApeIntro_Frame60:
	db "GFX_Layer1_ApeIntro_Frame60.rnc"
GFX_Layer1_ApeIntro_Frame60End:
GFX_Layer1_ApeIntro_Frame71:
	db "GFX_Layer1_ApeIntro_Frame71.rnc"
GFX_Layer1_ApeIntro_Frame71End:
GFX_Layer1_ApeIntro_Frame75:
	db "GFX_Layer1_ApeIntro_Frame75.rnc"
GFX_Layer1_ApeIntro_Frame75End:
GFX_Layer1_ApeIntro_Frame77:
	db "GFX_Layer1_ApeIntro_Frame77.rnc"
GFX_Layer1_ApeIntro_Frame77End:
GFX_Layer1_ApeIntro_Frame79:
	db "GFX_Layer1_ApeIntro_Frame79.rnc"
GFX_Layer1_ApeIntro_Frame79End:
GFX_Layer1_ApeIntro_Frame80:
	db "GFX_Layer1_ApeIntro_Frame80.rnc"
GFX_Layer1_ApeIntro_Frame80End:
GFX_Layer1_ApeIntro_Frame98:
	db "GFX_Layer1_ApeIntro_Frame98.rnc"
GFX_Layer1_ApeIntro_Frame98End:
GFX_Layer1_ApeIntro_Frame100:
	db "GFX_Layer1_ApeIntro_Frame100.rnc"
GFX_Layer1_ApeIntro_Frame100End:
GFX_Layer1_ApeIntro_Frame142:
	db "GFX_Layer1_ApeIntro_Frame142.rnc"
GFX_Layer1_ApeIntro_Frame142End:
GFX_Layer1_LoaderIntro_Frame109:
	db "GFX_Layer1_LoaderIntro_Frame109.rnc"
GFX_Layer1_LoaderIntro_Frame109End:
GFX_Layer1_SupervisorIntro_Frame15:
	db "GFX_Layer1_SupervisorIntro_Frame15.rnc"
GFX_Layer1_SupervisorIntro_Frame15End:
GFX_Layer1_SupervisorIntro_Frame16:
	db "GFX_Layer1_SupervisorIntro_Frame16.rnc"
GFX_Layer1_SupervisorIntro_Frame16End:
GFX_Layer1_SupervisorIntro_Frame21:
	db "GFX_Layer1_SupervisorIntro_Frame21.rnc"
GFX_Layer1_SupervisorIntro_Frame21End:
GFX_Layer1_SupervisorIntro_Frame22:
	db "GFX_Layer1_SupervisorIntro_Frame22.rnc"
GFX_Layer1_SupervisorIntro_Frame22End:
GFX_Layer1_SupervisorIntro_Frame57:
	db "GFX_Layer1_SupervisorIntro_Frame57.rnc"
GFX_Layer1_SupervisorIntro_Frame57End:
GFX_Layer1_SupervisorIntro_Frame58:
	db "GFX_Layer1_SupervisorIntro_Frame58.rnc"
GFX_Layer1_SupervisorIntro_Frame58End:
GFX_Layer1_SupervisorIntro_Frame66:
	db "GFX_Layer1_SupervisorIntro_Frame66.rnc"
GFX_Layer1_SupervisorIntro_Frame66End:
GFX_Layer1_SupervisorIntro_Frame68:
	db "GFX_Layer1_SupervisorIntro_Frame68.rnc"
GFX_Layer1_SupervisorIntro_Frame68End:
GFX_Layer1_CrusherIntro_Frame20:
	db "GFX_Layer1_CrusherIntro_Frame20.rnc"
GFX_Layer1_CrusherIntro_Frame20End:
GFX_Layer1_CrusherIntro_Frame24:
	db "GFX_Layer1_CrusherIntro_Frame24.rnc"
GFX_Layer1_CrusherIntro_Frame24End:
GFX_Layer1_CrusherIntro_Frame25:
	db "GFX_Layer1_CrusherIntro_Frame25.rnc"
GFX_Layer1_CrusherIntro_Frame25End:
GFX_Layer1_SupervisorDefeated_Frame53:
	db "GFX_Layer1_SupervisorDefeated_Frame53.rnc"
GFX_Layer1_SupervisorDefeated_Frame53End:
GFX_Layer1_SupervisorDefeated_Frame56:
	db "GFX_Layer1_SupervisorDefeated_Frame56.rnc"
GFX_Layer1_SupervisorDefeated_Frame56End:
GFX_Layer1_SupervisorDefeated_Frame58:
	db "GFX_Layer1_SupervisorDefeated_Frame58.rnc"
GFX_Layer1_SupervisorDefeated_Frame58End:
GFX_Layer1_SupervisorDefeated_Frame61:
	db "GFX_Layer1_SupervisorDefeated_Frame61.rnc"
GFX_Layer1_SupervisorDefeated_Frame61End:
GFX_Layer1_SupervisorDefeated_Frame62:
	db "GFX_Layer1_SupervisorDefeated_Frame62.rnc"
GFX_Layer1_SupervisorDefeated_Frame62End:
GFX_Layer1_SupervisorDefeated_Frame64:
	db "GFX_Layer1_SupervisorDefeated_Frame64.rnc"
GFX_Layer1_SupervisorDefeated_Frame64End:
GFX_Layer1_SupervisorDefeated_Frame68:
	db "GFX_Layer1_SupervisorDefeated_Frame68.rnc"
GFX_Layer1_SupervisorDefeated_Frame68End:
GFX_Layer1_LoaderDefeated_Frame6:
	db "GFX_Layer1_LoaderDefeated_Frame6.rnc"
GFX_Layer1_LoaderDefeated_Frame6End:
GFX_Layer1_LoaderDefeated_Frame7:
	db "GFX_Layer1_LoaderDefeated_Frame7.rnc"
GFX_Layer1_LoaderDefeated_Frame7End:
GFX_Layer1_CyborgDefeated_Frame11:
	db "GFX_Layer1_CyborgDefeated_Frame11.rnc"
GFX_Layer1_CyborgDefeated_Frame11End:
GFX_Layer1_CyborgDefeated_Frame19:
	db "GFX_Layer1_CyborgDefeated_Frame19.rnc"
GFX_Layer1_CyborgDefeated_Frame19End:
GFX_Layer1_ApproachingMetropolis4_Frame60:
	db "GFX_Layer1_ApproachingMetropolis4_Frame60.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame60End:
GFX_Layer1_ApproachingMetropolis4_Frame61:
	db "GFX_Layer1_ApproachingMetropolis4_Frame61.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame61End:
GFX_Layer1_ApproachingMetropolis4_Frame63:
	db "GFX_Layer1_ApproachingMetropolis4_Frame63.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame63End:
GFX_Layer1_ApproachingMetropolis4_Frame66:
	db "GFX_Layer1_ApproachingMetropolis4_Frame66.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame66End:
GFX_Layer1_MilitaryIntro_Frame116:
	db "GFX_Layer1_MilitaryIntro_Frame116.rnc"
GFX_Layer1_MilitaryIntro_Frame116End:
GFX_Layer1_MilitaryIntro_Frame122:
	db "GFX_Layer1_MilitaryIntro_Frame122.rnc"
GFX_Layer1_MilitaryIntro_Frame122End:
GFX_Layer1_ApeIntro_Frame51:
	db "GFX_Layer1_ApeIntro_Frame51.rnc"
GFX_Layer1_ApeIntro_Frame51End:
GFX_Layer1_ApeIntro_Frame52:
	db "GFX_Layer1_ApeIntro_Frame52.rnc"
GFX_Layer1_ApeIntro_Frame52End:
GFX_Layer1_ApeIntro_Frame53:
	db "GFX_Layer1_ApeIntro_Frame53.rnc"
GFX_Layer1_ApeIntro_Frame53End:
GFX_Layer1_ApeIntro_Frame54:
	db "GFX_Layer1_ApeIntro_Frame54.rnc"
GFX_Layer1_ApeIntro_Frame54End:
GFX_Layer1_ApeIntro_Frame61:
	db "GFX_Layer1_ApeIntro_Frame61.rnc"
GFX_Layer1_ApeIntro_Frame61End:
GFX_Layer1_ApeIntro_Frame62:
	db "GFX_Layer1_ApeIntro_Frame62.rnc"
GFX_Layer1_ApeIntro_Frame62End:
GFX_Layer1_ApeIntro_Frame63:
	db "GFX_Layer1_ApeIntro_Frame63.rnc"
GFX_Layer1_ApeIntro_Frame63End:
GFX_Layer1_ApeIntro_Frame67:
	db "GFX_Layer1_ApeIntro_Frame67.rnc"
GFX_Layer1_ApeIntro_Frame67End:
GFX_Layer1_ApeIntro_Frame70:
	db "GFX_Layer1_ApeIntro_Frame70.rnc"
GFX_Layer1_ApeIntro_Frame70End:
GFX_Layer1_ApeIntro_Frame99:
	db "GFX_Layer1_ApeIntro_Frame99.rnc"
GFX_Layer1_ApeIntro_Frame99End:
GFX_Layer1_ApeIntro_Frame102:
	db "GFX_Layer1_ApeIntro_Frame102.rnc"
GFX_Layer1_ApeIntro_Frame102End:
GFX_Layer1_ApeIntro_Frame106:
	db "GFX_Layer1_ApeIntro_Frame106.rnc"
GFX_Layer1_ApeIntro_Frame106End:
GFX_Layer1_ApeIntro_Frame107:
	db "GFX_Layer1_ApeIntro_Frame107.rnc"
GFX_Layer1_ApeIntro_Frame107End:
GFX_Layer1_ApeIntro_Frame125:
	db "GFX_Layer1_ApeIntro_Frame125.rnc"
GFX_Layer1_ApeIntro_Frame125End:
GFX_Layer1_ApeIntro_Frame143:
	db "GFX_Layer1_ApeIntro_Frame143.rnc"
GFX_Layer1_ApeIntro_Frame143End:
GFX_Layer1_LoaderIntro_Frame40:
	db "GFX_Layer1_LoaderIntro_Frame40.rnc"
GFX_Layer1_LoaderIntro_Frame40End:
GFX_Layer1_LoaderIntro_Frame106:
	db "GFX_Layer1_LoaderIntro_Frame106.rnc"
GFX_Layer1_LoaderIntro_Frame106End:
GFX_Layer1_LoaderIntro_Frame107:
	db "GFX_Layer1_LoaderIntro_Frame107.rnc"
GFX_Layer1_LoaderIntro_Frame107End:
GFX_Layer1_LoaderIntro_Frame108:
	db "GFX_Layer1_LoaderIntro_Frame108.rnc"
GFX_Layer1_LoaderIntro_Frame108End:
GFX_Layer1_SupervisorIntro_Frame14:
	db "GFX_Layer1_SupervisorIntro_Frame14.rnc"
GFX_Layer1_SupervisorIntro_Frame14End:
GFX_Layer1_SupervisorIntro_Frame20:
	db "GFX_Layer1_SupervisorIntro_Frame20.rnc"
GFX_Layer1_SupervisorIntro_Frame20End:
GFX_Layer1_SupervisorIntro_Frame23:
	db "GFX_Layer1_SupervisorIntro_Frame23.rnc"
GFX_Layer1_SupervisorIntro_Frame23End:
GFX_Layer1_CrusherIntro_Frame1:
	db "GFX_Layer1_CrusherIntro_Frame1.rnc"
GFX_Layer1_CrusherIntro_Frame1End:
GFX_Layer1_CrusherIntro_Frame14:
	db "GFX_Layer1_CrusherIntro_Frame14.rnc"
GFX_Layer1_CrusherIntro_Frame14End:
GFX_Layer1_CrusherIntro_Frame15:
	db "GFX_Layer1_CrusherIntro_Frame15.rnc"
GFX_Layer1_CrusherIntro_Frame15End:
GFX_Layer1_CrusherIntro_Frame16:
	db "GFX_Layer1_CrusherIntro_Frame16.rnc"
GFX_Layer1_CrusherIntro_Frame16End:
GFX_Layer1_CrusherIntro_Frame18:
	db "GFX_Layer1_CrusherIntro_Frame18.rnc"
GFX_Layer1_CrusherIntro_Frame18End:
GFX_Layer1_CrusherIntro_Frame19:
	db "GFX_Layer1_CrusherIntro_Frame19.rnc"
GFX_Layer1_CrusherIntro_Frame19End:
GFX_Layer1_CrusherIntro_Frame22:
	db "GFX_Layer1_CrusherIntro_Frame22.rnc"
GFX_Layer1_CrusherIntro_Frame22End:
GFX_Layer1_CrusherIntro_Frame23:
	db "GFX_Layer1_CrusherIntro_Frame23.rnc"
GFX_Layer1_CrusherIntro_Frame23End:
GFX_Layer1_SupervisorDefeated_Frame57:
	db "GFX_Layer1_SupervisorDefeated_Frame57.rnc"
GFX_Layer1_SupervisorDefeated_Frame57End:
GFX_Layer1_SupervisorDefeated_Frame59:
	db "GFX_Layer1_SupervisorDefeated_Frame59.rnc"
GFX_Layer1_SupervisorDefeated_Frame59End:
GFX_Layer1_SupervisorDefeated_Frame60:
	db "GFX_Layer1_SupervisorDefeated_Frame60.rnc"
GFX_Layer1_SupervisorDefeated_Frame60End:
GFX_Layer1_SupervisorDefeated_Frame63:
	db "GFX_Layer1_SupervisorDefeated_Frame63.rnc"
GFX_Layer1_SupervisorDefeated_Frame63End:
GFX_Layer1_SupervisorDefeated_Frame65:
	db "GFX_Layer1_SupervisorDefeated_Frame65.rnc"
GFX_Layer1_SupervisorDefeated_Frame65End:
GFX_Layer1_SupervisorDefeated_Frame66:
	db "GFX_Layer1_SupervisorDefeated_Frame66.rnc"
GFX_Layer1_SupervisorDefeated_Frame66End:
GFX_Layer1_SupervisorDefeated_Frame67:
	db "GFX_Layer1_SupervisorDefeated_Frame67.rnc"
GFX_Layer1_SupervisorDefeated_Frame67End:
GFX_Layer1_LoaderDefeated_Frame3:
	db "GFX_Layer1_LoaderDefeated_Frame3.rnc"
GFX_Layer1_LoaderDefeated_Frame3End:
GFX_Layer1_ApproachingMetropolis4_Frame14:
	db "GFX_Layer1_ApproachingMetropolis4_Frame14.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame14End:
GFX_Layer1_ApproachingMetropolis4_Frame53:
	db "GFX_Layer1_ApproachingMetropolis4_Frame53.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame53End:
GFX_Layer1_ApproachingMetropolis4_Frame59:
	db "GFX_Layer1_ApproachingMetropolis4_Frame59.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame59End:
GFX_Layer1_ApproachingMetropolis4_Frame62:
	db "GFX_Layer1_ApproachingMetropolis4_Frame62.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame62End:
GFX_Layer1_ApeIntro_Frame21:
	db "GFX_Layer1_ApeIntro_Frame21.rnc"
GFX_Layer1_ApeIntro_Frame21End:
GFX_Layer1_ApeIntro_Frame23:
	db "GFX_Layer1_ApeIntro_Frame23.rnc"
GFX_Layer1_ApeIntro_Frame23End:
GFX_Layer1_ApeIntro_Frame24:
	db "GFX_Layer1_ApeIntro_Frame24.rnc"
GFX_Layer1_ApeIntro_Frame24End:
GFX_Layer1_ApeIntro_Frame25:
	db "GFX_Layer1_ApeIntro_Frame25.rnc"
GFX_Layer1_ApeIntro_Frame25End:
GFX_Layer1_ApeIntro_Frame26:
	db "GFX_Layer1_ApeIntro_Frame26.rnc"
GFX_Layer1_ApeIntro_Frame26End:
GFX_Layer1_ApeIntro_Frame27:
	db "GFX_Layer1_ApeIntro_Frame27.rnc"
GFX_Layer1_ApeIntro_Frame27End:
GFX_Layer1_ApeIntro_Frame28:
	db "GFX_Layer1_ApeIntro_Frame28.rnc"
GFX_Layer1_ApeIntro_Frame28End:
GFX_Layer1_ApeIntro_Frame29:
	db "GFX_Layer1_ApeIntro_Frame29.rnc"
GFX_Layer1_ApeIntro_Frame29End:
GFX_Layer1_ApeIntro_Frame30:
	db "GFX_Layer1_ApeIntro_Frame30.rnc"
GFX_Layer1_ApeIntro_Frame30End:
GFX_Layer1_ApeIntro_Frame31:
	db "GFX_Layer1_ApeIntro_Frame31.rnc"
GFX_Layer1_ApeIntro_Frame31End:
GFX_Layer1_ApeIntro_Frame32:
	db "GFX_Layer1_ApeIntro_Frame32.rnc"
GFX_Layer1_ApeIntro_Frame32End:
GFX_Layer1_ApeIntro_Frame41:
	db "GFX_Layer1_ApeIntro_Frame41.rnc"
GFX_Layer1_ApeIntro_Frame41End:
GFX_Layer1_ApeIntro_Frame42:
	db "GFX_Layer1_ApeIntro_Frame42.rnc"
GFX_Layer1_ApeIntro_Frame42End:
GFX_Layer1_ApeIntro_Frame43:
	db "GFX_Layer1_ApeIntro_Frame43.rnc"
GFX_Layer1_ApeIntro_Frame43End:
GFX_Layer1_ApeIntro_Frame44:
	db "GFX_Layer1_ApeIntro_Frame44.rnc"
GFX_Layer1_ApeIntro_Frame44End:
GFX_Layer1_ApeIntro_Frame50:
	db "GFX_Layer1_ApeIntro_Frame50.rnc"
GFX_Layer1_ApeIntro_Frame50End:
GFX_Layer1_ApeIntro_Frame64:
	db "GFX_Layer1_ApeIntro_Frame64.rnc"
GFX_Layer1_ApeIntro_Frame64End:
GFX_Layer1_ApeIntro_Frame68:
	db "GFX_Layer1_ApeIntro_Frame68.rnc"
GFX_Layer1_ApeIntro_Frame68End:
GFX_Layer1_ApeIntro_Frame78:
	db "GFX_Layer1_ApeIntro_Frame78.rnc"
GFX_Layer1_ApeIntro_Frame78End:
GFX_Layer1_ApeIntro_Frame103:
	db "GFX_Layer1_ApeIntro_Frame103.rnc"
GFX_Layer1_ApeIntro_Frame103End:
GFX_Layer1_ApeIntro_Frame108:
	db "GFX_Layer1_ApeIntro_Frame108.rnc"
GFX_Layer1_ApeIntro_Frame108End:
GFX_Layer1_ApeIntro_Frame141:
	db "GFX_Layer1_ApeIntro_Frame141.rnc"
GFX_Layer1_ApeIntro_Frame141End:
GFX_Layer1_ApeIntro_Frame144:
	db "GFX_Layer1_ApeIntro_Frame144.rnc"
GFX_Layer1_ApeIntro_Frame144End:
GFX_Layer1_LoaderIntro_Frame99:
	db "GFX_Layer1_LoaderIntro_Frame99.rnc"
GFX_Layer1_LoaderIntro_Frame99End:
GFX_Layer1_LoaderIntro_Frame103:
	db "GFX_Layer1_LoaderIntro_Frame103.rnc"
GFX_Layer1_LoaderIntro_Frame103End:
GFX_Layer1_LoaderIntro_Frame104:
	db "GFX_Layer1_LoaderIntro_Frame104.rnc"
GFX_Layer1_LoaderIntro_Frame104End:
GFX_Layer1_LoaderIntro_Frame105:
	db "GFX_Layer1_LoaderIntro_Frame105.rnc"
GFX_Layer1_LoaderIntro_Frame105End:
GFX_Layer1_SupervisorIntro_Frame13:
	db "GFX_Layer1_SupervisorIntro_Frame13.rnc"
GFX_Layer1_SupervisorIntro_Frame13End:
GFX_Layer1_SupervisorIntro_Frame56:
	db "GFX_Layer1_SupervisorIntro_Frame56.rnc"
GFX_Layer1_SupervisorIntro_Frame56End:
GFX_Layer1_SupervisorIntro_Frame67:
	db "GFX_Layer1_SupervisorIntro_Frame67.rnc"
GFX_Layer1_SupervisorIntro_Frame67End:
GFX_Layer1_CrusherIntro_Frame9:
	db "GFX_Layer1_CrusherIntro_Frame9.rnc"
GFX_Layer1_CrusherIntro_Frame9End:
GFX_Layer1_CrusherIntro_Frame10:
	db "GFX_Layer1_CrusherIntro_Frame10.rnc"
GFX_Layer1_CrusherIntro_Frame10End:
GFX_Layer1_CrusherIntro_Frame11:
	db "GFX_Layer1_CrusherIntro_Frame11.rnc"
GFX_Layer1_CrusherIntro_Frame11End:
GFX_Layer1_CrusherIntro_Frame12:
	db "GFX_Layer1_CrusherIntro_Frame12.rnc"
GFX_Layer1_CrusherIntro_Frame12End:
GFX_Layer1_CrusherIntro_Frame13:
	db "GFX_Layer1_CrusherIntro_Frame13.rnc"
GFX_Layer1_CrusherIntro_Frame13End:
GFX_Layer1_CrusherIntro_Frame17:
	db "GFX_Layer1_CrusherIntro_Frame17.rnc"
GFX_Layer1_CrusherIntro_Frame17End:
GFX_Layer1_CrusherIntro_Frame21:
	db "GFX_Layer1_CrusherIntro_Frame21.rnc"
GFX_Layer1_CrusherIntro_Frame21End:
GFX_Layer1_SupervisorDefeated_Frame69:
	db "GFX_Layer1_SupervisorDefeated_Frame69.rnc"
GFX_Layer1_SupervisorDefeated_Frame69End:
GFX_Layer1_SupervisorDefeated_Frame70:
	db "GFX_Layer1_SupervisorDefeated_Frame70.rnc"
GFX_Layer1_SupervisorDefeated_Frame70End:
GFX_Layer1_SupervisorDefeated_Frame72:
	db "GFX_Layer1_SupervisorDefeated_Frame72.rnc"
GFX_Layer1_SupervisorDefeated_Frame72End:
GFX_Layer1_LoaderDefeated_Frame4:
	db "GFX_Layer1_LoaderDefeated_Frame4.rnc"
GFX_Layer1_LoaderDefeated_Frame4End:
GFX_Layer1_LoaderDefeated_Frame5:
	db "GFX_Layer1_LoaderDefeated_Frame5.rnc"
GFX_Layer1_LoaderDefeated_Frame5End:
GFX_Layer1_LoaderDefeated_Frame8:
	db "GFX_Layer1_LoaderDefeated_Frame8.rnc"
GFX_Layer1_LoaderDefeated_Frame8End:
GFX_Layer1_ApproachingMetropolis4_Frame54:
	db "GFX_Layer1_ApproachingMetropolis4_Frame54.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame54End:
GFX_Layer1_ApproachingMetropolis4_Frame55:
	db "GFX_Layer1_ApproachingMetropolis4_Frame55.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame55End:
GFX_Layer1_ApproachingMetropolis4_Frame56:
	db "GFX_Layer1_ApproachingMetropolis4_Frame56.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame56End:
GFX_Layer1_ApproachingMetropolis4_Frame57:
	db "GFX_Layer1_ApproachingMetropolis4_Frame57.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame57End:
GFX_Layer1_ApproachingMetropolis4_Frame58:
	db "GFX_Layer1_ApproachingMetropolis4_Frame58.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame58End:
GFX_Layer1_ApeIntro_Frame12:
	db "GFX_Layer1_ApeIntro_Frame12.rnc"
GFX_Layer1_ApeIntro_Frame12End:
GFX_Layer1_ApeIntro_Frame14:
	db "GFX_Layer1_ApeIntro_Frame14.rnc"
GFX_Layer1_ApeIntro_Frame14End:
GFX_Layer1_ApeIntro_Frame19:
	db "GFX_Layer1_ApeIntro_Frame19.rnc"
GFX_Layer1_ApeIntro_Frame19End:
GFX_Layer1_ApeIntro_Frame20:
	db "GFX_Layer1_ApeIntro_Frame20.rnc"
GFX_Layer1_ApeIntro_Frame20End:
GFX_Layer1_ApeIntro_Frame22:
	db "GFX_Layer1_ApeIntro_Frame22.rnc"
GFX_Layer1_ApeIntro_Frame22End:
GFX_Layer1_ApeIntro_Frame35:
	db "GFX_Layer1_ApeIntro_Frame35.rnc"
GFX_Layer1_ApeIntro_Frame35End:
GFX_Layer1_ApeIntro_Frame36:
	db "GFX_Layer1_ApeIntro_Frame36.rnc"
GFX_Layer1_ApeIntro_Frame36End:
GFX_Layer1_ApeIntro_Frame39:
	db "GFX_Layer1_ApeIntro_Frame39.rnc"
GFX_Layer1_ApeIntro_Frame39End:
GFX_Layer1_ApeIntro_Frame40:
	db "GFX_Layer1_ApeIntro_Frame40.rnc"
GFX_Layer1_ApeIntro_Frame40End:
GFX_Layer1_ApeIntro_Frame45:
	db "GFX_Layer1_ApeIntro_Frame45.rnc"
GFX_Layer1_ApeIntro_Frame45End:
GFX_Layer1_ApeIntro_Frame46:
	db "GFX_Layer1_ApeIntro_Frame46.rnc"
GFX_Layer1_ApeIntro_Frame46End:
GFX_Layer1_ApeIntro_Frame48:
	db "GFX_Layer1_ApeIntro_Frame48.rnc"
GFX_Layer1_ApeIntro_Frame48End:
GFX_Layer1_ApeIntro_Frame49:
	db "GFX_Layer1_ApeIntro_Frame49.rnc"
GFX_Layer1_ApeIntro_Frame49End:
GFX_Layer1_ApeIntro_Frame66:
	db "GFX_Layer1_ApeIntro_Frame66.rnc"
GFX_Layer1_ApeIntro_Frame66End:
GFX_Layer1_ApeIntro_Frame69:
	db "GFX_Layer1_ApeIntro_Frame69.rnc"
GFX_Layer1_ApeIntro_Frame69End:
GFX_Layer1_ApeIntro_Frame105:
	db "GFX_Layer1_ApeIntro_Frame105.rnc"
GFX_Layer1_ApeIntro_Frame105End:
GFX_Layer1_ApeIntro_Frame111:
	db "GFX_Layer1_ApeIntro_Frame111.rnc"
GFX_Layer1_ApeIntro_Frame111End:
GFX_Layer1_ApeIntro_Frame115:
	db "GFX_Layer1_ApeIntro_Frame115.rnc"
GFX_Layer1_ApeIntro_Frame115End:
GFX_Layer1_ApeIntro_Frame116:
	db "GFX_Layer1_ApeIntro_Frame116.rnc"
GFX_Layer1_ApeIntro_Frame116End:
GFX_Layer1_ApeIntro_Frame122:
	db "GFX_Layer1_ApeIntro_Frame122.rnc"
GFX_Layer1_ApeIntro_Frame122End:
GFX_Layer1_ApeIntro_Frame124:
	db "GFX_Layer1_ApeIntro_Frame124.rnc"
GFX_Layer1_ApeIntro_Frame124End:
GFX_Layer1_ApeIntro_Frame127:
	db "GFX_Layer1_ApeIntro_Frame127.rnc"
GFX_Layer1_ApeIntro_Frame127End:
GFX_Layer1_LoaderIntro_Frame89:
	db "GFX_Layer1_LoaderIntro_Frame89.rnc"
GFX_Layer1_LoaderIntro_Frame89End:
GFX_Layer1_LoaderIntro_Frame90:
	db "GFX_Layer1_LoaderIntro_Frame90.rnc"
GFX_Layer1_LoaderIntro_Frame90End:
GFX_Layer1_LoaderIntro_Frame91:
	db "GFX_Layer1_LoaderIntro_Frame91.rnc"
GFX_Layer1_LoaderIntro_Frame91End:
GFX_Layer1_LoaderIntro_Frame92:
	db "GFX_Layer1_LoaderIntro_Frame92.rnc"
GFX_Layer1_LoaderIntro_Frame92End:
GFX_Layer1_LoaderIntro_Frame93:
	db "GFX_Layer1_LoaderIntro_Frame93.rnc"
GFX_Layer1_LoaderIntro_Frame93End:
GFX_Layer1_LoaderIntro_Frame94:
	db "GFX_Layer1_LoaderIntro_Frame94.rnc"
GFX_Layer1_LoaderIntro_Frame94End:
GFX_Layer1_LoaderIntro_Frame95:
	db "GFX_Layer1_LoaderIntro_Frame95.rnc"
GFX_Layer1_LoaderIntro_Frame95End:
GFX_Layer1_LoaderIntro_Frame96:
	db "GFX_Layer1_LoaderIntro_Frame96.rnc"
GFX_Layer1_LoaderIntro_Frame96End:
GFX_Layer1_LoaderIntro_Frame97:
	db "GFX_Layer1_LoaderIntro_Frame97.rnc"
GFX_Layer1_LoaderIntro_Frame97End:
GFX_Layer1_LoaderIntro_Frame98:
	db "GFX_Layer1_LoaderIntro_Frame98.rnc"
GFX_Layer1_LoaderIntro_Frame98End:
GFX_Layer1_LoaderIntro_Frame100:
	db "GFX_Layer1_LoaderIntro_Frame100.rnc"
GFX_Layer1_LoaderIntro_Frame100End:
GFX_Layer1_LoaderIntro_Frame101:
	db "GFX_Layer1_LoaderIntro_Frame101.rnc"
GFX_Layer1_LoaderIntro_Frame101End:
GFX_Layer1_LoaderIntro_Frame102:
	db "GFX_Layer1_LoaderIntro_Frame102.rnc"
GFX_Layer1_LoaderIntro_Frame102End:
GFX_Layer1_SupervisorIntro_Frame12:
	db "GFX_Layer1_SupervisorIntro_Frame12.rnc"
GFX_Layer1_SupervisorIntro_Frame12End:
GFX_Layer1_SupervisorIntro_Frame24:
	db "GFX_Layer1_SupervisorIntro_Frame24.rnc"
GFX_Layer1_SupervisorIntro_Frame24End:
GFX_Layer1_CrusherIntro_Frame5:
	db "GFX_Layer1_CrusherIntro_Frame5.rnc"
GFX_Layer1_CrusherIntro_Frame5End:
GFX_Layer1_CrusherIntro_Frame6:
	db "GFX_Layer1_CrusherIntro_Frame6.rnc"
GFX_Layer1_CrusherIntro_Frame6End:
GFX_Layer1_CrusherIntro_Frame7:
	db "GFX_Layer1_CrusherIntro_Frame7.rnc"
GFX_Layer1_CrusherIntro_Frame7End:
GFX_Layer1_CrusherIntro_Frame8:
	db "GFX_Layer1_CrusherIntro_Frame8.rnc"
GFX_Layer1_CrusherIntro_Frame8End:
GFX_Layer1_SupervisorDefeated_Frame71:
	db "GFX_Layer1_SupervisorDefeated_Frame71.rnc"
GFX_Layer1_SupervisorDefeated_Frame71End:
GFX_Layer1_SupervisorDefeated_Frame73:
	db "GFX_Layer1_SupervisorDefeated_Frame73.rnc"
GFX_Layer1_SupervisorDefeated_Frame73End:
GFX_Layer1_SupervisorDefeated_Frame74:
	db "GFX_Layer1_SupervisorDefeated_Frame74.rnc"
GFX_Layer1_SupervisorDefeated_Frame74End:
GFX_Layer1_SupervisorDefeated_Frame75:
	db "GFX_Layer1_SupervisorDefeated_Frame75.rnc"
GFX_Layer1_SupervisorDefeated_Frame75End:
GFX_Layer1_SupervisorDefeated_Frame76:
	db "GFX_Layer1_SupervisorDefeated_Frame76.rnc"
GFX_Layer1_SupervisorDefeated_Frame76End:
GFX_Layer1_SupervisorDefeated_Frame77:
	db "GFX_Layer1_SupervisorDefeated_Frame77.rnc"
GFX_Layer1_SupervisorDefeated_Frame77End:
GFX_Layer1_SupervisorDefeated_Frame78:
	db "GFX_Layer1_SupervisorDefeated_Frame78.rnc"
GFX_Layer1_SupervisorDefeated_Frame78End:
GFX_Layer1_ApproachingMetropolis4_Frame35:
	db "GFX_Layer1_ApproachingMetropolis4_Frame35.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame35End:
GFX_Layer1_ApproachingMetropolis4_Frame52:
	db "GFX_Layer1_ApproachingMetropolis4_Frame52.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame52End:
GFX_Layer1_ApproachingMetropolis4_Frame116:
	db "GFX_Layer1_ApproachingMetropolis4_Frame116.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame116End:
GFX_Layer1_MilitaryIntro_Frame81:
	db "GFX_Layer1_MilitaryIntro_Frame81.rnc"
GFX_Layer1_MilitaryIntro_Frame81End:
GFX_Layer1_MilitaryIntro_Frame82:
	db "GFX_Layer1_MilitaryIntro_Frame82.rnc"
GFX_Layer1_MilitaryIntro_Frame82End:
GFX_Layer1_MilitaryIntro_Frame111:
	db "GFX_Layer1_MilitaryIntro_Frame111.rnc"
GFX_Layer1_MilitaryIntro_Frame111End:
GFX_Layer1_MilitaryIntro_Frame115:
	db "GFX_Layer1_MilitaryIntro_Frame115.rnc"
GFX_Layer1_MilitaryIntro_Frame115End:
GFX_Layer1_ApeIntro_Frame3:
	db "GFX_Layer1_ApeIntro_Frame3.rnc"
GFX_Layer1_ApeIntro_Frame3End:
GFX_Layer1_ApeIntro_Frame8:
	db "GFX_Layer1_ApeIntro_Frame8.rnc"
GFX_Layer1_ApeIntro_Frame8End:
GFX_Layer1_ApeIntro_Frame9:
	db "GFX_Layer1_ApeIntro_Frame9.rnc"
GFX_Layer1_ApeIntro_Frame9End:
GFX_Layer1_ApeIntro_Frame10:
	db "GFX_Layer1_ApeIntro_Frame10.rnc"
GFX_Layer1_ApeIntro_Frame10End:
GFX_Layer1_ApeIntro_Frame11:
	db "GFX_Layer1_ApeIntro_Frame11.rnc"
GFX_Layer1_ApeIntro_Frame11End:
GFX_Layer1_ApeIntro_Frame13:
	db "GFX_Layer1_ApeIntro_Frame13.rnc"
GFX_Layer1_ApeIntro_Frame13End:
GFX_Layer1_ApeIntro_Frame15:
	db "GFX_Layer1_ApeIntro_Frame15.rnc"
GFX_Layer1_ApeIntro_Frame15End:
GFX_Layer1_ApeIntro_Frame16:
	db "GFX_Layer1_ApeIntro_Frame16.rnc"
GFX_Layer1_ApeIntro_Frame16End:
GFX_Layer1_ApeIntro_Frame17:
	db "GFX_Layer1_ApeIntro_Frame17.rnc"
GFX_Layer1_ApeIntro_Frame17End:
GFX_Layer1_ApeIntro_Frame18:
	db "GFX_Layer1_ApeIntro_Frame18.rnc"
GFX_Layer1_ApeIntro_Frame18End:
GFX_Layer1_ApeIntro_Frame37:
	db "GFX_Layer1_ApeIntro_Frame37.rnc"
GFX_Layer1_ApeIntro_Frame37End:
GFX_Layer1_ApeIntro_Frame38:
	db "GFX_Layer1_ApeIntro_Frame38.rnc"
GFX_Layer1_ApeIntro_Frame38End:
GFX_Layer1_ApeIntro_Frame47:
	db "GFX_Layer1_ApeIntro_Frame47.rnc"
GFX_Layer1_ApeIntro_Frame47End:
GFX_Layer1_ApeIntro_Frame104:
	db "GFX_Layer1_ApeIntro_Frame104.rnc"
GFX_Layer1_ApeIntro_Frame104End:
GFX_Layer1_ApeIntro_Frame109:
	db "GFX_Layer1_ApeIntro_Frame109.rnc"
GFX_Layer1_ApeIntro_Frame109End:
GFX_Layer1_ApeIntro_Frame110:
	db "GFX_Layer1_ApeIntro_Frame110.rnc"
GFX_Layer1_ApeIntro_Frame110End:
GFX_Layer1_ApeIntro_Frame112:
	db "GFX_Layer1_ApeIntro_Frame112.rnc"
GFX_Layer1_ApeIntro_Frame112End:
GFX_Layer1_ApeIntro_Frame113:
	db "GFX_Layer1_ApeIntro_Frame113.rnc"
GFX_Layer1_ApeIntro_Frame113End:
GFX_Layer1_ApeIntro_Frame114:
	db "GFX_Layer1_ApeIntro_Frame114.rnc"
GFX_Layer1_ApeIntro_Frame114End:
GFX_Layer1_ApeIntro_Frame120:
	db "GFX_Layer1_ApeIntro_Frame120.rnc"
GFX_Layer1_ApeIntro_Frame120End:
GFX_Layer1_ApeIntro_Frame121:
	db "GFX_Layer1_ApeIntro_Frame121.rnc"
GFX_Layer1_ApeIntro_Frame121End:
GFX_Layer1_ApeIntro_Frame123:
	db "GFX_Layer1_ApeIntro_Frame123.rnc"
GFX_Layer1_ApeIntro_Frame123End:
GFX_Layer1_ApeIntro_Frame126:
	db "GFX_Layer1_ApeIntro_Frame126.rnc"
GFX_Layer1_ApeIntro_Frame126End:
GFX_Layer1_ApeIntro_Frame128:
	db "GFX_Layer1_ApeIntro_Frame128.rnc"
GFX_Layer1_ApeIntro_Frame128End:
GFX_Layer1_ApeIntro_Frame130:
	db "GFX_Layer1_ApeIntro_Frame130.rnc"
GFX_Layer1_ApeIntro_Frame130End:
GFX_Layer1_ApeIntro_Frame131:
	db "GFX_Layer1_ApeIntro_Frame131.rnc"
GFX_Layer1_ApeIntro_Frame131End:
GFX_Layer1_ApeIntro_Frame132:
	db "GFX_Layer1_ApeIntro_Frame132.rnc"
GFX_Layer1_ApeIntro_Frame132End:
GFX_Layer1_ApeIntro_Frame133:
	db "GFX_Layer1_ApeIntro_Frame133.rnc"
GFX_Layer1_ApeIntro_Frame133End:
GFX_Layer1_ApeIntro_Frame136:
	db "GFX_Layer1_ApeIntro_Frame136.rnc"
GFX_Layer1_ApeIntro_Frame136End:
GFX_Layer1_ApeIntro_Frame137:
	db "GFX_Layer1_ApeIntro_Frame137.rnc"
GFX_Layer1_ApeIntro_Frame137End:
GFX_Layer1_ApeIntro_Frame138:
	db "GFX_Layer1_ApeIntro_Frame138.rnc"
GFX_Layer1_ApeIntro_Frame138End:
GFX_Layer1_ApeIntro_Frame139:
	db "GFX_Layer1_ApeIntro_Frame139.rnc"
GFX_Layer1_ApeIntro_Frame139End:
GFX_Layer1_LoaderIntro_Frame84:
	db "GFX_Layer1_LoaderIntro_Frame84.rnc"
GFX_Layer1_LoaderIntro_Frame84End:
GFX_Layer1_LoaderIntro_Frame85:
	db "GFX_Layer1_LoaderIntro_Frame85.rnc"
GFX_Layer1_LoaderIntro_Frame85End:
GFX_Layer1_LoaderIntro_Frame86:
	db "GFX_Layer1_LoaderIntro_Frame86.rnc"
GFX_Layer1_LoaderIntro_Frame86End:
GFX_Layer1_LoaderIntro_Frame87:
	db "GFX_Layer1_LoaderIntro_Frame87.rnc"
GFX_Layer1_LoaderIntro_Frame87End:
GFX_Layer1_LoaderIntro_Frame88:
	db "GFX_Layer1_LoaderIntro_Frame88.rnc"
GFX_Layer1_LoaderIntro_Frame88End:
GFX_Layer1_SupervisorIntro_Frame2:
	db "GFX_Layer1_SupervisorIntro_Frame2.rnc"
GFX_Layer1_SupervisorIntro_Frame2End:
GFX_Layer1_SupervisorIntro_Frame3:
	db "GFX_Layer1_SupervisorIntro_Frame3.rnc"
GFX_Layer1_SupervisorIntro_Frame3End:
GFX_Layer1_SupervisorIntro_Frame4:
	db "GFX_Layer1_SupervisorIntro_Frame4.rnc"
GFX_Layer1_SupervisorIntro_Frame4End:
GFX_Layer1_SupervisorIntro_Frame5:
	db "GFX_Layer1_SupervisorIntro_Frame5.rnc"
GFX_Layer1_SupervisorIntro_Frame5End:
GFX_Layer1_SupervisorIntro_Frame6:
	db "GFX_Layer1_SupervisorIntro_Frame6.rnc"
GFX_Layer1_SupervisorIntro_Frame6End:
GFX_Layer1_SupervisorIntro_Frame7:
	db "GFX_Layer1_SupervisorIntro_Frame7.rnc"
GFX_Layer1_SupervisorIntro_Frame7End:
GFX_Layer1_SupervisorIntro_Frame8:
	db "GFX_Layer1_SupervisorIntro_Frame8.rnc"
GFX_Layer1_SupervisorIntro_Frame8End:
GFX_Layer1_SupervisorIntro_Frame9:
	db "GFX_Layer1_SupervisorIntro_Frame9.rnc"
GFX_Layer1_SupervisorIntro_Frame9End:
GFX_Layer1_SupervisorIntro_Frame10:
	db "GFX_Layer1_SupervisorIntro_Frame10.rnc"
GFX_Layer1_SupervisorIntro_Frame10End:
GFX_Layer1_SupervisorIntro_Frame11:
	db "GFX_Layer1_SupervisorIntro_Frame11.rnc"
GFX_Layer1_SupervisorIntro_Frame11End:
GFX_Layer1_SupervisorIntro_Frame25:
	db "GFX_Layer1_SupervisorIntro_Frame25.rnc"
GFX_Layer1_SupervisorIntro_Frame25End:
GFX_Layer1_SupervisorIntro_Frame55:
	db "GFX_Layer1_SupervisorIntro_Frame55.rnc"
GFX_Layer1_SupervisorIntro_Frame55End:
GFX_Layer1_CrusherIntro_Frame3:
	db "GFX_Layer1_CrusherIntro_Frame3.rnc"
GFX_Layer1_CrusherIntro_Frame3End:
GFX_Layer1_CrusherIntro_Frame4:
	db "GFX_Layer1_CrusherIntro_Frame4.rnc"
GFX_Layer1_CrusherIntro_Frame4End:
GFX_Layer1_CrusherDefeated_Frame26:
	db "GFX_Layer1_CrusherDefeated_Frame26.rnc"
GFX_Layer1_CrusherDefeated_Frame26End:
GFX_Layer1_ApproachingMetropolis4_Frame15:
	db "GFX_Layer1_ApproachingMetropolis4_Frame15.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame15End:
GFX_Layer1_MilitaryIntro_Frame28:
	db "GFX_Layer1_MilitaryIntro_Frame28.rnc"
GFX_Layer1_MilitaryIntro_Frame28End:
GFX_Layer1_MilitaryIntro_Frame72:
	db "GFX_Layer1_MilitaryIntro_Frame72.rnc"
GFX_Layer1_MilitaryIntro_Frame72End:
GFX_Layer1_MilitaryIntro_Frame73:
	db "GFX_Layer1_MilitaryIntro_Frame73.rnc"
GFX_Layer1_MilitaryIntro_Frame73End:
GFX_Layer1_MilitaryIntro_Frame74:
	db "GFX_Layer1_MilitaryIntro_Frame74.rnc"
GFX_Layer1_MilitaryIntro_Frame74End:
GFX_Layer1_MilitaryIntro_Frame75:
	db "GFX_Layer1_MilitaryIntro_Frame75.rnc"
GFX_Layer1_MilitaryIntro_Frame75End:
GFX_Layer1_MilitaryIntro_Frame76:
	db "GFX_Layer1_MilitaryIntro_Frame76.rnc"
GFX_Layer1_MilitaryIntro_Frame76End:
GFX_Layer1_MilitaryIntro_Frame77:
	db "GFX_Layer1_MilitaryIntro_Frame77.rnc"
GFX_Layer1_MilitaryIntro_Frame77End:
GFX_Layer1_MilitaryIntro_Frame78:
	db "GFX_Layer1_MilitaryIntro_Frame78.rnc"
GFX_Layer1_MilitaryIntro_Frame78End:
GFX_Layer1_MilitaryIntro_Frame79:
	db "GFX_Layer1_MilitaryIntro_Frame79.rnc"
GFX_Layer1_MilitaryIntro_Frame79End:
GFX_Layer1_MilitaryIntro_Frame80:
	db "GFX_Layer1_MilitaryIntro_Frame80.rnc"
GFX_Layer1_MilitaryIntro_Frame80End:
GFX_Layer1_MilitaryIntro_Frame83:
	db "GFX_Layer1_MilitaryIntro_Frame83.rnc"
GFX_Layer1_MilitaryIntro_Frame83End:
GFX_Layer1_MilitaryIntro_Frame84:
	db "GFX_Layer1_MilitaryIntro_Frame84.rnc"
GFX_Layer1_MilitaryIntro_Frame84End:
GFX_Layer1_MilitaryIntro_Frame110:
	db "GFX_Layer1_MilitaryIntro_Frame110.rnc"
GFX_Layer1_MilitaryIntro_Frame110End:
GFX_Layer1_MilitaryIntro_Frame112:
	db "GFX_Layer1_MilitaryIntro_Frame112.rnc"
GFX_Layer1_MilitaryIntro_Frame112End:
GFX_Layer1_MilitaryIntro_Frame113:
	db "GFX_Layer1_MilitaryIntro_Frame113.rnc"
GFX_Layer1_MilitaryIntro_Frame113End:
GFX_Layer1_MilitaryIntro_Frame114:
	db "GFX_Layer1_MilitaryIntro_Frame114.rnc"
GFX_Layer1_MilitaryIntro_Frame114End:
GFX_Layer1_ApeIntro_Frame4:
	db "GFX_Layer1_ApeIntro_Frame4.rnc"
GFX_Layer1_ApeIntro_Frame4End:
GFX_Layer1_ApeIntro_Frame5:
	db "GFX_Layer1_ApeIntro_Frame5.rnc"
GFX_Layer1_ApeIntro_Frame5End:
GFX_Layer1_ApeIntro_Frame6:
	db "GFX_Layer1_ApeIntro_Frame6.rnc"
GFX_Layer1_ApeIntro_Frame6End:
GFX_Layer1_ApeIntro_Frame7:
	db "GFX_Layer1_ApeIntro_Frame7.rnc"
GFX_Layer1_ApeIntro_Frame7End:
GFX_Layer1_ApeIntro_Frame118:
	db "GFX_Layer1_ApeIntro_Frame118.rnc"
GFX_Layer1_ApeIntro_Frame118End:
GFX_Layer1_ApeIntro_Frame119:
	db "GFX_Layer1_ApeIntro_Frame119.rnc"
GFX_Layer1_ApeIntro_Frame119End:
GFX_Layer1_ApeIntro_Frame129:
	db "GFX_Layer1_ApeIntro_Frame129.rnc"
GFX_Layer1_ApeIntro_Frame129End:
GFX_Layer1_ApeIntro_Frame134:
	db "GFX_Layer1_ApeIntro_Frame134.rnc"
GFX_Layer1_ApeIntro_Frame134End:
GFX_Layer1_ApeIntro_Frame135:
	db "GFX_Layer1_ApeIntro_Frame135.rnc"
GFX_Layer1_ApeIntro_Frame135End:
GFX_Layer1_LoaderIntro_Frame59:
	db "GFX_Layer1_LoaderIntro_Frame59.rnc"
GFX_Layer1_LoaderIntro_Frame59End:
GFX_Layer1_LoaderIntro_Frame60:
	db "GFX_Layer1_LoaderIntro_Frame60.rnc"
GFX_Layer1_LoaderIntro_Frame60End:
GFX_Layer1_LoaderIntro_Frame61:
	db "GFX_Layer1_LoaderIntro_Frame61.rnc"
GFX_Layer1_LoaderIntro_Frame61End:
GFX_Layer1_LoaderIntro_Frame62:
	db "GFX_Layer1_LoaderIntro_Frame62.rnc"
GFX_Layer1_LoaderIntro_Frame62End:
GFX_Layer1_LoaderIntro_Frame63:
	db "GFX_Layer1_LoaderIntro_Frame63.rnc"
GFX_Layer1_LoaderIntro_Frame63End:
GFX_Layer1_LoaderIntro_Frame64:
	db "GFX_Layer1_LoaderIntro_Frame64.rnc"
GFX_Layer1_LoaderIntro_Frame64End:
GFX_Layer1_LoaderIntro_Frame65:
	db "GFX_Layer1_LoaderIntro_Frame65.rnc"
GFX_Layer1_LoaderIntro_Frame65End:
GFX_Layer1_LoaderIntro_Frame66:
	db "GFX_Layer1_LoaderIntro_Frame66.rnc"
GFX_Layer1_LoaderIntro_Frame66End:
GFX_Layer1_LoaderIntro_Frame67:
	db "GFX_Layer1_LoaderIntro_Frame67.rnc"
GFX_Layer1_LoaderIntro_Frame67End:
GFX_Layer1_LoaderIntro_Frame68:
	db "GFX_Layer1_LoaderIntro_Frame68.rnc"
GFX_Layer1_LoaderIntro_Frame68End:
GFX_Layer1_LoaderIntro_Frame69:
	db "GFX_Layer1_LoaderIntro_Frame69.rnc"
GFX_Layer1_LoaderIntro_Frame69End:
GFX_Layer1_LoaderIntro_Frame70:
	db "GFX_Layer1_LoaderIntro_Frame70.rnc"
GFX_Layer1_LoaderIntro_Frame70End:
GFX_Layer1_LoaderIntro_Frame71:
	db "GFX_Layer1_LoaderIntro_Frame71.rnc"
GFX_Layer1_LoaderIntro_Frame71End:
GFX_Layer1_LoaderIntro_Frame72:
	db "GFX_Layer1_LoaderIntro_Frame72.rnc"
GFX_Layer1_LoaderIntro_Frame72End:
GFX_Layer1_LoaderIntro_Frame73:
	db "GFX_Layer1_LoaderIntro_Frame73.rnc"
GFX_Layer1_LoaderIntro_Frame73End:
GFX_Layer1_LoaderIntro_Frame74:
	db "GFX_Layer1_LoaderIntro_Frame74.rnc"
GFX_Layer1_LoaderIntro_Frame74End:
GFX_Layer1_LoaderIntro_Frame75:
	db "GFX_Layer1_LoaderIntro_Frame75.rnc"
GFX_Layer1_LoaderIntro_Frame75End:
GFX_Layer1_LoaderIntro_Frame76:
	db "GFX_Layer1_LoaderIntro_Frame76.rnc"
GFX_Layer1_LoaderIntro_Frame76End:
GFX_Layer1_LoaderIntro_Frame77:
	db "GFX_Layer1_LoaderIntro_Frame77.rnc"
GFX_Layer1_LoaderIntro_Frame77End:
GFX_Layer1_LoaderIntro_Frame78:
	db "GFX_Layer1_LoaderIntro_Frame78.rnc"
GFX_Layer1_LoaderIntro_Frame78End:
GFX_Layer1_LoaderIntro_Frame79:
	db "GFX_Layer1_LoaderIntro_Frame79.rnc"
GFX_Layer1_LoaderIntro_Frame79End:
GFX_Layer1_LoaderIntro_Frame80:
	db "GFX_Layer1_LoaderIntro_Frame80.rnc"
GFX_Layer1_LoaderIntro_Frame80End:
GFX_Layer1_LoaderIntro_Frame81:
	db "GFX_Layer1_LoaderIntro_Frame81.rnc"
GFX_Layer1_LoaderIntro_Frame81End:
GFX_Layer1_LoaderIntro_Frame82:
	db "GFX_Layer1_LoaderIntro_Frame82.rnc"
GFX_Layer1_LoaderIntro_Frame82End:
GFX_Layer1_LoaderIntro_Frame83:
	db "GFX_Layer1_LoaderIntro_Frame83.rnc"
GFX_Layer1_LoaderIntro_Frame83End:
GFX_Layer1_SupervisorIntro_Frame26:
	db "GFX_Layer1_SupervisorIntro_Frame26.rnc"
GFX_Layer1_SupervisorIntro_Frame26End:
GFX_Layer1_SupervisorIntro_Frame27:
	db "GFX_Layer1_SupervisorIntro_Frame27.rnc"
GFX_Layer1_SupervisorIntro_Frame27End:
GFX_Layer1_SupervisorIntro_Frame28:
	db "GFX_Layer1_SupervisorIntro_Frame28.rnc"
GFX_Layer1_SupervisorIntro_Frame28End:
GFX_Layer1_SupervisorIntro_Frame29:
	db "GFX_Layer1_SupervisorIntro_Frame29.rnc"
GFX_Layer1_SupervisorIntro_Frame29End:
GFX_Layer1_SupervisorIntro_Frame30:
	db "GFX_Layer1_SupervisorIntro_Frame30.rnc"
GFX_Layer1_SupervisorIntro_Frame30End:
GFX_Layer1_SupervisorIntro_Frame46:
	db "GFX_Layer1_SupervisorIntro_Frame46.rnc"
GFX_Layer1_SupervisorIntro_Frame46End:
GFX_Layer1_SupervisorIntro_Frame48:
	db "GFX_Layer1_SupervisorIntro_Frame48.rnc"
GFX_Layer1_SupervisorIntro_Frame48End:
GFX_Layer1_SupervisorIntro_Frame49:
	db "GFX_Layer1_SupervisorIntro_Frame49.rnc"
GFX_Layer1_SupervisorIntro_Frame49End:
GFX_Layer1_SupervisorIntro_Frame50:
	db "GFX_Layer1_SupervisorIntro_Frame50.rnc"
GFX_Layer1_SupervisorIntro_Frame50End:
GFX_Layer1_SupervisorIntro_Frame51:
	db "GFX_Layer1_SupervisorIntro_Frame51.rnc"
GFX_Layer1_SupervisorIntro_Frame51End:
GFX_Layer1_SupervisorIntro_Frame52:
	db "GFX_Layer1_SupervisorIntro_Frame52.rnc"
GFX_Layer1_SupervisorIntro_Frame52End:
GFX_Layer1_SupervisorIntro_Frame54:
	db "GFX_Layer1_SupervisorIntro_Frame54.rnc"
GFX_Layer1_SupervisorIntro_Frame54End:
GFX_Layer1_SupervisorIntro_Frame100:
	db "GFX_Layer1_SupervisorIntro_Frame100.rnc"
GFX_Layer1_SupervisorIntro_Frame100End:
GFX_Layer1_SupervisorIntro_Frame101:
	db "GFX_Layer1_SupervisorIntro_Frame101.rnc"
GFX_Layer1_SupervisorIntro_Frame101End:
GFX_Layer1_SupervisorIntro_Frame102:
	db "GFX_Layer1_SupervisorIntro_Frame102.rnc"
GFX_Layer1_SupervisorIntro_Frame102End:
GFX_Layer1_SupervisorIntro_Frame103:
	db "GFX_Layer1_SupervisorIntro_Frame103.rnc"
GFX_Layer1_SupervisorIntro_Frame103End:
GFX_Layer1_SupervisorIntro_Frame104:
	db "GFX_Layer1_SupervisorIntro_Frame104.rnc"
GFX_Layer1_SupervisorIntro_Frame104End:
GFX_Layer1_SupervisorIntro_Frame105:
	db "GFX_Layer1_SupervisorIntro_Frame105.rnc"
GFX_Layer1_SupervisorIntro_Frame105End:
GFX_Layer1_SupervisorIntro_Frame106:
	db "GFX_Layer1_SupervisorIntro_Frame106.rnc"
GFX_Layer1_SupervisorIntro_Frame106End:
GFX_Layer1_CrusherDefeated_Frame2:
	db "GFX_Layer1_CrusherDefeated_Frame2.rnc"
GFX_Layer1_CrusherDefeated_Frame2End:
GFX_Layer1_CrusherDefeated_Frame3:
	db "GFX_Layer1_CrusherDefeated_Frame3.rnc"
GFX_Layer1_CrusherDefeated_Frame3End:
GFX_Layer1_CrusherDefeated_Frame4:
	db "GFX_Layer1_CrusherDefeated_Frame4.rnc"
GFX_Layer1_CrusherDefeated_Frame4End:
GFX_Layer1_CrusherDefeated_Frame5:
	db "GFX_Layer1_CrusherDefeated_Frame5.rnc"
GFX_Layer1_CrusherDefeated_Frame5End:
GFX_Layer1_ApproachingMetropolis4_Frame13:
	db "GFX_Layer1_ApproachingMetropolis4_Frame13.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame13End:
GFX_Layer1_ApproachingMetropolis4_Frame16:
	db "GFX_Layer1_ApproachingMetropolis4_Frame16.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame16End:
GFX_Layer1_ApproachingMetropolis4_Frame119:
	db "GFX_Layer1_ApproachingMetropolis4_Frame119.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame119End:
GFX_Layer1_MilitaryIntro_Frame13:
	db "GFX_Layer1_MilitaryIntro_Frame13.rnc"
GFX_Layer1_MilitaryIntro_Frame13End:
GFX_Layer1_MilitaryIntro_Frame15:
	db "GFX_Layer1_MilitaryIntro_Frame15.rnc"
GFX_Layer1_MilitaryIntro_Frame15End:
GFX_Layer1_MilitaryIntro_Frame16:
	db "GFX_Layer1_MilitaryIntro_Frame16.rnc"
GFX_Layer1_MilitaryIntro_Frame16End:
GFX_Layer1_MilitaryIntro_Frame17:
	db "GFX_Layer1_MilitaryIntro_Frame17.rnc"
GFX_Layer1_MilitaryIntro_Frame17End:
GFX_Layer1_MilitaryIntro_Frame18:
	db "GFX_Layer1_MilitaryIntro_Frame18.rnc"
GFX_Layer1_MilitaryIntro_Frame18End:
GFX_Layer1_MilitaryIntro_Frame19:
	db "GFX_Layer1_MilitaryIntro_Frame19.rnc"
GFX_Layer1_MilitaryIntro_Frame19End:
GFX_Layer1_MilitaryIntro_Frame20:
	db "GFX_Layer1_MilitaryIntro_Frame20.rnc"
GFX_Layer1_MilitaryIntro_Frame20End:
GFX_Layer1_MilitaryIntro_Frame21:
	db "GFX_Layer1_MilitaryIntro_Frame21.rnc"
GFX_Layer1_MilitaryIntro_Frame21End:
GFX_Layer1_MilitaryIntro_Frame22:
	db "GFX_Layer1_MilitaryIntro_Frame22.rnc"
GFX_Layer1_MilitaryIntro_Frame22End:
GFX_Layer1_MilitaryIntro_Frame24:
	db "GFX_Layer1_MilitaryIntro_Frame24.rnc"
GFX_Layer1_MilitaryIntro_Frame24End:
GFX_Layer1_MilitaryIntro_Frame26:
	db "GFX_Layer1_MilitaryIntro_Frame26.rnc"
GFX_Layer1_MilitaryIntro_Frame26End:
GFX_Layer1_MilitaryIntro_Frame54:
	db "GFX_Layer1_MilitaryIntro_Frame54.rnc"
GFX_Layer1_MilitaryIntro_Frame54End:
GFX_Layer1_MilitaryIntro_Frame55:
	db "GFX_Layer1_MilitaryIntro_Frame55.rnc"
GFX_Layer1_MilitaryIntro_Frame55End:
GFX_Layer1_MilitaryIntro_Frame56:
	db "GFX_Layer1_MilitaryIntro_Frame56.rnc"
GFX_Layer1_MilitaryIntro_Frame56End:
GFX_Layer1_MilitaryIntro_Frame57:
	db "GFX_Layer1_MilitaryIntro_Frame57.rnc"
GFX_Layer1_MilitaryIntro_Frame57End:
GFX_Layer1_MilitaryIntro_Frame58:
	db "GFX_Layer1_MilitaryIntro_Frame58.rnc"
GFX_Layer1_MilitaryIntro_Frame58End:
GFX_Layer1_MilitaryIntro_Frame59:
	db "GFX_Layer1_MilitaryIntro_Frame59.rnc"
GFX_Layer1_MilitaryIntro_Frame59End:
GFX_Layer1_MilitaryIntro_Frame60:
	db "GFX_Layer1_MilitaryIntro_Frame60.rnc"
GFX_Layer1_MilitaryIntro_Frame60End:
GFX_Layer1_MilitaryIntro_Frame61:
	db "GFX_Layer1_MilitaryIntro_Frame61.rnc"
GFX_Layer1_MilitaryIntro_Frame61End:
GFX_Layer1_MilitaryIntro_Frame62:
	db "GFX_Layer1_MilitaryIntro_Frame62.rnc"
GFX_Layer1_MilitaryIntro_Frame62End:
GFX_Layer1_MilitaryIntro_Frame63:
	db "GFX_Layer1_MilitaryIntro_Frame63.rnc"
GFX_Layer1_MilitaryIntro_Frame63End:
GFX_Layer1_MilitaryIntro_Frame64:
	db "GFX_Layer1_MilitaryIntro_Frame64.rnc"
GFX_Layer1_MilitaryIntro_Frame64End:
GFX_Layer1_MilitaryIntro_Frame65:
	db "GFX_Layer1_MilitaryIntro_Frame65.rnc"
GFX_Layer1_MilitaryIntro_Frame65End:
GFX_Layer1_MilitaryIntro_Frame66:
	db "GFX_Layer1_MilitaryIntro_Frame66.rnc"
GFX_Layer1_MilitaryIntro_Frame66End:
GFX_Layer1_MilitaryIntro_Frame67:
	db "GFX_Layer1_MilitaryIntro_Frame67.rnc"
GFX_Layer1_MilitaryIntro_Frame67End:
GFX_Layer1_MilitaryIntro_Frame68:
	db "GFX_Layer1_MilitaryIntro_Frame68.rnc"
GFX_Layer1_MilitaryIntro_Frame68End:
GFX_Layer1_MilitaryIntro_Frame69:
	db "GFX_Layer1_MilitaryIntro_Frame69.rnc"
GFX_Layer1_MilitaryIntro_Frame69End:
GFX_Layer1_MilitaryIntro_Frame70:
	db "GFX_Layer1_MilitaryIntro_Frame70.rnc"
GFX_Layer1_MilitaryIntro_Frame70End:
GFX_Layer1_MilitaryIntro_Frame71:
	db "GFX_Layer1_MilitaryIntro_Frame71.rnc"
GFX_Layer1_MilitaryIntro_Frame71End:
GFX_Layer1_MilitaryIntro_Frame85:
	db "GFX_Layer1_MilitaryIntro_Frame85.rnc"
GFX_Layer1_MilitaryIntro_Frame85End:
GFX_Layer1_MilitaryIntro_Frame86:
	db "GFX_Layer1_MilitaryIntro_Frame86.rnc"
GFX_Layer1_MilitaryIntro_Frame86End:
GFX_Layer1_MilitaryIntro_Frame105:
	db "GFX_Layer1_MilitaryIntro_Frame105.rnc"
GFX_Layer1_MilitaryIntro_Frame105End:
GFX_Layer1_MilitaryIntro_Frame106:
	db "GFX_Layer1_MilitaryIntro_Frame106.rnc"
GFX_Layer1_MilitaryIntro_Frame106End:
GFX_Layer1_MilitaryIntro_Frame107:
	db "GFX_Layer1_MilitaryIntro_Frame107.rnc"
GFX_Layer1_MilitaryIntro_Frame107End:
GFX_Layer1_MilitaryIntro_Frame108:
	db "GFX_Layer1_MilitaryIntro_Frame108.rnc"
GFX_Layer1_MilitaryIntro_Frame108End:
GFX_Layer1_MilitaryIntro_Frame109:
	db "GFX_Layer1_MilitaryIntro_Frame109.rnc"
GFX_Layer1_MilitaryIntro_Frame109End:
GFX_Layer1_LoaderIntro_Frame16:
	db "GFX_Layer1_LoaderIntro_Frame16.rnc"
GFX_Layer1_LoaderIntro_Frame16End:
GFX_Layer1_LoaderIntro_Frame22:
	db "GFX_Layer1_LoaderIntro_Frame22.rnc"
GFX_Layer1_LoaderIntro_Frame22End:
GFX_Layer1_LoaderIntro_Frame26:
	db "GFX_Layer1_LoaderIntro_Frame26.rnc"
GFX_Layer1_LoaderIntro_Frame26End:
GFX_Layer1_LoaderIntro_Frame28:
	db "GFX_Layer1_LoaderIntro_Frame28.rnc"
GFX_Layer1_LoaderIntro_Frame28End:
GFX_Layer1_LoaderIntro_Frame29:
	db "GFX_Layer1_LoaderIntro_Frame29.rnc"
GFX_Layer1_LoaderIntro_Frame29End:
GFX_Layer1_LoaderIntro_Frame30:
	db "GFX_Layer1_LoaderIntro_Frame30.rnc"
GFX_Layer1_LoaderIntro_Frame30End:
GFX_Layer1_LoaderIntro_Frame31:
	db "GFX_Layer1_LoaderIntro_Frame31.rnc"
GFX_Layer1_LoaderIntro_Frame31End:
GFX_Layer1_LoaderIntro_Frame32:
	db "GFX_Layer1_LoaderIntro_Frame32.rnc"
GFX_Layer1_LoaderIntro_Frame32End:
GFX_Layer1_LoaderIntro_Frame33:
	db "GFX_Layer1_LoaderIntro_Frame33.rnc"
GFX_Layer1_LoaderIntro_Frame33End:
GFX_Layer1_LoaderIntro_Frame34:
	db "GFX_Layer1_LoaderIntro_Frame34.rnc"
GFX_Layer1_LoaderIntro_Frame34End:
GFX_Layer1_LoaderIntro_Frame35:
	db "GFX_Layer1_LoaderIntro_Frame35.rnc"
GFX_Layer1_LoaderIntro_Frame35End:
GFX_Layer1_LoaderIntro_Frame36:
	db "GFX_Layer1_LoaderIntro_Frame36.rnc"
GFX_Layer1_LoaderIntro_Frame36End:
GFX_Layer1_LoaderIntro_Frame37:
	db "GFX_Layer1_LoaderIntro_Frame37.rnc"
GFX_Layer1_LoaderIntro_Frame37End:
GFX_Layer1_LoaderIntro_Frame38:
	db "GFX_Layer1_LoaderIntro_Frame38.rnc"
GFX_Layer1_LoaderIntro_Frame38End:
GFX_Layer1_LoaderIntro_Frame39:
	db "GFX_Layer1_LoaderIntro_Frame39.rnc"
GFX_Layer1_LoaderIntro_Frame39End:
GFX_Layer1_LoaderIntro_Frame41:
	db "GFX_Layer1_LoaderIntro_Frame41.rnc"
GFX_Layer1_LoaderIntro_Frame41End:
GFX_Layer1_LoaderIntro_Frame42:
	db "GFX_Layer1_LoaderIntro_Frame42.rnc"
GFX_Layer1_LoaderIntro_Frame42End:
GFX_Layer1_LoaderIntro_Frame43:
	db "GFX_Layer1_LoaderIntro_Frame43.rnc"
GFX_Layer1_LoaderIntro_Frame43End:
GFX_Layer1_LoaderIntro_Frame44:
	db "GFX_Layer1_LoaderIntro_Frame44.rnc"
GFX_Layer1_LoaderIntro_Frame44End:
GFX_Layer1_LoaderIntro_Frame45:
	db "GFX_Layer1_LoaderIntro_Frame45.rnc"
GFX_Layer1_LoaderIntro_Frame45End:
GFX_Layer1_LoaderIntro_Frame46:
	db "GFX_Layer1_LoaderIntro_Frame46.rnc"
GFX_Layer1_LoaderIntro_Frame46End:
GFX_Layer1_LoaderIntro_Frame48:
	db "GFX_Layer1_LoaderIntro_Frame48.rnc"
GFX_Layer1_LoaderIntro_Frame48End:
GFX_Layer1_LoaderIntro_Frame49:
	db "GFX_Layer1_LoaderIntro_Frame49.rnc"
GFX_Layer1_LoaderIntro_Frame49End:
GFX_Layer1_LoaderIntro_Frame50:
	db "GFX_Layer1_LoaderIntro_Frame50.rnc"
GFX_Layer1_LoaderIntro_Frame50End:
GFX_Layer1_LoaderIntro_Frame51:
	db "GFX_Layer1_LoaderIntro_Frame51.rnc"
GFX_Layer1_LoaderIntro_Frame51End:
GFX_Layer1_LoaderIntro_Frame52:
	db "GFX_Layer1_LoaderIntro_Frame52.rnc"
GFX_Layer1_LoaderIntro_Frame52End:
GFX_Layer1_LoaderIntro_Frame53:
	db "GFX_Layer1_LoaderIntro_Frame53.rnc"
GFX_Layer1_LoaderIntro_Frame53End:
GFX_Layer1_LoaderIntro_Frame54:
	db "GFX_Layer1_LoaderIntro_Frame54.rnc"
GFX_Layer1_LoaderIntro_Frame54End:
GFX_Layer1_LoaderIntro_Frame55:
	db "GFX_Layer1_LoaderIntro_Frame55.rnc"
GFX_Layer1_LoaderIntro_Frame55End:
GFX_Layer1_LoaderIntro_Frame56:
	db "GFX_Layer1_LoaderIntro_Frame56.rnc"
GFX_Layer1_LoaderIntro_Frame56End:
GFX_Layer1_LoaderIntro_Frame57:
	db "GFX_Layer1_LoaderIntro_Frame57.rnc"
GFX_Layer1_LoaderIntro_Frame57End:
GFX_Layer1_LoaderIntro_Frame58:
	db "GFX_Layer1_LoaderIntro_Frame58.rnc"
GFX_Layer1_LoaderIntro_Frame58End:
GFX_Layer1_SupervisorIntro_Frame32:
	db "GFX_Layer1_SupervisorIntro_Frame32.rnc"
GFX_Layer1_SupervisorIntro_Frame32End:
GFX_Layer1_SupervisorIntro_Frame33:
	db "GFX_Layer1_SupervisorIntro_Frame33.rnc"
GFX_Layer1_SupervisorIntro_Frame33End:
GFX_Layer1_SupervisorIntro_Frame34:
	db "GFX_Layer1_SupervisorIntro_Frame34.rnc"
GFX_Layer1_SupervisorIntro_Frame34End:
GFX_Layer1_SupervisorIntro_Frame35:
	db "GFX_Layer1_SupervisorIntro_Frame35.rnc"
GFX_Layer1_SupervisorIntro_Frame35End:
GFX_Layer1_SupervisorIntro_Frame36:
	db "GFX_Layer1_SupervisorIntro_Frame36.rnc"
GFX_Layer1_SupervisorIntro_Frame36End:
GFX_Layer1_SupervisorIntro_Frame37:
	db "GFX_Layer1_SupervisorIntro_Frame37.rnc"
GFX_Layer1_SupervisorIntro_Frame37End:
GFX_Layer1_SupervisorIntro_Frame38:
	db "GFX_Layer1_SupervisorIntro_Frame38.rnc"
GFX_Layer1_SupervisorIntro_Frame38End:
GFX_Layer1_SupervisorIntro_Frame39:
	db "GFX_Layer1_SupervisorIntro_Frame39.rnc"
GFX_Layer1_SupervisorIntro_Frame39End:
GFX_Layer1_SupervisorIntro_Frame40:
	db "GFX_Layer1_SupervisorIntro_Frame40.rnc"
GFX_Layer1_SupervisorIntro_Frame40End:
GFX_Layer1_SupervisorIntro_Frame41:
	db "GFX_Layer1_SupervisorIntro_Frame41.rnc"
GFX_Layer1_SupervisorIntro_Frame41End:
GFX_Layer1_SupervisorIntro_Frame42:
	db "GFX_Layer1_SupervisorIntro_Frame42.rnc"
GFX_Layer1_SupervisorIntro_Frame42End:
GFX_Layer1_SupervisorIntro_Frame43:
	db "GFX_Layer1_SupervisorIntro_Frame43.rnc"
GFX_Layer1_SupervisorIntro_Frame43End:
GFX_Layer1_SupervisorIntro_Frame44:
	db "GFX_Layer1_SupervisorIntro_Frame44.rnc"
GFX_Layer1_SupervisorIntro_Frame44End:
GFX_Layer1_SupervisorIntro_Frame45:
	db "GFX_Layer1_SupervisorIntro_Frame45.rnc"
GFX_Layer1_SupervisorIntro_Frame45End:
GFX_Layer1_SupervisorIntro_Frame47:
	db "GFX_Layer1_SupervisorIntro_Frame47.rnc"
GFX_Layer1_SupervisorIntro_Frame47End:
GFX_Layer1_LoaderDefeated_Frame15:
	db "GFX_Layer1_LoaderDefeated_Frame15.rnc"
GFX_Layer1_LoaderDefeated_Frame15End:
GFX_Layer1_LoaderDefeated_Frame16:
	db "GFX_Layer1_LoaderDefeated_Frame16.rnc"
GFX_Layer1_LoaderDefeated_Frame16End:
GFX_Layer1_LoaderDefeated_Frame17:
	db "GFX_Layer1_LoaderDefeated_Frame17.rnc"
GFX_Layer1_LoaderDefeated_Frame17End:
GFX_Layer1_LoaderDefeated_Frame18:
	db "GFX_Layer1_LoaderDefeated_Frame18.rnc"
GFX_Layer1_LoaderDefeated_Frame18End:
GFX_Layer1_LoaderDefeated_Frame19:
	db "GFX_Layer1_LoaderDefeated_Frame19.rnc"
GFX_Layer1_LoaderDefeated_Frame19End:
GFX_Layer1_LoaderDefeated_Frame20:
	db "GFX_Layer1_LoaderDefeated_Frame20.rnc"
GFX_Layer1_LoaderDefeated_Frame20End:
GFX_Layer1_CrusherDefeated_Frame6:
	db "GFX_Layer1_CrusherDefeated_Frame6.rnc"
GFX_Layer1_CrusherDefeated_Frame6End:
GFX_Layer1_CrusherDefeated_Frame7:
	db "GFX_Layer1_CrusherDefeated_Frame7.rnc"
GFX_Layer1_CrusherDefeated_Frame7End:
GFX_Layer1_CrusherDefeated_Frame8:
	db "GFX_Layer1_CrusherDefeated_Frame8.rnc"
GFX_Layer1_CrusherDefeated_Frame8End:
GFX_Layer1_CrusherDefeated_Frame9:
	db "GFX_Layer1_CrusherDefeated_Frame9.rnc"
GFX_Layer1_CrusherDefeated_Frame9End:
GFX_Layer1_CrusherDefeated_Frame10:
	db "GFX_Layer1_CrusherDefeated_Frame10.rnc"
GFX_Layer1_CrusherDefeated_Frame10End:
GFX_Layer1_CrusherDefeated_Frame11:
	db "GFX_Layer1_CrusherDefeated_Frame11.rnc"
GFX_Layer1_CrusherDefeated_Frame11End:
GFX_Layer1_CrusherDefeated_Frame12:
	db "GFX_Layer1_CrusherDefeated_Frame12.rnc"
GFX_Layer1_CrusherDefeated_Frame12End:
GFX_Layer1_CrusherDefeated_Frame13:
	db "GFX_Layer1_CrusherDefeated_Frame13.rnc"
GFX_Layer1_CrusherDefeated_Frame13End:
GFX_Layer1_CrusherDefeated_Frame14:
	db "GFX_Layer1_CrusherDefeated_Frame14.rnc"
GFX_Layer1_CrusherDefeated_Frame14End:
GFX_Layer1_CrusherDefeated_Frame15:
	db "GFX_Layer1_CrusherDefeated_Frame15.rnc"
GFX_Layer1_CrusherDefeated_Frame15End:
GFX_Layer1_CrusherDefeated_Frame16:
	db "GFX_Layer1_CrusherDefeated_Frame16.rnc"
GFX_Layer1_CrusherDefeated_Frame16End:
GFX_Layer1_CrusherDefeated_Frame17:
	db "GFX_Layer1_CrusherDefeated_Frame17.rnc"
GFX_Layer1_CrusherDefeated_Frame17End:
GFX_Layer1_CrusherDefeated_Frame21:
	db "GFX_Layer1_CrusherDefeated_Frame21.rnc"
GFX_Layer1_CrusherDefeated_Frame21End:
GFX_Layer1_CrusherDefeated_Frame22:
	db "GFX_Layer1_CrusherDefeated_Frame22.rnc"
GFX_Layer1_CrusherDefeated_Frame22End:
GFX_Layer1_CrusherDefeated_Frame23:
	db "GFX_Layer1_CrusherDefeated_Frame23.rnc"
GFX_Layer1_CrusherDefeated_Frame23End:
GFX_Layer1_CrusherDefeated_Frame24:
	db "GFX_Layer1_CrusherDefeated_Frame24.rnc"
GFX_Layer1_CrusherDefeated_Frame24End:
GFX_Layer1_ApproachingMetropolis4_Frame17:
	db "GFX_Layer1_ApproachingMetropolis4_Frame17.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame17End:
GFX_Layer1_ApproachingMetropolis4_Frame25:
	db "GFX_Layer1_ApproachingMetropolis4_Frame25.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame25End:
GFX_Layer1_ApproachingMetropolis4_Frame26:
	db "GFX_Layer1_ApproachingMetropolis4_Frame26.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame26End:
GFX_Layer1_ApproachingMetropolis4_Frame27:
	db "GFX_Layer1_ApproachingMetropolis4_Frame27.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame27End:
GFX_Layer1_ApproachingMetropolis4_Frame28:
	db "GFX_Layer1_ApproachingMetropolis4_Frame28.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame28End:
GFX_Layer1_ApproachingMetropolis4_Frame29:
	db "GFX_Layer1_ApproachingMetropolis4_Frame29.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame29End:
GFX_Layer1_ApproachingMetropolis4_Frame30:
	db "GFX_Layer1_ApproachingMetropolis4_Frame30.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame30End:
GFX_Layer1_ApproachingMetropolis4_Frame31:
	db "GFX_Layer1_ApproachingMetropolis4_Frame31.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame31End:
GFX_Layer1_ApproachingMetropolis4_Frame32:
	db "GFX_Layer1_ApproachingMetropolis4_Frame32.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame32End:
GFX_Layer1_ApproachingMetropolis4_Frame33:
	db "GFX_Layer1_ApproachingMetropolis4_Frame33.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame33End:
GFX_Layer1_ApproachingMetropolis4_Frame34:
	db "GFX_Layer1_ApproachingMetropolis4_Frame34.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame34End:
GFX_Layer1_ApproachingMetropolis4_Frame36:
	db "GFX_Layer1_ApproachingMetropolis4_Frame36.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame36End:
GFX_Layer1_ApproachingMetropolis4_Frame37:
	db "GFX_Layer1_ApproachingMetropolis4_Frame37.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame37End:
GFX_Layer1_ApproachingMetropolis4_Frame38:
	db "GFX_Layer1_ApproachingMetropolis4_Frame38.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame38End:
GFX_Layer1_ApproachingMetropolis4_Frame39:
	db "GFX_Layer1_ApproachingMetropolis4_Frame39.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame39End:
GFX_Layer1_ApproachingMetropolis4_Frame40:
	db "GFX_Layer1_ApproachingMetropolis4_Frame40.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame40End:
GFX_Layer1_ApproachingMetropolis4_Frame117:
	db "GFX_Layer1_ApproachingMetropolis4_Frame117.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame117End:
GFX_Layer1_ApproachingMetropolis4_Frame118:
	db "GFX_Layer1_ApproachingMetropolis4_Frame118.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame118End:
GFX_Layer1_MilitaryIntro_Frame2:
	db "GFX_Layer1_MilitaryIntro_Frame2.rnc"
GFX_Layer1_MilitaryIntro_Frame2End:
GFX_Layer1_MilitaryIntro_Frame3:
	db "GFX_Layer1_MilitaryIntro_Frame3.rnc"
GFX_Layer1_MilitaryIntro_Frame3End:
GFX_Layer1_MilitaryIntro_Frame4:
	db "GFX_Layer1_MilitaryIntro_Frame4.rnc"
GFX_Layer1_MilitaryIntro_Frame4End:
GFX_Layer1_MilitaryIntro_Frame5:
	db "GFX_Layer1_MilitaryIntro_Frame5.rnc"
GFX_Layer1_MilitaryIntro_Frame5End:
GFX_Layer1_MilitaryIntro_Frame6:
	db "GFX_Layer1_MilitaryIntro_Frame6.rnc"
GFX_Layer1_MilitaryIntro_Frame6End:
GFX_Layer1_MilitaryIntro_Frame7:
	db "GFX_Layer1_MilitaryIntro_Frame7.rnc"
GFX_Layer1_MilitaryIntro_Frame7End:
GFX_Layer1_MilitaryIntro_Frame8:
	db "GFX_Layer1_MilitaryIntro_Frame8.rnc"
GFX_Layer1_MilitaryIntro_Frame8End:
GFX_Layer1_MilitaryIntro_Frame9:
	db "GFX_Layer1_MilitaryIntro_Frame9.rnc"
GFX_Layer1_MilitaryIntro_Frame9End:
GFX_Layer1_MilitaryIntro_Frame10:
	db "GFX_Layer1_MilitaryIntro_Frame10.rnc"
GFX_Layer1_MilitaryIntro_Frame10End:
GFX_Layer1_MilitaryIntro_Frame11:
	db "GFX_Layer1_MilitaryIntro_Frame11.rnc"
GFX_Layer1_MilitaryIntro_Frame11End:
GFX_Layer1_MilitaryIntro_Frame12:
	db "GFX_Layer1_MilitaryIntro_Frame12.rnc"
GFX_Layer1_MilitaryIntro_Frame12End:
GFX_Layer1_MilitaryIntro_Frame14:
	db "GFX_Layer1_MilitaryIntro_Frame14.rnc"
GFX_Layer1_MilitaryIntro_Frame14End:
GFX_Layer1_MilitaryIntro_Frame23:
	db "GFX_Layer1_MilitaryIntro_Frame23.rnc"
GFX_Layer1_MilitaryIntro_Frame23End:
GFX_Layer1_MilitaryIntro_Frame25:
	db "GFX_Layer1_MilitaryIntro_Frame25.rnc"
GFX_Layer1_MilitaryIntro_Frame25End:
GFX_Layer1_MilitaryIntro_Frame27:
	db "GFX_Layer1_MilitaryIntro_Frame27.rnc"
GFX_Layer1_MilitaryIntro_Frame27End:
GFX_Layer1_MilitaryIntro_Frame29:
	db "GFX_Layer1_MilitaryIntro_Frame29.rnc"
GFX_Layer1_MilitaryIntro_Frame29End:
GFX_Layer1_MilitaryIntro_Frame30:
	db "GFX_Layer1_MilitaryIntro_Frame30.rnc"
GFX_Layer1_MilitaryIntro_Frame30End:
GFX_Layer1_MilitaryIntro_Frame31:
	db "GFX_Layer1_MilitaryIntro_Frame31.rnc"
GFX_Layer1_MilitaryIntro_Frame31End:
GFX_Layer1_MilitaryIntro_Frame32:
	db "GFX_Layer1_MilitaryIntro_Frame32.rnc"
GFX_Layer1_MilitaryIntro_Frame32End:
GFX_Layer1_MilitaryIntro_Frame33:
	db "GFX_Layer1_MilitaryIntro_Frame33.rnc"
GFX_Layer1_MilitaryIntro_Frame33End:
GFX_Layer1_MilitaryIntro_Frame34:
	db "GFX_Layer1_MilitaryIntro_Frame34.rnc"
GFX_Layer1_MilitaryIntro_Frame34End:
GFX_Layer1_MilitaryIntro_Frame35:
	db "GFX_Layer1_MilitaryIntro_Frame35.rnc"
GFX_Layer1_MilitaryIntro_Frame35End:
GFX_Layer1_MilitaryIntro_Frame36:
	db "GFX_Layer1_MilitaryIntro_Frame36.rnc"
GFX_Layer1_MilitaryIntro_Frame36End:
GFX_Layer1_MilitaryIntro_Frame37:
	db "GFX_Layer1_MilitaryIntro_Frame37.rnc"
GFX_Layer1_MilitaryIntro_Frame37End:
GFX_Layer1_MilitaryIntro_Frame38:
	db "GFX_Layer1_MilitaryIntro_Frame38.rnc"
GFX_Layer1_MilitaryIntro_Frame38End:
GFX_Layer1_MilitaryIntro_Frame39:
	db "GFX_Layer1_MilitaryIntro_Frame39.rnc"
GFX_Layer1_MilitaryIntro_Frame39End:
GFX_Layer1_MilitaryIntro_Frame40:
	db "GFX_Layer1_MilitaryIntro_Frame40.rnc"
GFX_Layer1_MilitaryIntro_Frame40End:
GFX_Layer1_MilitaryIntro_Frame41:
	db "GFX_Layer1_MilitaryIntro_Frame41.rnc"
GFX_Layer1_MilitaryIntro_Frame41End:
GFX_Layer1_MilitaryIntro_Frame42:
	db "GFX_Layer1_MilitaryIntro_Frame42.rnc"
GFX_Layer1_MilitaryIntro_Frame42End:
GFX_Layer1_MilitaryIntro_Frame43:
	db "GFX_Layer1_MilitaryIntro_Frame43.rnc"
GFX_Layer1_MilitaryIntro_Frame43End:
GFX_Layer1_MilitaryIntro_Frame44:
	db "GFX_Layer1_MilitaryIntro_Frame44.rnc"
GFX_Layer1_MilitaryIntro_Frame44End:
GFX_Layer1_MilitaryIntro_Frame45:
	db "GFX_Layer1_MilitaryIntro_Frame45.rnc"
GFX_Layer1_MilitaryIntro_Frame45End:
GFX_Layer1_MilitaryIntro_Frame46:
	db "GFX_Layer1_MilitaryIntro_Frame46.rnc"
GFX_Layer1_MilitaryIntro_Frame46End:
GFX_Layer1_MilitaryIntro_Frame47:
	db "GFX_Layer1_MilitaryIntro_Frame47.rnc"
GFX_Layer1_MilitaryIntro_Frame47End:
GFX_Layer1_MilitaryIntro_Frame48:
	db "GFX_Layer1_MilitaryIntro_Frame48.rnc"
GFX_Layer1_MilitaryIntro_Frame48End:
GFX_Layer1_MilitaryIntro_Frame49:
	db "GFX_Layer1_MilitaryIntro_Frame49.rnc"
GFX_Layer1_MilitaryIntro_Frame49End:
GFX_Layer1_MilitaryIntro_Frame50:
	db "GFX_Layer1_MilitaryIntro_Frame50.rnc"
GFX_Layer1_MilitaryIntro_Frame50End:
GFX_Layer1_MilitaryIntro_Frame51:
	db "GFX_Layer1_MilitaryIntro_Frame51.rnc"
GFX_Layer1_MilitaryIntro_Frame51End:
GFX_Layer1_MilitaryIntro_Frame52:
	db "GFX_Layer1_MilitaryIntro_Frame52.rnc"
GFX_Layer1_MilitaryIntro_Frame52End:
GFX_Layer1_MilitaryIntro_Frame53:
	db "GFX_Layer1_MilitaryIntro_Frame53.rnc"
GFX_Layer1_MilitaryIntro_Frame53End:
GFX_Layer1_MilitaryIntro_Frame87:
	db "GFX_Layer1_MilitaryIntro_Frame87.rnc"
GFX_Layer1_MilitaryIntro_Frame87End:
GFX_Layer1_MilitaryIntro_Frame88:
	db "GFX_Layer1_MilitaryIntro_Frame88.rnc"
GFX_Layer1_MilitaryIntro_Frame88End:
GFX_Layer1_MilitaryIntro_Frame90:
	db "GFX_Layer1_MilitaryIntro_Frame90.rnc"
GFX_Layer1_MilitaryIntro_Frame90End:
GFX_Layer1_MilitaryIntro_Frame91:
	db "GFX_Layer1_MilitaryIntro_Frame91.rnc"
GFX_Layer1_MilitaryIntro_Frame91End:
GFX_Layer1_MilitaryIntro_Frame92:
	db "GFX_Layer1_MilitaryIntro_Frame92.rnc"
GFX_Layer1_MilitaryIntro_Frame92End:
GFX_Layer1_MilitaryIntro_Frame93:
	db "GFX_Layer1_MilitaryIntro_Frame93.rnc"
GFX_Layer1_MilitaryIntro_Frame93End:
GFX_Layer1_MilitaryIntro_Frame94:
	db "GFX_Layer1_MilitaryIntro_Frame94.rnc"
GFX_Layer1_MilitaryIntro_Frame94End:
GFX_Layer1_MilitaryIntro_Frame95:
	db "GFX_Layer1_MilitaryIntro_Frame95.rnc"
GFX_Layer1_MilitaryIntro_Frame95End:
GFX_Layer1_MilitaryIntro_Frame96:
	db "GFX_Layer1_MilitaryIntro_Frame96.rnc"
GFX_Layer1_MilitaryIntro_Frame96End:
GFX_Layer1_MilitaryIntro_Frame97:
	db "GFX_Layer1_MilitaryIntro_Frame97.rnc"
GFX_Layer1_MilitaryIntro_Frame97End:
GFX_Layer1_MilitaryIntro_Frame98:
	db "GFX_Layer1_MilitaryIntro_Frame98.rnc"
GFX_Layer1_MilitaryIntro_Frame98End:
GFX_Layer1_MilitaryIntro_Frame99:
	db "GFX_Layer1_MilitaryIntro_Frame99.rnc"
GFX_Layer1_MilitaryIntro_Frame99End:
GFX_Layer1_MilitaryIntro_Frame100:
	db "GFX_Layer1_MilitaryIntro_Frame100.rnc"
GFX_Layer1_MilitaryIntro_Frame100End:
GFX_Layer1_MilitaryIntro_Frame101:
	db "GFX_Layer1_MilitaryIntro_Frame101.rnc"
GFX_Layer1_MilitaryIntro_Frame101End:
GFX_Layer1_MilitaryIntro_Frame102:
	db "GFX_Layer1_MilitaryIntro_Frame102.rnc"
GFX_Layer1_MilitaryIntro_Frame102End:
GFX_Layer1_MilitaryIntro_Frame103:
	db "GFX_Layer1_MilitaryIntro_Frame103.rnc"
GFX_Layer1_MilitaryIntro_Frame103End:
GFX_Layer1_MilitaryIntro_Frame104:
	db "GFX_Layer1_MilitaryIntro_Frame104.rnc"
GFX_Layer1_MilitaryIntro_Frame104End:
GFX_Layer1_ApeIntro_Frame34:
	db "GFX_Layer1_ApeIntro_Frame34.rnc"
GFX_Layer1_ApeIntro_Frame34End:
GFX_Layer1_ApeIntro_Frame65:
	db "GFX_Layer1_ApeIntro_Frame65.rnc"
GFX_Layer1_ApeIntro_Frame65End:
GFX_Layer1_ApeIntro_Frame96:
	db "GFX_Layer1_ApeIntro_Frame96.rnc"
GFX_Layer1_ApeIntro_Frame96End:
GFX_Layer1_LoaderIntro_Frame2:
	db "GFX_Layer1_LoaderIntro_Frame2.rnc"
GFX_Layer1_LoaderIntro_Frame2End:
GFX_Layer1_LoaderIntro_Frame3:
	db "GFX_Layer1_LoaderIntro_Frame3.rnc"
GFX_Layer1_LoaderIntro_Frame3End:
GFX_Layer1_LoaderIntro_Frame4:
	db "GFX_Layer1_LoaderIntro_Frame4.rnc"
GFX_Layer1_LoaderIntro_Frame4End:
GFX_Layer1_LoaderIntro_Frame5:
	db "GFX_Layer1_LoaderIntro_Frame5.rnc"
GFX_Layer1_LoaderIntro_Frame5End:
GFX_Layer1_LoaderIntro_Frame6:
	db "GFX_Layer1_LoaderIntro_Frame6.rnc"
GFX_Layer1_LoaderIntro_Frame6End:
GFX_Layer1_LoaderIntro_Frame7:
	db "GFX_Layer1_LoaderIntro_Frame7.rnc"
GFX_Layer1_LoaderIntro_Frame7End:
GFX_Layer1_LoaderIntro_Frame8:
	db "GFX_Layer1_LoaderIntro_Frame8.rnc"
GFX_Layer1_LoaderIntro_Frame8End:
GFX_Layer1_LoaderIntro_Frame9:
	db "GFX_Layer1_LoaderIntro_Frame9.rnc"
GFX_Layer1_LoaderIntro_Frame9End:
GFX_Layer1_LoaderIntro_Frame10:
	db "GFX_Layer1_LoaderIntro_Frame10.rnc"
GFX_Layer1_LoaderIntro_Frame10End:
GFX_Layer1_LoaderIntro_Frame11:
	db "GFX_Layer1_LoaderIntro_Frame11.rnc"
GFX_Layer1_LoaderIntro_Frame11End:
GFX_Layer1_LoaderIntro_Frame12:
	db "GFX_Layer1_LoaderIntro_Frame12.rnc"
GFX_Layer1_LoaderIntro_Frame12End:
GFX_Layer1_LoaderIntro_Frame13:
	db "GFX_Layer1_LoaderIntro_Frame13.rnc"
GFX_Layer1_LoaderIntro_Frame13End:
GFX_Layer1_LoaderIntro_Frame14:
	db "GFX_Layer1_LoaderIntro_Frame14.rnc"
GFX_Layer1_LoaderIntro_Frame14End:
GFX_Layer1_LoaderIntro_Frame15:
	db "GFX_Layer1_LoaderIntro_Frame15.rnc"
GFX_Layer1_LoaderIntro_Frame15End:
GFX_Layer1_LoaderIntro_Frame17:
	db "GFX_Layer1_LoaderIntro_Frame17.rnc"
GFX_Layer1_LoaderIntro_Frame17End:
GFX_Layer1_LoaderIntro_Frame18:
	db "GFX_Layer1_LoaderIntro_Frame18.rnc"
GFX_Layer1_LoaderIntro_Frame18End:
GFX_Layer1_LoaderIntro_Frame19:
	db "GFX_Layer1_LoaderIntro_Frame19.rnc"
GFX_Layer1_LoaderIntro_Frame19End:
GFX_Layer1_LoaderIntro_Frame20:
	db "GFX_Layer1_LoaderIntro_Frame20.rnc"
GFX_Layer1_LoaderIntro_Frame20End:
GFX_Layer1_LoaderIntro_Frame21:
	db "GFX_Layer1_LoaderIntro_Frame21.rnc"
GFX_Layer1_LoaderIntro_Frame21End:
GFX_Layer1_LoaderIntro_Frame23:
	db "GFX_Layer1_LoaderIntro_Frame23.rnc"
GFX_Layer1_LoaderIntro_Frame23End:
GFX_Layer1_LoaderIntro_Frame24:
	db "GFX_Layer1_LoaderIntro_Frame24.rnc"
GFX_Layer1_LoaderIntro_Frame24End:
GFX_Layer1_LoaderIntro_Frame25:
	db "GFX_Layer1_LoaderIntro_Frame25.rnc"
GFX_Layer1_LoaderIntro_Frame25End:
GFX_Layer1_LoaderIntro_Frame27:
	db "GFX_Layer1_LoaderIntro_Frame27.rnc"
GFX_Layer1_LoaderIntro_Frame27End:
GFX_Layer1_LoaderDefeated_Frame9:
	db "GFX_Layer1_LoaderDefeated_Frame9.rnc"
GFX_Layer1_LoaderDefeated_Frame9End:
GFX_Layer1_LoaderDefeated_Frame10:
	db "GFX_Layer1_LoaderDefeated_Frame10.rnc"
GFX_Layer1_LoaderDefeated_Frame10End:
GFX_Layer1_LoaderDefeated_Frame11:
	db "GFX_Layer1_LoaderDefeated_Frame11.rnc"
GFX_Layer1_LoaderDefeated_Frame11End:
GFX_Layer1_LoaderDefeated_Frame12:
	db "GFX_Layer1_LoaderDefeated_Frame12.rnc"
GFX_Layer1_LoaderDefeated_Frame12End:
GFX_Layer1_LoaderDefeated_Frame13:
	db "GFX_Layer1_LoaderDefeated_Frame13.rnc"
GFX_Layer1_LoaderDefeated_Frame13End:
GFX_Layer1_LoaderDefeated_Frame14:
	db "GFX_Layer1_LoaderDefeated_Frame14.rnc"
GFX_Layer1_LoaderDefeated_Frame14End:
GFX_Layer1_LoaderDefeated_Frame21:
	db "GFX_Layer1_LoaderDefeated_Frame21.rnc"
GFX_Layer1_LoaderDefeated_Frame21End:
GFX_Layer1_LoaderDefeated_Frame22:
	db "GFX_Layer1_LoaderDefeated_Frame22.rnc"
GFX_Layer1_LoaderDefeated_Frame22End:
GFX_Layer1_LoaderDefeated_Frame23:
	db "GFX_Layer1_LoaderDefeated_Frame23.rnc"
GFX_Layer1_LoaderDefeated_Frame23End:
GFX_Layer1_LoaderDefeated_Frame24:
	db "GFX_Layer1_LoaderDefeated_Frame24.rnc"
GFX_Layer1_LoaderDefeated_Frame24End:
GFX_Layer1_LoaderDefeated_Frame25:
	db "GFX_Layer1_LoaderDefeated_Frame25.rnc"
GFX_Layer1_LoaderDefeated_Frame25End:
GFX_Layer1_LoaderDefeated_Frame26:
	db "GFX_Layer1_LoaderDefeated_Frame26.rnc"
GFX_Layer1_LoaderDefeated_Frame26End:
GFX_Layer1_MilitaryDefeated_Frame2:
	db "GFX_Layer1_MilitaryDefeated_Frame2.rnc"
GFX_Layer1_MilitaryDefeated_Frame2End:
GFX_Layer1_CrusherDefeated_Frame18:
	db "GFX_Layer1_CrusherDefeated_Frame18.rnc"
GFX_Layer1_CrusherDefeated_Frame18End:
GFX_Layer1_CrusherDefeated_Frame19:
	db "GFX_Layer1_CrusherDefeated_Frame19.rnc"
GFX_Layer1_CrusherDefeated_Frame19End:
GFX_Layer1_CrusherDefeated_Frame20:
	db "GFX_Layer1_CrusherDefeated_Frame20.rnc"
GFX_Layer1_CrusherDefeated_Frame20End:
GFX_Layer1_CrusherDefeated_Frame25:
	db "GFX_Layer1_CrusherDefeated_Frame25.rnc"
GFX_Layer1_CrusherDefeated_Frame25End:
GFX_Layer1_CrusherDefeated_Frame27:
	db "GFX_Layer1_CrusherDefeated_Frame27.rnc"
GFX_Layer1_CrusherDefeated_Frame27End:
GFX_Layer1_CyborgDefeated_Frame33:
	db "GFX_Layer1_CyborgDefeated_Frame33.rnc"
GFX_Layer1_CyborgDefeated_Frame33End:
GFX_Layer1_CyborgDefeated_Frame34:
	db "GFX_Layer1_CyborgDefeated_Frame34.rnc"
GFX_Layer1_CyborgDefeated_Frame34End:
GFX_Layer1_CyborgDefeated_Frame35:
	db "GFX_Layer1_CyborgDefeated_Frame35.rnc"
GFX_Layer1_CyborgDefeated_Frame35End:
GFX_Layer1_CyborgDefeated_Frame36:
	db "GFX_Layer1_CyborgDefeated_Frame36.rnc"
GFX_Layer1_CyborgDefeated_Frame36End:
GFX_Layer1_CyborgDefeated_Frame37:
	db "GFX_Layer1_CyborgDefeated_Frame37.rnc"
GFX_Layer1_CyborgDefeated_Frame37End:
GFX_Layer1_CyborgDefeated_Frame38:
	db "GFX_Layer1_CyborgDefeated_Frame38.rnc"
GFX_Layer1_CyborgDefeated_Frame38End:
GFX_Layer1_CyborgDefeated_Frame39:
	db "GFX_Layer1_CyborgDefeated_Frame39.rnc"
GFX_Layer1_CyborgDefeated_Frame39End:
GFX_Layer1_CyborgDefeated_Frame40:
	db "GFX_Layer1_CyborgDefeated_Frame40.rnc"
GFX_Layer1_CyborgDefeated_Frame40End:
GFX_Layer1_CyborgDefeated_Frame41:
	db "GFX_Layer1_CyborgDefeated_Frame41.rnc"
GFX_Layer1_CyborgDefeated_Frame41End:
GFX_Layer1_ApproachingMetropolis4_Frame2:
	db "GFX_Layer1_ApproachingMetropolis4_Frame2.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame2End:
GFX_Layer1_ApproachingMetropolis4_Frame3:
	db "GFX_Layer1_ApproachingMetropolis4_Frame3.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame3End:
GFX_Layer1_ApproachingMetropolis4_Frame4:
	db "GFX_Layer1_ApproachingMetropolis4_Frame4.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame4End:
GFX_Layer1_ApproachingMetropolis4_Frame5:
	db "GFX_Layer1_ApproachingMetropolis4_Frame5.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame5End:
GFX_Layer1_ApproachingMetropolis4_Frame6:
	db "GFX_Layer1_ApproachingMetropolis4_Frame6.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame6End:
GFX_Layer1_ApproachingMetropolis4_Frame7:
	db "GFX_Layer1_ApproachingMetropolis4_Frame7.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame7End:
GFX_Layer1_ApproachingMetropolis4_Frame8:
	db "GFX_Layer1_ApproachingMetropolis4_Frame8.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame8End:
GFX_Layer1_ApproachingMetropolis4_Frame9:
	db "GFX_Layer1_ApproachingMetropolis4_Frame9.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame9End:
GFX_Layer1_ApproachingMetropolis4_Frame10:
	db "GFX_Layer1_ApproachingMetropolis4_Frame10.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame10End:
GFX_Layer1_ApproachingMetropolis4_Frame12:
	db "GFX_Layer1_ApproachingMetropolis4_Frame12.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame12End:
GFX_Layer1_ApproachingMetropolis4_Frame18:
	db "GFX_Layer1_ApproachingMetropolis4_Frame18.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame18End:
GFX_Layer1_ApproachingMetropolis4_Frame19:
	db "GFX_Layer1_ApproachingMetropolis4_Frame19.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame19End:
GFX_Layer1_ApproachingMetropolis4_Frame20:
	db "GFX_Layer1_ApproachingMetropolis4_Frame20.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame20End:
GFX_Layer1_ApproachingMetropolis4_Frame21:
	db "GFX_Layer1_ApproachingMetropolis4_Frame21.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame21End:
GFX_Layer1_ApproachingMetropolis4_Frame22:
	db "GFX_Layer1_ApproachingMetropolis4_Frame22.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame22End:
GFX_Layer1_ApproachingMetropolis4_Frame23:
	db "GFX_Layer1_ApproachingMetropolis4_Frame23.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame23End:
GFX_Layer1_ApproachingMetropolis4_Frame24:
	db "GFX_Layer1_ApproachingMetropolis4_Frame24.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame24End:
GFX_Layer1_ApproachingMetropolis4_Frame41:
	db "GFX_Layer1_ApproachingMetropolis4_Frame41.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame41End:
GFX_Layer1_ApproachingMetropolis4_Frame42:
	db "GFX_Layer1_ApproachingMetropolis4_Frame42.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame42End:
GFX_Layer1_ApproachingMetropolis4_Frame43:
	db "GFX_Layer1_ApproachingMetropolis4_Frame43.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame43End:
GFX_Layer1_ApproachingMetropolis4_Frame44:
	db "GFX_Layer1_ApproachingMetropolis4_Frame44.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame44End:
GFX_Layer1_ApproachingMetropolis4_Frame45:
	db "GFX_Layer1_ApproachingMetropolis4_Frame45.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame45End:
GFX_Layer1_ApproachingMetropolis4_Frame46:
	db "GFX_Layer1_ApproachingMetropolis4_Frame46.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame46End:
GFX_Layer1_ApproachingMetropolis4_Frame47:
	db "GFX_Layer1_ApproachingMetropolis4_Frame47.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame47End:
GFX_Layer1_ApproachingMetropolis4_Frame48:
	db "GFX_Layer1_ApproachingMetropolis4_Frame48.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame48End:
GFX_Layer1_ApproachingMetropolis4_Frame49:
	db "GFX_Layer1_ApproachingMetropolis4_Frame49.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame49End:
GFX_Layer1_ApproachingMetropolis4_Frame50:
	db "GFX_Layer1_ApproachingMetropolis4_Frame50.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame50End:
GFX_Layer1_ApproachingMetropolis4_Frame120:
	db "GFX_Layer1_ApproachingMetropolis4_Frame120.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame120End:
GFX_Layer1_ApproachingMetropolis4_Frame121:
	db "GFX_Layer1_ApproachingMetropolis4_Frame121.rnc"
GFX_Layer1_ApproachingMetropolis4_Frame121End:

;--------------------------------------------------------------------

GFX_Sprite_Cyborg_MainMenu16:
	db "GFX_Sprite_Cyborg_MainMenu16.bin"
GFX_Sprite_Cyborg_MainMenu16End:
GFX_Sprite_Crusher_FarKick3:
	db "GFX_Sprite_Crusher_FarKick3.bin"
GFX_Sprite_Crusher_FarKick3End:
GFX_Sprite_Ape_FarKick2:
	db "GFX_Sprite_Ape_FarKick2.bin"
GFX_Sprite_Ape_FarKick2End:
GFX_Sprite_Crusher_FarKick4:
	db "GFX_Sprite_Crusher_FarKick4.bin"
GFX_Sprite_Crusher_FarKick4End:
GFX_Sprite_Cyborg_MainMenu2:
	db "GFX_Sprite_Cyborg_MainMenu2.bin"
GFX_Sprite_Cyborg_MainMenu2End:
GFX_Sprite_Cyborg_MainMenu3:
	db "GFX_Sprite_Cyborg_MainMenu3.bin"
GFX_Sprite_Cyborg_MainMenu3End:
GFX_Sprite_Cyborg_MainMenu4:
	db "GFX_Sprite_Cyborg_MainMenu4.bin"
GFX_Sprite_Cyborg_MainMenu4End:
GFX_Sprite_Cyborg_MainMenu5:
	db "GFX_Sprite_Cyborg_MainMenu5.bin"
GFX_Sprite_Cyborg_MainMenu5End:
GFX_Sprite_Cyborg_MainMenu6:
	db "GFX_Sprite_Cyborg_MainMenu6.bin"
GFX_Sprite_Cyborg_MainMenu6End:
GFX_Sprite_Cyborg_MainMenu7:
	db "GFX_Sprite_Cyborg_MainMenu7.bin"
GFX_Sprite_Cyborg_MainMenu7End:
GFX_Sprite_Cyborg_MainMenu8:
	db "GFX_Sprite_Cyborg_MainMenu8.bin"
GFX_Sprite_Cyborg_MainMenu8End:
GFX_Sprite_Crusher_FarKick5:
	db "GFX_Sprite_Crusher_FarKick5.bin"
GFX_Sprite_Crusher_FarKick5End:
GFX_Sprite_Cyborg_MainMenu1:
	db "GFX_Sprite_Cyborg_MainMenu1.bin"
GFX_Sprite_Cyborg_MainMenu1End:
GFX_Sprite_Cyborg_MainMenu9:
	db "GFX_Sprite_Cyborg_MainMenu9.bin"
GFX_Sprite_Cyborg_MainMenu9End:
GFX_Sprite_Cyborg_MainMenu10:
	db "GFX_Sprite_Cyborg_MainMenu10.bin"
GFX_Sprite_Cyborg_MainMenu10End:
GFX_Sprite_Cyborg_MainMenu11:
	db "GFX_Sprite_Cyborg_MainMenu11.bin"
GFX_Sprite_Cyborg_MainMenu11End:
GFX_Sprite_Cyborg_MainMenu12:
	db "GFX_Sprite_Cyborg_MainMenu12.bin"
GFX_Sprite_Cyborg_MainMenu12End:
GFX_Sprite_Cyborg_MainMenu13:
	db "GFX_Sprite_Cyborg_MainMenu13.bin"
GFX_Sprite_Cyborg_MainMenu13End:
GFX_Sprite_Cyborg_MainMenu14:
	db "GFX_Sprite_Cyborg_MainMenu14.bin"
GFX_Sprite_Cyborg_MainMenu14End:
GFX_Sprite_Cyborg_MainMenu15:
	db "GFX_Sprite_Cyborg_MainMenu15.bin"
GFX_Sprite_Cyborg_MainMenu15End:
GFX_Sprite_Cyborg_MainMenu17:
	db "GFX_Sprite_Cyborg_MainMenu17.bin"
GFX_Sprite_Cyborg_MainMenu17End:
GFX_Sprite_Cyborg_StandIdle2:
	db "GFX_Sprite_Cyborg_StandIdle2.bin"
GFX_Sprite_Cyborg_StandIdle2End:
GFX_Sprite_Crusher_DuckKick3:
	db "GFX_Sprite_Crusher_DuckKick3.bin"
GFX_Sprite_Crusher_DuckKick3End:
GFX_Sprite_Crusher_DuckPunch2:
	db "GFX_Sprite_Crusher_DuckPunch2.bin"
GFX_Sprite_Crusher_DuckPunch2End:
GFX_Sprite_Crusher_DuckPunch3:
	db "GFX_Sprite_Crusher_DuckPunch3.bin"
GFX_Sprite_Crusher_DuckPunch3End:
GFX_Sprite_Crusher_DuckPunch4:
	db "GFX_Sprite_Crusher_DuckPunch4.bin"
GFX_Sprite_Crusher_DuckPunch4End:
GFX_Sprite_Crusher_DuckPunch5:
	db "GFX_Sprite_Crusher_DuckPunch5.bin"
GFX_Sprite_Crusher_DuckPunch5End:
GFX_Sprite_Crusher_FarKick2:
	db "GFX_Sprite_Crusher_FarKick2.bin"
GFX_Sprite_Crusher_FarKick2End:
GFX_Sprite_Crusher_Dead5:
	db "GFX_Sprite_Crusher_Dead5.bin"
GFX_Sprite_Crusher_Dead5End:
GFX_Sprite_Crusher_Dead6:
	db "GFX_Sprite_Crusher_Dead6.bin"
GFX_Sprite_Crusher_Dead6End:
GFX_Sprite_Ape_DuckPunch6:
	db "GFX_Sprite_Ape_DuckPunch6.bin"
GFX_Sprite_Ape_DuckPunch6End:
GFX_Sprite_Ape_DuckPunch7:
	db "GFX_Sprite_Ape_DuckPunch7.bin"
GFX_Sprite_Ape_DuckPunch7End:
GFX_Sprite_Ape_DuckPunch8:
	db "GFX_Sprite_Ape_DuckPunch8.bin"
GFX_Sprite_Ape_DuckPunch8End:
GFX_Sprite_Ape_FarKick1:
	db "GFX_Sprite_Ape_FarKick1.bin"
GFX_Sprite_Ape_FarKick1End:
GFX_Sprite_Ape_FarKick4:
	db "GFX_Sprite_Ape_FarKick4.bin"
GFX_Sprite_Ape_FarKick4End:
GFX_Sprite_Ape_FarKick5:
	db "GFX_Sprite_Ape_FarKick5.bin"
GFX_Sprite_Ape_FarKick5End:
GFX_Sprite_Crusher_FarPunch3:
	db "GFX_Sprite_Crusher_FarPunch3.bin"
GFX_Sprite_Crusher_FarPunch3End:
GFX_Sprite_Crusher_LowBlowHurt4:
	db "GFX_Sprite_Crusher_LowBlowHurt4.bin"
GFX_Sprite_Crusher_LowBlowHurt4End:
GFX_Sprite_Crusher_Dead3:
	db "GFX_Sprite_Crusher_Dead3.bin"
GFX_Sprite_Crusher_Dead3End:
GFX_Sprite_Crusher_StandBlock2:
	db "GFX_Sprite_Crusher_StandBlock2.bin"
GFX_Sprite_Crusher_StandBlock2End:
GFX_Sprite_Crusher_BallGrab6:
	db "GFX_Sprite_Crusher_BallGrab6.bin"
GFX_Sprite_Crusher_BallGrab6End:
GFX_Sprite_Sentry_FarKick4:
	db "GFX_Sprite_Sentry_FarKick4.bin"
GFX_Sprite_Sentry_FarKick4End:
GFX_Sprite_Sentry_DoubleKick6:
	db "GFX_Sprite_Sentry_DoubleKick6.bin"
GFX_Sprite_Sentry_DoubleKick6End:
GFX_Sprite_Ape_FarPunch1:
	db "GFX_Sprite_Ape_FarPunch1.bin"
GFX_Sprite_Ape_FarPunch1End:
GFX_Sprite_Ape_Walk1:
	db "GFX_Sprite_Ape_Walk1.bin"
GFX_Sprite_Ape_Walk1End:
GFX_Sprite_Ape_OverheadPunch14:
	db "GFX_Sprite_Ape_OverheadPunch14.bin"
GFX_Sprite_Ape_OverheadPunch14End:
GFX_Sprite_Ape_Jump1:
	db "GFX_Sprite_Ape_Jump1.bin"
GFX_Sprite_Ape_Jump1End:
GFX_Sprite_Ape_ClosePunch5:
	db "GFX_Sprite_Ape_ClosePunch5.bin"
GFX_Sprite_Ape_ClosePunch5End:
GFX_Sprite_Crusher_DuckKick2:
	db "GFX_Sprite_Crusher_DuckKick2.bin"
GFX_Sprite_Crusher_DuckKick2End:
GFX_Sprite_Crusher_Jump2:
	db "GFX_Sprite_Crusher_Jump2.bin"
GFX_Sprite_Crusher_Jump2End:
GFX_Sprite_Crusher_Jump3:
	db "GFX_Sprite_Crusher_Jump3.bin"
GFX_Sprite_Crusher_Jump3End:
GFX_Sprite_Crusher_LowBlowHurt3:
	db "GFX_Sprite_Crusher_LowBlowHurt3.bin"
GFX_Sprite_Crusher_LowBlowHurt3End:
GFX_Sprite_Crusher_Dead2:
	db "GFX_Sprite_Crusher_Dead2.bin"
GFX_Sprite_Crusher_Dead2End:
GFX_Sprite_Crusher_Dead4:
	db "GFX_Sprite_Crusher_Dead4.bin"
GFX_Sprite_Crusher_Dead4End:
GFX_Sprite_Crusher_BallGrab2:
	db "GFX_Sprite_Crusher_BallGrab2.bin"
GFX_Sprite_Crusher_BallGrab2End:
GFX_Sprite_Crusher_BallGrab3:
	db "GFX_Sprite_Crusher_BallGrab3.bin"
GFX_Sprite_Crusher_BallGrab3End:
GFX_Sprite_Ape_Walk2:
	db "GFX_Sprite_Ape_Walk2.bin"
GFX_Sprite_Ape_Walk2End:
GFX_Sprite_Ape_Walk3:
	db "GFX_Sprite_Ape_Walk3.bin"
GFX_Sprite_Ape_Walk3End:
GFX_Sprite_Ape_DuckPunch5:
	db "GFX_Sprite_Ape_DuckPunch5.bin"
GFX_Sprite_Ape_DuckPunch5End:
GFX_Sprite_Ape_OverheadPunch1:
	db "GFX_Sprite_Ape_OverheadPunch1.bin"
GFX_Sprite_Ape_OverheadPunch1End:
GFX_Sprite_Ape_FarKick3:
	db "GFX_Sprite_Ape_FarKick3.bin"
GFX_Sprite_Ape_FarKick3End:
GFX_Sprite_Ape_Ducking1:
	db "GFX_Sprite_Ape_Ducking1.bin"
GFX_Sprite_Ape_Ducking1End:
GFX_Sprite_Ape_Ducking2:
	db "GFX_Sprite_Ape_Ducking2.bin"
GFX_Sprite_Ape_Ducking2End:
GFX_Sprite_Ape_ClosePunch4:
	db "GFX_Sprite_Ape_ClosePunch4.bin"
GFX_Sprite_Ape_ClosePunch4End:
GFX_Sprite_Crusher_BallGrab4:
	db "GFX_Sprite_Crusher_BallGrab4.bin"
GFX_Sprite_Crusher_BallGrab4End:
GFX_Sprite_Crusher_BallGrab5:
	db "GFX_Sprite_Crusher_BallGrab5.bin"
GFX_Sprite_Crusher_BallGrab5End:
GFX_Sprite_Crusher_BallGrab7:
	db "GFX_Sprite_Crusher_BallGrab7.bin"
GFX_Sprite_Crusher_BallGrab7End:
GFX_Sprite_Crusher_BallGrab9:
	db "GFX_Sprite_Crusher_BallGrab9.bin"
GFX_Sprite_Crusher_BallGrab9End:
GFX_Sprite_Crusher_BallGrab10:
	db "GFX_Sprite_Crusher_BallGrab10.bin"
GFX_Sprite_Crusher_BallGrab10End:
GFX_Sprite_Crusher_BallGrab11:
	db "GFX_Sprite_Crusher_BallGrab11.bin"
GFX_Sprite_Crusher_BallGrab11End:
GFX_Sprite_Crusher_BallGrab12:
	db "GFX_Sprite_Crusher_BallGrab12.bin"
GFX_Sprite_Crusher_BallGrab12End:
GFX_Sprite_Crusher_BallGrab13:
	db "GFX_Sprite_Crusher_BallGrab13.bin"
GFX_Sprite_Crusher_BallGrab13End:
GFX_Sprite_Sentry_FarKick5:
	db "GFX_Sprite_Sentry_FarKick5.bin"
GFX_Sprite_Sentry_FarKick5End:
GFX_Sprite_Sentry_DoubleKick5:
	db "GFX_Sprite_Sentry_DoubleKick5.bin"
GFX_Sprite_Sentry_DoubleKick5End:
GFX_Sprite_Ape_Walk7:
	db "GFX_Sprite_Ape_Walk7.bin"
GFX_Sprite_Ape_Walk7End:
GFX_Sprite_Ape_DuckPunch1:
	db "GFX_Sprite_Ape_DuckPunch1.bin"
GFX_Sprite_Ape_DuckPunch1End:
GFX_Sprite_Ape_DuckPunch2:
	db "GFX_Sprite_Ape_DuckPunch2.bin"
GFX_Sprite_Ape_DuckPunch2End:
GFX_Sprite_Ape_DuckPunch3:
	db "GFX_Sprite_Ape_DuckPunch3.bin"
GFX_Sprite_Ape_DuckPunch3End:
GFX_Sprite_Ape_Ducking3:
	db "GFX_Sprite_Ape_Ducking3.bin"
GFX_Sprite_Ape_Ducking3End:
GFX_Sprite_Ape_Ducking4:
	db "GFX_Sprite_Ape_Ducking4.bin"
GFX_Sprite_Ape_Ducking4End:
GFX_Sprite_Ape_ClosePunch1:
	db "GFX_Sprite_Ape_ClosePunch1.bin"
GFX_Sprite_Ape_ClosePunch1End:
GFX_Sprite_Crusher_Ducking4:
	db "GFX_Sprite_Crusher_Ducking4.bin"
GFX_Sprite_Crusher_Ducking4End:
GFX_Sprite_Crusher_DuckKick4:
	db "GFX_Sprite_Crusher_DuckKick4.bin"
GFX_Sprite_Crusher_DuckKick4End:
GFX_Sprite_Crusher_DuckKick5:
	db "GFX_Sprite_Crusher_DuckKick5.bin"
GFX_Sprite_Crusher_DuckKick5End:
GFX_Sprite_Crusher_StandBlock4:
	db "GFX_Sprite_Crusher_StandBlock4.bin"
GFX_Sprite_Crusher_StandBlock4End:
GFX_Sprite_Crusher_Walk6:
	db "GFX_Sprite_Crusher_Walk6.bin"
GFX_Sprite_Crusher_Walk6End:
GFX_Sprite_Crusher_BallGrab1:
	db "GFX_Sprite_Crusher_BallGrab1.bin"
GFX_Sprite_Crusher_BallGrab1End:
GFX_Sprite_Sentry_JumpKick2:
	db "GFX_Sprite_Sentry_JumpKick2.bin"
GFX_Sprite_Sentry_JumpKick2End:
GFX_Sprite_Sentry_Walk8:
	db "GFX_Sprite_Sentry_Walk8.bin"
GFX_Sprite_Sentry_Walk8End:
GFX_Sprite_Sentry_HighBlowHurt2:
	db "GFX_Sprite_Sentry_HighBlowHurt2.bin"
GFX_Sprite_Sentry_HighBlowHurt2End:
GFX_Sprite_Ape_StandBlock1:
	db "GFX_Sprite_Ape_StandBlock1.bin"
GFX_Sprite_Ape_StandBlock1End:
GFX_Sprite_Ape_StandBlock2:
	db "GFX_Sprite_Ape_StandBlock2.bin"
GFX_Sprite_Ape_StandBlock2End:
GFX_Sprite_Ape_Walk4:
	db "GFX_Sprite_Ape_Walk4.bin"
GFX_Sprite_Ape_Walk4End:
GFX_Sprite_Ape_Walk5:
	db "GFX_Sprite_Ape_Walk5.bin"
GFX_Sprite_Ape_Walk5End:
GFX_Sprite_Ape_Walk6:
	db "GFX_Sprite_Ape_Walk6.bin"
GFX_Sprite_Ape_Walk6End:
GFX_Sprite_Ape_DuckPunch4:
	db "GFX_Sprite_Ape_DuckPunch4.bin"
GFX_Sprite_Ape_DuckPunch4End:
GFX_Sprite_Ape_LowBlowHurt4:
	db "GFX_Sprite_Ape_LowBlowHurt4.bin"
GFX_Sprite_Ape_LowBlowHurt4End:
GFX_Sprite_Crusher_Ducking3:
	db "GFX_Sprite_Crusher_Ducking3.bin"
GFX_Sprite_Crusher_Ducking3End:
GFX_Sprite_Crusher_Ducking5:
	db "GFX_Sprite_Crusher_Ducking5.bin"
GFX_Sprite_Crusher_Ducking5End:
GFX_Sprite_Crusher_Ducking6:
	db "GFX_Sprite_Crusher_Ducking6.bin"
GFX_Sprite_Crusher_Ducking6End:
GFX_Sprite_Crusher_DuckBlock1:
	db "GFX_Sprite_Crusher_DuckBlock1.bin"
GFX_Sprite_Crusher_DuckBlock1End:
GFX_Sprite_Crusher_DuckKick1:
	db "GFX_Sprite_Crusher_DuckKick1.bin"
GFX_Sprite_Crusher_DuckKick1End:
GFX_Sprite_Crusher_DuckPunch1:
	db "GFX_Sprite_Crusher_DuckPunch1.bin"
GFX_Sprite_Crusher_DuckPunch1End:
GFX_Sprite_Crusher_DuckHurt1:
	db "GFX_Sprite_Crusher_DuckHurt1.bin"
GFX_Sprite_Crusher_DuckHurt1End:
GFX_Sprite_Crusher_FarPunch1:
	db "GFX_Sprite_Crusher_FarPunch1.bin"
GFX_Sprite_Crusher_FarPunch1End:
GFX_Sprite_Crusher_FarPunch2:
	db "GFX_Sprite_Crusher_FarPunch2.bin"
GFX_Sprite_Crusher_FarPunch2End:
GFX_Sprite_Crusher_FarKick1:
	db "GFX_Sprite_Crusher_FarKick1.bin"
GFX_Sprite_Crusher_FarKick1End:
GFX_Sprite_Crusher_StandBlock3:
	db "GFX_Sprite_Crusher_StandBlock3.bin"
GFX_Sprite_Crusher_StandBlock3End:
GFX_Sprite_Crusher_Walk2:
	db "GFX_Sprite_Crusher_Walk2.bin"
GFX_Sprite_Crusher_Walk2End:
GFX_Sprite_Ape_LowBlowHurt5:
	db "GFX_Sprite_Ape_LowBlowHurt5.bin"
GFX_Sprite_Ape_LowBlowHurt5End:
GFX_Sprite_Ape_Dead2:
	db "GFX_Sprite_Ape_Dead2.bin"
GFX_Sprite_Ape_Dead2End:
GFX_Sprite_Ape_Dead5:
	db "GFX_Sprite_Ape_Dead5.bin"
GFX_Sprite_Ape_Dead5End:
GFX_Sprite_Ape_ClosePunch2:
	db "GFX_Sprite_Ape_ClosePunch2.bin"
GFX_Sprite_Ape_ClosePunch2End:
GFX_Sprite_Military_Somersault9:
	db "GFX_Sprite_Military_Somersault9.bin"
GFX_Sprite_Military_Somersault9End:
GFX_Sprite_Crusher_Walk5:
	db "GFX_Sprite_Crusher_Walk5.bin"
GFX_Sprite_Crusher_Walk5End:
GFX_Sprite_Crusher_Walk7:
	db "GFX_Sprite_Crusher_Walk7.bin"
GFX_Sprite_Crusher_Walk7End:
GFX_Sprite_Crusher_BallGrab8:
	db "GFX_Sprite_Crusher_BallGrab8.bin"
GFX_Sprite_Crusher_BallGrab8End:
GFX_Sprite_Sentry_CloseKick1:
	db "GFX_Sprite_Sentry_CloseKick1.bin"
GFX_Sprite_Sentry_CloseKick1End:
GFX_Sprite_Sentry_FarPunch5:
	db "GFX_Sprite_Sentry_FarPunch5.bin"
GFX_Sprite_Sentry_FarPunch5End:
GFX_Sprite_Sentry_Walk2:
	db "GFX_Sprite_Sentry_Walk2.bin"
GFX_Sprite_Sentry_Walk2End:
GFX_Sprite_Sentry_DoubleKick7:
	db "GFX_Sprite_Sentry_DoubleKick7.bin"
GFX_Sprite_Sentry_DoubleKick7End:
GFX_Sprite_Sentry_HighBlowHurt3:
	db "GFX_Sprite_Sentry_HighBlowHurt3.bin"
GFX_Sprite_Sentry_HighBlowHurt3End:
GFX_Sprite_Ape_StandIdle1:
	db "GFX_Sprite_Ape_StandIdle1.bin"
GFX_Sprite_Ape_StandIdle1End:
GFX_Sprite_Ape_StandIdle2:
	db "GFX_Sprite_Ape_StandIdle2.bin"
GFX_Sprite_Ape_StandIdle2End:
GFX_Sprite_Ape_StandIdle3:
	db "GFX_Sprite_Ape_StandIdle3.bin"
GFX_Sprite_Ape_StandIdle3End:
GFX_Sprite_Ape_FarPunch4:
	db "GFX_Sprite_Ape_FarPunch4.bin"
GFX_Sprite_Ape_FarPunch4End:
GFX_Sprite_Ape_Walk8:
	db "GFX_Sprite_Ape_Walk8.bin"
GFX_Sprite_Ape_Walk8End:
GFX_Sprite_Ape_Walk9:
	db "GFX_Sprite_Ape_Walk9.bin"
GFX_Sprite_Ape_Walk9End:
GFX_Sprite_Ape_OverheadPunch2:
	db "GFX_Sprite_Ape_OverheadPunch2.bin"
GFX_Sprite_Ape_OverheadPunch2End:
GFX_Sprite_Ape_OverheadPunch11:
	db "GFX_Sprite_Ape_OverheadPunch11.bin"
GFX_Sprite_Ape_OverheadPunch11End:
GFX_Sprite_Ape_OverheadPunch13:
	db "GFX_Sprite_Ape_OverheadPunch13.bin"
GFX_Sprite_Ape_OverheadPunch13End:
GFX_Sprite_Ape_LowBlowHurt1:
	db "GFX_Sprite_Ape_LowBlowHurt1.bin"
GFX_Sprite_Ape_LowBlowHurt1End:
GFX_Sprite_Crusher_Jump4:
	db "GFX_Sprite_Crusher_Jump4.bin"
GFX_Sprite_Crusher_Jump4End:
GFX_Sprite_Crusher_FarPunch4:
	db "GFX_Sprite_Crusher_FarPunch4.bin"
GFX_Sprite_Crusher_FarPunch4End:
GFX_Sprite_Crusher_LowBlowHurt2:
	db "GFX_Sprite_Crusher_LowBlowHurt2.bin"
GFX_Sprite_Crusher_LowBlowHurt2End:
GFX_Sprite_Crusher_StandBlock1:
	db "GFX_Sprite_Crusher_StandBlock1.bin"
GFX_Sprite_Crusher_StandBlock1End:
GFX_Sprite_Crusher_Walk3:
	db "GFX_Sprite_Crusher_Walk3.bin"
GFX_Sprite_Crusher_Walk3End:
GFX_Sprite_Crusher_Walk4:
	db "GFX_Sprite_Crusher_Walk4.bin"
GFX_Sprite_Crusher_Walk4End:
GFX_Sprite_Crusher_JumpKick1:
	db "GFX_Sprite_Crusher_JumpKick1.bin"
GFX_Sprite_Crusher_JumpKick1End:
GFX_Sprite_Sentry_CloseKick2:
	db "GFX_Sprite_Sentry_CloseKick2.bin"
GFX_Sprite_Sentry_CloseKick2End:
GFX_Sprite_Sentry_Jump1:
	db "GFX_Sprite_Sentry_Jump1.bin"
GFX_Sprite_Sentry_Jump1End:
GFX_Sprite_Sentry_JumpKick1:
	db "GFX_Sprite_Sentry_JumpKick1.bin"
GFX_Sprite_Sentry_JumpKick1End:
GFX_Sprite_Sentry_StandBlock1:
	db "GFX_Sprite_Sentry_StandBlock1.bin"
GFX_Sprite_Sentry_StandBlock1End:
GFX_Sprite_Sentry_FarPunch4:
	db "GFX_Sprite_Sentry_FarPunch4.bin"
GFX_Sprite_Sentry_FarPunch4End:
GFX_Sprite_Ape_LowBlowHurt2:
	db "GFX_Sprite_Ape_LowBlowHurt2.bin"
GFX_Sprite_Ape_LowBlowHurt2End:
GFX_Sprite_Ape_LowBlowHurt3:
	db "GFX_Sprite_Ape_LowBlowHurt3.bin"
GFX_Sprite_Ape_LowBlowHurt3End:
GFX_Sprite_Ape_Dead1:
	db "GFX_Sprite_Ape_Dead1.bin"
GFX_Sprite_Ape_Dead1End:
GFX_Sprite_Ape_Dead3:
	db "GFX_Sprite_Ape_Dead3.bin"
GFX_Sprite_Ape_Dead3End:
GFX_Sprite_Ape_ClosePunch3:
	db "GFX_Sprite_Ape_ClosePunch3.bin"
GFX_Sprite_Ape_ClosePunch3End:
GFX_Sprite_Crusher_StandIdle1:
	db "GFX_Sprite_Crusher_StandIdle1.bin"
GFX_Sprite_Crusher_StandIdle1End:
GFX_Sprite_Crusher_StandIdle3:
	db "GFX_Sprite_Crusher_StandIdle3.bin"
GFX_Sprite_Crusher_StandIdle3End:
GFX_Sprite_Crusher_Ducking1:
	db "GFX_Sprite_Crusher_Ducking1.bin"
GFX_Sprite_Crusher_Ducking1End:
GFX_Sprite_Crusher_Ducking2:
	db "GFX_Sprite_Crusher_Ducking2.bin"
GFX_Sprite_Crusher_Ducking2End:
GFX_Sprite_Crusher_Jump1:
	db "GFX_Sprite_Crusher_Jump1.bin"
GFX_Sprite_Crusher_Jump1End:
GFX_Sprite_Crusher_Dead1:
	db "GFX_Sprite_Crusher_Dead1.bin"
GFX_Sprite_Crusher_Dead1End:
GFX_Sprite_Sentry_Walk3:
	db "GFX_Sprite_Sentry_Walk3.bin"
GFX_Sprite_Sentry_Walk3End:
GFX_Sprite_Sentry_Walk5:
	db "GFX_Sprite_Sentry_Walk5.bin"
GFX_Sprite_Sentry_Walk5End:
GFX_Sprite_Sentry_Walk6:
	db "GFX_Sprite_Sentry_Walk6.bin"
GFX_Sprite_Sentry_Walk6End:
GFX_Sprite_Sentry_Walk7:
	db "GFX_Sprite_Sentry_Walk7.bin"
GFX_Sprite_Sentry_Walk7End:
GFX_Sprite_Sentry_Walk9:
	db "GFX_Sprite_Sentry_Walk9.bin"
GFX_Sprite_Sentry_Walk9End:
GFX_Sprite_Sentry_DoubleKick4:
	db "GFX_Sprite_Sentry_DoubleKick4.bin"
GFX_Sprite_Sentry_DoubleKick4End:
GFX_Sprite_Sentry_DoubleKick11:
	db "GFX_Sprite_Sentry_DoubleKick11.bin"
GFX_Sprite_Sentry_DoubleKick11End:
GFX_Sprite_Ape_FarPunch5:
	db "GFX_Sprite_Ape_FarPunch5.bin"
GFX_Sprite_Ape_FarPunch5End:
GFX_Sprite_Ape_Jump2:
	db "GFX_Sprite_Ape_Jump2.bin"
GFX_Sprite_Ape_Jump2End:
GFX_Sprite_Ape_Dead4:
	db "GFX_Sprite_Ape_Dead4.bin"
GFX_Sprite_Ape_Dead4End:
GFX_Sprite_Supervisor_LungeAttack6:
	db "GFX_Sprite_Supervisor_LungeAttack6.bin"
GFX_Sprite_Supervisor_LungeAttack6End:
GFX_Sprite_Crusher_Walk1:
	db "GFX_Sprite_Crusher_Walk1.bin"
GFX_Sprite_Crusher_Walk1End:
GFX_Sprite_Crusher_Walk10:
	db "GFX_Sprite_Crusher_Walk10.bin"
GFX_Sprite_Crusher_Walk10End:
GFX_Sprite_Crusher_Walk11:
	db "GFX_Sprite_Crusher_Walk11.bin"
GFX_Sprite_Crusher_Walk11End:
GFX_Sprite_Sentry_StandIdle1:
	db "GFX_Sprite_Sentry_StandIdle1.bin"
GFX_Sprite_Sentry_StandIdle1End:
GFX_Sprite_Sentry_StandIdle2:
	db "GFX_Sprite_Sentry_StandIdle2.bin"
GFX_Sprite_Sentry_StandIdle2End:
GFX_Sprite_Sentry_StandIdle3:
	db "GFX_Sprite_Sentry_StandIdle3.bin"
GFX_Sprite_Sentry_StandIdle3End:
GFX_Sprite_Sentry_StandIdle4:
	db "GFX_Sprite_Sentry_StandIdle4.bin"
GFX_Sprite_Sentry_StandIdle4End:
GFX_Sprite_Sentry_CloseKick3:
	db "GFX_Sprite_Sentry_CloseKick3.bin"
GFX_Sprite_Sentry_CloseKick3End:
GFX_Sprite_Sentry_CloseKick4:
	db "GFX_Sprite_Sentry_CloseKick4.bin"
GFX_Sprite_Sentry_CloseKick4End:
GFX_Sprite_Sentry_LowBlowHurt1:
	db "GFX_Sprite_Sentry_LowBlowHurt1.bin"
GFX_Sprite_Sentry_LowBlowHurt1End:
GFX_Sprite_Sentry_LowBlowHurt2:
	db "GFX_Sprite_Sentry_LowBlowHurt2.bin"
GFX_Sprite_Sentry_LowBlowHurt2End:
GFX_Sprite_Sentry_StandBlock2:
	db "GFX_Sprite_Sentry_StandBlock2.bin"
GFX_Sprite_Sentry_StandBlock2End:
GFX_Sprite_Sentry_Dead2:
	db "GFX_Sprite_Sentry_Dead2.bin"
GFX_Sprite_Sentry_Dead2End:
GFX_Sprite_Sentry_DuckHurt3:
	db "GFX_Sprite_Sentry_DuckHurt3.bin"
GFX_Sprite_Sentry_DuckHurt3End:
GFX_Sprite_Sentry_Ducking1:
	db "GFX_Sprite_Sentry_Ducking1.bin"
GFX_Sprite_Sentry_Ducking1End:
GFX_Sprite_Sentry_Walk1:
	db "GFX_Sprite_Sentry_Walk1.bin"
GFX_Sprite_Sentry_Walk1End:
GFX_Sprite_Sentry_Walk4:
	db "GFX_Sprite_Sentry_Walk4.bin"
GFX_Sprite_Sentry_Walk4End:
GFX_Sprite_Ape_FarPunch2:
	db "GFX_Sprite_Ape_FarPunch2.bin"
GFX_Sprite_Ape_FarPunch2End:
GFX_Sprite_Ape_OverheadPunch3:
	db "GFX_Sprite_Ape_OverheadPunch3.bin"
GFX_Sprite_Ape_OverheadPunch3End:
GFX_Sprite_Cyborg_StandIdle1:
	db "GFX_Sprite_Cyborg_StandIdle1.bin"
GFX_Sprite_Cyborg_StandIdle1End:
GFX_Sprite_Crusher_StandIdle2:
	db "GFX_Sprite_Crusher_StandIdle2.bin"
GFX_Sprite_Crusher_StandIdle2End:
GFX_Sprite_Crusher_DuckBlock2:
	db "GFX_Sprite_Crusher_DuckBlock2.bin"
GFX_Sprite_Crusher_DuckBlock2End:
GFX_Sprite_Crusher_DuckHurt2:
	db "GFX_Sprite_Crusher_DuckHurt2.bin"
GFX_Sprite_Crusher_DuckHurt2End:
GFX_Sprite_Crusher_LowBlowHurt1:
	db "GFX_Sprite_Crusher_LowBlowHurt1.bin"
GFX_Sprite_Crusher_LowBlowHurt1End:
GFX_Sprite_Crusher_Walk8:
	db "GFX_Sprite_Crusher_Walk8.bin"
GFX_Sprite_Crusher_Walk8End:
GFX_Sprite_Crusher_Walk9:
	db "GFX_Sprite_Crusher_Walk9.bin"
GFX_Sprite_Crusher_Walk9End:
GFX_Sprite_Sentry_CloseKick5:
	db "GFX_Sprite_Sentry_CloseKick5.bin"
GFX_Sprite_Sentry_CloseKick5End:
GFX_Sprite_Sentry_LowBlowHurt3:
	db "GFX_Sprite_Sentry_LowBlowHurt3.bin"
GFX_Sprite_Sentry_LowBlowHurt3End:
GFX_Sprite_Sentry_FarPunch1:
	db "GFX_Sprite_Sentry_FarPunch1.bin"
GFX_Sprite_Sentry_FarPunch1End:
GFX_Sprite_Sentry_FarPunch2:
	db "GFX_Sprite_Sentry_FarPunch2.bin"
GFX_Sprite_Sentry_FarPunch2End:
GFX_Sprite_Sentry_Ducking5:
	db "GFX_Sprite_Sentry_Ducking5.bin"
GFX_Sprite_Sentry_Ducking5End:
GFX_Sprite_Sentry_DuckKick1:
	db "GFX_Sprite_Sentry_DuckKick1.bin"
GFX_Sprite_Sentry_DuckKick1End:
GFX_Sprite_Sentry_DuckHurt2:
	db "GFX_Sprite_Sentry_DuckHurt2.bin"
GFX_Sprite_Sentry_DuckHurt2End:
GFX_Sprite_Sentry_Ducking4:
	db "GFX_Sprite_Sentry_Ducking4.bin"
GFX_Sprite_Sentry_Ducking4End:
GFX_Sprite_Ape_OverheadPunch4:
	db "GFX_Sprite_Ape_OverheadPunch4.bin"
GFX_Sprite_Ape_OverheadPunch4End:
GFX_Sprite_Ape_OverheadPunch12:
	db "GFX_Sprite_Ape_OverheadPunch12.bin"
GFX_Sprite_Ape_OverheadPunch12End:
GFX_Sprite_Loader_FarKick3:
	db "GFX_Sprite_Loader_FarKick3.bin"
GFX_Sprite_Loader_FarKick3End:
GFX_Sprite_Crusher_Jump5:
	db "GFX_Sprite_Crusher_Jump5.bin"
GFX_Sprite_Crusher_Jump5End:
GFX_Sprite_Sentry_Ducking3:
	db "GFX_Sprite_Sentry_Ducking3.bin"
GFX_Sprite_Sentry_Ducking3End:
GFX_Sprite_Sentry_Walk10:
	db "GFX_Sprite_Sentry_Walk10.bin"
GFX_Sprite_Sentry_Walk10End:
GFX_Sprite_Sentry_DoubleKick1:
	db "GFX_Sprite_Sentry_DoubleKick1.bin"
GFX_Sprite_Sentry_DoubleKick1End:
GFX_Sprite_Sentry_HighBlowHurt1:
	db "GFX_Sprite_Sentry_HighBlowHurt1.bin"
GFX_Sprite_Sentry_HighBlowHurt1End:
GFX_Sprite_Ape_FarPunch3:
	db "GFX_Sprite_Ape_FarPunch3.bin"
GFX_Sprite_Ape_FarPunch3End:
GFX_Sprite_Ape_OverheadPunch6:
	db "GFX_Sprite_Ape_OverheadPunch6.bin"
GFX_Sprite_Ape_OverheadPunch6End:
GFX_Sprite_Loader_DuckPunch5:
	db "GFX_Sprite_Loader_DuckPunch5.bin"
GFX_Sprite_Loader_DuckPunch5End:
GFX_Sprite_Loader_FarKick2:
	db "GFX_Sprite_Loader_FarKick2.bin"
GFX_Sprite_Loader_FarKick2End:
GFX_Sprite_Supervisor_LungeAttack7:
	db "GFX_Sprite_Supervisor_LungeAttack7.bin"
GFX_Sprite_Supervisor_LungeAttack7End:
GFX_Sprite_Supervisor_LungeAttack8:
	db "GFX_Sprite_Supervisor_LungeAttack8.bin"
GFX_Sprite_Supervisor_LungeAttack8End:
GFX_Sprite_Sentry_FarKick3:
	db "GFX_Sprite_Sentry_FarKick3.bin"
GFX_Sprite_Sentry_FarKick3End:
GFX_Sprite_Sentry_LowBlowHurt4:
	db "GFX_Sprite_Sentry_LowBlowHurt4.bin"
GFX_Sprite_Sentry_LowBlowHurt4End:
GFX_Sprite_Sentry_LowBlowHurt5:
	db "GFX_Sprite_Sentry_LowBlowHurt5.bin"
GFX_Sprite_Sentry_LowBlowHurt5End:
GFX_Sprite_Sentry_FarPunch3:
	db "GFX_Sprite_Sentry_FarPunch3.bin"
GFX_Sprite_Sentry_FarPunch3End:
GFX_Sprite_Sentry_DuckKick6:
	db "GFX_Sprite_Sentry_DuckKick6.bin"
GFX_Sprite_Sentry_DuckKick6End:
GFX_Sprite_Sentry_DuckHurt1:
	db "GFX_Sprite_Sentry_DuckHurt1.bin"
GFX_Sprite_Sentry_DuckHurt1End:
GFX_Sprite_Sentry_Ducking2:
	db "GFX_Sprite_Sentry_Ducking2.bin"
GFX_Sprite_Sentry_Ducking2End:
GFX_Sprite_Sentry_DoubleKick10:
	db "GFX_Sprite_Sentry_DoubleKick10.bin"
GFX_Sprite_Sentry_DoubleKick10End:
GFX_Sprite_Ape_StandBlock3:
	db "GFX_Sprite_Ape_StandBlock3.bin"
GFX_Sprite_Ape_StandBlock3End:
GFX_Sprite_Ape_StandBlock4:
	db "GFX_Sprite_Ape_StandBlock4.bin"
GFX_Sprite_Ape_StandBlock4End:
GFX_Sprite_Ape_StandBlock5:
	db "GFX_Sprite_Ape_StandBlock5.bin"
GFX_Sprite_Ape_StandBlock5End:
GFX_Sprite_Ape_OverheadPunch5:
	db "GFX_Sprite_Ape_OverheadPunch5.bin"
GFX_Sprite_Ape_OverheadPunch5End:
GFX_Sprite_Ape_OverheadPunch7:
	db "GFX_Sprite_Ape_OverheadPunch7.bin"
GFX_Sprite_Ape_OverheadPunch7End:
GFX_Sprite_Ape_OverheadPunch10:
	db "GFX_Sprite_Ape_OverheadPunch10.bin"
GFX_Sprite_Ape_OverheadPunch10End:
GFX_Sprite_Loader_CloseKick4:
	db "GFX_Sprite_Loader_CloseKick4.bin"
GFX_Sprite_Loader_CloseKick4End:
GFX_Sprite_Loader_JumpKick5:
	db "GFX_Sprite_Loader_JumpKick5.bin"
GFX_Sprite_Loader_JumpKick5End:
GFX_Sprite_Loader_BladePunch3:
	db "GFX_Sprite_Loader_BladePunch3.bin"
GFX_Sprite_Loader_BladePunch3End:
GFX_Sprite_Loader_BladePunch4:
	db "GFX_Sprite_Loader_BladePunch4.bin"
GFX_Sprite_Loader_BladePunch4End:
GFX_Sprite_Loader_FarKick1:
	db "GFX_Sprite_Loader_FarKick1.bin"
GFX_Sprite_Loader_FarKick1End:
GFX_Sprite_Loader_FarKick5:
	db "GFX_Sprite_Loader_FarKick5.bin"
GFX_Sprite_Loader_FarKick5End:
GFX_Sprite_Crusher_DuckBlock3:
	db "GFX_Sprite_Crusher_DuckBlock3.bin"
GFX_Sprite_Crusher_DuckBlock3End:
GFX_Sprite_Crusher_DuckHurt3:
	db "GFX_Sprite_Crusher_DuckHurt3.bin"
GFX_Sprite_Crusher_DuckHurt3End:
GFX_Sprite_Crusher_DuckHurt4:
	db "GFX_Sprite_Crusher_DuckHurt4.bin"
GFX_Sprite_Crusher_DuckHurt4End:
GFX_Sprite_Sentry_FarKick1:
	db "GFX_Sprite_Sentry_FarKick1.bin"
GFX_Sprite_Sentry_FarKick1End:
GFX_Sprite_Sentry_Dead1:
	db "GFX_Sprite_Sentry_Dead1.bin"
GFX_Sprite_Sentry_Dead1End:
GFX_Sprite_Sentry_Dead3:
	db "GFX_Sprite_Sentry_Dead3.bin"
GFX_Sprite_Sentry_Dead3End:
GFX_Sprite_Sentry_DuckBlock1:
	db "GFX_Sprite_Sentry_DuckBlock1.bin"
GFX_Sprite_Sentry_DuckBlock1End:
GFX_Sprite_Sentry_DuckBlock2:
	db "GFX_Sprite_Sentry_DuckBlock2.bin"
GFX_Sprite_Sentry_DuckBlock2End:
GFX_Sprite_Sentry_DoubleKick2:
	db "GFX_Sprite_Sentry_DoubleKick2.bin"
GFX_Sprite_Sentry_DoubleKick2End:
GFX_Sprite_Sentry_DoubleKick3:
	db "GFX_Sprite_Sentry_DoubleKick3.bin"
GFX_Sprite_Sentry_DoubleKick3End:
GFX_Sprite_Ape_OverheadPunch8:
	db "GFX_Sprite_Ape_OverheadPunch8.bin"
GFX_Sprite_Ape_OverheadPunch8End:
GFX_Sprite_Ape_OverheadPunch9:
	db "GFX_Sprite_Ape_OverheadPunch9.bin"
GFX_Sprite_Ape_OverheadPunch9End:
GFX_Sprite_Ape_JumpKick1:
	db "GFX_Sprite_Ape_JumpKick1.bin"
GFX_Sprite_Ape_JumpKick1End:
GFX_Sprite_Loader_FarPunch3:
	db "GFX_Sprite_Loader_FarPunch3.bin"
GFX_Sprite_Loader_FarPunch3End:
GFX_Sprite_Loader_CloseKick5:
	db "GFX_Sprite_Loader_CloseKick5.bin"
GFX_Sprite_Loader_CloseKick5End:
GFX_Sprite_Loader_DuckPunch3:
	db "GFX_Sprite_Loader_DuckPunch3.bin"
GFX_Sprite_Loader_DuckPunch3End:
GFX_Sprite_Loader_DuckPunch4:
	db "GFX_Sprite_Loader_DuckPunch4.bin"
GFX_Sprite_Loader_DuckPunch4End:
GFX_Sprite_Loader_JumpKick4:
	db "GFX_Sprite_Loader_JumpKick4.bin"
GFX_Sprite_Loader_JumpKick4End:
GFX_Sprite_Loader_BladePunch2:
	db "GFX_Sprite_Loader_BladePunch2.bin"
GFX_Sprite_Loader_BladePunch2End:
GFX_Sprite_Loader_FarKick4:
	db "GFX_Sprite_Loader_FarKick4.bin"
GFX_Sprite_Loader_FarKick4End:
GFX_Sprite_Supervisor_DuckKick8:
	db "GFX_Sprite_Supervisor_DuckKick8.bin"
GFX_Sprite_Supervisor_DuckKick8End:
GFX_Sprite_Supervisor_LungeAttack5:
	db "GFX_Sprite_Supervisor_LungeAttack5.bin"
GFX_Sprite_Supervisor_LungeAttack5End:
GFX_Sprite_Sentry_DuckKick5:
	db "GFX_Sprite_Sentry_DuckKick5.bin"
GFX_Sprite_Sentry_DuckKick5End:
GFX_Sprite_Sentry_DuckPunch4:
	db "GFX_Sprite_Sentry_DuckPunch4.bin"
GFX_Sprite_Sentry_DuckPunch4End:
GFX_Sprite_Sentry_DoubleKick9:
	db "GFX_Sprite_Sentry_DoubleKick9.bin"
GFX_Sprite_Sentry_DoubleKick9End:
GFX_Sprite_Ape_JumpKick2:
	db "GFX_Sprite_Ape_JumpKick2.bin"
GFX_Sprite_Ape_JumpKick2End:
GFX_Sprite_Ape_JumpKick4:
	db "GFX_Sprite_Ape_JumpKick4.bin"
GFX_Sprite_Ape_JumpKick4End:
GFX_Sprite_Military_StandBlock1:
	db "GFX_Sprite_Military_StandBlock1.bin"
GFX_Sprite_Military_StandBlock1End:
GFX_Sprite_Military_DuckKick5:
	db "GFX_Sprite_Military_DuckKick5.bin"
GFX_Sprite_Military_DuckKick5End:
GFX_Sprite_Military_ClosePunch3:
	db "GFX_Sprite_Military_ClosePunch3.bin"
GFX_Sprite_Military_ClosePunch3End:
GFX_Sprite_Military_ClosePunch5:
	db "GFX_Sprite_Military_ClosePunch5.bin"
GFX_Sprite_Military_ClosePunch5End:
GFX_Sprite_Military_LowBlowHurt1:
	db "GFX_Sprite_Military_LowBlowHurt1.bin"
GFX_Sprite_Military_LowBlowHurt1End:
GFX_Sprite_Military_Dead1:
	db "GFX_Sprite_Military_Dead1.bin"
GFX_Sprite_Military_Dead1End:
GFX_Sprite_Military_ClawStrike1:
	db "GFX_Sprite_Military_ClawStrike1.bin"
GFX_Sprite_Military_ClawStrike1End:
GFX_Sprite_Loader_FarPunch2:
	db "GFX_Sprite_Loader_FarPunch2.bin"
GFX_Sprite_Loader_FarPunch2End:
GFX_Sprite_Loader_FarPunch4:
	db "GFX_Sprite_Loader_FarPunch4.bin"
GFX_Sprite_Loader_FarPunch4End:
GFX_Sprite_Loader_CloseKick2:
	db "GFX_Sprite_Loader_CloseKick2.bin"
GFX_Sprite_Loader_CloseKick2End:
GFX_Sprite_Loader_CloseKick3:
	db "GFX_Sprite_Loader_CloseKick3.bin"
GFX_Sprite_Loader_CloseKick3End:
GFX_Sprite_Loader_BladePunch5:
	db "GFX_Sprite_Loader_BladePunch5.bin"
GFX_Sprite_Loader_BladePunch5End:
GFX_Sprite_Loader_HighBlowHurt4:
	db "GFX_Sprite_Loader_HighBlowHurt4.bin"
GFX_Sprite_Loader_HighBlowHurt4End:
GFX_Sprite_Loader_Dead3:
	db "GFX_Sprite_Loader_Dead3.bin"
GFX_Sprite_Loader_Dead3End:
GFX_Sprite_Loader_Dead4:
	db "GFX_Sprite_Loader_Dead4.bin"
GFX_Sprite_Loader_Dead4End:
GFX_Sprite_Supervisor_DuckKick7:
	db "GFX_Sprite_Supervisor_DuckKick7.bin"
GFX_Sprite_Supervisor_DuckKick7End:
GFX_Sprite_Cyborg_ClosePunch3:
	db "GFX_Sprite_Cyborg_ClosePunch3.bin"
GFX_Sprite_Cyborg_ClosePunch3End:
GFX_Sprite_Sentry_DuckPunch1:
	db "GFX_Sprite_Sentry_DuckPunch1.bin"
GFX_Sprite_Sentry_DuckPunch1End:
GFX_Sprite_Military_DuckKick3:
	db "GFX_Sprite_Military_DuckKick3.bin"
GFX_Sprite_Military_DuckKick3End:
GFX_Sprite_Military_FarKick1:
	db "GFX_Sprite_Military_FarKick1.bin"
GFX_Sprite_Military_FarKick1End:
GFX_Sprite_Military_FarKick11:
	db "GFX_Sprite_Military_FarKick11.bin"
GFX_Sprite_Military_FarKick11End:
GFX_Sprite_Military_CloseKick1:
	db "GFX_Sprite_Military_CloseKick1.bin"
GFX_Sprite_Military_CloseKick1End:
GFX_Sprite_Military_CloseKick4:
	db "GFX_Sprite_Military_CloseKick4.bin"
GFX_Sprite_Military_CloseKick4End:
GFX_Sprite_Military_ClosePunch2:
	db "GFX_Sprite_Military_ClosePunch2.bin"
GFX_Sprite_Military_ClosePunch2End:
GFX_Sprite_Military_ClosePunch4:
	db "GFX_Sprite_Military_ClosePunch4.bin"
GFX_Sprite_Military_ClosePunch4End:
GFX_Sprite_Military_LowBlowHurt2:
	db "GFX_Sprite_Military_LowBlowHurt2.bin"
GFX_Sprite_Military_LowBlowHurt2End:
GFX_Sprite_Military_LowBlowHurt3:
	db "GFX_Sprite_Military_LowBlowHurt3.bin"
GFX_Sprite_Military_LowBlowHurt3End:
GFX_Sprite_Military_LowBlowHurt5:
	db "GFX_Sprite_Military_LowBlowHurt5.bin"
GFX_Sprite_Military_LowBlowHurt5End:
GFX_Sprite_Military_ClawStrike2:
	db "GFX_Sprite_Military_ClawStrike2.bin"
GFX_Sprite_Military_ClawStrike2End:
GFX_Sprite_Loader_FarPunch5:
	db "GFX_Sprite_Loader_FarPunch5.bin"
GFX_Sprite_Loader_FarPunch5End:
GFX_Sprite_Loader_DuckHurt4:
	db "GFX_Sprite_Loader_DuckHurt4.bin"
GFX_Sprite_Loader_DuckHurt4End:
GFX_Sprite_Loader_StandBlock3:
	db "GFX_Sprite_Loader_StandBlock3.bin"
GFX_Sprite_Loader_StandBlock3End:
GFX_Sprite_Loader_StandBlock4:
	db "GFX_Sprite_Loader_StandBlock4.bin"
GFX_Sprite_Loader_StandBlock4End:
GFX_Sprite_Loader_HighBlowHurt5:
	db "GFX_Sprite_Loader_HighBlowHurt5.bin"
GFX_Sprite_Loader_HighBlowHurt5End:
GFX_Sprite_Supervisor_LungeAttack4:
	db "GFX_Sprite_Supervisor_LungeAttack4.bin"
GFX_Sprite_Supervisor_LungeAttack4End:
GFX_Sprite_Sentry_DuckKick2:
	db "GFX_Sprite_Sentry_DuckKick2.bin"
GFX_Sprite_Sentry_DuckKick2End:
GFX_Sprite_Sentry_DuckKick4:
	db "GFX_Sprite_Sentry_DuckKick4.bin"
GFX_Sprite_Sentry_DuckKick4End:
GFX_Sprite_Sentry_DuckPunch2:
	db "GFX_Sprite_Sentry_DuckPunch2.bin"
GFX_Sprite_Sentry_DuckPunch2End:
GFX_Sprite_Sentry_DuckPunch3:
	db "GFX_Sprite_Sentry_DuckPunch3.bin"
GFX_Sprite_Sentry_DuckPunch3End:
GFX_Sprite_Sentry_DoubleKick8:
	db "GFX_Sprite_Sentry_DoubleKick8.bin"
GFX_Sprite_Sentry_DoubleKick8End:
GFX_Sprite_Military_StandIdle3:
	db "GFX_Sprite_Military_StandIdle3.bin"
GFX_Sprite_Military_StandIdle3End:
GFX_Sprite_Military_StandBlock2:
	db "GFX_Sprite_Military_StandBlock2.bin"
GFX_Sprite_Military_StandBlock2End:
GFX_Sprite_Military_FarPunch5:
	db "GFX_Sprite_Military_FarPunch5.bin"
GFX_Sprite_Military_FarPunch5End:
GFX_Sprite_Military_Ducking1:
	db "GFX_Sprite_Military_Ducking1.bin"
GFX_Sprite_Military_Ducking1End:
GFX_Sprite_Military_CloseKick2:
	db "GFX_Sprite_Military_CloseKick2.bin"
GFX_Sprite_Military_CloseKick2End:
GFX_Sprite_Military_CloseKick5:
	db "GFX_Sprite_Military_CloseKick5.bin"
GFX_Sprite_Military_CloseKick5End:
GFX_Sprite_Military_ClosePunch1:
	db "GFX_Sprite_Military_ClosePunch1.bin"
GFX_Sprite_Military_ClosePunch1End:
GFX_Sprite_Military_LowBlowHurt4:
	db "GFX_Sprite_Military_LowBlowHurt4.bin"
GFX_Sprite_Military_LowBlowHurt4End:
GFX_Sprite_Military_Dead2:
	db "GFX_Sprite_Military_Dead2.bin"
GFX_Sprite_Military_Dead2End:
GFX_Sprite_Military_HighBlowHurt3:
	db "GFX_Sprite_Military_HighBlowHurt3.bin"
GFX_Sprite_Military_HighBlowHurt3End:
GFX_Sprite_Military_HighBlowHurt4:
	db "GFX_Sprite_Military_HighBlowHurt4.bin"
GFX_Sprite_Military_HighBlowHurt4End:
GFX_Sprite_Military_Somersault1:
	db "GFX_Sprite_Military_Somersault1.bin"
GFX_Sprite_Military_Somersault1End:
GFX_Sprite_Military_ClawStrike5:
	db "GFX_Sprite_Military_ClawStrike5.bin"
GFX_Sprite_Military_ClawStrike5End:
GFX_Sprite_Military_ClawStrike6:
	db "GFX_Sprite_Military_ClawStrike6.bin"
GFX_Sprite_Military_ClawStrike6End:
GFX_Sprite_Loader_FarPunch1:
	db "GFX_Sprite_Loader_FarPunch1.bin"
GFX_Sprite_Loader_FarPunch1End:
GFX_Sprite_Loader_DuckPunch2:
	db "GFX_Sprite_Loader_DuckPunch2.bin"
GFX_Sprite_Loader_DuckPunch2End:
GFX_Sprite_Loader_DuckHurt3:
	db "GFX_Sprite_Loader_DuckHurt3.bin"
GFX_Sprite_Loader_DuckHurt3End:
GFX_Sprite_Crusher_DuckHurt5:
	db "GFX_Sprite_Crusher_DuckHurt5.bin"
GFX_Sprite_Crusher_DuckHurt5End:
GFX_Sprite_Ape_JumpKick3:
	db "GFX_Sprite_Ape_JumpKick3.bin"
GFX_Sprite_Ape_JumpKick3End:
GFX_Sprite_Military_StandIdle1:
	db "GFX_Sprite_Military_StandIdle1.bin"
GFX_Sprite_Military_StandIdle1End:
GFX_Sprite_Military_StandIdle2:
	db "GFX_Sprite_Military_StandIdle2.bin"
GFX_Sprite_Military_StandIdle2End:
GFX_Sprite_Military_FarPunch1:
	db "GFX_Sprite_Military_FarPunch1.bin"
GFX_Sprite_Military_FarPunch1End:
GFX_Sprite_Military_FarPunch4:
	db "GFX_Sprite_Military_FarPunch4.bin"
GFX_Sprite_Military_FarPunch4End:
GFX_Sprite_Military_DuckKick2:
	db "GFX_Sprite_Military_DuckKick2.bin"
GFX_Sprite_Military_DuckKick2End:
GFX_Sprite_Military_DuckKick4:
	db "GFX_Sprite_Military_DuckKick4.bin"
GFX_Sprite_Military_DuckKick4End:
GFX_Sprite_Military_FarKick6:
	db "GFX_Sprite_Military_FarKick6.bin"
GFX_Sprite_Military_FarKick6End:
GFX_Sprite_Military_Walk1:
	db "GFX_Sprite_Military_Walk1.bin"
GFX_Sprite_Military_Walk1End:
GFX_Sprite_Military_Walk2:
	db "GFX_Sprite_Military_Walk2.bin"
GFX_Sprite_Military_Walk2End:
GFX_Sprite_Military_Walk7:
	db "GFX_Sprite_Military_Walk7.bin"
GFX_Sprite_Military_Walk7End:
GFX_Sprite_Military_Walk8:
	db "GFX_Sprite_Military_Walk8.bin"
GFX_Sprite_Military_Walk8End:
GFX_Sprite_Military_HighBlowHurt1:
	db "GFX_Sprite_Military_HighBlowHurt1.bin"
GFX_Sprite_Military_HighBlowHurt1End:
GFX_Sprite_Military_HighBlowHurt5:
	db "GFX_Sprite_Military_HighBlowHurt5.bin"
GFX_Sprite_Military_HighBlowHurt5End:
GFX_Sprite_Military_Somersault2:
	db "GFX_Sprite_Military_Somersault2.bin"
GFX_Sprite_Military_Somersault2End:
GFX_Sprite_Military_ClawStrike3:
	db "GFX_Sprite_Military_ClawStrike3.bin"
GFX_Sprite_Military_ClawStrike3End:
GFX_Sprite_Military_ClawStrike4:
	db "GFX_Sprite_Military_ClawStrike4.bin"
GFX_Sprite_Military_ClawStrike4End:
GFX_Sprite_Loader_StandIdle2:
	db "GFX_Sprite_Loader_StandIdle2.bin"
GFX_Sprite_Loader_StandIdle2End:
GFX_Sprite_Loader_CloseKick1:
	db "GFX_Sprite_Loader_CloseKick1.bin"
GFX_Sprite_Loader_CloseKick1End:
GFX_Sprite_Loader_DuckHurt5:
	db "GFX_Sprite_Loader_DuckHurt5.bin"
GFX_Sprite_Loader_DuckHurt5End:
GFX_Sprite_Loader_StandBlock5:
	db "GFX_Sprite_Loader_StandBlock5.bin"
GFX_Sprite_Loader_StandBlock5End:
GFX_Sprite_Loader_HighBlowHurt2:
	db "GFX_Sprite_Loader_HighBlowHurt2.bin"
GFX_Sprite_Loader_HighBlowHurt2End:
GFX_Sprite_Loader_Walk8:
	db "GFX_Sprite_Loader_Walk8.bin"
GFX_Sprite_Loader_Walk8End:
GFX_Sprite_Supervisor_JumpKick5:
	db "GFX_Sprite_Supervisor_JumpKick5.bin"
GFX_Sprite_Supervisor_JumpKick5End:
GFX_Sprite_Cyborg_FarPunch5:
	db "GFX_Sprite_Cyborg_FarPunch5.bin"
GFX_Sprite_Cyborg_FarPunch5End:
GFX_Sprite_Sentry_FarKick2:
	db "GFX_Sprite_Sentry_FarKick2.bin"
GFX_Sprite_Sentry_FarKick2End:
GFX_Sprite_Sentry_DuckKick3:
	db "GFX_Sprite_Sentry_DuckKick3.bin"
GFX_Sprite_Sentry_DuckKick3End:
GFX_Sprite_Military_Ducking2:
	db "GFX_Sprite_Military_Ducking2.bin"
GFX_Sprite_Military_Ducking2End:
GFX_Sprite_Military_DuckBlock2:
	db "GFX_Sprite_Military_DuckBlock2.bin"
GFX_Sprite_Military_DuckBlock2End:
GFX_Sprite_Military_DuckHurt3:
	db "GFX_Sprite_Military_DuckHurt3.bin"
GFX_Sprite_Military_DuckHurt3End:
GFX_Sprite_Military_DuckHurt4:
	db "GFX_Sprite_Military_DuckHurt4.bin"
GFX_Sprite_Military_DuckHurt4End:
GFX_Sprite_Military_DuckHurt5:
	db "GFX_Sprite_Military_DuckHurt5.bin"
GFX_Sprite_Military_DuckHurt5End:
GFX_Sprite_Loader_Ducking2:
	db "GFX_Sprite_Loader_Ducking2.bin"
GFX_Sprite_Loader_Ducking2End:
GFX_Sprite_Loader_Ducking4:
	db "GFX_Sprite_Loader_Ducking4.bin"
GFX_Sprite_Loader_Ducking4End:
GFX_Sprite_Loader_Ducking5:
	db "GFX_Sprite_Loader_Ducking5.bin"
GFX_Sprite_Loader_Ducking5End:
GFX_Sprite_Loader_DuckKick5:
	db "GFX_Sprite_Loader_DuckKick5.bin"
GFX_Sprite_Loader_DuckKick5End:
GFX_Sprite_Loader_DuckPunch1:
	db "GFX_Sprite_Loader_DuckPunch1.bin"
GFX_Sprite_Loader_DuckPunch1End:
GFX_Sprite_Loader_StandBlock2:
	db "GFX_Sprite_Loader_StandBlock2.bin"
GFX_Sprite_Loader_StandBlock2End:
GFX_Sprite_Loader_JumpKick3:
	db "GFX_Sprite_Loader_JumpKick3.bin"
GFX_Sprite_Loader_JumpKick3End:
GFX_Sprite_Loader_BladePunch1:
	db "GFX_Sprite_Loader_BladePunch1.bin"
GFX_Sprite_Loader_BladePunch1End:
GFX_Sprite_Loader_LowBlowHurt3:
	db "GFX_Sprite_Loader_LowBlowHurt3.bin"
GFX_Sprite_Loader_LowBlowHurt3End:
GFX_Sprite_Loader_LowBlowHurt4:
	db "GFX_Sprite_Loader_LowBlowHurt4.bin"
GFX_Sprite_Loader_LowBlowHurt4End:
GFX_Sprite_Loader_LowBlowHurt5:
	db "GFX_Sprite_Loader_LowBlowHurt5.bin"
GFX_Sprite_Loader_LowBlowHurt5End:
GFX_Sprite_Loader_HighBlowHurt1:
	db "GFX_Sprite_Loader_HighBlowHurt1.bin"
GFX_Sprite_Loader_HighBlowHurt1End:
GFX_Sprite_Loader_HighBlowHurt3:
	db "GFX_Sprite_Loader_HighBlowHurt3.bin"
GFX_Sprite_Loader_HighBlowHurt3End:
GFX_Sprite_Loader_Dead1:
	db "GFX_Sprite_Loader_Dead1.bin"
GFX_Sprite_Loader_Dead1End:
GFX_Sprite_Loader_Dead5:
	db "GFX_Sprite_Loader_Dead5.bin"
GFX_Sprite_Loader_Dead5End:
GFX_Sprite_Loader_Walk1:
	db "GFX_Sprite_Loader_Walk1.bin"
GFX_Sprite_Loader_Walk1End:
GFX_Sprite_Loader_Walk2:
	db "GFX_Sprite_Loader_Walk2.bin"
GFX_Sprite_Loader_Walk2End:
GFX_Sprite_Loader_Walk9:
	db "GFX_Sprite_Loader_Walk9.bin"
GFX_Sprite_Loader_Walk9End:
GFX_Sprite_Loader_Walk10:
	db "GFX_Sprite_Loader_Walk10.bin"
GFX_Sprite_Loader_Walk10End:
GFX_Sprite_Supervisor_JumpKick6:
	db "GFX_Sprite_Supervisor_JumpKick6.bin"
GFX_Sprite_Supervisor_JumpKick6End:
GFX_Sprite_Military_CloseKick3:
	db "GFX_Sprite_Military_CloseKick3.bin"
GFX_Sprite_Military_CloseKick3End:
GFX_Sprite_Military_JumpKick2:
	db "GFX_Sprite_Military_JumpKick2.bin"
GFX_Sprite_Military_JumpKick2End:
GFX_Sprite_Military_Walk3:
	db "GFX_Sprite_Military_Walk3.bin"
GFX_Sprite_Military_Walk3End:
GFX_Sprite_Military_Walk4:
	db "GFX_Sprite_Military_Walk4.bin"
GFX_Sprite_Military_Walk4End:
GFX_Sprite_Military_Walk5:
	db "GFX_Sprite_Military_Walk5.bin"
GFX_Sprite_Military_Walk5End:
GFX_Sprite_Military_Walk6:
	db "GFX_Sprite_Military_Walk6.bin"
GFX_Sprite_Military_Walk6End:
GFX_Sprite_Military_HighBlowHurt2:
	db "GFX_Sprite_Military_HighBlowHurt2.bin"
GFX_Sprite_Military_HighBlowHurt2End:
GFX_Sprite_Military_DuckPunch5:
	db "GFX_Sprite_Military_DuckPunch5.bin"
GFX_Sprite_Military_DuckPunch5End:
GFX_Sprite_Loader_StandIdle1:
	db "GFX_Sprite_Loader_StandIdle1.bin"
GFX_Sprite_Loader_StandIdle1End:
GFX_Sprite_Loader_StandIdle3:
	db "GFX_Sprite_Loader_StandIdle3.bin"
GFX_Sprite_Loader_StandIdle3End:
GFX_Sprite_Loader_Ducking1:
	db "GFX_Sprite_Loader_Ducking1.bin"
GFX_Sprite_Loader_Ducking1End:
GFX_Sprite_Loader_Ducking3:
	db "GFX_Sprite_Loader_Ducking3.bin"
GFX_Sprite_Loader_Ducking3End:
GFX_Sprite_Loader_Ducking6:
	db "GFX_Sprite_Loader_Ducking6.bin"
GFX_Sprite_Loader_Ducking6End:
GFX_Sprite_Loader_DuckBlock2:
	db "GFX_Sprite_Loader_DuckBlock2.bin"
GFX_Sprite_Loader_DuckBlock2End:
GFX_Sprite_Loader_DuckBlock4:
	db "GFX_Sprite_Loader_DuckBlock4.bin"
GFX_Sprite_Loader_DuckBlock4End:
GFX_Sprite_Loader_DuckHurt2:
	db "GFX_Sprite_Loader_DuckHurt2.bin"
GFX_Sprite_Loader_DuckHurt2End:
GFX_Sprite_Loader_StandBlock1:
	db "GFX_Sprite_Loader_StandBlock1.bin"
GFX_Sprite_Loader_StandBlock1End:
GFX_Sprite_Loader_Jump1:
	db "GFX_Sprite_Loader_Jump1.bin"
GFX_Sprite_Loader_Jump1End:
GFX_Sprite_Loader_Jump2:
	db "GFX_Sprite_Loader_Jump2.bin"
GFX_Sprite_Loader_Jump2End:
GFX_Sprite_Loader_JumpKick2:
	db "GFX_Sprite_Loader_JumpKick2.bin"
GFX_Sprite_Loader_JumpKick2End:
GFX_Sprite_Loader_LowBlowHurt1:
	db "GFX_Sprite_Loader_LowBlowHurt1.bin"
GFX_Sprite_Loader_LowBlowHurt1End:
GFX_Sprite_Loader_LowBlowHurt2:
	db "GFX_Sprite_Loader_LowBlowHurt2.bin"
GFX_Sprite_Loader_LowBlowHurt2End:
GFX_Sprite_Loader_Dead2:
	db "GFX_Sprite_Loader_Dead2.bin"
GFX_Sprite_Loader_Dead2End:
GFX_Sprite_Loader_Walk3:
	db "GFX_Sprite_Loader_Walk3.bin"
GFX_Sprite_Loader_Walk3End:
GFX_Sprite_Loader_Walk4:
	db "GFX_Sprite_Loader_Walk4.bin"
GFX_Sprite_Loader_Walk4End:
GFX_Sprite_Loader_Walk5:
	db "GFX_Sprite_Loader_Walk5.bin"
GFX_Sprite_Loader_Walk5End:
GFX_Sprite_Loader_Walk6:
	db "GFX_Sprite_Loader_Walk6.bin"
GFX_Sprite_Loader_Walk6End:
GFX_Sprite_Loader_Walk7:
	db "GFX_Sprite_Loader_Walk7.bin"
GFX_Sprite_Loader_Walk7End:
GFX_Sprite_Supervisor_DuckKick6:
	db "GFX_Sprite_Supervisor_DuckKick6.bin"
GFX_Sprite_Supervisor_DuckKick6End:
GFX_Sprite_Cyborg_Dead6:
	db "GFX_Sprite_Cyborg_Dead6.bin"
GFX_Sprite_Cyborg_Dead6End:
GFX_Sprite_Cyborg_ShoulderDash12:
	db "GFX_Sprite_Cyborg_ShoulderDash12.bin"
GFX_Sprite_Cyborg_ShoulderDash12End:
GFX_Sprite_Military_FarPunch2:
	db "GFX_Sprite_Military_FarPunch2.bin"
GFX_Sprite_Military_FarPunch2End:
GFX_Sprite_Military_FarPunch3:
	db "GFX_Sprite_Military_FarPunch3.bin"
GFX_Sprite_Military_FarPunch3End:
GFX_Sprite_Military_Ducking3:
	db "GFX_Sprite_Military_Ducking3.bin"
GFX_Sprite_Military_Ducking3End:
GFX_Sprite_Military_DuckHurt1:
	db "GFX_Sprite_Military_DuckHurt1.bin"
GFX_Sprite_Military_DuckHurt1End:
GFX_Sprite_Military_DuckHurt2:
	db "GFX_Sprite_Military_DuckHurt2.bin"
GFX_Sprite_Military_DuckHurt2End:
GFX_Sprite_Military_FarKick7:
	db "GFX_Sprite_Military_FarKick7.bin"
GFX_Sprite_Military_FarKick7End:
GFX_Sprite_Military_Jump1:
	db "GFX_Sprite_Military_Jump1.bin"
GFX_Sprite_Military_Jump1End:
GFX_Sprite_Military_HighBlowHurt6:
	db "GFX_Sprite_Military_HighBlowHurt6.bin"
GFX_Sprite_Military_HighBlowHurt6End:
GFX_Sprite_Military_DuckPunch2:
	db "GFX_Sprite_Military_DuckPunch2.bin"
GFX_Sprite_Military_DuckPunch2End:
GFX_Sprite_Military_DuckPunch3:
	db "GFX_Sprite_Military_DuckPunch3.bin"
GFX_Sprite_Military_DuckPunch3End:
GFX_Sprite_Military_DuckPunch4:
	db "GFX_Sprite_Military_DuckPunch4.bin"
GFX_Sprite_Military_DuckPunch4End:
GFX_Sprite_Loader_DuckBlock3:
	db "GFX_Sprite_Loader_DuckBlock3.bin"
GFX_Sprite_Loader_DuckBlock3End:
GFX_Sprite_Loader_DuckKick1:
	db "GFX_Sprite_Loader_DuckKick1.bin"
GFX_Sprite_Loader_DuckKick1End:
GFX_Sprite_Loader_DuckKick3:
	db "GFX_Sprite_Loader_DuckKick3.bin"
GFX_Sprite_Loader_DuckKick3End:
GFX_Sprite_Loader_DuckKick4:
	db "GFX_Sprite_Loader_DuckKick4.bin"
GFX_Sprite_Loader_DuckKick4End:
GFX_Sprite_Loader_Jump3:
	db "GFX_Sprite_Loader_Jump3.bin"
GFX_Sprite_Loader_Jump3End:
GFX_Sprite_Supervisor_CloseKick4:
	db "GFX_Sprite_Supervisor_CloseKick4.bin"
GFX_Sprite_Supervisor_CloseKick4End:
GFX_Sprite_Supervisor_CloseKick5:
	db "GFX_Sprite_Supervisor_CloseKick5.bin"
GFX_Sprite_Supervisor_CloseKick5End:
GFX_Sprite_Supervisor_JumpKick4:
	db "GFX_Sprite_Supervisor_JumpKick4.bin"
GFX_Sprite_Supervisor_JumpKick4End:
GFX_Sprite_Supervisor_FarPunch3:
	db "GFX_Sprite_Supervisor_FarPunch3.bin"
GFX_Sprite_Supervisor_FarPunch3End:
GFX_Sprite_Supervisor_FarPunch4:
	db "GFX_Sprite_Supervisor_FarPunch4.bin"
GFX_Sprite_Supervisor_FarPunch4End:
GFX_Sprite_Cyborg_ClosePunch1:
	db "GFX_Sprite_Cyborg_ClosePunch1.bin"
GFX_Sprite_Cyborg_ClosePunch1End:
GFX_Sprite_Cyborg_ClosePunch2:
	db "GFX_Sprite_Cyborg_ClosePunch2.bin"
GFX_Sprite_Cyborg_ClosePunch2End:
GFX_Sprite_Cyborg_CloseKick5:
	db "GFX_Sprite_Cyborg_CloseKick5.bin"
GFX_Sprite_Cyborg_CloseKick5End:
GFX_Sprite_Cyborg_DuckPunch4:
	db "GFX_Sprite_Cyborg_DuckPunch4.bin"
GFX_Sprite_Cyborg_DuckPunch4End:
GFX_Sprite_Cyborg_DuckPunch5:
	db "GFX_Sprite_Cyborg_DuckPunch5.bin"
GFX_Sprite_Cyborg_DuckPunch5End:
GFX_Sprite_Cyborg_DuckKick5:
	db "GFX_Sprite_Cyborg_DuckKick5.bin"
GFX_Sprite_Cyborg_DuckKick5End:
GFX_Sprite_Cyborg_FarPunch4:
	db "GFX_Sprite_Cyborg_FarPunch4.bin"
GFX_Sprite_Cyborg_FarPunch4End:
GFX_Sprite_Cyborg_JumpKick2:
	db "GFX_Sprite_Cyborg_JumpKick2.bin"
GFX_Sprite_Cyborg_JumpKick2End:
GFX_Sprite_Cyborg_Headbutt2:
	db "GFX_Sprite_Cyborg_Headbutt2.bin"
GFX_Sprite_Cyborg_Headbutt2End:
GFX_Sprite_Cyborg_Headbutt3:
	db "GFX_Sprite_Cyborg_Headbutt3.bin"
GFX_Sprite_Cyborg_Headbutt3End:
GFX_Sprite_Cyborg_Headbutt4:
	db "GFX_Sprite_Cyborg_Headbutt4.bin"
GFX_Sprite_Cyborg_Headbutt4End:
GFX_Sprite_Cyborg_FarKick5:
	db "GFX_Sprite_Cyborg_FarKick5.bin"
GFX_Sprite_Cyborg_FarKick5End:
GFX_Sprite_Cyborg_Dead4:
	db "GFX_Sprite_Cyborg_Dead4.bin"
GFX_Sprite_Cyborg_Dead4End:
GFX_Sprite_Cyborg_Dead7:
	db "GFX_Sprite_Cyborg_Dead7.bin"
GFX_Sprite_Cyborg_Dead7End:
GFX_Sprite_Cyborg_ShoulderDash3:
	db "GFX_Sprite_Cyborg_ShoulderDash3.bin"
GFX_Sprite_Cyborg_ShoulderDash3End:
GFX_Sprite_Cyborg_ShoulderDash4:
	db "GFX_Sprite_Cyborg_ShoulderDash4.bin"
GFX_Sprite_Cyborg_ShoulderDash4End:
GFX_Sprite_Cyborg_ShoulderDash9:
	db "GFX_Sprite_Cyborg_ShoulderDash9.bin"
GFX_Sprite_Cyborg_ShoulderDash9End:
GFX_Sprite_Cyborg_ShoulderDash10:
	db "GFX_Sprite_Cyborg_ShoulderDash10.bin"
GFX_Sprite_Cyborg_ShoulderDash10End:
GFX_Sprite_Cyborg_ShoulderDash11:
	db "GFX_Sprite_Cyborg_ShoulderDash11.bin"
GFX_Sprite_Cyborg_ShoulderDash11End:
GFX_Sprite_Military_Ducking4:
	db "GFX_Sprite_Military_Ducking4.bin"
GFX_Sprite_Military_Ducking4End:
GFX_Sprite_Military_Ducking5:
	db "GFX_Sprite_Military_Ducking5.bin"
GFX_Sprite_Military_Ducking5End:
GFX_Sprite_Military_DuckBlock1:
	db "GFX_Sprite_Military_DuckBlock1.bin"
GFX_Sprite_Military_DuckBlock1End:
GFX_Sprite_Military_DuckKick1:
	db "GFX_Sprite_Military_DuckKick1.bin"
GFX_Sprite_Military_DuckKick1End:
GFX_Sprite_Military_FarKick2:
	db "GFX_Sprite_Military_FarKick2.bin"
GFX_Sprite_Military_FarKick2End:
GFX_Sprite_Military_FarKick8:
	db "GFX_Sprite_Military_FarKick8.bin"
GFX_Sprite_Military_FarKick8End:
GFX_Sprite_Military_FarKick10:
	db "GFX_Sprite_Military_FarKick10.bin"
GFX_Sprite_Military_FarKick10End:
GFX_Sprite_Military_Jump2:
	db "GFX_Sprite_Military_Jump2.bin"
GFX_Sprite_Military_Jump2End:
GFX_Sprite_Military_Dead3:
	db "GFX_Sprite_Military_Dead3.bin"
GFX_Sprite_Military_Dead3End:
GFX_Sprite_Military_DuckPunch1:
	db "GFX_Sprite_Military_DuckPunch1.bin"
GFX_Sprite_Military_DuckPunch1End:
GFX_Sprite_Military_DuckPunch8:
	db "GFX_Sprite_Military_DuckPunch8.bin"
GFX_Sprite_Military_DuckPunch8End:
GFX_Sprite_Cyborg_StandIdle5:
	db "GFX_Sprite_Cyborg_StandIdle5.bin"
GFX_Sprite_Cyborg_StandIdle5End:
GFX_Sprite_Cyborg_CloseKick4:
	db "GFX_Sprite_Cyborg_CloseKick4.bin"
GFX_Sprite_Cyborg_CloseKick4End:
GFX_Sprite_Cyborg_DuckPunch3:
	db "GFX_Sprite_Cyborg_DuckPunch3.bin"
GFX_Sprite_Cyborg_DuckPunch3End:
GFX_Sprite_Cyborg_LowBlowHurt2:
	db "GFX_Sprite_Cyborg_LowBlowHurt2.bin"
GFX_Sprite_Cyborg_LowBlowHurt2End:
GFX_Sprite_Cyborg_Walk1:
	db "GFX_Sprite_Cyborg_Walk1.bin"
GFX_Sprite_Cyborg_Walk1End:
GFX_Sprite_Cyborg_Walk7:
	db "GFX_Sprite_Cyborg_Walk7.bin"
GFX_Sprite_Cyborg_Walk7End:
GFX_Sprite_Cyborg_Walk8:
	db "GFX_Sprite_Cyborg_Walk8.bin"
GFX_Sprite_Cyborg_Walk8End:
GFX_Sprite_Cyborg_Jump2:
	db "GFX_Sprite_Cyborg_Jump2.bin"
GFX_Sprite_Cyborg_Jump2End:
GFX_Sprite_Cyborg_Headbutt1:
	db "GFX_Sprite_Cyborg_Headbutt1.bin"
GFX_Sprite_Cyborg_Headbutt1End:
GFX_Sprite_Cyborg_FarKick4:
	db "GFX_Sprite_Cyborg_FarKick4.bin"
GFX_Sprite_Cyborg_FarKick4End:
GFX_Sprite_Cyborg_Dead3:
	db "GFX_Sprite_Cyborg_Dead3.bin"
GFX_Sprite_Cyborg_Dead3End:
GFX_Sprite_Cyborg_Dead5:
	db "GFX_Sprite_Cyborg_Dead5.bin"
GFX_Sprite_Cyborg_Dead5End:
GFX_Sprite_Cyborg_Dead9:
	db "GFX_Sprite_Cyborg_Dead9.bin"
GFX_Sprite_Cyborg_Dead9End:
GFX_Sprite_Cyborg_ShoulderDash1:
	db "GFX_Sprite_Cyborg_ShoulderDash1.bin"
GFX_Sprite_Cyborg_ShoulderDash1End:
GFX_Sprite_Cyborg_ShoulderDash2:
	db "GFX_Sprite_Cyborg_ShoulderDash2.bin"
GFX_Sprite_Cyborg_ShoulderDash2End:
GFX_Sprite_Cyborg_ShoulderDash5:
	db "GFX_Sprite_Cyborg_ShoulderDash5.bin"
GFX_Sprite_Cyborg_ShoulderDash5End:
GFX_Sprite_Cyborg_ShoulderDash6:
	db "GFX_Sprite_Cyborg_ShoulderDash6.bin"
GFX_Sprite_Cyborg_ShoulderDash6End:
GFX_Sprite_Cyborg_ShoulderDash7:
	db "GFX_Sprite_Cyborg_ShoulderDash7.bin"
GFX_Sprite_Cyborg_ShoulderDash7End:
GFX_Sprite_Cyborg_ShoulderDash8:
	db "GFX_Sprite_Cyborg_ShoulderDash8.bin"
GFX_Sprite_Cyborg_ShoulderDash8End:
GFX_Sprite_Cyborg_ShoulderDash13:
	db "GFX_Sprite_Cyborg_ShoulderDash13.bin"
GFX_Sprite_Cyborg_ShoulderDash13End:
GFX_Sprite_Cyborg_ShoulderDash14:
	db "GFX_Sprite_Cyborg_ShoulderDash14.bin"
GFX_Sprite_Cyborg_ShoulderDash14End:
GFX_Sprite_Military_JumpKick1:
	db "GFX_Sprite_Military_JumpKick1.bin"
GFX_Sprite_Military_JumpKick1End:
GFX_Sprite_Military_Somersault3:
	db "GFX_Sprite_Military_Somersault3.bin"
GFX_Sprite_Military_Somersault3End:
GFX_Sprite_Military_DuckPunch6:
	db "GFX_Sprite_Military_DuckPunch6.bin"
GFX_Sprite_Military_DuckPunch6End:
GFX_Sprite_Loader_DuckBlock1:
	db "GFX_Sprite_Loader_DuckBlock1.bin"
GFX_Sprite_Loader_DuckBlock1End:
GFX_Sprite_Loader_DuckKick2:
	db "GFX_Sprite_Loader_DuckKick2.bin"
GFX_Sprite_Loader_DuckKick2End:
GFX_Sprite_Loader_DuckHurt1:
	db "GFX_Sprite_Loader_DuckHurt1.bin"
GFX_Sprite_Loader_DuckHurt1End:
GFX_Sprite_Loader_Jump4:
	db "GFX_Sprite_Loader_Jump4.bin"
GFX_Sprite_Loader_Jump4End:
GFX_Sprite_Loader_JumpKick1:
	db "GFX_Sprite_Loader_JumpKick1.bin"
GFX_Sprite_Loader_JumpKick1End:
GFX_Sprite_Loader_CurlUp1:
	db "GFX_Sprite_Loader_CurlUp1.bin"
GFX_Sprite_Loader_CurlUp1End:
GFX_Sprite_Supervisor_DuckPunch3:
	db "GFX_Sprite_Supervisor_DuckPunch3.bin"
GFX_Sprite_Supervisor_DuckPunch3End:
GFX_Sprite_Supervisor_DuckPunch4:
	db "GFX_Sprite_Supervisor_DuckPunch4.bin"
GFX_Sprite_Supervisor_DuckPunch4End:
GFX_Sprite_Supervisor_DuckPunch5:
	db "GFX_Sprite_Supervisor_DuckPunch5.bin"
GFX_Sprite_Supervisor_DuckPunch5End:
GFX_Sprite_Supervisor_LungeAttack3:
	db "GFX_Sprite_Supervisor_LungeAttack3.bin"
GFX_Sprite_Supervisor_LungeAttack3End:
GFX_Sprite_Cyborg_StandIdle3:
	db "GFX_Sprite_Cyborg_StandIdle3.bin"
GFX_Sprite_Cyborg_StandIdle3End:
GFX_Sprite_Cyborg_StandIdle4:
	db "GFX_Sprite_Cyborg_StandIdle4.bin"
GFX_Sprite_Cyborg_StandIdle4End:
GFX_Sprite_Cyborg_StandBlock1:
	db "GFX_Sprite_Cyborg_StandBlock1.bin"
GFX_Sprite_Cyborg_StandBlock1End:
GFX_Sprite_Cyborg_StandBlock2:
	db "GFX_Sprite_Cyborg_StandBlock2.bin"
GFX_Sprite_Cyborg_StandBlock2End:
GFX_Sprite_Cyborg_Ducking1:
	db "GFX_Sprite_Cyborg_Ducking1.bin"
GFX_Sprite_Cyborg_Ducking1End:
GFX_Sprite_Cyborg_Ducking2:
	db "GFX_Sprite_Cyborg_Ducking2.bin"
GFX_Sprite_Cyborg_Ducking2End:
GFX_Sprite_Cyborg_Ducking3:
	db "GFX_Sprite_Cyborg_Ducking3.bin"
GFX_Sprite_Cyborg_Ducking3End:
GFX_Sprite_Cyborg_Ducking4:
	db "GFX_Sprite_Cyborg_Ducking4.bin"
GFX_Sprite_Cyborg_Ducking4End:
GFX_Sprite_Cyborg_DuckKick4:
	db "GFX_Sprite_Cyborg_DuckKick4.bin"
GFX_Sprite_Cyborg_DuckKick4End:
GFX_Sprite_Cyborg_FarPunch1:
	db "GFX_Sprite_Cyborg_FarPunch1.bin"
GFX_Sprite_Cyborg_FarPunch1End:
GFX_Sprite_Cyborg_LowBlowHurt1:
	db "GFX_Sprite_Cyborg_LowBlowHurt1.bin"
GFX_Sprite_Cyborg_LowBlowHurt1End:
GFX_Sprite_Cyborg_LowBlowHurt3:
	db "GFX_Sprite_Cyborg_LowBlowHurt3.bin"
GFX_Sprite_Cyborg_LowBlowHurt3End:
GFX_Sprite_Cyborg_Walk2:
	db "GFX_Sprite_Cyborg_Walk2.bin"
GFX_Sprite_Cyborg_Walk2End:
GFX_Sprite_Cyborg_Walk3:
	db "GFX_Sprite_Cyborg_Walk3.bin"
GFX_Sprite_Cyborg_Walk3End:
GFX_Sprite_Cyborg_Walk4:
	db "GFX_Sprite_Cyborg_Walk4.bin"
GFX_Sprite_Cyborg_Walk4End:
GFX_Sprite_Cyborg_Walk5:
	db "GFX_Sprite_Cyborg_Walk5.bin"
GFX_Sprite_Cyborg_Walk5End:
GFX_Sprite_Cyborg_Walk6:
	db "GFX_Sprite_Cyborg_Walk6.bin"
GFX_Sprite_Cyborg_Walk6End:
GFX_Sprite_Cyborg_Jump1:
	db "GFX_Sprite_Cyborg_Jump1.bin"
GFX_Sprite_Cyborg_Jump1End:
GFX_Sprite_Cyborg_JumpKick1:
	db "GFX_Sprite_Cyborg_JumpKick1.bin"
GFX_Sprite_Cyborg_JumpKick1End:
GFX_Sprite_Cyborg_HighBlowHurt1:
	db "GFX_Sprite_Cyborg_HighBlowHurt1.bin"
GFX_Sprite_Cyborg_HighBlowHurt1End:
GFX_Sprite_Cyborg_HighBlowHurt2:
	db "GFX_Sprite_Cyborg_HighBlowHurt2.bin"
GFX_Sprite_Cyborg_HighBlowHurt2End:
GFX_Sprite_Cyborg_HighBlowHurt3:
	db "GFX_Sprite_Cyborg_HighBlowHurt3.bin"
GFX_Sprite_Cyborg_HighBlowHurt3End:
GFX_Sprite_Cyborg_HighBlowHurt4:
	db "GFX_Sprite_Cyborg_HighBlowHurt4.bin"
GFX_Sprite_Cyborg_HighBlowHurt4End:
GFX_Sprite_Cyborg_Headbutt5:
	db "GFX_Sprite_Cyborg_Headbutt5.bin"
GFX_Sprite_Cyborg_Headbutt5End:
GFX_Sprite_Cyborg_Headbutt6:
	db "GFX_Sprite_Cyborg_Headbutt6.bin"
GFX_Sprite_Cyborg_Headbutt6End:
GFX_Sprite_Cyborg_FarKick1:
	db "GFX_Sprite_Cyborg_FarKick1.bin"
GFX_Sprite_Cyborg_FarKick1End:
GFX_Sprite_Cyborg_FarKick3:
	db "GFX_Sprite_Cyborg_FarKick3.bin"
GFX_Sprite_Cyborg_FarKick3End:
GFX_Sprite_Cyborg_SlidePunch1:
	db "GFX_Sprite_Cyborg_SlidePunch1.bin"
GFX_Sprite_Cyborg_SlidePunch1End:
GFX_Sprite_Cyborg_SlidePunch3:
	db "GFX_Sprite_Cyborg_SlidePunch3.bin"
GFX_Sprite_Cyborg_SlidePunch3End:
GFX_Sprite_Cyborg_SlidePunch5:
	db "GFX_Sprite_Cyborg_SlidePunch5.bin"
GFX_Sprite_Cyborg_SlidePunch5End:
GFX_Sprite_Military_Somersault6:
	db "GFX_Sprite_Military_Somersault6.bin"
GFX_Sprite_Military_Somersault6End:
GFX_Sprite_Military_DuckPunch7:
	db "GFX_Sprite_Military_DuckPunch7.bin"
GFX_Sprite_Military_DuckPunch7End:
GFX_Sprite_Loader_Jump5:
	db "GFX_Sprite_Loader_Jump5.bin"
GFX_Sprite_Loader_Jump5End:
GFX_Sprite_Loader_Jump6:
	db "GFX_Sprite_Loader_Jump6.bin"
GFX_Sprite_Loader_Jump6End:
GFX_Sprite_Loader_CurlUp2:
	db "GFX_Sprite_Loader_CurlUp2.bin"
GFX_Sprite_Loader_CurlUp2End:
GFX_Sprite_Supervisor_ClosePunch5:
	db "GFX_Sprite_Supervisor_ClosePunch5.bin"
GFX_Sprite_Supervisor_ClosePunch5End:
GFX_Sprite_Supervisor_FarKick8:
	db "GFX_Sprite_Supervisor_FarKick8.bin"
GFX_Sprite_Supervisor_FarKick8End:
GFX_Sprite_Supervisor_DuckKick5:
	db "GFX_Sprite_Supervisor_DuckKick5.bin"
GFX_Sprite_Supervisor_DuckKick5End:
GFX_Sprite_Cyborg_CloseKick3:
	db "GFX_Sprite_Cyborg_CloseKick3.bin"
GFX_Sprite_Cyborg_CloseKick3End:
GFX_Sprite_Cyborg_DuckBlock2:
	db "GFX_Sprite_Cyborg_DuckBlock2.bin"
GFX_Sprite_Cyborg_DuckBlock2End:
GFX_Sprite_Cyborg_DuckPunch2:
	db "GFX_Sprite_Cyborg_DuckPunch2.bin"
GFX_Sprite_Cyborg_DuckPunch2End:
GFX_Sprite_Cyborg_DuckKick1:
	db "GFX_Sprite_Cyborg_DuckKick1.bin"
GFX_Sprite_Cyborg_DuckKick1End:
GFX_Sprite_Cyborg_DuckHurt4:
	db "GFX_Sprite_Cyborg_DuckHurt4.bin"
GFX_Sprite_Cyborg_DuckHurt4End:
GFX_Sprite_Cyborg_FarPunch2:
	db "GFX_Sprite_Cyborg_FarPunch2.bin"
GFX_Sprite_Cyborg_FarPunch2End:
GFX_Sprite_Cyborg_FarPunch3:
	db "GFX_Sprite_Cyborg_FarPunch3.bin"
GFX_Sprite_Cyborg_FarPunch3End:
GFX_Sprite_Cyborg_LowBlowHurt4:
	db "GFX_Sprite_Cyborg_LowBlowHurt4.bin"
GFX_Sprite_Cyborg_LowBlowHurt4End:
GFX_Sprite_Cyborg_LowBlowHurt5:
	db "GFX_Sprite_Cyborg_LowBlowHurt5.bin"
GFX_Sprite_Cyborg_LowBlowHurt5End:
GFX_Sprite_Cyborg_Headbutt9:
	db "GFX_Sprite_Cyborg_Headbutt9.bin"
GFX_Sprite_Cyborg_Headbutt9End:
GFX_Sprite_Cyborg_SlidePunch2:
	db "GFX_Sprite_Cyborg_SlidePunch2.bin"
GFX_Sprite_Cyborg_SlidePunch2End:
GFX_Sprite_Cyborg_SlidePunch4:
	db "GFX_Sprite_Cyborg_SlidePunch4.bin"
GFX_Sprite_Cyborg_SlidePunch4End:
GFX_Sprite_Cyborg_Dead1:
	db "GFX_Sprite_Cyborg_Dead1.bin"
GFX_Sprite_Cyborg_Dead1End:
GFX_Sprite_Cyborg_Dead2:
	db "GFX_Sprite_Cyborg_Dead2.bin"
GFX_Sprite_Cyborg_Dead2End:
GFX_Sprite_Cyborg_Dead8:
	db "GFX_Sprite_Cyborg_Dead8.bin"
GFX_Sprite_Cyborg_Dead8End:
GFX_Sprite_Military_FarKick3:
	db "GFX_Sprite_Military_FarKick3.bin"
GFX_Sprite_Military_FarKick3End:
GFX_Sprite_Military_FarKick4:
	db "GFX_Sprite_Military_FarKick4.bin"
GFX_Sprite_Military_FarKick4End:
GFX_Sprite_Military_FarKick5:
	db "GFX_Sprite_Military_FarKick5.bin"
GFX_Sprite_Military_FarKick5End:
GFX_Sprite_Military_FarKick9:
	db "GFX_Sprite_Military_FarKick9.bin"
GFX_Sprite_Military_FarKick9End:
GFX_Sprite_Military_Somersault16:
	db "GFX_Sprite_Military_Somersault16.bin"
GFX_Sprite_Military_Somersault16End:
GFX_Sprite_Loader_CurlUp3:
	db "GFX_Sprite_Loader_CurlUp3.bin"
GFX_Sprite_Loader_CurlUp3End:
GFX_Sprite_Loader_CurlUp4:
	db "GFX_Sprite_Loader_CurlUp4.bin"
GFX_Sprite_Loader_CurlUp4End:
GFX_Sprite_Loader_CurlUp5:
	db "GFX_Sprite_Loader_CurlUp5.bin"
GFX_Sprite_Loader_CurlUp5End:
GFX_Sprite_Supervisor_ClosePunch3:
	db "GFX_Sprite_Supervisor_ClosePunch3.bin"
GFX_Sprite_Supervisor_ClosePunch3End:
GFX_Sprite_Supervisor_ClosePunch4:
	db "GFX_Sprite_Supervisor_ClosePunch4.bin"
GFX_Sprite_Supervisor_ClosePunch4End:
GFX_Sprite_Supervisor_CloseKick3:
	db "GFX_Sprite_Supervisor_CloseKick3.bin"
GFX_Sprite_Supervisor_CloseKick3End:
GFX_Sprite_Supervisor_DuckPunch2:
	db "GFX_Sprite_Supervisor_DuckPunch2.bin"
GFX_Sprite_Supervisor_DuckPunch2End:
GFX_Sprite_Supervisor_FarKick4:
	db "GFX_Sprite_Supervisor_FarKick4.bin"
GFX_Sprite_Supervisor_FarKick4End:
GFX_Sprite_Supervisor_FarKick6:
	db "GFX_Sprite_Supervisor_FarKick6.bin"
GFX_Sprite_Supervisor_FarKick6End:
GFX_Sprite_Supervisor_FarKick9:
	db "GFX_Sprite_Supervisor_FarKick9.bin"
GFX_Sprite_Supervisor_FarKick9End:
GFX_Sprite_Supervisor_LungeAttack2:
	db "GFX_Sprite_Supervisor_LungeAttack2.bin"
GFX_Sprite_Supervisor_LungeAttack2End:
GFX_Sprite_Supervisor_JumpKick3:
	db "GFX_Sprite_Supervisor_JumpKick3.bin"
GFX_Sprite_Supervisor_JumpKick3End:
GFX_Sprite_Supervisor_FarPunch2:
	db "GFX_Sprite_Supervisor_FarPunch2.bin"
GFX_Sprite_Supervisor_FarPunch2End:
GFX_Sprite_Supervisor_Jump3:
	db "GFX_Sprite_Supervisor_Jump3.bin"
GFX_Sprite_Supervisor_Jump3End:
GFX_Sprite_Supervisor_LowBlowHurt1:
	db "GFX_Sprite_Supervisor_LowBlowHurt1.bin"
GFX_Sprite_Supervisor_LowBlowHurt1End:
GFX_Sprite_Supervisor_Melting36:
	db "GFX_Sprite_Supervisor_Melting36.bin"
GFX_Sprite_Supervisor_Melting36End:
GFX_Sprite_Supervisor_Melting37:
	db "GFX_Sprite_Supervisor_Melting37.bin"
GFX_Sprite_Supervisor_Melting37End:
GFX_Sprite_Supervisor_Melting38:
	db "GFX_Sprite_Supervisor_Melting38.bin"
GFX_Sprite_Supervisor_Melting38End:
GFX_Sprite_Supervisor_Melting39:
	db "GFX_Sprite_Supervisor_Melting39.bin"
GFX_Sprite_Supervisor_Melting39End:
GFX_Sprite_Supervisor_Melting40:
	db "GFX_Sprite_Supervisor_Melting40.bin"
GFX_Sprite_Supervisor_Melting40End:
GFX_Sprite_Supervisor_Melting41:
	db "GFX_Sprite_Supervisor_Melting41.bin"
GFX_Sprite_Supervisor_Melting41End:
GFX_Sprite_Cyborg_CloseKick1:
	db "GFX_Sprite_Cyborg_CloseKick1.bin"
GFX_Sprite_Cyborg_CloseKick1End:
GFX_Sprite_Cyborg_CloseKick2:
	db "GFX_Sprite_Cyborg_CloseKick2.bin"
GFX_Sprite_Cyborg_CloseKick2End:
GFX_Sprite_Cyborg_Ducking5:
	db "GFX_Sprite_Cyborg_Ducking5.bin"
GFX_Sprite_Cyborg_Ducking5End:
GFX_Sprite_Cyborg_Ducking6:
	db "GFX_Sprite_Cyborg_Ducking6.bin"
GFX_Sprite_Cyborg_Ducking6End:
GFX_Sprite_Cyborg_DuckBlock1:
	db "GFX_Sprite_Cyborg_DuckBlock1.bin"
GFX_Sprite_Cyborg_DuckBlock1End:
GFX_Sprite_Cyborg_DuckPunch1:
	db "GFX_Sprite_Cyborg_DuckPunch1.bin"
GFX_Sprite_Cyborg_DuckPunch1End:
GFX_Sprite_Cyborg_DuckKick2:
	db "GFX_Sprite_Cyborg_DuckKick2.bin"
GFX_Sprite_Cyborg_DuckKick2End:
GFX_Sprite_Cyborg_DuckKick3:
	db "GFX_Sprite_Cyborg_DuckKick3.bin"
GFX_Sprite_Cyborg_DuckKick3End:
GFX_Sprite_Cyborg_DuckHurt1:
	db "GFX_Sprite_Cyborg_DuckHurt1.bin"
GFX_Sprite_Cyborg_DuckHurt1End:
GFX_Sprite_Cyborg_DuckHurt2:
	db "GFX_Sprite_Cyborg_DuckHurt2.bin"
GFX_Sprite_Cyborg_DuckHurt2End:
GFX_Sprite_Cyborg_Headbutt7:
	db "GFX_Sprite_Cyborg_Headbutt7.bin"
GFX_Sprite_Cyborg_Headbutt7End:
GFX_Sprite_Cyborg_Headbutt8:
	db "GFX_Sprite_Cyborg_Headbutt8.bin"
GFX_Sprite_Cyborg_Headbutt8End:
GFX_Sprite_Cyborg_FarKick2:
	db "GFX_Sprite_Cyborg_FarKick2.bin"
GFX_Sprite_Cyborg_FarKick2End:
GFX_Sprite_Cyborg_Dead10:
	db "GFX_Sprite_Cyborg_Dead10.bin"
GFX_Sprite_Cyborg_Dead10End:
GFX_Sprite_Cyborg_Dead11:
	db "GFX_Sprite_Cyborg_Dead11.bin"
GFX_Sprite_Cyborg_Dead11End:
GFX_Sprite_Military_Somersault4:
	db "GFX_Sprite_Military_Somersault4.bin"
GFX_Sprite_Military_Somersault4End:
GFX_Sprite_Supervisor_StandIdle1:
	db "GFX_Sprite_Supervisor_StandIdle1.bin"
GFX_Sprite_Supervisor_StandIdle1End:
GFX_Sprite_Supervisor_StandIdle4:
	db "GFX_Sprite_Supervisor_StandIdle4.bin"
GFX_Sprite_Supervisor_StandIdle4End:
GFX_Sprite_Supervisor_ClosePunch2:
	db "GFX_Sprite_Supervisor_ClosePunch2.bin"
GFX_Sprite_Supervisor_ClosePunch2End:
GFX_Sprite_Supervisor_DuckPunch1:
	db "GFX_Sprite_Supervisor_DuckPunch1.bin"
GFX_Sprite_Supervisor_DuckPunch1End:
GFX_Sprite_Supervisor_FarKick1:
	db "GFX_Sprite_Supervisor_FarKick1.bin"
GFX_Sprite_Supervisor_FarKick1End:
GFX_Sprite_Supervisor_FarKick2:
	db "GFX_Sprite_Supervisor_FarKick2.bin"
GFX_Sprite_Supervisor_FarKick2End:
GFX_Sprite_Supervisor_FarKick3:
	db "GFX_Sprite_Supervisor_FarKick3.bin"
GFX_Sprite_Supervisor_FarKick3End:
GFX_Sprite_Supervisor_FarKick5:
	db "GFX_Sprite_Supervisor_FarKick5.bin"
GFX_Sprite_Supervisor_FarKick5End:
GFX_Sprite_Supervisor_FarKick7:
	db "GFX_Sprite_Supervisor_FarKick7.bin"
GFX_Sprite_Supervisor_FarKick7End:
GFX_Sprite_Supervisor_Walk6:
	db "GFX_Sprite_Supervisor_Walk6.bin"
GFX_Sprite_Supervisor_Walk6End:
GFX_Sprite_Supervisor_Walk7:
	db "GFX_Sprite_Supervisor_Walk7.bin"
GFX_Sprite_Supervisor_Walk7End:
GFX_Sprite_Supervisor_Jump2:
	db "GFX_Sprite_Supervisor_Jump2.bin"
GFX_Sprite_Supervisor_Jump2End:
GFX_Sprite_Supervisor_HighBlowHurt1:
	db "GFX_Sprite_Supervisor_HighBlowHurt1.bin"
GFX_Sprite_Supervisor_HighBlowHurt1End:
GFX_Sprite_Supervisor_HighBlowHurt2:
	db "GFX_Sprite_Supervisor_HighBlowHurt2.bin"
GFX_Sprite_Supervisor_HighBlowHurt2End:
GFX_Sprite_Supervisor_HighBlowHurt3:
	db "GFX_Sprite_Supervisor_HighBlowHurt3.bin"
GFX_Sprite_Supervisor_HighBlowHurt3End:
GFX_Sprite_Supervisor_LowBlowHurt2:
	db "GFX_Sprite_Supervisor_LowBlowHurt2.bin"
GFX_Sprite_Supervisor_LowBlowHurt2End:
GFX_Sprite_Supervisor_LowBlowHurt3:
	db "GFX_Sprite_Supervisor_LowBlowHurt3.bin"
GFX_Sprite_Supervisor_LowBlowHurt3End:
GFX_Sprite_Supervisor_LowBlowHurt4:
	db "GFX_Sprite_Supervisor_LowBlowHurt4.bin"
GFX_Sprite_Supervisor_LowBlowHurt4End:
GFX_Sprite_Supervisor_Ducking1:
	db "GFX_Sprite_Supervisor_Ducking1.bin"
GFX_Sprite_Supervisor_Ducking1End:
GFX_Sprite_Supervisor_Melting26:
	db "GFX_Sprite_Supervisor_Melting26.bin"
GFX_Sprite_Supervisor_Melting26End:
GFX_Sprite_Supervisor_Melting27:
	db "GFX_Sprite_Supervisor_Melting27.bin"
GFX_Sprite_Supervisor_Melting27End:
GFX_Sprite_Supervisor_Melting28:
	db "GFX_Sprite_Supervisor_Melting28.bin"
GFX_Sprite_Supervisor_Melting28End:
GFX_Sprite_Supervisor_Melting29:
	db "GFX_Sprite_Supervisor_Melting29.bin"
GFX_Sprite_Supervisor_Melting29End:
GFX_Sprite_Supervisor_Melting30:
	db "GFX_Sprite_Supervisor_Melting30.bin"
GFX_Sprite_Supervisor_Melting30End:
GFX_Sprite_Supervisor_Melting31:
	db "GFX_Sprite_Supervisor_Melting31.bin"
GFX_Sprite_Supervisor_Melting31End:
GFX_Sprite_Supervisor_Melting32:
	db "GFX_Sprite_Supervisor_Melting32.bin"
GFX_Sprite_Supervisor_Melting32End:
GFX_Sprite_Supervisor_Melting33:
	db "GFX_Sprite_Supervisor_Melting33.bin"
GFX_Sprite_Supervisor_Melting33End:
GFX_Sprite_Supervisor_Melting34:
	db "GFX_Sprite_Supervisor_Melting34.bin"
GFX_Sprite_Supervisor_Melting34End:
GFX_Sprite_Supervisor_Melting35:
	db "GFX_Sprite_Supervisor_Melting35.bin"
GFX_Sprite_Supervisor_Melting35End:
GFX_Sprite_Cyborg_DuckHurt3:
	db "GFX_Sprite_Cyborg_DuckHurt3.bin"
GFX_Sprite_Cyborg_DuckHurt3End:
GFX_Sprite_Cyborg_WeirdSquare1:
	db "GFX_Sprite_Cyborg_WeirdSquare1.bin"
GFX_Sprite_Cyborg_WeirdSquare1End:
GFX_Sprite_Military_Somersault5:
	db "GFX_Sprite_Military_Somersault5.bin"
GFX_Sprite_Military_Somersault5End:
GFX_Sprite_Military_Somersault7:
	db "GFX_Sprite_Military_Somersault7.bin"
GFX_Sprite_Military_Somersault7End:
GFX_Sprite_Military_Somersault8:
	db "GFX_Sprite_Military_Somersault8.bin"
GFX_Sprite_Military_Somersault8End:
GFX_Sprite_Supervisor_StandIdle2:
	db "GFX_Sprite_Supervisor_StandIdle2.bin"
GFX_Sprite_Supervisor_StandIdle2End:
GFX_Sprite_Supervisor_StandIdle3:
	db "GFX_Sprite_Supervisor_StandIdle3.bin"
GFX_Sprite_Supervisor_StandIdle3End:
GFX_Sprite_Supervisor_StandIdle5:
	db "GFX_Sprite_Supervisor_StandIdle5.bin"
GFX_Sprite_Supervisor_StandIdle5End:
GFX_Sprite_Supervisor_ClosePunch1:
	db "GFX_Sprite_Supervisor_ClosePunch1.bin"
GFX_Sprite_Supervisor_ClosePunch1End:
GFX_Sprite_Supervisor_CloseKick1:
	db "GFX_Sprite_Supervisor_CloseKick1.bin"
GFX_Sprite_Supervisor_CloseKick1End:
GFX_Sprite_Supervisor_CloseKick2:
	db "GFX_Sprite_Supervisor_CloseKick2.bin"
GFX_Sprite_Supervisor_CloseKick2End:
GFX_Sprite_Supervisor_FarKick10:
	db "GFX_Sprite_Supervisor_FarKick10.bin"
GFX_Sprite_Supervisor_FarKick10End:
GFX_Sprite_Supervisor_FarKick11:
	db "GFX_Sprite_Supervisor_FarKick11.bin"
GFX_Sprite_Supervisor_FarKick11End:
GFX_Sprite_Supervisor_DuckKick4:
	db "GFX_Sprite_Supervisor_DuckKick4.bin"
GFX_Sprite_Supervisor_DuckKick4End:
GFX_Sprite_Supervisor_LungeAttack1:
	db "GFX_Sprite_Supervisor_LungeAttack1.bin"
GFX_Sprite_Supervisor_LungeAttack1End:
GFX_Sprite_Supervisor_JumpKick2:
	db "GFX_Sprite_Supervisor_JumpKick2.bin"
GFX_Sprite_Supervisor_JumpKick2End:
GFX_Sprite_Supervisor_FarPunch1:
	db "GFX_Sprite_Supervisor_FarPunch1.bin"
GFX_Sprite_Supervisor_FarPunch1End:
GFX_Sprite_Supervisor_Walk1:
	db "GFX_Sprite_Supervisor_Walk1.bin"
GFX_Sprite_Supervisor_Walk1End:
GFX_Sprite_Supervisor_Walk2:
	db "GFX_Sprite_Supervisor_Walk2.bin"
GFX_Sprite_Supervisor_Walk2End:
GFX_Sprite_Supervisor_Walk3:
	db "GFX_Sprite_Supervisor_Walk3.bin"
GFX_Sprite_Supervisor_Walk3End:
GFX_Sprite_Supervisor_Walk5:
	db "GFX_Sprite_Supervisor_Walk5.bin"
GFX_Sprite_Supervisor_Walk5End:
GFX_Sprite_Supervisor_Jump1:
	db "GFX_Sprite_Supervisor_Jump1.bin"
GFX_Sprite_Supervisor_Jump1End:
GFX_Sprite_Supervisor_Jump4:
	db "GFX_Sprite_Supervisor_Jump4.bin"
GFX_Sprite_Supervisor_Jump4End:
GFX_Sprite_Supervisor_Jump5:
	db "GFX_Sprite_Supervisor_Jump5.bin"
GFX_Sprite_Supervisor_Jump5End:
GFX_Sprite_Supervisor_Jump6:
	db "GFX_Sprite_Supervisor_Jump6.bin"
GFX_Sprite_Supervisor_Jump6End:
GFX_Sprite_Supervisor_Jump7:
	db "GFX_Sprite_Supervisor_Jump7.bin"
GFX_Sprite_Supervisor_Jump7End:
GFX_Sprite_Supervisor_PreMelt1:
	db "GFX_Sprite_Supervisor_PreMelt1.bin"
GFX_Sprite_Supervisor_PreMelt1End:
GFX_Sprite_Supervisor_PreMelt2:
	db "GFX_Sprite_Supervisor_PreMelt2.bin"
GFX_Sprite_Supervisor_PreMelt2End:
GFX_Sprite_Supervisor_StandBlock1:
	db "GFX_Sprite_Supervisor_StandBlock1.bin"
GFX_Sprite_Supervisor_StandBlock1End:
GFX_Sprite_Supervisor_StandBlock2:
	db "GFX_Sprite_Supervisor_StandBlock2.bin"
GFX_Sprite_Supervisor_StandBlock2End:
GFX_Sprite_Supervisor_StandBlock3:
	db "GFX_Sprite_Supervisor_StandBlock3.bin"
GFX_Sprite_Supervisor_StandBlock3End:
GFX_Sprite_Supervisor_Ducking2:
	db "GFX_Sprite_Supervisor_Ducking2.bin"
GFX_Sprite_Supervisor_Ducking2End:
GFX_Sprite_Supervisor_Ducking3:
	db "GFX_Sprite_Supervisor_Ducking3.bin"
GFX_Sprite_Supervisor_Ducking3End:
GFX_Sprite_Supervisor_Melting20:
	db "GFX_Sprite_Supervisor_Melting20.bin"
GFX_Sprite_Supervisor_Melting20End:
GFX_Sprite_Supervisor_Melting21:
	db "GFX_Sprite_Supervisor_Melting21.bin"
GFX_Sprite_Supervisor_Melting21End:
GFX_Sprite_Supervisor_Melting22:
	db "GFX_Sprite_Supervisor_Melting22.bin"
GFX_Sprite_Supervisor_Melting22End:
GFX_Sprite_Supervisor_Melting23:
	db "GFX_Sprite_Supervisor_Melting23.bin"
GFX_Sprite_Supervisor_Melting23End:
GFX_Sprite_Supervisor_Melting24:
	db "GFX_Sprite_Supervisor_Melting24.bin"
GFX_Sprite_Supervisor_Melting24End:
GFX_Sprite_Supervisor_Melting25:
	db "GFX_Sprite_Supervisor_Melting25.bin"
GFX_Sprite_Supervisor_Melting25End:
GFX_Sprite_Supervisor_Dead1:
	db "GFX_Sprite_Supervisor_Dead1.bin"
GFX_Sprite_Supervisor_Dead1End:
GFX_Sprite_Supervisor_Dead2:
	db "GFX_Sprite_Supervisor_Dead2.bin"
GFX_Sprite_Supervisor_Dead2End:
GFX_Sprite_Supervisor_Dead3:
	db "GFX_Sprite_Supervisor_Dead3.bin"
GFX_Sprite_Supervisor_Dead3End:
GFX_Sprite_Supervisor_Dead4:
	db "GFX_Sprite_Supervisor_Dead4.bin"
GFX_Sprite_Supervisor_Dead4End:
GFX_Sprite_Supervisor_Dead5:
	db "GFX_Sprite_Supervisor_Dead5.bin"
GFX_Sprite_Supervisor_Dead5End:
GFX_Sprite_Supervisor_Dead6:
	db "GFX_Sprite_Supervisor_Dead6.bin"
GFX_Sprite_Supervisor_Dead6End:
GFX_Sprite_Supervisor_Dead7:
	db "GFX_Sprite_Supervisor_Dead7.bin"
GFX_Sprite_Supervisor_Dead7End:
GFX_Sprite_Supervisor_Dead8:
	db "GFX_Sprite_Supervisor_Dead8.bin"
GFX_Sprite_Supervisor_Dead8End:
GFX_Sprite_Supervisor_Dead10:
	db "GFX_Sprite_Supervisor_Dead10.bin"
GFX_Sprite_Supervisor_Dead10End:
GFX_Sprite_Supervisor_Dead11:
	db "GFX_Sprite_Supervisor_Dead11.bin"
GFX_Sprite_Supervisor_Dead11End:
GFX_Sprite_Supervisor_Dead12:
	db "GFX_Sprite_Supervisor_Dead12.bin"
GFX_Sprite_Supervisor_Dead12End:
GFX_Sprite_Cyborg_WeirdSquare2:
	db "GFX_Sprite_Cyborg_WeirdSquare2.bin"
GFX_Sprite_Cyborg_WeirdSquare2End:
GFX_Sprite_Cyborg_WeirdSquare3:
	db "GFX_Sprite_Cyborg_WeirdSquare3.bin"
GFX_Sprite_Cyborg_WeirdSquare3End:
GFX_Sprite_Military_Somersault10:
	db "GFX_Sprite_Military_Somersault10.bin"
GFX_Sprite_Military_Somersault10End:
GFX_Sprite_Military_Somersault11:
	db "GFX_Sprite_Military_Somersault11.bin"
GFX_Sprite_Military_Somersault11End:
GFX_Sprite_Military_Somersault12:
	db "GFX_Sprite_Military_Somersault12.bin"
GFX_Sprite_Military_Somersault12End:
GFX_Sprite_Military_Somersault13:
	db "GFX_Sprite_Military_Somersault13.bin"
GFX_Sprite_Military_Somersault13End:
GFX_Sprite_Military_Somersault14:
	db "GFX_Sprite_Military_Somersault14.bin"
GFX_Sprite_Military_Somersault14End:
GFX_Sprite_Military_Somersault15:
	db "GFX_Sprite_Military_Somersault15.bin"
GFX_Sprite_Military_Somersault15End:
GFX_Sprite_Military_Somersault17:
	db "GFX_Sprite_Military_Somersault17.bin"
GFX_Sprite_Military_Somersault17End:
GFX_Sprite_Supervisor_DuckKick1:
	db "GFX_Sprite_Supervisor_DuckKick1.bin"
GFX_Sprite_Supervisor_DuckKick1End:
GFX_Sprite_Supervisor_DuckKick2:
	db "GFX_Sprite_Supervisor_DuckKick2.bin"
GFX_Sprite_Supervisor_DuckKick2End:
GFX_Sprite_Supervisor_DuckKick3:
	db "GFX_Sprite_Supervisor_DuckKick3.bin"
GFX_Sprite_Supervisor_DuckKick3End:
GFX_Sprite_Supervisor_JumpKick1:
	db "GFX_Sprite_Supervisor_JumpKick1.bin"
GFX_Sprite_Supervisor_JumpKick1End:
GFX_Sprite_Supervisor_Walk4:
	db "GFX_Sprite_Supervisor_Walk4.bin"
GFX_Sprite_Supervisor_Walk4End:
GFX_Sprite_Supervisor_PreMelt3:
	db "GFX_Sprite_Supervisor_PreMelt3.bin"
GFX_Sprite_Supervisor_PreMelt3End:
GFX_Sprite_Supervisor_PreMelt4:
	db "GFX_Sprite_Supervisor_PreMelt4.bin"
GFX_Sprite_Supervisor_PreMelt4End:
GFX_Sprite_Supervisor_PreMelt5:
	db "GFX_Sprite_Supervisor_PreMelt5.bin"
GFX_Sprite_Supervisor_PreMelt5End:
GFX_Sprite_Supervisor_Ducking4:
	db "GFX_Sprite_Supervisor_Ducking4.bin"
GFX_Sprite_Supervisor_Ducking4End:
GFX_Sprite_Supervisor_Ducking5:
	db "GFX_Sprite_Supervisor_Ducking5.bin"
GFX_Sprite_Supervisor_Ducking5End:
GFX_Sprite_Supervisor_Melting1:
	db "GFX_Sprite_Supervisor_Melting1.bin"
GFX_Sprite_Supervisor_Melting1End:
GFX_Sprite_Supervisor_Melting2:
	db "GFX_Sprite_Supervisor_Melting2.bin"
GFX_Sprite_Supervisor_Melting2End:
GFX_Sprite_Supervisor_Melting3:
	db "GFX_Sprite_Supervisor_Melting3.bin"
GFX_Sprite_Supervisor_Melting3End:
GFX_Sprite_Supervisor_Melting4:
	db "GFX_Sprite_Supervisor_Melting4.bin"
GFX_Sprite_Supervisor_Melting4End:
GFX_Sprite_Supervisor_Melting5:
	db "GFX_Sprite_Supervisor_Melting5.bin"
GFX_Sprite_Supervisor_Melting5End:
GFX_Sprite_Supervisor_Melting6:
	db "GFX_Sprite_Supervisor_Melting6.bin"
GFX_Sprite_Supervisor_Melting6End:
GFX_Sprite_Supervisor_Melting7:
	db "GFX_Sprite_Supervisor_Melting7.bin"
GFX_Sprite_Supervisor_Melting7End:
GFX_Sprite_Supervisor_Melting8:
	db "GFX_Sprite_Supervisor_Melting8.bin"
GFX_Sprite_Supervisor_Melting8End:
GFX_Sprite_Supervisor_Melting9:
	db "GFX_Sprite_Supervisor_Melting9.bin"
GFX_Sprite_Supervisor_Melting9End:
GFX_Sprite_Supervisor_Melting10:
	db "GFX_Sprite_Supervisor_Melting10.bin"
GFX_Sprite_Supervisor_Melting10End:
GFX_Sprite_Supervisor_Melting11:
	db "GFX_Sprite_Supervisor_Melting11.bin"
GFX_Sprite_Supervisor_Melting11End:
GFX_Sprite_Supervisor_Melting12:
	db "GFX_Sprite_Supervisor_Melting12.bin"
GFX_Sprite_Supervisor_Melting12End:
GFX_Sprite_Supervisor_Melting13:
	db "GFX_Sprite_Supervisor_Melting13.bin"
GFX_Sprite_Supervisor_Melting13End:
GFX_Sprite_Supervisor_Melting14:
	db "GFX_Sprite_Supervisor_Melting14.bin"
GFX_Sprite_Supervisor_Melting14End:
GFX_Sprite_Supervisor_Melting15:
	db "GFX_Sprite_Supervisor_Melting15.bin"
GFX_Sprite_Supervisor_Melting15End:
GFX_Sprite_Supervisor_Melting16:
	db "GFX_Sprite_Supervisor_Melting16.bin"
GFX_Sprite_Supervisor_Melting16End:
GFX_Sprite_Supervisor_Melting17:
	db "GFX_Sprite_Supervisor_Melting17.bin"
GFX_Sprite_Supervisor_Melting17End:
GFX_Sprite_Supervisor_Melting18:
	db "GFX_Sprite_Supervisor_Melting18.bin"
GFX_Sprite_Supervisor_Melting18End:
GFX_Sprite_Supervisor_Melting19:
	db "GFX_Sprite_Supervisor_Melting19.bin"
GFX_Sprite_Supervisor_Melting19End:
GFX_Sprite_Supervisor_Dead9:
	db "GFX_Sprite_Supervisor_Dead9.bin"
GFX_Sprite_Supervisor_Dead9End:

;--------------------------------------------------------------------

TM_Layer1_TitleScreen_Cyborg_Frame5:
	db "TM_Layer1_TitleScreen_Cyborg_Frame5.bin"
TM_Layer1_TitleScreen_Cyborg_Frame5End:
TM_Layer1_TitleScreen_Cyborg_Frame1:
	db "TM_Layer1_TitleScreen_Cyborg_Frame1.bin"
TM_Layer1_TitleScreen_Cyborg_Frame1End:
TM_Layer1_TitleScreen_Cyborg_Frame2:
	db "TM_Layer1_TitleScreen_Cyborg_Frame2.bin"
TM_Layer1_TitleScreen_Cyborg_Frame2End:
TM_Layer1_TitleScreen_Cyborg_Frame3:
	db "TM_Layer1_TitleScreen_Cyborg_Frame3.bin"
TM_Layer1_TitleScreen_Cyborg_Frame3End:
TM_Layer2_TitleScreen_Title:
	db "TM_Layer2_TitleScreen_Title.bin"
TM_Layer2_TitleScreen_TitleEnd:
TM_Layer1_TitleScreen_Cyborg_Frame4:
	db "TM_Layer1_TitleScreen_Cyborg_Frame4.bin"
TM_Layer1_TitleScreen_Cyborg_Frame4End:

;--------------------------------------------------------------------

PAL_Sprite_Cyborg:
	db "PAL_Sprite_Cyborg.tpl"
PAL_Sprite_CyborgEnd:
PAL_Layer1_TitleScreen_Cyborg:
	db "PAL_Layer1_TitleScreen_Cyborg.tpl"
PAL_Layer1_TitleScreen_CyborgEnd:
PAL_Sprite_Crusher:
	db "PAL_Sprite_Crusher.tpl"
PAL_Sprite_CrusherEnd:
PAL_Sprite_Sentry:
	db "PAL_Sprite_Sentry.tpl"
PAL_Sprite_SentryEnd:
PAL_Layer2_TitleScreen_Title:
	db "PAL_Layer2_TitleScreen_Title.tpl"
PAL_Layer2_TitleScreen_TitleEnd:
PAL_Sprite_Ape:
	db "PAL_Sprite_Ape.tpl"
PAL_Sprite_ApeEnd:
PAL_Sprite_Military:
	db "PAL_Sprite_Military.tpl"
PAL_Sprite_MilitaryEnd:
PAL_Sprite_Loader:
	db "PAL_Sprite_Loader.tpl"
PAL_Sprite_LoaderEnd:
PAL_Sprite_Supervisor:
	db "PAL_Sprite_Supervisor.tpl"
PAL_Sprite_SupervisorEnd:
PAL_Sprite_Sparks:
	db "PAL_Sprite_Sparks.tpl"
PAL_Sprite_SparksEnd:
PAL_Layer1_Unknown:
	db "PAL_Layer1_Unknown.tpl"
PAL_Layer1_UnknownEnd:
PAL_Sprite_MainMenuCyborg:
	db "PAL_Sprite_MainMenuCyborg.tpl"
PAL_Sprite_MainMenuCyborgEnd:
PAL_All_Unknown:
	db "PAL_All_Unknown.tpl"
PAL_All_UnknownEnd:
PAL_All_MainMenu:
	db "PAL_All_MainMenu.tpl"
PAL_All_MainMenuEnd:
PAL_Layer1_RedCyborgIntroFMV:
	db "PAL_Layer1_RedCyborgIntroFMV.tpl"
PAL_Layer1_RedCyborgIntroFMVEnd:

;--------------------------------------------------------------------

UNK_C07F86:
	db "UNK_C07F86.bin"
UNK_C07F86End:
UNK_C1FFAB:
	db "UNK_C1FFAB.bin"
UNK_C1FFABEnd:
UNK_C2FF5A:
	db "UNK_C2FF5A.bin"
UNK_C2FF5AEnd:
UNK_C3FEDE:
	db "UNK_C3FEDE.bin"
UNK_C3FEDEEnd:
UNK_C4FFFB:
	db "UNK_C4FFFB.bin"
UNK_C4FFFBEnd:
UNK_C6FFFC:
	db "UNK_C6FFFC.bin"
UNK_C6FFFCEnd:
UNK_C7FFFA:
	db "UNK_C7FFFA.bin"
UNK_C7FFFAEnd:
UNK_C9F64A:
	db "UNK_C9F64A.bin"
UNK_C9F64AEnd:
UNK_CAFFF1:
	db "UNK_CAFFF1.bin"
UNK_CAFFF1End:
UNK_CBFFFB:
	db "UNK_CBFFFB.bin"
UNK_CBFFFBEnd:
UNK_CCFFE9:
	db "UNK_CCFFE9.bin"
UNK_CCFFE9End:
UNK_CDFCF1:
	db "UNK_CDFCF1.bin"
UNK_CDFCF1End:
UNK_CDFFF0:
	db "UNK_CDFFF0.bin"
UNK_CDFFF0End:
UNK_CEF6AF:
	db "UNK_CEF6AF.bin"
UNK_CEF6AFEnd:
UNK_CFF8A8:
	db "UNK_CFF8A8.bin"
UNK_CFF8A8End:
UNK_D0FFBC:
	db "UNK_D0FFBC.bin"
UNK_D0FFBCEnd:
UNK_D2EE70:
	db "UNK_D2EE70.bin"
UNK_D2EE70End:
UNK_D3F44D:
	db "UNK_D3F44D.bin"
UNK_D3F44DEnd:
UNK_D4FFD3:
	db "UNK_D4FFD3.bin"
UNK_D4FFD3End:
UNK_D5B3F6:
	db "UNK_D5B3F6.bin"
UNK_D5B3F6End:
UNK_D6FFDB:
	db "UNK_D6FFDB.bin"
UNK_D6FFDBEnd:
UNK_D7F723:
	db "UNK_D7F723.bin"
UNK_D7F723End:
UNK_D8F71C:
	db "UNK_D8F71C.bin"
UNK_D8F71CEnd:
UNK_D9EA00:
	db "UNK_D9EA00.bin"
UNK_D9EA00End:
UNK_DAF2F7:
	db "UNK_DAF2F7.bin"
UNK_DAF2F7End:
UNK_DBFB04:
	db "UNK_DBFB04.bin"
UNK_DBFB04End:
UNK_DCFFB5:
	db "UNK_DCFFB5.bin"
UNK_DCFFB5End:
UNK_DDFFEA:
	db "UNK_DDFFEA.bin"
UNK_DDFFEAEnd:
UNK_DEFFBE:
	db "UNK_DEFFBE.bin"
UNK_DEFFBEEnd:
UNK_DFFFBC:
	db "UNK_DFFFBC.bin"
UNK_DFFFBCEnd:
UNK_E0FFCF:
	db "UNK_E0FFCF.bin"
UNK_E0FFCFEnd:
UNK_E1FFCF:
	db "UNK_E1FFCF.bin"
UNK_E1FFCFEnd:
UNK_E2FFED:
	db "UNK_E2FFED.bin"
UNK_E2FFEDEnd:
UNK_E3FFBA:
	db "UNK_E3FFBA.bin"
UNK_E3FFBAEnd:
UNK_E4FF8F:
	db "UNK_E4FF8F.bin"
UNK_E4FF8FEnd:
UNK_E5C4F4:
	db "UNK_E5C4F4.bin"
UNK_E5C4F4End:
UNK_E6FFFE:
	db "UNK_E6FFFE.bin"
UNK_E6FFFEEnd:
UNK_E7FFFD:
	db "UNK_E7FFFD.bin"
UNK_E7FFFDEnd:
UNK_E9FFFE:
	db "UNK_E9FFFE.bin"
UNK_E9FFFEEnd:
UNK_EBFFFE:
	db "UNK_EBFFFE.bin"
UNK_EBFFFEEnd:
UNK_EDFFFE:
	db "UNK_EDFFFE.bin"
UNK_EDFFFEEnd:
UNK_EFF785:
	db "UNK_EFF785.bin"
UNK_EFF785End:
UNK_F1F864:
	db "UNK_F1F864.bin"
UNK_F1F864End:
UNK_F2F8B0:
	db "UNK_F2F8B0.bin"
UNK_F2F8B0End:
UNK_F3FFFD:
	db "UNK_F3FFFD.bin"
UNK_F3FFFDEnd:
UNK_F4F399:
	db "UNK_F4F399.bin"
UNK_F4F399End:
UNK_F5FA09:
	db "UNK_F5FA09.bin"
UNK_F5FA09End:
UNK_F9FB62:
	db "UNK_F9FB62.bin"
UNK_F9FB62End:
UNK_FCFFFE:
	db "UNK_FCFFFE.bin"
UNK_FCFFFEEnd:
UNK_FDFD8F:
	db "UNK_FDFD8F.bin"
UNK_FDFD8FEnd:
UNK_FEF726:
	db "UNK_FEF726.bin"
UNK_FEF726End:
UNK_FF70DC:
	db "UNK_FF70DC.bin"
UNK_FF70DCEnd:

;--------------------------------------------------------------------

DATA_CB0000:
	db "DATA_CB0000.rnc"
DATA_CB0000End:
DATA_CEE5E0:
	db "DATA_CEE5E0.rnc"
DATA_CEE5E0End:
DATA_D4D9B9:
	db "DATA_D4D9B9.rnc"
DATA_D4D9B9End:
DATA_D60000:
	db "DATA_D60000.rnc"
DATA_D60000End:
DATA_D66673:
	db "DATA_D66673.rnc"
DATA_D66673End:
DATA_D9B6E0:
	db "DATA_D9B6E0.rnc"
DATA_D9B6E0End:
DATA_DA3B0C:
	db "DATA_DA3B0C.rnc"
DATA_DA3B0CEnd:

;--------------------------------------------------------------------

DATA_C8B25D:
	db "DATA_C8B25D.bin"
DATA_C8B25DEnd:
DATA_D2DFC6:
	db "DATA_D2DFC6.bin"
DATA_D2DFC6End:
DATA_DBE9CF:
	db "DATA_DBE9CF.bin"
DATA_DBE9CFEnd:
DATA_DFE772:
	db "DATA_DFE772.bin"
DATA_DFE772End:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRRFile1F:
	db "1F.brr"
BRRFile1FEnd:
BRRFile20:
	db "20.brr"
BRRFile20End:
BRRFile21:
	db "21.brr"
BRRFile21End:
BRRFile22:
	db "22.brr"
BRRFile22End:
BRRFile23:
	db "23.brr"
BRRFile23End:
BRRFile24:
	db "24.brr"
BRRFile24End:
BRRFile25:
	db "25.brr"
BRRFile25End:
BRRFile26:
	db "26.brr"
BRRFile26End:
BRRFile27:
	db "27.brr"
BRRFile27End:
BRRFile28:
	db "28.brr"
BRRFile28End:
BRRFile29:
	db "29.brr"
BRRFile29End:
BRRFile2A:
	db "2A.brr"
BRRFile2AEnd:
BRRFile2B:
	db "2B.brr"
BRRFile2BEnd:
BRRFile2C:
	db "2C.brr"
BRRFile2CEnd:
BRRFile2D:
	db "2D.brr"
BRRFile2DEnd:
BRRFile2E:
	db "2E.brr"
BRRFile2EEnd:
BRRFile2F:
	db "2F.brr"
BRRFile2FEnd:
BRRFile30:
	db "30.brr"
BRRFile30End:
BRRFile31:
	db "31.brr"
BRRFile31End:
BRRFile32:
	db "32.brr"
BRRFile32End:

;--------------------------------------------------------------------
