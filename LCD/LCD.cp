#line 1 "C:/Users/Quentin/Desktop/MicroC/LCD.c"

bit LCD_RS at RC4_bit;
bit LCD_EN at RA0_bit;
bit LCD_D0 at RB0_bit;
bit LCD_D1 at RB1_bit;
bit LCD_D2 at RB2_bit;
bit LCD_D3 at RB3_bit;
bit LCD_D4 at RB4_bit;
bit LCD_D5 at RB5_bit;
bit LCD_D6 at RB6_bit;
bit LCD_D7 at RB7_bit;

void init_lcd(){
 TRISA0_bit = 0;
 TRISB = 0x00;
 TRISC4_bit = 0;

 LATA0_bit = 1;
 delay_ms(30);
 LATC4_bit = 0;
 PORTB = 0x3C;
 LATA0_bit = 0;
 delay_ms(1);
 LATA0_bit = 1;
 delay_ms(1);
 PORTB = 0x0F;
 LATA0_bit = 0;
 delay_ms(1);
 LATA0_bit = 1;
 delay_ms(1);
 PORTB = 0x01;
 LATA0_bit = 0;
 delay_ms(1);
 LATA0_bit = 1;
 delay_ms(1);
 PORTB = 0x06;
 LATA0_bit = 0;
 delay_ms(1);
 LATA0_bit = 1;
 delay_ms(1);
}

void lcd_write(char a) {
 delay_ms(1);
 LATC4_bit = 1;
 PORTB = a;
 LATA0_bit = 0;
 delay_ms(1);
}

void main(){
 init_lcd();
 lcd_write('w');
}
