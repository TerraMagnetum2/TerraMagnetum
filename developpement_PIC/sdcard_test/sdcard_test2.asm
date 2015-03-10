
_erreur:

;sdcard_test2.c,21 :: 		void erreur(){
;sdcard_test2.c,23 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,24 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur0:
	DECFSZ      R13, 1, 0
	BRA         L_erreur0
	DECFSZ      R12, 1, 0
	BRA         L_erreur0
	NOP
;sdcard_test2.c,25 :: 		PORTE=0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,26 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur1:
	DECFSZ      R13, 1, 0
	BRA         L_erreur1
	DECFSZ      R12, 1, 0
	BRA         L_erreur1
	NOP
;sdcard_test2.c,27 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,28 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur2:
	DECFSZ      R13, 1, 0
	BRA         L_erreur2
	DECFSZ      R12, 1, 0
	BRA         L_erreur2
	NOP
;sdcard_test2.c,29 :: 		PORTE=0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,30 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur3:
	DECFSZ      R13, 1, 0
	BRA         L_erreur3
	DECFSZ      R12, 1, 0
	BRA         L_erreur3
	NOP
;sdcard_test2.c,31 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,32 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur4:
	DECFSZ      R13, 1, 0
	BRA         L_erreur4
	DECFSZ      R12, 1, 0
	BRA         L_erreur4
	NOP
;sdcard_test2.c,33 :: 		PORTE=0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,34 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur5:
	DECFSZ      R13, 1, 0
	BRA         L_erreur5
	DECFSZ      R12, 1, 0
	BRA         L_erreur5
	NOP
;sdcard_test2.c,35 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,36 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur6:
	DECFSZ      R13, 1, 0
	BRA         L_erreur6
	DECFSZ      R12, 1, 0
	BRA         L_erreur6
	NOP
;sdcard_test2.c,37 :: 		PORTE=0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,38 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur7:
	DECFSZ      R13, 1, 0
	BRA         L_erreur7
	DECFSZ      R12, 1, 0
	BRA         L_erreur7
	NOP
;sdcard_test2.c,39 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,40 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur8:
	DECFSZ      R13, 1, 0
	BRA         L_erreur8
	DECFSZ      R12, 1, 0
	BRA         L_erreur8
	NOP
;sdcard_test2.c,41 :: 		PORTE=0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,42 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur9:
	DECFSZ      R13, 1, 0
	BRA         L_erreur9
	DECFSZ      R12, 1, 0
	BRA         L_erreur9
	NOP
;sdcard_test2.c,43 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,44 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur10:
	DECFSZ      R13, 1, 0
	BRA         L_erreur10
	DECFSZ      R12, 1, 0
	BRA         L_erreur10
	NOP
;sdcard_test2.c,45 :: 		PORTE=0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,46 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_erreur11:
	DECFSZ      R13, 1, 0
	BRA         L_erreur11
	DECFSZ      R12, 1, 0
	BRA         L_erreur11
	NOP
;sdcard_test2.c,47 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,49 :: 		}
	RETURN      0
; end of _erreur

_ecriture_fichier:

