
_main:

;sdcard_test.c,209 :: 		void main() {
;sdcard_test.c,211 :: 		ANSEL0 = 0;                      // Configure AN pins as digital
	CLRF        ANSEL0+0 
;sdcard_test.c,215 :: 		PORTC =0x0A;
	MOVLW       10
	MOVWF       PORTC+0 
;sdcard_test.c,217 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main0:
	DECFSZ      R13, 1, 1
	BRA         L_main0
	DECFSZ      R12, 1, 1
	BRA         L_main0
	NOP
	NOP
;sdcard_test.c,219 :: 		PORTC =0x05;
	MOVLW       5
	MOVWF       PORTC+0 
;sdcard_test.c,224 :: 		SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
	MOVLW       2
	MOVWF       FARG_SPI1_Init_Advanced_master+0 
	CLRF        FARG_SPI1_Init_Advanced_data_sample+0 
	CLRF        FARG_SPI1_Init_Advanced_clock_idle+0 
	MOVLW       1
	MOVWF       FARG_SPI1_Init_Advanced_transmit_edge+0 
	CALL        _SPI1_Init_Advanced+0, 0
;sdcard_test.c,227 :: 		if (Mmc_Fat_Init() == 0) {
	CALL        _Mmc_Fat_Init+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1
;sdcard_test.c,229 :: 		SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
	CLRF        FARG_SPI1_Init_Advanced_master+0 
	CLRF        FARG_SPI1_Init_Advanced_data_sample+0 
	CLRF        FARG_SPI1_Init_Advanced_clock_idle+0 
	MOVLW       1
	MOVWF       FARG_SPI1_Init_Advanced_transmit_edge+0 
	CALL        _SPI1_Init_Advanced+0, 0
;sdcard_test.c,245 :: 		}
	GOTO        L_main2
L_main1:
;sdcard_test.c,249 :: 		}
L_main2:
;sdcard_test.c,250 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
