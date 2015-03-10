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

unsigned short minute=0;
unsigned short heure=0;
bit oldstate;
int cnt;

void interrupt() {
  if (TMR0IF_bit) {
    cnt++;             // Increment value of cnt on every interrupt
    TMR0L  = 6;     //initialisation de la valeur du timer0    cnt=1200 pour 1min         et prechargement 96
    //TMR0H =0x06;
  //TMR0L=  62336;
    TMR0IF_bit = 0;    // clear TMR0IF
  }
}

   
void main() {
              // Set SPI1 module to master mode, clock = Fosc/64, data sampled at the middle of interval, clock idle state low and data transmitted at low to high edge
             SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);

TRISB=0x01;                       //pin b0 en entrée  pour l'interrupteur
PORTB =0xF0;
  ADCON1 |= 0x0F;      // Configure AN pins as digital
 // ANSEL = 0;  //passage des entrees analogiques au mode numerique;
  cnt = 0;             // Initialize cnt
  //TRISB0_bit = 1;
  //T0CON  = 0b11000111;       // Set TMR0 in 8bit mode, assign prescaler to TMR0     //prescaler a 1/256 * cnt = 20 =1s        avec cnt ==1200  1min
  T0CON  = 0b01000111;             //timer 16bits
  INTCON = 0xC0;       // Set GIE, PEIE     interruption generale activée, interruption peripherique
  TMR0IE_bit = 1;      // Enable TMRO interrupt        interruption timer0 activée
  
  TRISC = 0;           // PORTC is output
  PORTC=0x2A;          //allumage led   00001010
  oldstate=0;
  TMR0ON_bit =1;
 // Mmc_Fat_Init();
  do {
  
    if(Button(&PORTB, 0, 0.5, 1)){         // Detect logical one
    oldstate =  1;
    }
    if(oldstate && Button(&PORTB, 0, 0.2, 0)){         // Detect logical one
    TMR0ON_bit =~TMR0ON_bit;
    PORTC=1;
    oldstate =  0;
    }
   /* if(oldstate && Button(&PORTB, 0, 1, 0)){      // Detect one-to-zero transition
    TMR0ON_bit=0;
    
     oldstate = 0;                           // Update flag
     }
     */
   // if (cnt>20) {
   if (cnt>7) {
      //minute++;
      PORTC =~PORTC; 
      cnt=0;                           // Update compteur
    }
    //if( minute>=60)heure++;



  } while(1);                                    // Endless loop
}