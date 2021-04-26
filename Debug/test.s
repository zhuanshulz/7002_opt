	.file	"test.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_biquad_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_biquad_cn
	.type	DSPF_sp_biquad_cn, @function
DSPF_sp_biquad_cn:
.LFB0:
	.file 1 "../test.c"
	.loc 1 49 0
.LVL0:
		SMOVIL		-24, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.loc 1 52 0
		SMOVIL		0, R42
	|	SMVAAGL.M2		AR14, R7:R6
	|	SMVAGA36.M1		R11:R10, OR0
		SLT		R42, R20, R0
	|	SMVAGA36.M1		R17:R16, AR12
	|	SMVAGA36.M2		R15:R14, AR11
	.loc 1 49 0
		SMVAAGH.M1		AR14, R7:R6
	|	SADDA.M2		-4,OR0,AR0
	|	SMOVIL		-2147483648, R45
	.loc 1 52 0
	[!R0]	SBR		.L1
	|	SMOVIH		-2147483648, R45
	.loc 1 49 0
		SSTDW		R7:R6, *+AR15[2]
.LCFI1:
		SMVAAGL.M2		AR8, R7:R6
	|	SADD.M1		-1,R20,R20
.LVL1:
	.loc 1 47 0
		SSHFLL		1, R20, R44
	|	SADD.M1		4,R18,R23
	|	SMVAAGL.M2		AR0, R11:R10
.LVL2:
	.loc 1 49 0
		SMVAAGH.M1		AR8, R7:R6
	|	SSHFLL		2, R20, R46
	|	SMVAGA36.M2		R13:R12, AR8
	.loc 1 47 0
		SLTU		R44, R20, R1
	|	SMVAAGH.M1		AR0, R11:R10
	.loc 1 49 0
		SSTDW		R7:R6, *+AR15[1]
	;; condjump to .L1 occurs
.LCFI2:
		SLDW		*AR12, R29
	|	SLTU		R23, R18, R50
	|	SADD.M2		R46,R23,R49
	.loc 1 47 0
		SLTU		R46, R44, R2
	|	SADD.M2		R19,R50,R3
		SSHFLL		1, R1, R8
		SADD.M2		R8,R2,R9
	|	SLTU		R49, R23, R12
.LVL3:
		SADD.M2		R9,R3,R13
		SADD.M2		R13,R12,R14
.LVL4:
.L3:
		SADD.M1		4,R10,R15
	|	SLDW		*AR8, R21
	|	SMVAGA36.M2		R19:R18, AR14
	|	SLTU		R23, R18, R17
		SLTU		R15, R10, R48
	|	SMOV.M1		R15, R10
		SADD.M2		R11,R48,R11
	|	SADD.M1		R19,R17,R19
	|	SEQ		R23, R49, R0
		SMVAGA36.M2		R11:R10, AR10
	|[R0]	SEQ		R19, R14, R0
	|	SMOV.M1		R23, R18
		SADD.M1		4,R23,R23
		SNOP		1
	.loc 1 54 0
		SLDW		*AR10, R22
		SNOP		5
		SFMULAS32.M2	R21, R22, R29, R29
		SNOP		5
		SSTW		R29, *AR14
		SNOP		2
	.loc 1 55 0
		SLDW		*+AR11[1], R24
		SLDW		*+AR8[1], R25
		SLDW		*AR10, R26
		SLDW		*+AR12[1], R27
		SNOP		2
		SFMULS32.M2		R29, R24, R43
		SNOP		3
	.loc 1 47 0
		SXOR		R45, R43, R28
	.loc 1 55 0
		SFMULAS32.M2	R25, R26, R28, R28
		SNOP		5
		SFADDS32.M2		R28, R27, R29
		SNOP		2
		SSTW		R29, *AR12
		SNOP		2
	.loc 1 56 0
		SLDW		*+AR11[2], R51
		SLDW		*AR14, R52
		SLDW		*+AR8[2], R54
		SLDW		*AR10, R55
		SNOP		3
		SFMULS32.M2		R51, R52, R53
		SNOP		3
	.loc 1 47 0
		SXOR		R45, R53, R56
	.loc 1 56 0
		SFMULAS32.M2	R54, R55, R56, R56
	|[!R0]	SBR		.L3
	.loc 1 52 0
		SNOP		5
	.loc 1 56 0
		SSTW		R56, *+AR12[1]
	;; condjump to .L3 occurs
