/*
 * Project name:
     LED_Blinking (Simple 'Hello World' project)
 * Copyright:
     (c) Mikroelektronika, 2011.
 * Revision History:
     20110929:
       - initial release (FJ);
 * Description:
     This is a simple 'Hello World' project. It turns on/off LEDs connected to
     PORTA, PORTB, PORTC, PORTD and PORTE.
 * Test configuration:
     MCU:             PIC18F45K22
                      http://ww1.microchip.com/downloads/en/DeviceDoc/41412D.pdf
     dev.board:       easypic7 -
                      http://www.mikroe.com/easypic/
     Oscillator:      HS-PLL 32.0000 MHz, 8.0000 MHz Crystal
     Ext. Modules:    None.
     SW:              mikroC PRO for PIC
                      http://www.mikroe.com/mikroc/pic/
 * NOTES:
     - Turn ON the PORT LEDs at SW3.
 */
unsigned short i;

void main() {

  TRISC = 0;           // set direction to be output
          // set direction to be output
          // set direction to be output
        // set direction to be output

  do {
  PORTC=1;

  for(i=0;i<7;i++){
    PORTC =2*PORTC ;
    Delay_ms(100);
    }
  for(i=0;i<6;i++){
    PORTC /=2;
    Delay_ms(100);
    }
  } while(1);          // Endless loop
  }