
_Move_Delay:

;lcd_test.c,49 :: 		void Move_Delay() {                  // Function used for text moving
;lcd_test.c,50 :: 		Delay_ms(500);                     // You can change the moving speed here
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
;lcd_test.c,51 :: 		}
	RETURN      0
; end of _Move_Delay

_led_init:

;lcd_test.c,53 :: 		void led_init(){
;lcd_test.c,54 :: 		TRISD=0x00;
	CLRF        TRISD+0 
;lcd_test.c,55 :: 		PORTD =0x01;
	MOVLW       1
	MOVWF       PORTD+0 
;lcd_test.c,56 :: 		Delay_ms(1000);
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
;lcd_test.c,57 :: 		PORTD =0x03;
	MOVLW       3
	MOVWF       PORTD+0 
;lcd_test.c,58 :: 		Delay_ms(1000);
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
;lcd_test.c,59 :: 		PORTD =0b00000111;
	MOVLW       7
	MOVWF       PORTD+0 
;lcd_test.c,60 :: 		Delay_ms(1000);
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
;lcd_test.c,61 :: 		PORTD =0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;lcd_test.c,62 :: 		Delay_ms(1000);
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
;lcd_test.c,63 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;lcd_test.c,64 :: 		Delay_ms(200);
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
;lcd_test.c,65 :: 		PORTD=0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;lcd_test.c,66 :: 		Delay_ms(200);
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
;lcd_test.c,67 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;lcd_test.c,68 :: 		Delay_ms(200);
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
;lcd_test.c,69 :: 		PORTD=0x0F;
	MOVLW       15
	MOVWF       PORTD+0 
;lcd_test.c,70 :: 		Delay_ms(1500);
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
;lcd_test.c,71 :: 		PORTD=0x00;
	CLRF        PORTD+0 
;lcd_test.c,72 :: 		}
	RETURN      0
; end of _led_init

_E:

;lcd_test.c,74 :: 		void E(unsigned short a){
;lcd_test.c,75 :: 		LATA0_bit =a;
	BTFSC       FARG_E_a+0, 0 
	GOTO        L__E37
	BCF         LATA0_bit+0, 0 
	GOTO        L__E38
L__E37:
	BSF         LATA0_bit+0, 0 
L__E38:
;lcd_test.c,76 :: 		}
	RETURN      0
; end of _E

_RS:

;lcd_test.c,78 :: 		void RS(unsigned short b){
;lcd_test.c,79 :: 		LATA1_bit =b;
	BTFSC       FARG_RS_b+0, 0 
	GOTO        L__RS39
	BCF         LATA1_bit+0, 1 
	GOTO        L__RS40
L__RS39:
	BSF         LATA1_bit+0, 1 
L__RS40:
;lcd_test.c,80 :: 		}
	RETURN      0
; end of _RS

_lcd_write:

;lcd_test.c,82 :: 		void lcd_write(char c){
;lcd_test.c,83 :: 		Delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write9:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_write9
	DECFSZ      R12, 1, 0
	BRA         L_lcd_write9
	NOP
	NOP
;lcd_test.c,84 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,85 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,86 :: 		delay_ms(1);
	MOVLW       2
	MOVWF       R12, 0
	MOVLW       14
	MOVWF       R13, 0
L_lcd_write10:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_write10
	DECFSZ      R12, 1, 0
	BRA         L_lcd_write10
	NOP
	NOP
;lcd_test.c,87 :: 		PORTB = c;
	MOVF        FARG_lcd_write_c+0, 0 
	MOVWF       PORTB+0 
;lcd_test.c,88 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,89 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,90 :: 		}
	RETURN      0
; end of _lcd_write

_lcd_clear:

;lcd_test.c,92 :: 		void lcd_clear(){
;lcd_test.c,93 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,94 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_lcd_clear11:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_clear11
	DECFSZ      R12, 1, 0
	BRA         L_lcd_clear11
	NOP
;lcd_test.c,95 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,96 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_lcd_clear12:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_clear12
	DECFSZ      R12, 1, 0
	BRA         L_lcd_clear12
	NOP
;lcd_test.c,97 :: 		PORTB = 0x01;          //clear display
	MOVLW       1
	MOVWF       PORTB+0 
;lcd_test.c,98 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,99 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,100 :: 		}
	RETURN      0
; end of _lcd_clear

_lcd_setcursor:

