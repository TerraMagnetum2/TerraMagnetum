
_Move_Delay:

;lcd_test.c,28 :: 		void Move_Delay() {                  // Function used for text moving
;lcd_test.c,29 :: 		Delay_ms(500);                     // You can change the moving speed here
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       20
	MOVWF       R12, 0
	MOVLW       239
	MOVWF       R13, 0
L_Move_Delay0:
	DECFSZ      R13, 1, 0
	BRA         L_Move_Delay0
	DECFSZ      R12, 1, 0
	BRA         L_Move_Delay0
	DECFSZ      R11, 1, 0
	BRA         L_Move_Delay0
;lcd_test.c,30 :: 		}
	RETURN      0
; end of _Move_Delay

_led_init:

;lcd_test.c,32 :: 		void led_init(){
;lcd_test.c,33 :: 		TRISD=0x00;
	CLRF        TRISD+0 
;lcd_test.c,34 :: 		PORTD =0x01;
	MOVLW       1
	MOVWF       PORTD+0 
;lcd_test.c,35 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_led_init1:
	DECFSZ      R13, 1, 0
	BRA         L_led_init1
	DECFSZ      R12, 1, 0
	BRA         L_led_init1
	DECFSZ      R11, 1, 0
	BRA         L_led_init1
	NOP
;lcd_test.c,36 :: 		PORTD =0x03;
	MOVLW       3
	MOVWF       PORTD+0 
;lcd_test.c,37 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_led_init2:
	DECFSZ      R13, 1, 0
	BRA         L_led_init2
	DECFSZ      R12, 1, 0
	BRA         L_led_init2
	DECFSZ      R11, 1, 0
	BRA         L_led_init2
	NOP
;lcd_test.c,38 :: 		PORTD =0b00000111;
	MOVLW       7
	MOVWF       PORTD+0 
;lcd_test.c,39 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_led_init3:
	DECFSZ      R13, 1, 0
	BRA         L_led_init3
	DECFSZ      R12, 1, 0
	BRA         L_led_init3
	DECFSZ      R11, 1, 0
	BRA         L_led_init3
	NOP
;lcd_test.c,40 :: 		PORTD =0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;lcd_test.c,41 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_led_init4:
	DECFSZ      R13, 1, 0
	BRA         L_led_init4
	DECFSZ      R12, 1, 0
	BRA         L_led_init4
	DECFSZ      R11, 1, 0
	BRA         L_led_init4
	NOP
;lcd_test.c,42 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;lcd_test.c,43 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_led_init5:
	DECFSZ      R13, 1, 0
	BRA         L_led_init5
	DECFSZ      R12, 1, 0
	BRA         L_led_init5
	NOP
;lcd_test.c,44 :: 		PORTD=0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;lcd_test.c,45 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_led_init6:
	DECFSZ      R13, 1, 0
	BRA         L_led_init6
	DECFSZ      R12, 1, 0
	BRA         L_led_init6
	NOP
;lcd_test.c,46 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;lcd_test.c,47 :: 		Delay_ms(200);
	MOVLW       213
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_led_init7:
	DECFSZ      R13, 1, 0
	BRA         L_led_init7
	DECFSZ      R12, 1, 0
	BRA         L_led_init7
	NOP
;lcd_test.c,48 :: 		PORTD=0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;lcd_test.c,49 :: 		Delay_ms(1500);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       60
	MOVWF       R12, 0
	MOVLW       209
	MOVWF       R13, 0
L_led_init8:
	DECFSZ      R13, 1, 0
	BRA         L_led_init8
	DECFSZ      R12, 1, 0
	BRA         L_led_init8
	DECFSZ      R11, 1, 0
	BRA         L_led_init8
	NOP
	NOP
;lcd_test.c,50 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;lcd_test.c,51 :: 		}
	RETURN      0
; end of _led_init

_E:

;lcd_test.c,54 :: 		void E(unsigned short a){
;lcd_test.c,55 :: 		LATA0_bit =a;
	BTFSC       FARG_E_a+0, 0 
	GOTO        L__E50
	BCF         LATA0_bit+0, 0 
	GOTO        L__E51
L__E50:
	BSF         LATA0_bit+0, 0 
L__E51:
;lcd_test.c,56 :: 		}
	RETURN      0
; end of _E

_RS:

;lcd_test.c,57 :: 		void RS(unsigned short a){
;lcd_test.c,58 :: 		LATA1_bit =a;
	BTFSC       FARG_RS_a+0, 0 
	GOTO        L__RS52
	BCF         LATA1_bit+0, 1 
	GOTO        L__RS53
L__RS52:
	BSF         LATA1_bit+0, 1 
L__RS53:
;lcd_test.c,59 :: 		}
	RETURN      0
; end of _RS

_init_lcd:

;lcd_test.c,61 :: 		void init_lcd(){
;lcd_test.c,62 :: 		RS(0);  //rs a 0 pour commande
	CLRF        FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,64 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,65 :: 		Delay_ms(30);
	MOVLW       32
	MOVWF       R12, 0
	MOVLW       233
	MOVWF       R13, 0
L_init_lcd9:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd9
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd9
	NOP
	NOP
;lcd_test.c,66 :: 		PORTB = 0x39;               //fonction set    00111001
	MOVLW       57
	MOVWF       PORTB+0 
;lcd_test.c,67 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,69 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd10:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd10
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd10
	NOP
;lcd_test.c,70 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,71 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd11:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd11
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd11
	NOP
;lcd_test.c,72 :: 		PORTB = 0x1C;             //bias set
	MOVLW       28
	MOVWF       PORTB+0 
;lcd_test.c,73 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,75 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd12:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd12
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd12
	NOP
;lcd_test.c,76 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,77 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd13:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd13
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd13
	NOP
;lcd_test.c,78 :: 		PORTB = 0x52;       //power control
	MOVLW       82
	MOVWF       PORTB+0 
;lcd_test.c,79 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,81 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd14:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd14
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd14
	NOP
;lcd_test.c,82 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,83 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd15:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd15
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd15
	NOP
;lcd_test.c,84 :: 		PORTB = 0x69;        //follower control
	MOVLW       105
	MOVWF       PORTB+0 
;lcd_test.c,85 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,87 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd16:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd16
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd16
	NOP
;lcd_test.c,88 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,89 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd17:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd17
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd17
	NOP
;lcd_test.c,90 :: 		PORTB = 0x7F;        //contrast set
	MOVLW       127
	MOVWF       PORTB+0 
;lcd_test.c,91 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,93 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd18:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd18
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd18
	NOP
;lcd_test.c,94 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,95 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd19:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd19
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd19
	NOP
;lcd_test.c,96 :: 		PORTB = 0b00111000;     //function set      00111000
	MOVLW       56
	MOVWF       PORTB+0 
;lcd_test.c,97 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,99 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd20:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd20
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd20
	NOP
;lcd_test.c,100 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,101 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd21:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd21
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd21
	NOP
;lcd_test.c,102 :: 		PORTB = 0x0F;     //Display on, curson on, cursor blink;    00001111
	MOVLW       15
	MOVWF       PORTB+0 
;lcd_test.c,103 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,105 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd22:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd22
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd22
	NOP
;lcd_test.c,106 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,107 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd23:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd23
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd23
	NOP
;lcd_test.c,108 :: 		PORTB = 0x01;          //clear display
	MOVLW       1
	MOVWF       PORTB+0 
;lcd_test.c,109 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,112 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd24:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd24
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd24
	NOP
;lcd_test.c,113 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,114 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_init_lcd25:
	DECFSZ      R13, 1, 0
	BRA         L_init_lcd25
	DECFSZ      R12, 1, 0
	BRA         L_init_lcd25
	NOP
;lcd_test.c,115 :: 		PORTB = 0b00000110;          //cursor auto-increment;     00000110      entry mode set
	MOVLW       6
	MOVWF       PORTB+0 
;lcd_test.c,116 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,118 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,119 :: 		}
	RETURN      0
; end of _init_lcd

_set_cursor:

;lcd_test.c,121 :: 		void set_cursor(short col, short ligne){
;lcd_test.c,122 :: 		Delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_set_cursor26:
	DECFSZ      R13, 1, 0
	BRA         L_set_cursor26
	DECFSZ      R12, 1, 0
	BRA         L_set_cursor26
	NOP
	NOP
;lcd_test.c,123 :: 		RS(0);
	CLRF        FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,124 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,125 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_set_cursor27:
	DECFSZ      R13, 1, 0
	BRA         L_set_cursor27
	DECFSZ      R12, 1, 0
	BRA         L_set_cursor27
	NOP
	NOP
;lcd_test.c,126 :: 		PORTB = 0x02;          //curseur qui revient au debut;
	MOVLW       2
	MOVWF       PORTB+0 
;lcd_test.c,127 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,128 :: 		Delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_set_cursor28:
	DECFSZ      R13, 1, 0
	BRA         L_set_cursor28
	DECFSZ      R12, 1, 0
	BRA         L_set_cursor28
	NOP
	NOP
;lcd_test.c,129 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,130 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_set_cursor29:
	DECFSZ      R13, 1, 0
	BRA         L_set_cursor29
	DECFSZ      R12, 1, 0
	BRA         L_set_cursor29
	NOP
	NOP
;lcd_test.c,131 :: 		if(ligne ==1)PORTB = 64*ligne + col+128;
	MOVF        FARG_set_cursor_ligne+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_set_cursor30
	MOVLW       6
	MOVWF       R1 
	MOVF        FARG_set_cursor_ligne+0, 0 
	MOVWF       R0 
	MOVF        R1, 0 
L__set_cursor54:
	BZ          L__set_cursor55
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__set_cursor54
L__set_cursor55:
	MOVF        FARG_set_cursor_col+0, 0 
	ADDWF       R0, 1 
	MOVLW       128
	ADDWF       R0, 0 
	MOVWF       PORTB+0 
L_set_cursor30:
;lcd_test.c,132 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,133 :: 		}
	RETURN      0
; end of _set_cursor

_lcd_write:

;lcd_test.c,135 :: 		void lcd_write(char *c){
;lcd_test.c,136 :: 		int i=0;
	CLRF        lcd_write_i_L0+0 
	CLRF        lcd_write_i_L0+1 
;lcd_test.c,137 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,138 :: 		while( c[i]!='\0'){
L_lcd_write31:
	MOVF        lcd_write_i_L0+0, 0 
	ADDWF       FARG_lcd_write_c+0, 0 
	MOVWF       FSR0L 
	MOVF        lcd_write_i_L0+1, 0 
	ADDWFC      FARG_lcd_write_c+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_write32
;lcd_test.c,139 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,140 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write33:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_write33
	DECFSZ      R12, 1, 0
	BRA         L_lcd_write33
	NOP
	NOP
;lcd_test.c,141 :: 		PORTB = c[i];
	MOVF        lcd_write_i_L0+0, 0 
	ADDWF       FARG_lcd_write_c+0, 0 
	MOVWF       FSR0L 
	MOVF        lcd_write_i_L0+1, 0 
	ADDWFC      FARG_lcd_write_c+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTB+0 
;lcd_test.c,142 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,143 :: 		if(i==15){
	MOVLW       0
	XORWF       lcd_write_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_write56
	MOVLW       15
	XORWF       lcd_write_i_L0+0, 0 
L__lcd_write56:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_write34
;lcd_test.c,144 :: 		RS(0);
	CLRF        FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,145 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,146 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write35:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_write35
	DECFSZ      R12, 1, 0
	BRA         L_lcd_write35
	NOP
	NOP
;lcd_test.c,147 :: 		PORTB = 192;
	MOVLW       192
	MOVWF       PORTB+0 
;lcd_test.c,148 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,149 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,150 :: 		}
L_lcd_write34:
;lcd_test.c,151 :: 		Delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write36:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_write36
	DECFSZ      R12, 1, 0
	BRA         L_lcd_write36
	NOP
	NOP
;lcd_test.c,152 :: 		i++;
	INFSNZ      lcd_write_i_L0+0, 1 
	INCF        lcd_write_i_L0+1, 1 
;lcd_test.c,153 :: 		}
	GOTO        L_lcd_write31
L_lcd_write32:
;lcd_test.c,154 :: 		RS(0);
	CLRF        FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,156 :: 		}
	RETURN      0
; end of _lcd_write

_lcd_clear:

;lcd_test.c,158 :: 		void lcd_clear(){
;lcd_test.c,159 :: 		RS(0);
	CLRF        FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,160 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,161 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear37:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_clear37
	DECFSZ      R12, 1, 0
	BRA         L_lcd_clear37
	NOP
	NOP
;lcd_test.c,162 :: 		PORTB = 0x01;          //clear display
	MOVLW       1
	MOVWF       PORTB+0 
;lcd_test.c,163 :: 		Delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_clear38:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_clear38
	DECFSZ      R12, 1, 0
	BRA         L_lcd_clear38
	NOP
	NOP
;lcd_test.c,164 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,165 :: 		}
	RETURN      0