;sdcard_test2.c,52 :: 		void ecriture_fichier(){
;sdcard_test2.c,55 :: 		SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE,_SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
	MOVLW       2
	MOVWF       FARG_SPI1_Init_Advanced_master+0 
	CLRF        FARG_SPI1_Init_Advanced_data_sample+0 
	CLRF        FARG_SPI1_Init_Advanced_clock_idle+0 
	MOVLW       1
	MOVWF       FARG_SPI1_Init_Advanced_transmit_edge+0 
	CALL        _SPI1_Init_Advanced+0, 0
;sdcard_test2.c,59 :: 		if( FAT32_Init()==0){ //success
	CALL        _FAT32_Init+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ecriture_fichier12
;sdcard_test2.c,60 :: 		PORTE = 0x04;
	MOVLW       4
	MOVWF       PORTE+0 
;sdcard_test2.c,61 :: 		Delay_ms(700);    //alumage led verte pour montrer que la carte a été détecté
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       233
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_ecriture_fichier13:
	DECFSZ      R13, 1, 0
	BRA         L_ecriture_fichier13
	DECFSZ      R12, 1, 0
	BRA         L_ecriture_fichier13
	DECFSZ      R11, 1, 0
	BRA         L_ecriture_fichier13
	NOP
;sdcard_test2.c,64 :: 		SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
	CLRF        FARG_SPI1_Init_Advanced_master+0 
	CLRF        FARG_SPI1_Init_Advanced_data_sample+0 
	CLRF        FARG_SPI1_Init_Advanced_clock_idle+0 
	MOVLW       1
	MOVWF       FARG_SPI1_Init_Advanced_transmit_edge+0 
	CALL        _SPI1_Init_Advanced+0, 0
;sdcard_test2.c,65 :: 		Delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       20
	MOVWF       R12, 0
	MOVLW       239
	MOVWF       R13, 0
L_ecriture_fichier14:
	DECFSZ      R13, 1, 0
	BRA         L_ecriture_fichier14
	DECFSZ      R12, 1, 0
	BRA         L_ecriture_fichier14
	DECFSZ      R11, 1, 0
	BRA         L_ecriture_fichier14
;sdcard_test2.c,66 :: 		PORTE =0x02;
	MOVLW       2
	MOVWF       PORTE+0 
;sdcard_test2.c,68 :: 		if (FAT32_ChangeDir("terramag")==-1){                                              //si dossier non trouvé renvoie -1, sinon se place dedans
	MOVLW       ?lstr1_sdcard_test2+0
	MOVWF       FARG_FAT32_ChangeDir_dname+0 
	MOVLW       hi_addr(?lstr1_sdcard_test2+0)
	MOVWF       FARG_FAT32_ChangeDir_dname+1 
	CALL        _FAT32_ChangeDir+0, 0
	MOVF        R0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_ecriture_fichier15
;sdcard_test2.c,69 :: 		makedirsuccess=FAT32_MakeDir("terramag");             // on le crée
	MOVLW       ?lstr2_sdcard_test2+0
	MOVWF       FARG_FAT32_MakeDir_dname+0 
	MOVLW       hi_addr(?lstr2_sdcard_test2+0)
	MOVWF       FARG_FAT32_MakeDir_dname+1 
	CALL        _FAT32_MakeDir+0, 0
	MOVF        R0, 0 
	MOVWF       _makedirsuccess+0 
;sdcard_test2.c,70 :: 		chgdirsuccess=FAT32_ChangeDir("terramag");
	MOVLW       ?lstr3_sdcard_test2+0
	MOVWF       FARG_FAT32_ChangeDir_dname+0 
	MOVLW       hi_addr(?lstr3_sdcard_test2+0)
	MOVWF       FARG_FAT32_ChangeDir_dname+1 
	CALL        _FAT32_ChangeDir+0, 0
	MOVF        R0, 0 
	MOVWF       _chgdirsuccess+0 
;sdcard_test2.c,71 :: 		if( makedirsuccess ==-1 || chgdirsuccess ==-1){         //si erreur
	MOVF        _makedirsuccess+0, 0 
	XORLW       255
	BTFSC       STATUS+0, 2 
	GOTO        L__ecriture_fichier36
	MOVF        _chgdirsuccess+0, 0 
	XORLW       255
	BTFSC       STATUS+0, 2 
	GOTO        L__ecriture_fichier36
	GOTO        L_ecriture_fichier18
L__ecriture_fichier36:
;sdcard_test2.c,72 :: 		erreur();
	CALL        _erreur+0, 0
;sdcard_test2.c,74 :: 		}
L_ecriture_fichier18:
;sdcard_test2.c,75 :: 		}
L_ecriture_fichier15:
;sdcard_test2.c,76 :: 		fhandle = FAT32_Open("log.TXT", 0x04);    //creation du fichier si inexistant et ouverture, append mode (pointeur a la fin)
	MOVLW       ?lstr4_sdcard_test2+0
	MOVWF       FARG_FAT32_Open_fn+0 
	MOVLW       hi_addr(?lstr4_sdcard_test2+0)
	MOVWF       FARG_FAT32_Open_fn+1 
	MOVLW       4
	MOVWF       FARG_FAT32_Open_mode+0 
	CALL        _FAT32_Open+0, 0
	MOVF        R0, 0 
	MOVWF       _fhandle+0 
;sdcard_test2.c,77 :: 		if (fHandle >= 0) {        // fichier bien ouvert
	MOVLW       128
	XORWF       R0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       0
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_ecriture_fichier19
;sdcard_test2.c,78 :: 		FAT32_Write(fhandle, Writebuffer,100);
	MOVF        _fhandle+0, 0 
	MOVWF       FARG_FAT32_Write_fHandle+0 
	MOVLW       _WriteBuffer+0
	MOVWF       FARG_FAT32_Write_wrBuf+0 
	MOVLW       hi_addr(_WriteBuffer+0)
	MOVWF       FARG_FAT32_Write_wrBuf+1 
	MOVLW       100
	MOVWF       FARG_FAT32_Write_len+0 
	MOVLW       0
	MOVWF       FARG_FAT32_Write_len+1 
	CALL        _FAT32_Write+0, 0
;sdcard_test2.c,79 :: 		}
	GOTO        L_ecriture_fichier20
L_ecriture_fichier19:
;sdcard_test2.c,80 :: 		else erreur();
	CALL        _erreur+0, 0
L_ecriture_fichier20:
;sdcard_test2.c,81 :: 		if(FAT32_Close(fhandle)==-1)erreur();
	MOVF        _fhandle+0, 0 
	MOVWF       FARG_FAT32_Close_fHandle+0 
	CALL        _FAT32_Close+0, 0
	MOVF        R0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_ecriture_fichier21
	CALL        _erreur+0, 0
L_ecriture_fichier21:
;sdcard_test2.c,83 :: 		PORTE=0x04;
	MOVLW       4
	MOVWF       PORTE+0 
;sdcard_test2.c,84 :: 		Delay_ms(150);
	MOVLW       160
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_ecriture_fichier22:
	DECFSZ      R13, 1, 0
	BRA         L_ecriture_fichier22
	DECFSZ      R12, 1, 0
	BRA         L_ecriture_fichier22
	NOP
;sdcard_test2.c,85 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,86 :: 		Delay_ms(150);
	MOVLW       160
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_ecriture_fichier23:
	DECFSZ      R13, 1, 0
	BRA         L_ecriture_fichier23
	DECFSZ      R12, 1, 0
	BRA         L_ecriture_fichier23
	NOP
;sdcard_test2.c,87 :: 		PORTE=0x04;
	MOVLW       4
	MOVWF       PORTE+0 
;sdcard_test2.c,88 :: 		Delay_ms(150);
	MOVLW       160
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_ecriture_fichier24:
	DECFSZ      R13, 1, 0
	BRA         L_ecriture_fichier24
	DECFSZ      R12, 1, 0
	BRA         L_ecriture_fichier24
	NOP
;sdcard_test2.c,89 :: 		PORTE=0x00;
	CLRF        PORTE+0 
;sdcard_test2.c,90 :: 		Delay_ms(150);
	MOVLW       160
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_ecriture_fichier25:
	DECFSZ      R13, 1, 0
	BRA         L_ecriture_fichier25
	DECFSZ      R12, 1, 0
	BRA         L_ecriture_fichier25
	NOP
;sdcard_test2.c,91 :: 		PORTE=0x04;
	MOVLW       4
	MOVWF       PORTE+0 
;sdcard_test2.c,93 :: 		}  else
	GOTO        L_ecriture_fichier26
L_ecriture_fichier12:
;sdcard_test2.c,95 :: 		erreur();
	CALL        _erreur+0, 0
;sdcard_test2.c,96 :: 		}
L_ecriture_fichier26:
;sdcard_test2.c,100 :: 		}
	RETURN      0
