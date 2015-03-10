
include p16F886.inc

__config _CONFIG1, _XT_OSC & _WDT_OFF & _LVP_OFF  

org 0x00
	goto debut


debut

	movlw 0xFF
	movwf PORTC
	goto debut










end;