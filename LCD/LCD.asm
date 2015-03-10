
_E:

;LCD.c,13 :: 		void E(int a) {
;LCD.c,14 :: 		LATA0_bit = a;
	BTFSC       FARG_E_a+0, 0 
	GOTO        L__E18
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
	GOTO        L__E19
L__E18:
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
L__E19:
;LCD.c,15 :: 		}
L_end_E:
	RETURN      0
; end of _E

_init_lcd:

;LCD.c,17 :: 		void init_lcd(){
;LCD.c,18 :: 		TRISA0_bit = 0;  //Enable en sortie
	BCF         TRISA0_bit+0, BitPos(TRISA0_bit+0) 
;LCD.c,19 :: 		TRISB = 0x00;    //DB0-7 en sortie (data)
	CLRF        TRISB+0 
;LCD.c,20 :: 		TRISC4_bit = 0;  //RS en sortie
	BCF         TRISC4_bit+0, BitPos(TRISC4_bit+0) 
;LCD.c,22 :: 		E(1);   //E = 1
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,23 :: 		delay_ms(30);
	MOVLW       32
	MOVWF       R12, 0
	MOVLW       233
	MOVWF       R13, 0
L_init_lcd0:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd0
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd0
	NOP
	NOP
;LCD.c,24 :: 		LATC4_bit = 0;   //RS = 0
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD.c,25 :: 		PORTB = 0x3C;    //function set
	MOVLW       60
	MOVWF       PORTB+0 
;LCD.c,26 :: 		E(0);   //E = 0 (envoi le function set)
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,27 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd1:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd1
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd1
	NOP
	NOP
;LCD.c,28 :: 		E(1);   //E = 1
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,29 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd2:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd2
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd2
	NOP
	NOP
;LCD.c,30 :: 		PORTB = 0x0F;    //Display on
	MOVLW       15
	MOVWF       PORTB+0 
;LCD.c,31 :: 		E(0);   //E = 0 (envoi le display)
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,32 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd3:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd3
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd3
	NOP
	NOP
;LCD.c,33 :: 		E(1);   //E = 1
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,34 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd4:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd4
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd4
	NOP
	NOP
;LCD.c,35 :: 		PORTB = 0x01;    //Clear
	MOVLW       1
	MOVWF       PORTB+0 
;LCD.c,36 :: 		E(0);   //E = 0 (envoi le clear)
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,37 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd5:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd5
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd5
	NOP
	NOP
;LCD.c,38 :: 		E(1);   //E = 1
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,39 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd6:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd6
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd6
	NOP
	NOP
;LCD.c,40 :: 		PORTB = 0x06;    //Entry mode set(increment mode/entire shift off)
	MOVLW       6
	MOVWF       PORTB+0 
;LCD.c,41 :: 		E(0);   //E = 0 (envoi le entry mode set)
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,42 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd7:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd7
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd7
	NOP
	NOP
;LCD.c,43 :: 		E(1);   //E = 1
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,44 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd8:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd8
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd8
	NOP
	NOP
;LCD.c,45 :: 		}
L_end_init_lcd:
	RETURN      0
; end of _init_lcd

_lcd_write:

;LCD.c,47 :: 		void lcd_write(char a) {
;LCD.c,48 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,49 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write9:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write9
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write9
	NOP
	NOP
;LCD.c,50 :: 		LATC4_bit = 1;
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD.c,51 :: 		PORTB = a;
	MOVF        FARG_lcd_write_a+0, 0 
	MOVWF       PORTB+0 
;LCD.c,52 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,53 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write10:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write10
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write10
	NOP
	NOP
;LCD.c,54 :: 		}
L_end_lcd_write:
	RETURN      0
; end of _lcd_write

_lcd_clear:

;LCD.c,56 :: 		void lcd_clear() {
;LCD.c,57 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,58 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear11:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_clear11
	DECFSZ      R12, 1, 1
	BRA         L_lcd_clear11
	NOP
	NOP
;LCD.c,59 :: 		LATC4_bit = 0;
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD.c,60 :: 		PORTB = 0x01;    //Clear
	MOVLW       1
	MOVWF       PORTB+0 
;LCD.c,61 :: 		E(0);   //E = 0 (envoi le clear)
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,62 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear12:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_clear12
	DECFSZ      R12, 1, 1
	BRA         L_lcd_clear12
	NOP
	NOP
;LCD.c,63 :: 		}
L_end_lcd_clear:
	RETURN      0
; end of _lcd_clear

_lcd_msg:

;LCD.c,65 :: 		void lcd_msg(char *s) {
;LCD.c,66 :: 		int i = 0;
	CLRF        lcd_msg_i_L0+0 
	CLRF        lcd_msg_i_L0+1 
;LCD.c,67 :: 		while(s[i] != '\0') {
L_lcd_msg13:
	MOVF        lcd_msg_i_L0+0, 0 
	ADDWF       FARG_lcd_msg_s+0, 0 
	MOVWF       FSR0 
	MOVF        lcd_msg_i_L0+1, 0 
	ADDWFC      FARG_lcd_msg_s+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_msg14
;LCD.c,68 :: 		lcd_write(s[i]);
	MOVF        lcd_msg_i_L0+0, 0 
	ADDWF       FARG_lcd_msg_s+0, 0 
	MOVWF       FSR0 
	MOVF        lcd_msg_i_L0+1, 0 
	ADDWFC      FARG_lcd_msg_s+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_lcd_write_a+0 
	CALL        _lcd_write+0, 0
;LCD.c,69 :: 		i++;
	INFSNZ      lcd_msg_i_L0+0, 1 
	INCF        lcd_msg_i_L0+1, 1 
;LCD.c,70 :: 		}
	GOTO        L_lcd_msg13
L_lcd_msg14:
;LCD.c,71 :: 		}
L_end_lcd_msg:
	RETURN      0
; end of _lcd_msg

_display_shiftl:

;LCD.c,73 :: 		void display_shiftl() {
;LCD.c,74 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,75 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_display_shiftl15:
	DECFSZ      R13, 1, 1
	BRA         L_display_shiftl15
	DECFSZ      R12, 1, 1
	BRA         L_display_shiftl15
	NOP
	NOP
;LCD.c,76 :: 		LATC4_bit = 0;
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD.c,77 :: 		PORTB = 0x1B;
	MOVLW       27
	MOVWF       PORTB+0 
;LCD.c,78 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD.c,79 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_display_shiftl16:
	DECFSZ      R13, 1, 1
	BRA         L_display_shiftl16
	DECFSZ      R12, 1, 1
	BRA         L_display_shiftl16
	NOP
	NOP
;LCD.c,80 :: 		}
L_end_display_shiftl:
	RETURN      0
; end of _display_shiftl

_main:

;LCD.c,82 :: 		void main(){
;LCD.c,84 :: 		init_lcd();
	CALL        _init_lcd+0, 0
;LCD.c,85 :: 		lcd_msg("abcdefgh12345678");
	MOVLW       ?lstr1_LCD+0
	MOVWF       FARG_lcd_msg_s+0 
	MOVLW       hi_addr(?lstr1_LCD+0)
	MOVWF       FARG_lcd_msg_s+1 
	CALL        _lcd_msg+0, 0
;LCD.c,90 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