.LVL5:
.L1:
	.loc 1 58 0
		SLDDW		*+AR15[1], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
.LVL6:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE0:
	.size	DSPF_sp_biquad_cn, .-DSPF_sp_biquad_cn
	.section	.text.DSPF_sp_biquad_opt,"ax",@progbits
	.align	2
	.global	DSPF_sp_biquad_opt
	.type	DSPF_sp_biquad_opt, @function
DSPF_sp_biquad_opt:
.LFB1:
	.loc 1 62 0
.LVL7:
		SMOVIL		-24, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
	.loc 1 65 0
		SMOVIL		0, R42
	|	SMVAAGL.M2		AR14, R7:R6
	|	SMVAGA36.M1		R11:R10, OR0
		SLT		R42, R20, R0
	|	SMVAGA36.M1		R17:R16, AR12
	|	SMVAGA36.M2		R15:R14, AR11
	.loc 1 62 0
		SMVAAGH.M1		AR14, R7:R6
	|	SADDA.M2		-4,OR0,AR0
	|	SMOVIL		-2147483648, R45
	.loc 1 65 0
	[!R0]	SBR		.L9
	|	SMOVIH		-2147483648, R45
	.loc 1 62 0
		SSTDW		R7:R6, *+AR15[2]
.LCFI4:
		SMVAAGL.M2		AR8, R7:R6
	|	SADD.M1		-1,R20,R20
.LVL8:
	.loc 1 60 0
		SSHFLL		1, R20, R44
	|	SADD.M1		4,R18,R23
	|	SMVAAGL.M2		AR0, R11:R10
.LVL9:
	.loc 1 62 0
		SMVAAGH.M1		AR8, R7:R6
	|	SSHFLL		2, R20, R46
	|	SMVAGA36.M2		R13:R12, AR8
	.loc 1 60 0
		SLTU		R44, R20, R1
	|	SMVAAGH.M1		AR0, R11:R10
	.loc 1 62 0
		SSTDW		R7:R6, *+AR15[1]
	;; condjump to .L9 occurs
.LCFI5:
		SLDW		*AR12, R29
	|	SLTU		R23, R18, R50
	|	SADD.M2		R46,R23,R49
	.loc 1 60 0
		SLTU		R46, R44, R2
	|	SADD.M2		R19,R50,R3
		SSHFLL		1, R1, R8
		SADD.M2		R8,R2,R9
	|	SLTU		R49, R23, R12
.LVL10:
		SADD.M2		R9,R3,R13
		SADD.M2		R13,R12,R14
