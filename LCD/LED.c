bit oldstate;                                    // Old state flag

void main() {

  //ANSEL  = 0;                                    // Configure AN pins as digital I/O
  //ANSELH = 0;
  C1ON_bit = 1;                                  // Disable comparators
  C2ON_bit = 1;

  TRISB0_bit = 1;                                // set RB0 pin as input

  TRISC = 0x00;                                  // Configure PORTC as output
  LATC4_bit = 1;                                  // Initial PORTC value
  oldstate = 0;

  do {
    if (Button(&PORTB, 0, 1, 1)) {               // Detect logical one
      oldstate = 1;                              // Update flag
    }
    if (oldstate && Button(&PORTB, 0, 1, 0)) {   // Detect one-to-zero transition
      LATC4_bit = ~LATC4_bit;                            // Invert PORTC
      oldstate = 0;                              // Update flag
    }
  } while(1);                                    // Endless loop
}