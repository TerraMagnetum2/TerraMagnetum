
_main:

;debugtest.c,26 :: 		void main() {
;debugtest.c,28 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;debugtest.c,33 :: 		do {
L_main0:
;debugtest.c,34 :: 		PORTC=1;
	MOVLW       1
	MOVWF       PORTC+0 
;debugtest.c,36 :: 		for(i=0;i<7;i++){
	CLRF        _i+0 
L_main3:
	MOVLW       7
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main4
;debugtest.c,37 :: 		PORTC =2*PORTC ;
	MOVF        PORTC+0, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVF        R0, 0 
	MOVWF       PORTC+0 
;debugtest.c,38 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	NOP
;debugtest.c,36 :: 		for(i=0;i<7;i++){
	INCF        _i+0, 1 
;debugtest.c,39 :: 		}
	GOTO        L_main3
L_main4:
;debugtest.c,40 :: 		for(i=0;i<6;i++){
	CLRF        _i+0 
L_main7:
	MOVLW       6
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main8
;debugtest.c,41 :: 		PORTC /=2;
	MOVF        PORTC+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTC+0 
;debugtest.c,42 :: 		Delay_ms(100);
	MOVLW       107
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	NOP
;debugtest.c,40 :: 		for(i=0;i<6;i++){
	INCF        _i+0, 1 
;debugtest.c,43 :: 		}
	GOTO        L_main7
L_main8:
;debugtest.c,44 :: 		} while(1);          // Endless loop
	GOTO        L_main0
;debugtest.c,45 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