.LVL11:
.L11:
		SADD.M1		4,R10,R15
	|	SLDW		*AR8, R21
	|	SMVAGA36.M2		R19:R18, AR14
	|	SLTU		R23, R18, R17
		SLTU		R15, R10, R48
	|	SMOV.M1		R15, R10
		SADD.M2		R11,R48,R11
	|	SADD.M1		R19,R17,R19
	|	SEQ		R23, R49, R0
		SMVAGA36.M2		R11:R10, AR10
	|[R0]	SEQ		R19, R14, R0
	|	SMOV.M1		R23, R18
		SADD.M1		4,R23,R23
		SNOP		1
	.loc 1 67 0
		SLDW		*AR10, R22
		SNOP		5
		SFMULAS32.M2	R21, R22, R29, R29
		SNOP		5
		SSTW		R29, *AR14
		SNOP		2
	.loc 1 68 0
		SLDW		*+AR11[1], R24
		SLDW		*+AR8[1], R25
		SLDW		*AR10, R26
		SLDW		*+AR12[1], R27
		SNOP		2
		SFMULS32.M2		R29, R24, R43
		SNOP		3
	.loc 1 60 0
		SXOR		R45, R43, R28
	.loc 1 68 0
		SFMULAS32.M2	R25, R26, R28, R28
		SNOP		5
		SFADDS32.M2		R28, R27, R29
		SNOP		2
		SSTW		R29, *AR12
		SNOP		2
	.loc 1 69 0
		SLDW		*+AR11[2], R51
		SLDW		*AR14, R52
		SLDW		*+AR8[2], R54
		SLDW		*AR10, R55
		SNOP		3
		SFMULS32.M2		R51, R52, R53
		SNOP		3
	.loc 1 60 0
		SXOR		R45, R53, R56
	.loc 1 69 0
		SFMULAS32.M2	R54, R55, R56, R56
	|[!R0]	SBR		.L11
	.loc 1 65 0
		SNOP		5
	.loc 1 69 0
		SSTW		R56, *+AR12[1]
	;; condjump to .L11 occurs
.LVL12:
.L9:
	.loc 1 71 0
		SLDDW		*+AR15[1], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
.LVL13:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE1:
	.size	DSPF_sp_biquad_opt, .-DSPF_sp_biquad_opt
	.section	.const,"a",@progbits
.LC0:
	.string	"test success"
.LC1:
	.string	"test failed!"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB2:
	.loc 1 126 0
.LVL14:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI6:
		SNOP		1
		SSTDW		R63:R62, *+AR15[5]
		SSTW		R32, *+AR15[7]
.LCFI7:
		SMOVIL.L		DSPF_sp_biquad_cn, R32
		SMOVIH.L		DSPF_sp_biquad_cn, R32
		SSTW		R30, *+AR15[5]
.LCFI8:
		SMOVIL.L		DSPF_sp_biquad_opt, R30
	|	SSTW		R34, *+AR15[9]
		SMOVIH.L		DSPF_sp_biquad_opt, R30
	.loc 1 128 0
		SMOVIL		8, R34
	.loc 1 126 0
		SSTW		R33, *+AR15[8]
		SSTW		R31, *+AR15[6]
.LCFI9:
		SMOVIH4.L		DSPF_sp_biquad_cn, R33
		SMOVIH4.L		DSPF_sp_biquad_opt, R31
.LVL15:
.L18:
	.loc 1 130 0
		SMOVIL.L		DSPF_sp_biquad_cn, R42
	|	SMOV.M2		R34, R20
		SMOVIH.L		DSPF_sp_biquad_cn, R42
		SMOVIH4.L		DSPF_sp_biquad_cn, R43
		SMOVIL.L		ptr_x, R10
		SMOVIL.L		ptr_hb, R12
		SMOVIL.L		ptr_ha, R14
		SMOVIL.L		ptr_delay_cn, R16
		SMOVIL.L		ptr_y_cn, R18
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SMOVIH.L		ptr_x, R10
		SMOVIH4.L		ptr_x, R11
		SMOVIH.L		ptr_hb, R12
		SMOVIH4.L		ptr_hb, R13
		SMOVIH.L		ptr_ha, R14
		SMOVIH4.L		ptr_ha, R15
		SBR		R33:R32
	|	SMOVIH.L		ptr_delay_cn, R16
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIH4.L		ptr_delay_cn, R17
		SMOVIH.L		ptr_y_cn, R18
	;; indirect call occurs
		SMOVIH4.L		ptr_y_cn, R19
