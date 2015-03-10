/*
 * Project name:
     Timer0_Interrupt (Using Timer0 to obtain interrupts)
 * Copyright:
     (c) Mikroelektronika, 2008.
 * Revision History:
     20081218:
       - initial release;
 * Description:
     This code demonstrates how to use Timer0 and it's interrupt.
     Program toggles LEDs on PORTB.
 * Test configuration:
     MCU:             PIC18F87J60
                      http://ww1.microchip.com/downloads/en/DeviceDoc/39762d.pdf
     Dev.Board:       EasyPIC PRO v7
                      http://www.mikroe.com/easypic-pro/
     Oscillator:      HS, 25.0000 MHz
     Ext. Modules:    -
     SW:              mikroC PRO for PIC
                      http://www.mikroe.com/mikroc/pic/
 * NOTES:
     - Turn on LEDs on PORTB SW10.2. (board specific)
*/

unsigned cnt;

void interrupt() {
  if (TMR0IF_bit) {
    cnt++;             // Increment value of cnt on every interrupt
    TMR0L  = 96;
    TMR0IF_bit = 0;    // clear TMR0IF
  }
}

void main() {

  ADCON1 |= 0x0F;      // Configure AN pins as digital

  cnt = 0;             // Initialize cnt
  TRISC = 0;           // PORTB is output
  PORTC = 0xFF;        // Initialize PORTB

  TRISB0_bit = 1;

  T0CON  = 0xC4;       // Set TMR0 in 8bit mode, assign prescaler to TMR0
  INTCON = 0xC0;       // Set GIE, PEIE
  TMR0IE_bit = 1;      // Enable TMRO interrupt

  do {
    if (Button(&PORTB, 0, 1, 1)) {
      PORTC = ~PORTC;  // Toggle PORTB LEDs
      cnt = 0;         // Reset cnt
    }
  } while(1);          // endless loop
}


/*    if (oldstate && Button(&PORTB, 0, 1, 0)) {   // Detect one-to-zero transition
      LATC = ~LATC;                              // Invert PORTC
      oldstate = 0;                              // Update flag
    }

    */
