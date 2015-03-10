// LCD module connections
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
     TRISA0_bit = 0;  //Enable en sortie
     TRISB = 0x00;    //DB0-7 en sortie (data)
     TRISC4_bit = 0;  //RS en sortie

     E(1);
     delay_ms(30);
     LATC4_bit = 0;   //RS = 0
     PORTB = 0x22;    //function set
     E(0);            //(envoi le function set)
     delay_ms(1);
     E(1);
     delay_ms(1);
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = 0xCC;
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = 0x00;    //Display
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = 0xFF;
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = 0x00;    //Clear
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = 0x11;
     E(0);
     delay_ms(2);
     E(1);
     delay_ms(1);
     PORTB = 0x00;    //Entry mode set
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = 0x77;
     E(0);
     delay_ms(1);
}

void lcd_clear() {
     E(1);
     delay_ms(1);
     PORTB = 0x00;    //Clear
     E(0);
     delay_ms(1);
     E(1);
     PORTB = 0x11;
     E(0);
     delay_ms(1);
}

void lcd_write(char a) {
     E(1);
     delay_ms(1);
     LATC4_bit = 1;
     PORTB = a;
     E(0);
     delay_ms(1);
     E(1);
     delay_ms(1);
     PORTB = a;
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
     LATA0_bit = 1;
     delay_ms(1);
     LATC4_bit = 0;
     PORTB = 0x1B;
     LATA0_bit = 0;
     delay_ms(1);
}

void

void main(){
     int i;
     init_lcd();
     lcd_write('U');
     /*for(i = 0; i < 50; i++) {
             delay_ms(500);
             display_shiftl();
     } */
}