.LVL16:
.L32:
	.loc 1 131 0
		SMOVIH4.L		DSPF_sp_biquad_opt, R43
	|	SMOV.M2		R34, R20
	|	SADD.M1		8,R34,R34
		SMOVIL.L		DSPF_sp_biquad_opt, R42
		SMOVIH.L		DSPF_sp_biquad_opt, R42
		SMOVIL.L		ptr_x, R10
		SMOVIL.L		ptr_hb, R12
		SMOVIL.L		ptr_ha, R14
		SMOVIL.L		ptr_delay_opt, R16
		SMOVIL.L		ptr_y_opt, R18
		SMOVIH4.L		ptr_x, R11
		SMOVIH4.L		ptr_hb, R13
		SMOVIH4.L		ptr_ha, R15
		SMOVIH4.L		ptr_delay_opt, R17
		SMOVIH4.L		ptr_y_opt, R19
		SMOVIH.L		ptr_x, R10
		SMOVIH.L		ptr_hb, R12
		SMOVIH.L		ptr_ha, R14
		SMOVIH.L		ptr_delay_opt, R16
		SMOVIH.L		ptr_y_opt, R18
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R31:R30
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
	;; indirect call occurs
		SNOP		3
.LVL17:
.L33:
	.loc 1 128 0
		SMOVIL		136, R0
		SEQ		R0, R34, R1
	[!R1]	SBR		.L18
		SNOP		6
	;; condjump to .L18 occurs
	.loc 1 125 0
		SMOVIL.L		ptr_y_cn, R46
		SMOVIH.L		ptr_y_cn, R46
		SMOVIL		508, R48
		SADD.M2		R48,R46,R3
	|	SMOVIH4.L		ptr_y_cn, R47
		SMOVIL.L		ptr_y_cn-4, R42
		SMOVIL.L		ptr_y_opt-4, R44
		SLTU		R3, R46, R46
		SMOVIH.L		ptr_y_cn-4, R42
	|	SADD.M2		R47,R46,R53
		SMOVIH4.L		ptr_y_cn-4, R43
		SMOVIH.L		ptr_y_opt-4, R44
		SMOVIH4.L		ptr_y_opt-4, R45
		SMOVIL		1, R2
.L20:
		SADD.M2		4,R42,R47
	|	SADD.M1		4,R44,R8
		SLTU		R47, R42, R52
	|	SMOV.M2		R47, R42
		SLTU		R8, R44, R50
	|	SADD.M2		R43,R52,R43
	|	SMOV.M1		R8, R44
		SADD.M1		R45,R50,R45
	|	SMVAGA36.M2		R43:R42, AR12
	|	SEQ		R47, R3, R0
		SMVAGA36.M1		R45:R44, AR10
	|[R0]	SEQ		R43, R53, R0
	.loc 1 135 0
		SLDW		*AR12, R9
		SLDW		*AR10, R10
		SNOP		5
		SFCMPES32.M2		R9, R10, R1
	[R1]	SBR		.L19
		SNOP		6
	;; condjump to .L19 occurs
	.loc 1 138 0
		SMOVIL		0, R2
.L19:
.LVL18:
	.loc 1 134 0
	[!R0]	SBR		.L20
		SNOP		6
	;; condjump to .L20 occurs
	.loc 1 140 0
	[R2]	SBR		.L30
	|	SMOVIL.L		.LC1, R42
	.loc 1 143 0
		SMOVIH.L		.LC1, R42
		SNOP		5
	.loc 1 140 0
	;; condjump to .L30 occurs
	.loc 1 143 0
		SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL.L		printf, R42
		SMOVIH.L		printf, R42
		SMOVIH4.L		printf, R43
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL19:
	.loc 1 144 0
.L34:
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDW		*+AR15[5], R30
	|	SMOVIL		0, R7
		SLDW		*+AR15[6], R31
		SLDW		*+AR15[7], R32
		SLDW		*+AR15[8], R33
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		2
		SBR		R62
		SLDW		*+AR15[9], R34
	|	SADDA.M2		R7:R6,AR15,AR15
