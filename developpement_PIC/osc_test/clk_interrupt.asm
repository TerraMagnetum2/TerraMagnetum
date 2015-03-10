
_main:

;clk_interrupt.c,49 :: 		void main(){
;clk_interrupt.c,50 :: 		TRISC=0x00;
	CLRF        TRISC+0 
;clk_interrupt.c,51 :: 		SPI1_Init();
	CALL        _SPI1_Init+0, 0
;clk_interrupt.c,53 :: 		for(i=0;i<5;i++) {
	CLRF        _i+0 
	CLRF        _i+1 
L_main0:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main11
	MOVLW       5
	SUBWF       _i+0, 0 
L__main11:
	BTFSC       STATUS+0, 0 
	GOTO        L_main1
;clk_interrupt.c,54 :: 		Delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
;clk_interrupt.c,55 :: 		PORTC=0xFF;
	MOVLW       255
	MOVWF       PORTC+0 
;clk_interrupt.c,56 :: 		Delay_ms(200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
;clk_interrupt.c,57 :: 		PORTC=0x00;
	CLRF        PORTC+0 
;clk_interrupt.c,53 :: 		for(i=0;i<5;i++) {
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;clk_interrupt.c,58 :: 		}
	GOTO        L_main0
L_main1:
;clk_interrupt.c,59 :: 		Delay_ms(1500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;clk_interrupt.c,61 :: 		while(1){
L_main6:
;clk_interrupt.c,62 :: 		PORTC=0xFF;
	MOVLW       255
	MOVWF       PORTC+0 
;clk_interrupt.c,63 :: 		Delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
	NOP
;clk_interrupt.c,64 :: 		PORTC=0x00;
	CLRF        PORTC+0 
;clk_interrupt.c,65 :: 		Delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
	NOP
;clk_interrupt.c,66 :: 		}
	GOTO        L_main6
;clk_interrupt.c,83 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
