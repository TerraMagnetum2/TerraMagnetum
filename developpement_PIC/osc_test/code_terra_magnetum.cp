#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/osc_test/code_terra_magnetum.c"
#line 25 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/osc_test/code_terra_magnetum.c"
unsigned short minute=0;
unsigned short heure=0;
bit oldstate;
int cnt;

void interrupt() {
 if (TMR0IF_bit) {
 cnt++;
 TMR0L = 6;


 TMR0IF_bit = 0;
 }
}


void main() {

 SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);

TRISB=0x01;
PORTB =0xF0;
 ADCON1 |= 0x0F;

 cnt = 0;


 T0CON = 0b01000111;
 INTCON = 0xC0;
 TMR0IE_bit = 1;

 TRISC = 0;
 PORTC=0x2A;
 oldstate=0;
 TMR0ON_bit =1;

 do {

 if(Button(&PORTB, 0, 0.5, 1)){
 oldstate = 1;
 }
 if(oldstate && Button(&PORTB, 0, 0.2, 0)){
 TMR0ON_bit =~TMR0ON_bit;
 PORTC=1;
 oldstate = 0;
 }
#line 78 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/osc_test/code_terra_magnetum.c"
 if (cnt>7) {

 PORTC =~PORTC;
 cnt=0;
 }




 } while(1);
}