.LVL20:
		SNOP		5
	;; return occurs
.LVL21:
.L30:
	.loc 1 141 0
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SMOVIH4.L		.LC0, R43
	.loc 1 143 0
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL.L		printf, R42
		SMOVIH.L		printf, R42
		SMOVIH4.L		printf, R43
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL22:
	.loc 1 144 0
.L35:
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDW		*+AR15[5], R30
	|	SMOVIL		0, R7
		SLDW		*+AR15[6], R31
		SLDW		*+AR15[7], R32
		SLDW		*+AR15[8], R33
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		2
		SBR		R62
		SLDW		*+AR15[9], R34
	|	SADDA.M2		R7:R6,AR15,AR15
.LVL23:
		SNOP		5
	;; return occurs
.LFE2:
	.size	main, .-main
	.global	ptr_x
	.section	.fardata,"aw",@progbits
	.align	3
	.type	ptr_x, @object
	.size	ptr_x, 512
ptr_x:
	.long	-1063670059
	.long	1086327607
	.long	-1079012193
	.long	1090742336
	.long	-1060397520
	.long	-1063835000
	.long	-1058874652
	.long	-1058477433
	.long	1089231059
	.long	1070336813
	.long	1065306304
	.long	-1058850149
	.long	1088549019
	.long	1075591940
	.long	-1069627413
	.long	1049078978
	.long	-1074045156
	.long	-1056460593
	.long	-1062833117
	.long	-1057942676
	.long	-1060483956
	.long	-1062834641
	.long	-1076638754
	.long	-1055908785
	.long	1090576000
	.long	1091458296
	.long	-1103422846
	.long	-1101259968
	.long	-1068517349
	.long	1090520170
	.long	-1071162054
	.long	-1057434485
	.long	1085496447
	.long	-1072881052
	.long	-1062907572
	.long	-1074398174
	.long	-1056890253
	.long	-1058305665
	.long	1091400904
	.long	1091696268
	.long	1069582517
	.long	-1056121124
	.long	-1062617687
	.long	-1069812478
	.long	1087213681
	.long	-1055190490
	.long	-1055769730
	.long	-1059858260
	.long	1077861931
	.long	1083460966
	.long	1077747049
	.long	-1082440384
	.long	1064349568
	.long	-1065198899
	.long	1084004984
	.long	-1060695651
	.long	1081021076
	.long	-1060467320
	.long	-1071098121
	.long	1075890864
	.long	1085495413
	.long	-1056568787
	.long	1091135308
	.long	1085306053
	.long	-1098432289
	.long	-1079757899
	.long	-1081590835
	.long	-1065885851
	.long	1043218941
	.long	1046256127
	.long	1087064095
	.long	1086107947
	.long	1077459496
	.long	-1071947450
	.long	1086810455
	.long	1059590432
	.long	-1069608514
	.long	1091336962
	.long	1089510008
	.long	1065379447
	.long	1075627172
	.long	1071568285
	.long	-1061483648
	.long	-1065457767
	.long	-1089151137
	.long	-1062437678
	.long	1088183180
	.long	-1060939311
	.long	-1062246149
	.long	-1059930319
	.long	-1062319237
	.long	-1079731072
	.long	-1066284544
	.long	1091009348
	.long	-1078809785
	.long	-1060522061
	.long	1090621400
	.long	1092191484
	.long	-1080263128
	.long	-1057430981
	.long	-1063594322
	.long	-1075204772
	.long	1072885532
	.long	-1063768262
	.long	1073980321
	.long	1082600857
	.long	-1062071037
	.long	-1057695157
	.long	-1065213791
	.long	-1066928454
	.long	-1077796332
	.long	1042345982
	.long	-1056660852
	.long	-1063779605
	.long	1086367291
	.long	-1055480250
	.long	1091124156
	.long	1083402602
	.long	-1100396096
	.long	1070138925
	.long	-1062722697
	.long	-1085099617
	.long	1091842102
	.long	1064281409
	.long	1054371391
	.long	-1062484075
	.long	-1100783683
	.long	1075760131
	.global	ptr_hb
	.align	3
	.type	ptr_hb, @object
	.size	ptr_hb, 12
