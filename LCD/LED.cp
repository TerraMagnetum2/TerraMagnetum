#line 1 "C:/Users/Quentin/Desktop/MicroC/LED.c"
bit oldstate;

void main() {






 TRISB0_bit = 1;

 TRISC = 0x00;
 LATC4_bit = 1;
 oldstate = 0;

 do {
 if (Button(&PORTB, 0, 1, 1)) {
 oldstate = 1;
 }
 if (oldstate && Button(&PORTB, 0, 1, 0)) {
 LATC4_bit = ~LATC4_bit;
 oldstate = 0;
 }
 } while(1);
}