; end of _ecriture_fichier

_init:

;sdcard_test2.c,102 :: 		void init(){
;sdcard_test2.c,103 :: 		PORTD =0x01;
	MOVLW       1
	MOVWF       PORTD+0 
;sdcard_test2.c,104 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_init27:
	DECFSZ      R13, 1, 0
	BRA         L_init27
	DECFSZ      R12, 1, 0
	BRA         L_init27
	DECFSZ      R11, 1, 0
	BRA         L_init27
	NOP
;sdcard_test2.c,105 :: 		PORTD =0x03;
	MOVLW       3
	MOVWF       PORTD+0 
;sdcard_test2.c,106 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_init28:
	DECFSZ      R13, 1, 0
	BRA         L_init28
	DECFSZ      R12, 1, 0
	BRA         L_init28
	DECFSZ      R11, 1, 0
	BRA         L_init28
	NOP
;sdcard_test2.c,107 :: 		PORTD =0b00000111;
	MOVLW       7
	MOVWF       PORTD+0 
;sdcard_test2.c,108 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_init29:
	DECFSZ      R13, 1, 0
	BRA         L_init29
	DECFSZ      R12, 1, 0
	BRA         L_init29
	DECFSZ      R11, 1, 0
	BRA         L_init29
	NOP
;sdcard_test2.c,109 :: 		PORTD =0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;sdcard_test2.c,110 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_init30:
	DECFSZ      R13, 1, 0
	BRA         L_init30
	DECFSZ      R12, 1, 0
	BRA         L_init30
	DECFSZ      R11, 1, 0
	BRA         L_init30
	NOP
;sdcard_test2.c,111 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;sdcard_test2.c,112 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_init31:
	DECFSZ      R13, 1, 0
	BRA         L_init31
	DECFSZ      R12, 1, 0
	BRA         L_init31
	NOP
;sdcard_test2.c,113 :: 		PORTD=0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;sdcard_test2.c,114 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_init32:
	DECFSZ      R13, 1, 0
	BRA         L_init32
	DECFSZ      R12, 1, 0
	BRA         L_init32
	NOP
;sdcard_test2.c,115 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;sdcard_test2.c,116 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_init33:
	DECFSZ      R13, 1, 0
	BRA         L_init33
	DECFSZ      R12, 1, 0
	BRA         L_init33
	NOP
;sdcard_test2.c,117 :: 		PORTD=0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;sdcard_test2.c,118 :: 		Delay_ms(1500);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       60
	MOVWF       R12, 0
	MOVLW       209
	MOVWF       R13, 0
L_init34:
	DECFSZ      R13, 1, 0
	BRA         L_init34
	DECFSZ      R12, 1, 0
	BRA         L_init34
	DECFSZ      R11, 1, 0
	BRA         L_init34
	NOP
	NOP
;sdcard_test2.c,119 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;sdcard_test2.c,120 :: 		}
	RETURN      0