ptr_hb:
	.long	1032470410
	.long	1049247726
	.long	1053777876
	.global	ptr_ha
	.align	3
	.type	ptr_ha, @object
	.size	ptr_ha, 12
ptr_ha:
	.long	1065353216
	.long	-1094188519
	.long	1057540067
	.global	ptr_delay_cn
	.section	.far,"aw",@nobits
	.align	3
	.type	ptr_delay_cn, @object
	.size	ptr_delay_cn, 8
ptr_delay_cn:
	.zero	8
	.global	ptr_delay_opt
	.align	3
	.type	ptr_delay_opt, @object
	.size	ptr_delay_opt, 8
ptr_delay_opt:
	.zero	8
	.common	ptr_y_cn,512,8
	.common	ptr_y_opt,512,8
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x4e
	.byte	0xc
	.byte	0xf
	.byte	0
	.align	3
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x88
	.byte	0x4
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x88
	.byte	0x4
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0xb0
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xae
	.byte	0x7
	.byte	0xb2
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xb1
	.byte	0x4
	.byte	0xaf
	.byte	0x6
	.align	3
.LEFDE4:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x427
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../test.c"
	.string	"/cygdrive/c/Users/yangl/Documents/\345\276\256\345\244\204\347\220\206\345\231\250\350\256\276\350\256\241\344\270\216\345\256\236\347\216\260-\350\257\276\347\250\213\345\256\236\351\252\214\347\233\270\345\205\263\346\235\220\346\226\231/simulator_7002/\345\256\236\351\252\214\347\216\257\345\242\203/FT-M7000IDE/homework/test/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"sizetype"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_biquad_cn"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x219
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x2f
	.4byte	0x219
	.4byte	.LLST1
	.byte	0x4
	.string	"b"
	.byte	0x1
	.byte	0x2f
	.4byte	0x219
	.4byte	.LLST2
	.byte	0x4
	.string	"a"
	.byte	0x1
	.byte	0x2f
	.4byte	0x219
	.4byte	.LLST3
	.byte	0x4
	.string	"delay"
	.byte	0x1
	.byte	0x30
	.4byte	0x219
	.4byte	.LLST4
	.byte	0x4
	.string	"y"
	.byte	0x1
	.byte	0x30
	.4byte	0x219
	.4byte	.LLST5
	.byte	0x4
	.string	"nx"
	.byte	0x1
	.byte	0x30
	.4byte	0x228
	.4byte	.LLST6
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x32
	.4byte	0x150
	.4byte	.LLST7
	.byte	0
	.byte	0x6
	.byte	0x8
	.4byte	0x21f
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x7
	.4byte	0x150
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_biquad_opt"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x2bf
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x3c
	.4byte	0x219
	.4byte	.LLST9
	.byte	0x4
	.string	"b"
	.byte	0x1
	.byte	0x3c
	.4byte	0x219
	.4byte	.LLST10
	.byte	0x4
	.string	"a"
	.byte	0x1
	.byte	0x3c
	.4byte	0x219
	.4byte	.LLST11
	.byte	0x4
	.string	"delay"
	.byte	0x1
	.byte	0x3d
	.4byte	0x219
	.4byte	.LLST12
	.byte	0x4
	.string	"y"
	.byte	0x1
	.byte	0x3d
	.4byte	0x219
	.4byte	.LLST13
	.byte	0x4
	.string	"nx"
	.byte	0x1
	.byte	0x3d
	.4byte	0x228
	.4byte	.LLST14
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x3f
	.4byte	0x150
	.4byte	.LLST15
	.byte	0
	.byte	0x8
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x7d
	.llong	.LFB2
	.llong	.LFE2
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x33a
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.4byte	0x150
	.byte	0x9
	.string	"j"
	.byte	0x1
	.byte	0x7f
	.4byte	0x150
	.byte	0x5
	.string	"n"
	.byte	0x1
	.byte	0x7f
	.4byte	0x150
	.4byte	.LLST17
	.byte	0x5
	.string	"equal"
	.byte	0x1
	.byte	0x85
	.4byte	0x150
	.4byte	.LLST18
	.byte	0xa
	.llong	.LVL16
	.4byte	0x327
	.byte	0xb
	.byte	0x2
	.byte	0x90
	.byte	0x24
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL17
	.byte	0xb
	.byte	0x2
	.byte	0x90
	.byte	0x24
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x21f
	.4byte	0x34a
	.byte	0xe
	.4byte	0x174
	.byte	0x7f
	.byte	0
	.byte	0xf
	.string	"ptr_y_opt"
	.byte	0x1
	.byte	0x4d
	.4byte	0x33a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_y_opt
	.byte	0xf
	.string	"ptr_y_cn"
	.byte	0x1
	.byte	0x4e
	.4byte	0x33a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_y_cn
	.byte	0xd
	.4byte	0x21f
	.4byte	0x391
	.byte	0xe
	.4byte	0x174
	.byte	0x1
	.byte	0
	.byte	0xf
	.string	"ptr_delay_opt"
	.byte	0x1
	.byte	0x53
	.4byte	0x381
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_delay_opt
	.byte	0xf
	.string	"ptr_delay_cn"
	.byte	0x1
	.byte	0x54
	.4byte	0x381
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_delay_cn
	.byte	0xd
	.4byte	0x21f
	.4byte	0x3e0
	.byte	0xe
	.4byte	0x174
	.byte	0x2
	.byte	0
	.byte	0xf
	.string	"ptr_ha"
	.byte	0x1
	.byte	0x56
	.4byte	0x3d0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_ha
	.byte	0xf
	.string	"ptr_hb"
	.byte	0x1
	.byte	0x57
	.4byte	0x3d0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_hb
	.byte	0xf
	.string	"ptr_x"
	.byte	0x1
	.byte	0x59
	.4byte	0x33a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_x
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB0
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI0
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.byte	0x18
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LVL6
	.2byte	0x1
	.byte	0x58
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x1
	.byte	0x5b
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x8
	.byte	0x90
	.byte	0x20
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x21
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x8
	.byte	0x90
	.byte	0x22
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x23
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.byte	0x24
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.byte	0x24
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LFB1
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI3
	.llong	.LFE1
	.2byte	0x2
	.byte	0x7f
	.byte	0x18
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL9
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL7
	.llong	.LVL10
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x1
	.byte	0x58
	.llong	.LVL13
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL7
	.llong	.LVL11
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL11
	.llong	.LFE1
	.2byte	0x1
	.byte	0x5b
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL7
	.llong	.LVL12
	.2byte	0x8
	.byte	0x90
	.byte	0x20
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x21
	.byte	0x93
	.byte	0x4
	.llong	.LVL12
	.llong	.LFE1
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL7
	.llong	.LVL11
	.2byte	0x8
	.byte	0x90
	.byte	0x22
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x23
	.byte	0x93
	.byte	0x4
	.llong	.LVL11
	.llong	.LFE1
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x24
	.llong	.LVL8
	.llong	.LFE1
	.2byte	0x4
	.byte	0x92
	.byte	0x24
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL7
	.llong	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LFB2
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI6
	.llong	.LFE2
	.2byte	0x2
	.byte	0x7f
	.byte	0x30
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL21
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL18
	.llong	.LVL19-1
	.2byte	0x1
	.byte	0x62
	.llong	.LVL21
	.llong	.LVL22-1
	.2byte	0x1
	.byte	0x62
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	.LFB2
	.llong	.LFE2
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
