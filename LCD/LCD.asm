
_init_lcd:

;LCD.c,13 :: 		void init_lcd(){
;LCD.c,14 :: 		TRISA0_bit = 0;  //Enable en sortie
	BCF         TRISA0_bit+0, BitPos(TRISA0_bit+0) 
;LCD.c,15 :: 		TRISB = 0x00;    //DB0-7 en sortie (data)
	CLRF        TRISB+0 
;LCD.c,16 :: 		TRISC4_bit = 0;  //RS en sortie
	BCF         TRISC4_bit+0, BitPos(TRISC4_bit+0) 
;LCD.c,18 :: 		LATA0_bit = 1;   //E = 1
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,19 :: 		delay_ms(30);
	MOVLW       78
	MOVWF       R12, 0
	MOVLW       235
	MOVWF       R13, 0
L_init_lcd0:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd0
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd0
;LCD.c,20 :: 		LATC4_bit = 0;   //RS = 0
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD.c,21 :: 		PORTB = 0x3C;    //function set
	MOVLW       60
	MOVWF       PORTB+0 
;LCD.c,22 :: 		LATA0_bit = 0;   //E = 0 (envoi le function set)
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,23 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd1:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd1
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd1
	NOP
	NOP
;LCD.c,24 :: 		LATA0_bit = 1;   //E = 1
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,25 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd2:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd2
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd2
	NOP
	NOP
;LCD.c,26 :: 		PORTB = 0x0F;    //Display on
	MOVLW       15
	MOVWF       PORTB+0 
;LCD.c,27 :: 		LATA0_bit = 0;   //E = 0 (envoi le display)
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,28 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd3:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd3
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd3
	NOP
	NOP
;LCD.c,29 :: 		LATA0_bit = 1;   //E = 1
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,30 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd4:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd4
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd4
	NOP
	NOP
;LCD.c,31 :: 		PORTB = 0x01;    //Clear
	MOVLW       1
	MOVWF       PORTB+0 
;LCD.c,32 :: 		LATA0_bit = 0;   //E = 0 (envoi le clear)
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,33 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd5:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd5
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd5
	NOP
	NOP
;LCD.c,34 :: 		LATA0_bit = 1;   //E = 1
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,35 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd6:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd6
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd6
	NOP
	NOP
;LCD.c,36 :: 		PORTB = 0x06;    //Entry mode set(increment mode/entire shift off)
	MOVLW       6
	MOVWF       PORTB+0 
;LCD.c,37 :: 		LATA0_bit = 0;   //E = 0 (envoi le entry mode set)
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,38 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd7:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd7
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd7
	NOP
	NOP
;LCD.c,39 :: 		LATA0_bit = 1;   //E = 1
	BSF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,40 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_init_lcd8:
	DECFSZ      R13, 1, 1
	BRA         L_init_lcd8
	DECFSZ      R12, 1, 1
	BRA         L_init_lcd8
	NOP
	NOP
;LCD.c,41 :: 		}
L_end_init_lcd:
	RETURN      0
; end of _init_lcd

_lcd_write:

;LCD.c,43 :: 		void lcd_write(char a) {
;LCD.c,44 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_lcd_write9:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write9
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write9
	NOP
	NOP
;LCD.c,45 :: 		LATC4_bit = 1;
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
;LCD.c,46 :: 		PORTB = a;
	MOVF        FARG_lcd_write_a+0, 0 
	MOVWF       PORTB+0 
;LCD.c,47 :: 		LATA0_bit = 0;
	BCF         LATA0_bit+0, BitPos(LATA0_bit+0) 
;LCD.c,48 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_lcd_write10:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_write10
	DECFSZ      R12, 1, 1
	BRA         L_lcd_write10
	NOP
	NOP
;LCD.c,49 :: 		}
L_end_lcd_write:
	RETURN      0
; end of _lcd_write

_main:

;LCD.c,51 :: 		void main(){
;LCD.c,52 :: 		init_lcd();
	CALL        _init_lcd+0, 0
;LCD.c,53 :: 		lcd_write('w');
	MOVLW       119
	MOVWF       FARG_lcd_write_a+0 
	CALL        _lcd_write+0, 0
;LCD.c,54 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