; end of _init

_main:

;sdcard_test2.c,122 :: 		void main(){
;sdcard_test2.c,124 :: 		TRISD= 0x00;
	CLRF        TRISD+0 
;sdcard_test2.c,125 :: 		TRISE =0;
	CLRF        TRISE+0 
;sdcard_test2.c,126 :: 		PORTE=0;
	CLRF        PORTE+0 
;sdcard_test2.c,127 :: 		init();
	CALL        _init+0, 0
;sdcard_test2.c,128 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_main35:
	DECFSZ      R13, 1, 0
	BRA         L_main35
	DECFSZ      R12, 1, 0
	BRA         L_main35
	NOP
;sdcard_test2.c,129 :: 		PORTD =0x05;
	MOVLW       5
	MOVWF       PORTD+0 
;sdcard_test2.c,132 :: 		sprintf(str,"%d",12345);
	MOVLW       _str+0
	MOVWF       FARG_sprintf_wh+0 
	MOVLW       hi_addr(_str+0)
	MOVWF       FARG_sprintf_wh+1 
	MOVLW       ?lstr_5_sdcard_test2+0
	MOVWF       FARG_sprintf_f+0 
	MOVLW       hi_addr(?lstr_5_sdcard_test2+0)
	MOVWF       FARG_sprintf_f+1 
	MOVLW       higher_addr(?lstr_5_sdcard_test2+0)
	MOVWF       FARG_sprintf_f+2 
	MOVLW       57
	MOVWF       FARG_sprintf_wh+5 
	MOVLW       48
	MOVWF       FARG_sprintf_wh+6 
	CALL        _sprintf+0, 0
;sdcard_test2.c,133 :: 		strcat(WriteBuffer,str);
	MOVLW       _WriteBuffer+0
	MOVWF       FARG_strcat_to+0 
	MOVLW       hi_addr(_WriteBuffer+0)
	MOVWF       FARG_strcat_to+1 
	MOVLW       _str+0
	MOVWF       FARG_strcat_from+0 
	MOVLW       hi_addr(_str+0)
	MOVWF       FARG_strcat_from+1 
	CALL        _strcat+0, 0
;sdcard_test2.c,136 :: 		ecriture_fichier();
	CALL        _ecriture_fichier+0, 0
;sdcard_test2.c,138 :: 		PORTD =0x0A;
	MOVLW       10
	MOVWF       PORTD+0 
;sdcard_test2.c,140 :: 		}
	GOTO        $+0
; end of _main
