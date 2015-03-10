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

void init_lcd(){
     TRISA0_bit = 0;  //Enable en sortie
     TRISB = 0x00;    //DB0-7 en sortie (data)
     TRISC4_bit = 0;  //RS en sortie

     LATA0_bit = 1;   //E = 1
     delay_ms(30);
     LATC4_bit = 0;   //RS = 0
     PORTB = 0x3C;    //function set
     LATA0_bit = 0;   //E = 0 (envoi le function set)
     delay_ms(1);
     LATA0_bit = 1;   //E = 1
     delay_ms(1);
     PORTB = 0x0F;    //Display on
     LATA0_bit = 0;   //E = 0 (envoi le display)
     delay_ms(1);
     LATA0_bit = 1;   //E = 1
     delay_ms(1);
     PORTB = 0x01;    //Clear
     LATA0_bit = 0;   //E = 0 (envoi le clear)
     delay_ms(1);
     LATA0_bit = 1;   //E = 1
     delay_ms(1);
     PORTB = 0x06;    //Entry mode set(increment mode/entire shift off)
     LATA0_bit = 0;   //E = 0 (envoi le entry mode set)
     delay_ms(1);
     LATA0_bit = 1;   //E = 1
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