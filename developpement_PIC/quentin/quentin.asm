
_main:

;quentin.c,1 :: 		void main() {
;quentin.c,24 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;quentin.c,25 :: 		Lcd_Out(1, 3, "Hello!");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_quentin+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_quentin+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;quentin.c,26 :: 		}
	GOTO        $+0
; end of _main
