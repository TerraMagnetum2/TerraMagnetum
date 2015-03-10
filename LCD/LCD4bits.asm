
_E:

;LCD4bits.c,13 :: 		void E(int a) {
;LCD4bits.c,14 :: 		LATA0_bit = a;
	BTFSC       FARG_E_a+0, 0 
	GOTO        L__E30
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
	GOTO        L__E31
L__E30:
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
L__E31:
;LCD4bits.c,15 :: 		}
L_end_E:
	RETURN      0
; end of _E

_init_lcd:

;LCD4bits.c,17 :: 		void init_lcd(){
;LCD4bits.c,18 :: 		TRISA0_bit = 0;  //Enable en sortie
	BCF         TRISA0_bit+0, BitPos(TRISA0_bit+0) 
;LCD4bits.c,19 :: 		TRISB = 0x00;    //DB0-7 en sortie (data)
	CLRF        TRISB+0 
;LCD4bits.c,20 :: 		TRISC4_bit = 0;  //RS en sortie
	BCF         TRISC4_bit+0, BitPos(TRISC4_bit+0) 
;LCD4bits.c,22 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,23 :: 		delay_ms(30);
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
;LCD4bits.c,24 :: 		LATC4_bit = 0;   //RS = 0
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD4bits.c,25 :: 		PORTB = 0x22;    //function set
	MOVLW       34
	MOVWF       PORTB+0 
;LCD4bits.c,26 :: 		E(0);            //(envoi le function set)
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,27 :: 		delay_ms(1);
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
;LCD4bits.c,28 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,29 :: 		delay_ms(1);
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
;LCD4bits.c,30 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,31 :: 		delay_ms(1);
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
;LCD4bits.c,32 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,33 :: 		delay_ms(1);
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
;LCD4bits.c,34 :: 		PORTB = 0xCC;
	MOVLW       204
	MOVWF       PORTB+0 
;LCD4bits.c,35 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,36 :: 		delay_ms(1);
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
;LCD4bits.c,37 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,38 :: 		delay_ms(1);
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
;LCD4bits.c,39 :: 		PORTB = 0x00;    //Display
	CLRF        PORTB+0 
;LCD4bits.c,40 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,41 :: 		delay_ms(1);
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
;LCD4bits.c,42 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,43 :: 		delay_ms(1);
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
;LCD4bits.c,44 :: 		PORTB = 0xFF;
	MOVLW       255
	MOVWF       PORTB+0 
;LCD4bits.c,45 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,46 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd9:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd9
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd9
	NOP
	NOP
;LCD4bits.c,47 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,48 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd10:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd10
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd10
	NOP
	NOP
;LCD4bits.c,49 :: 		PORTB = 0x00;    //Clear
	CLRF        PORTB+0 
;LCD4bits.c,50 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,51 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd11:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd11
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd11
	NOP
	NOP
;LCD4bits.c,52 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,53 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd12:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd12
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd12
	NOP
	NOP
;LCD4bits.c,54 :: 		PORTB = 0x11;
	MOVLW       17
	MOVWF       PORTB+0 
;LCD4bits.c,55 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,56 :: 		delay_ms(2);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       31
	MOVWF       R13, 0
L_init_lcd13:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd13
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd13
;LCD4bits.c,57 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,58 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd14:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd14
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd14
	NOP
	NOP
;LCD4bits.c,59 :: 		PORTB = 0x00;    //Entry mode set
	CLRF        PORTB+0 
;LCD4bits.c,60 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,61 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd15:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd15
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd15
	NOP
	NOP
;LCD4bits.c,62 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,63 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd16:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd16
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd16
	NOP
	NOP
;LCD4bits.c,64 :: 		PORTB = 0x77;
	MOVLW       119
	MOVWF       PORTB+0 
;LCD4bits.c,65 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,66 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_init_lcd17:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd17
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd17
	NOP
	NOP
;LCD4bits.c,67 :: 		}
L_end_init_lcd:
	RETURN      0
; end of _init_lcd

_lcd_clear:

;LCD4bits.c,69 :: 		void lcd_clear() {
;LCD4bits.c,70 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,71 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear18:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_clear18
	DECFSZ      R12, 1, 1
	BRA         L_lcd_clear18
	NOP
	NOP
;LCD4bits.c,72 :: 		PORTB = 0x00;    //Clear
	CLRF        PORTB+0 
;LCD4bits.c,73 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,74 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear19:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_clear19
	DECFSZ      R12, 1, 1
	BRA         L_lcd_clear19
	NOP
	NOP
;LCD4bits.c,75 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,76 :: 		PORTB = 0x11;
	MOVLW       17
	MOVWF       PORTB+0 
;LCD4bits.c,77 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,78 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear20:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_clear20
	DECFSZ      R12, 1, 1
	BRA         L_lcd_clear20
	NOP
	NOP
;LCD4bits.c,79 :: 		}
L_end_lcd_clear:
	RETURN      0