;lcd_test.c,102 :: 		void lcd_setcursor(unsigned short){
;lcd_test.c,103 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,104 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_lcd_setcursor13:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_setcursor13
	DECFSZ      R12, 1, 0
	BRA         L_lcd_setcursor13
	NOP
;lcd_test.c,105 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,106 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_lcd_setcursor14:
	DECFSZ      R13, 1, 0
	BRA         L_lcd_setcursor14
	DECFSZ      R12, 1, 0
	BRA         L_lcd_setcursor14
	NOP
;lcd_test.c,107 :: 		PORTB = 0x01;          //set line
	MOVLW       1
	MOVWF       PORTB+0 
;lcd_test.c,108 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,109 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,110 :: 		}
	RETURN      0
; end of _lcd_setcursor

_curseur_debut:

;lcd_test.c,112 :: 		void curseur_debut(){
;lcd_test.c,113 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,114 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_curseur_debut15:
	DECFSZ      R13, 1, 0
	BRA         L_curseur_debut15
	DECFSZ      R12, 1, 0
	BRA         L_curseur_debut15
	NOP
;lcd_test.c,115 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,116 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_curseur_debut16:
	DECFSZ      R13, 1, 0
	BRA         L_curseur_debut16
	DECFSZ      R12, 1, 0
	BRA         L_curseur_debut16
	NOP
;lcd_test.c,117 :: 		PORTB = 0x02;          //curseur qui revient au debut;
	MOVLW       2
	MOVWF       PORTB+0 
;lcd_test.c,118 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,119 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,120 :: 		}
	RETURN      0
; end of _curseur_debut

_main:

;lcd_test.c,122 :: 		void main(){
;lcd_test.c,123 :: 		led_init();
	CALL        _led_init+0, 0
;lcd_test.c,125 :: 		TRISB=0x00; //gpio en sortie         --RS = A0        E=A1
	CLRF        TRISB+0 
;lcd_test.c,126 :: 		TRISA=0x00;
	CLRF        TRISA+0 
;lcd_test.c,127 :: 		RS(0);  //rs a 0 pour commande
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,129 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,130 :: 		Delay_ms(30);
	MOVLW       32
	MOVWF       R12, 0
	MOVLW       233
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 0
	BRA         L_main17
	DECFSZ      R12, 1, 0
	BRA         L_main17
	NOP
	NOP
;lcd_test.c,131 :: 		PORTB = 0x39;               //fonction set    00111001
	MOVLW       57
	MOVWF       PORTB+0 
;lcd_test.c,132 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,134 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 0
	BRA         L_main18
	DECFSZ      R12, 1, 0
	BRA         L_main18
	NOP
;lcd_test.c,135 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,136 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main19:
	DECFSZ      R13, 1, 0
	BRA         L_main19
	DECFSZ      R12, 1, 0
	BRA         L_main19
	NOP
;lcd_test.c,137 :: 		PORTB = 0x1C;             //bias set
	MOVLW       28
	MOVWF       PORTB+0 
;lcd_test.c,138 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,140 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main20:
	DECFSZ      R13, 1, 0
	BRA         L_main20
	DECFSZ      R12, 1, 0
	BRA         L_main20
	NOP
;lcd_test.c,141 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,142 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main21:
	DECFSZ      R13, 1, 0
	BRA         L_main21
	DECFSZ      R12, 1, 0
	BRA         L_main21
	NOP
;lcd_test.c,143 :: 		PORTB = 0x52;       //power control
	MOVLW       82
	MOVWF       PORTB+0 
;lcd_test.c,144 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,146 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main22:
	DECFSZ      R13, 1, 0
	BRA         L_main22
	DECFSZ      R12, 1, 0
	BRA         L_main22
	NOP
;lcd_test.c,147 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,148 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main23:
	DECFSZ      R13, 1, 0
	BRA         L_main23
	DECFSZ      R12, 1, 0
	BRA         L_main23
	NOP
;lcd_test.c,149 :: 		PORTB = 0x69;        //follower control
	MOVLW       105
	MOVWF       PORTB+0 
;lcd_test.c,150 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,152 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main24:
	DECFSZ      R13, 1, 0
	BRA         L_main24
	DECFSZ      R12, 1, 0
	BRA         L_main24
	NOP
;lcd_test.c,153 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,154 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main25:
	DECFSZ      R13, 1, 0
	BRA         L_main25
	DECFSZ      R12, 1, 0
	BRA         L_main25
	NOP
;lcd_test.c,155 :: 		PORTB = 0x7F;        //contrast set
	MOVLW       127
	MOVWF       PORTB+0 
;lcd_test.c,156 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,158 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main26:
	DECFSZ      R13, 1, 0
	BRA         L_main26
	DECFSZ      R12, 1, 0
	BRA         L_main26
	NOP
;lcd_test.c,159 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,160 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 0
	BRA         L_main27
	DECFSZ      R12, 1, 0
	BRA         L_main27
	NOP
;lcd_test.c,161 :: 		PORTB = 0x38;     //function set
	MOVLW       56
	MOVWF       PORTB+0 
;lcd_test.c,162 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,164 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main28:
	DECFSZ      R13, 1, 0
	BRA         L_main28
	DECFSZ      R12, 1, 0
	BRA         L_main28
	NOP
;lcd_test.c,165 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,166 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main29:
	DECFSZ      R13, 1, 0
	BRA         L_main29
	DECFSZ      R12, 1, 0
	BRA         L_main29
	NOP
;lcd_test.c,167 :: 		PORTB = 0x0F;     //Display on, curson on, cursor blink;
	MOVLW       15
	MOVWF       PORTB+0 
;lcd_test.c,168 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,170 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main30:
	DECFSZ      R13, 1, 0
	BRA         L_main30
	DECFSZ      R12, 1, 0
	BRA         L_main30
	NOP
;lcd_test.c,171 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,172 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main31:
	DECFSZ      R13, 1, 0
	BRA         L_main31
	DECFSZ      R12, 1, 0
	BRA         L_main31
	NOP
;lcd_test.c,173 :: 		PORTB = 0x01;          //clear display
	MOVLW       1
	MOVWF       PORTB+0 
;lcd_test.c,174 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,176 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main32:
	DECFSZ      R13, 1, 0
	BRA         L_main32
	DECFSZ      R12, 1, 0
	BRA         L_main32
	NOP
;lcd_test.c,177 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,178 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main33:
	DECFSZ      R13, 1, 0
	BRA         L_main33
	DECFSZ      R12, 1, 0
	BRA         L_main33
	NOP
;lcd_test.c,179 :: 		PORTB = 0x06;          //cursor auto-increment;
	MOVLW       6
	MOVWF       PORTB+0 
;lcd_test.c,180 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,183 :: 		lcd_write('c');
	MOVLW       99
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,184 :: 		lcd_write('o');
	MOVLW       111
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,185 :: 		lcd_write('u');
	MOVLW       117
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,186 :: 		lcd_write('c');
	MOVLW       99
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,187 :: 		lcd_write('o');
	MOVLW       111
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,188 :: 		lcd_write('u');
	MOVLW       117
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,189 :: 		lcd_write(' ');
	MOVLW       32
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,190 :: 		lcd_write('t');
	MOVLW       116
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,191 :: 		lcd_write('u');
	MOVLW       117
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,192 :: 		lcd_write('c');
	MOVLW       99
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,194 :: 		RS(0);
	CLRF        FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,195 :: 		Delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main34:
	DECFSZ      R13, 1, 0
	BRA         L_main34
	DECFSZ      R12, 1, 0
	BRA         L_main34
	NOP
;lcd_test.c,196 :: 		E(1);
	MOVLW       1
	MOVWF       FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,197 :: 		delay_ms(10);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       162
	MOVWF       R13, 0
L_main35:
	DECFSZ      R13, 1, 0
	BRA         L_main35
	DECFSZ      R12, 1, 0
	BRA         L_main35
	NOP
;lcd_test.c,198 :: 		PORTB = 0x1C;          //curseur qui revient au debut;
	MOVLW       28
	MOVWF       PORTB+0 
;lcd_test.c,199 :: 		E(0);
	CLRF        FARG_E_a+0 
	CALL        _E+0, 0
;lcd_test.c,200 :: 		RS(1);
	MOVLW       1
	MOVWF       FARG_RS_b+0 
	CALL        _RS+0, 0
;lcd_test.c,202 :: 		lcd_write('o');
	MOVLW       111
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,203 :: 		lcd_write('u');
	MOVLW       117
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,204 :: 		lcd_write('c');
	MOVLW       99
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,205 :: 		lcd_write('o');
	MOVLW       111
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,206 :: 		lcd_write('u');
	MOVLW       117
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,207 :: 		lcd_write(' ');
	MOVLW       32
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,208 :: 		lcd_write('t');
	MOVLW       116
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,209 :: 		lcd_write('u');
	MOVLW       117
	MOVWF       FARG_lcd_write_c+0 
	CALL        _lcd_write+0, 0
;lcd_test.c,214 :: 		delay_ms(1000);
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       40
	MOVWF       R12, 0
	MOVLW       224
	MOVWF       R13, 0
L_main36:
	DECFSZ      R13, 1, 0
	BRA         L_main36
	DECFSZ      R12, 1, 0
	BRA         L_main36
	DECFSZ      R11, 1, 0
	BRA         L_main36
	NOP
;lcd_test.c,232 :: 		}
	GOTO        $+0
; end of _main
