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

void E(int a) {
 LATA0_bit = a;
}

void init_lcd(){
 TRISA0_bit = 0;
 TRISB = 0x00;
 TRISC4_bit = 0;

 E(1);
 delay_ms(30);
 LATC4_bit = 0;
 PORTB = 0x3C;
 E(0);
 delay_ms(1);
 E(1);
 delay_ms(1);
 PORTB = 0x0F;
 E(0);
 delay_ms(1);
 E(1);
 delay_ms(1);
 PORTB = 0x01;
 E(0);
 delay_ms(1);
 E(1);
 delay_ms(1);
 PORTB = 0x06;
 E(0);
 delay_ms(1);
 E(1);
 delay_ms(1);
}

void lcd_write(char a) {
 E(1);
 delay_ms(1);
 LATC4_bit = 1;
 PORTB = a;
 E(0);
 delay_ms(1);
}

void lcd_clear() {
 E(1);
 delay_ms(1);
 LATC4_bit = 0;
 PORTB = 0x01;
 E(0);
 delay_ms(1);
}

void lcd_msg(char *s) {
 int i = 0;
 while(s[i] != '\0') {
 lcd_write(s[i]);
 i++;
 }
}

void display_shiftl() {
 E(1);
 delay_ms(1);
 LATC4_bit = 0;
 PORTB = 0x1B;
 E(0);
 delay_ms(1);
}

void main(){
 int i;
 init_lcd();
 lcd_msg("abcdefgh12345678");
#line 90 "C:/Users/Quentin/Desktop/MicroC/LCD.c"
}
