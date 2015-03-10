
_interrupt:

;code_terra_magnetum.c,30 :: 		void interrupt() {
;code_terra_magnetum.c,31 :: 		if (TMR0IF_bit) {
	BTFSS       TMR0IF_bit+0, BitPos(TMR0IF_bit+0) 
	GOTO        L_interrupt0
;code_terra_magnetum.c,32 :: 		cnt++;             // Increment value of cnt on every interrupt
	INFSNZ      _cnt+0, 1 
	INCF        _cnt+1, 1 
;code_terra_magnetum.c,33 :: 		TMR0L  = 6;     //initialisation de la valeur du timer0    cnt=1200 pour 1min         et prechargement 96
	MOVLW       6
	MOVWF       TMR0L+0 
;code_terra_magnetum.c,36 :: 		TMR0IF_bit = 0;    // clear TMR0IF
	BCF         TMR0IF_bit+0, BitPos(TMR0IF_bit+0) 
;code_terra_magnetum.c,37 :: 		}
L_interrupt0:
;code_terra_magnetum.c,38 :: 		}
L_end_interrupt:
L__interrupt11:
	RETFIE      1
; end of _interrupt

_main:

;code_terra_magnetum.c,41 :: 		void main() {
;code_terra_magnetum.c,43 :: 		SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
	MOVLW       2
	MOVWF       FARG_SPI1_Init_Advanced_master+0 
	CLRF        FARG_SPI1_Init_Advanced_data_sample+0 
	CLRF        FARG_SPI1_Init_Advanced_clock_idle+0 
	MOVLW       1
	MOVWF       FARG_SPI1_Init_Advanced_transmit_edge+0 
	CALL        _SPI1_Init_Advanced+0, 0
;code_terra_magnetum.c,45 :: 		TRISB=0x01;                       //pin b0 en entrée  pour l'interrupteur
	MOVLW       1
	MOVWF       TRISB+0 
;code_terra_magnetum.c,46 :: 		PORTB =0xF0;
	MOVLW       240
	MOVWF       PORTB+0 
;code_terra_magnetum.c,47 :: 		ADCON1 |= 0x0F;      // Configure AN pins as digital
	MOVLW       15
	IORWF       ADCON1+0, 1 
;code_terra_magnetum.c,49 :: 		cnt = 0;             // Initialize cnt
	CLRF        _cnt+0 
	CLRF        _cnt+1 
;code_terra_magnetum.c,52 :: 		T0CON  = 0b01000111;             //timer 16bits
	MOVLW       71
	MOVWF       T0CON+0 
;code_terra_magnetum.c,53 :: 		INTCON = 0xC0;       // Set GIE, PEIE     interruption generale activée, interruption peripherique
	MOVLW       192
	MOVWF       INTCON+0 
;code_terra_magnetum.c,54 :: 		TMR0IE_bit = 1;      // Enable TMRO interrupt        interruption timer0 activée
	BSF         TMR0IE_bit+0, BitPos(TMR0IE_bit+0) 
;code_terra_magnetum.c,56 :: 		TRISC = 0;           // PORTC is output
	CLRF        TRISC+0 
;code_terra_magnetum.c,57 :: 		PORTC=0x2A;          //allumage led   00001010
	MOVLW       42
	MOVWF       PORTC+0 
;code_terra_magnetum.c,58 :: 		oldstate=0;
	BCF         _oldstate+0, BitPos(_oldstate+0) 
;code_terra_magnetum.c,59 :: 		TMR0ON_bit =1;
	BSF         TMR0ON_bit+0, BitPos(TMR0ON_bit+0) 
;code_terra_magnetum.c,61 :: 		do {
L_main1:
;code_terra_magnetum.c,63 :: 		if(Button(&PORTB, 0, 0.5, 1)){         // Detect logical one
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	CLRF        FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main4
;code_terra_magnetum.c,64 :: 		oldstate =  1;
	BSF         _oldstate+0, BitPos(_oldstate+0) 
;code_terra_magnetum.c,65 :: 		}
L_main4:
;code_terra_magnetum.c,66 :: 		if(oldstate && Button(&PORTB, 0, 0.2, 0)){         // Detect logical one
	BTFSS       _oldstate+0, BitPos(_oldstate+0) 
	GOTO        L_main7
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	CLRF        FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main7
L__main9:
;code_terra_magnetum.c,67 :: 		TMR0ON_bit =~TMR0ON_bit;
	BTG         TMR0ON_bit+0, BitPos(TMR0ON_bit+0) 
;code_terra_magnetum.c,68 :: 		PORTC=1;
	MOVLW       1
	MOVWF       PORTC+0 
;code_terra_magnetum.c,69 :: 		oldstate =  0;
	BCF         _oldstate+0, BitPos(_oldstate+0) 
;code_terra_magnetum.c,70 :: 		}
L_main7:
;code_terra_magnetum.c,78 :: 		if (cnt>7) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cnt+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main13
	MOVF        _cnt+0, 0 
	SUBLW       7
L__main13:
	BTFSC       STATUS+0, 0 
	GOTO        L_main8
;code_terra_magnetum.c,80 :: 		PORTC =~PORTC;
	COMF        PORTC+0, 1 
;code_terra_magnetum.c,81 :: 		cnt=0;                           // Update compteur
	CLRF        _cnt+0 
	CLRF        _cnt+1 
;code_terra_magnetum.c,82 :: 		}
L_main8:
;code_terra_magnetum.c,87 :: 		} while(1);                                    // Endless loop
	GOTO        L_main1
;code_terra_magnetum.c,88 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