; end of _lcd_clear

_curseur_debut:

;lcd_test.c,167 :: 		void curseur_debut(){
;lcd_test.c,168 :: 		RS(0);
	CLRF        FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,169 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_curseur_debut39:
	DECFSZ      R13, 1, 0
	BRA         L_curseur_debut39
	DECFSZ      R12, 1, 0
	BRA         L_curseur_debut39
	NOP
;lcd_test.c,170 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,171 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_curseur_debut40:
	DECFSZ      R13, 1, 0
	BRA         L_curseur_debut40
	DECFSZ      R12, 1, 0
	BRA         L_curseur_debut40
	NOP
;lcd_test.c,172 :: 		PORTB = 0x02;          //curseur qui revient au debut;
	MOVLW       2
	MOVWF       PORTB+0 
;lcd_test.c,173 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,174 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_a+0 
	CALL        _RS+0, 0
;lcd_test.c,175 :: 		}
	RETURN      0
; end of _curseur_debut

_main:

;lcd_test.c,177 :: 		void main(){
;lcd_test.c,178 :: 		led_init();
	CALL        _led_init+0, 0
;lcd_test.c,180 :: 		TRISA2_bit = 1;
	BSF         TRISA2_bit+0, 2 
;lcd_test.c,181 :: 		TRISA3_bit =1;
	BSF         TRISA3_bit+0, 3 
;lcd_test.c,182 :: 		TRISA4_bit =1;         //entree bouton poussoir menu, + et -;
	BSF         TRISA4_bit+0, 4 
;lcd_test.c,185 :: 		TRISB=0x00; //gpio en sortie         --les 8 bits du registre correspondent au data envoyé a l'ecran
	CLRF        TRISB+0 
;lcd_test.c,186 :: 		TRISA0_bit=0;      //A0 et A1 en sortie correspondant a RS et E
	BCF         TRISA0_bit+0, 0 
;lcd_test.c,187 :: 		TRISA1_bit=0;
	BCF         TRISA1_bit+0, 1 
;lcd_test.c,189 :: 		init_lcd();
	CALL        _init_lcd+0, 0
;lcd_test.c,190 :: 		lcd_write("regler le       contraste ...");
	MOVLW       ?lstr1_lcd_test+0
	MOVWF       FARG_lcd_write_c+0 
	MOVLW       hi_addr(?lstr1_lcd_test+0)
	MOVWF       FARG_lcd_write_c+1 
	CALL        _lcd_write+0, 0
;lcd_test.c,191 :: 		Delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_main41:
	DECFSZ      R13, 1, 0
	BRA         L_main41
	DECFSZ      R12, 1, 0
	BRA         L_main41
	DECFSZ      R11, 1, 0
	BRA         L_main41
	NOP
;lcd_test.c,192 :: 		lcd_clear();
	CALL        _lcd_clear+0, 0
;lcd_test.c,193 :: 		lcd_write("contraste       -#######       +");
	MOVLW       ?lstr2_lcd_test+0
	MOVWF       FARG_lcd_write_c+0 
	MOVLW       hi_addr(?lstr2_lcd_test+0)
	MOVWF       FARG_lcd_write_c+1 
	CALL        _lcd_write+0, 0
;lcd_test.c,195 :: 		do {
L_main42:
;lcd_test.c,196 :: 		if (Button(&PORTA, 4, 1, 1)) {               // Detect logical one
	MOVLW       PORTA+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main45
;lcd_test.c,197 :: 		oldstate = 1;                              // Update flag
	BSF         _oldstate+0, BitPos(_oldstate+0) 
;lcd_test.c,198 :: 		}
L_main45:
;lcd_test.c,199 :: 		if (oldstate && Button(&PORTA, 4, 1, 0)) {   // Detect one-to-zero transition
	BTFSS       _oldstate+0, BitPos(_oldstate+0) 
	GOTO        L_main48
	MOVLW       PORTA+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTA+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main48
L__main49:
;lcd_test.c,200 :: 		E(1);                              // Invert PORTC
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,201 :: 		oldstate = 0;                              // Update flag
	BCF         _oldstate+0, BitPos(_oldstate+0) 
;lcd_test.c,202 :: 		}
L_main48:
;lcd_test.c,203 :: 		} while(1);
	GOTO        L_main42
;lcd_test.c,205 :: 		}
	GOTO        $+0
; end of _main
