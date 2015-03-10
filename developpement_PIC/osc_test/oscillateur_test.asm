
_main:

;oscillateur_test.c,1 :: 		void main(){
;oscillateur_test.c,2 :: 		TRISC =0x00; //en sortie
	CLRF       TRISC+0
;oscillateur_test.c,5 :: 		while(1){
L_main0:
;oscillateur_test.c,7 :: 		delay_ms(800);
	MOVLW      9
	MOVWF      R11+0
	MOVLW      30
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;oscillateur_test.c,8 :: 		PORTC=0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;oscillateur_test.c,10 :: 		delay_ms(800);
	MOVLW      9
	MOVWF      R11+0
	MOVLW      30
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;oscillateur_test.c,11 :: 		PORTC=0x00;
	CLRF       PORTC+0
;oscillateur_test.c,12 :: 		}
	GOTO       L_main0
;oscillateur_test.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