; end of _lcd_clear

_lcd_write:

;LCD4bits.c,81 :: 		void lcd_write(char a) {
;LCD4bits.c,82 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,83 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write21:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write21
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write21
	NOP
	NOP
;LCD4bits.c,84 :: 		LATC4_bit = 1;
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD4bits.c,85 :: 		PORTB = a;
	MOVF        FARG_lcd_write_a+0, 0 
	MOVWF       PORTB+0 
;LCD4bits.c,86 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,87 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write22:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write22
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write22
	NOP
	NOP
;LCD4bits.c,88 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	MOVLW       0
	MOVWF       FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,89 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write23:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write23
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write23
	NOP
	NOP
;LCD4bits.c,90 :: 		PORTB = a;
	MOVF        FARG_lcd_write_a+0, 0 
	MOVWF       PORTB+0 
;LCD4bits.c,91 :: 		E(0);
	CLRF        FARG_E_a+0 
	CLRF        FARG_E_a+1 
	CALL        _E+0, 0
;LCD4bits.c,92 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write24:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write24
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write24
	NOP
	NOP
;LCD4bits.c,93 :: 		}
L_end_lcd_write:
	RETURN      0
; end of _lcd_write

_lcd_msg:

;LCD4bits.c,95 :: 		void lcd_msg(char *s) {
;LCD4bits.c,96 :: 		int i = 0;
	CLRF        lcd_msg_i_L0+0 
	CLRF        lcd_msg_i_L0+1 
;LCD4bits.c,97 :: 		while(s[i] != '\0') {
L_lcd_msg25:
	MOVF        lcd_msg_i_L0+0, 0 
	ADDWF       FARG_lcd_msg_s+0, 0 
	MOVWF       FSR0 
	MOVF        lcd_msg_i_L0+1, 0 
	ADDWFC      FARG_lcd_msg_s+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_msg26
;LCD4bits.c,98 :: 		lcd_write(s[i]);
	MOVF        lcd_msg_i_L0+0, 0 
	ADDWF       FARG_lcd_msg_s+0, 0 
	MOVWF       FSR0 
	MOVF        lcd_msg_i_L0+1, 0 
	ADDWFC      FARG_lcd_msg_s+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_lcd_write_a+0 
	CALL        _lcd_write+0, 0
;LCD4bits.c,99 :: 		i++;
	INFSNZ      lcd_msg_i_L0+0, 1 
	INCF        lcd_msg_i_L0+1, 1 
;LCD4bits.c,100 :: 		}
	GOTO        L_lcd_msg25
L_lcd_msg26:
;LCD4bits.c,101 :: 		}
L_end_lcd_msg:
	RETURN      0
; end of _lcd_msg

_display_shiftl:

;LCD4bits.c,103 :: 		void display_shiftl() {
;LCD4bits.c,104 :: 		LATA0_bit = 1;
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD4bits.c,105 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_display_shiftl27:
	DECFSZ      R13, 1, 1
	BRA         L_display_shiftl27
	DECFSZ      R12, 1, 1
	BRA         L_display_shiftl27
	NOP
	NOP
;LCD4bits.c,106 :: 		LATC4_bit = 0;
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD4bits.c,107 :: 		PORTB = 0x1B;
	MOVLW       27
	MOVWF       PORTB+0 
;LCD4bits.c,108 :: 		LATA0_bit = 0;
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD4bits.c,109 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_display_shiftl28:
	DECFSZ      R13, 1, 1
	BRA         L_display_shiftl28
	DECFSZ      R12, 1, 1
	BRA         L_display_shiftl28
	NOP
	NOP
;LCD4bits.c,110 :: 		}
L_end_display_shiftl:
	RETURN      0
; end of _display_shiftl

_main:

;LCD4bits.c,114 :: 		void main(){
;LCD4bits.c,116 :: 		init_lcd();
	CALL        _init_lcd+0, 0
;LCD4bits.c,117 :: 		lcd_write('U');
	MOVLW       85
	MOVWF       FARG_lcd_write_a+0 
	CALL        _lcd_write+0, 0
;LCD4bits.c,122 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
