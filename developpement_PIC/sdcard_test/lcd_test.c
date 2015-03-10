/*
 * Project name:
     Lcd_Test (Demonstration of the LCD library routines)
 * Copyright:
     (c) Mikroelektronika, 2011.
 * Revision History:
     20110929:
       - initial release (FJ);
 * Description:
     This code demonstrates how to use LCD 4-bit library. LCD is first
     initialized, then some text is written, then the text is moved.
 * Test configuration:
     MCU:             PIC18F45K22
                      http://ww1.microchip.com/downloads/en/DeviceDoc/41412D.pdf
     dev.board:       easypic7 - 
                      http://www.mikroe.com/easypic/
     Oscillator:      HS-PLL 32.0000 MHz, 8.0000 MHz Crystal
     Ext. Modules:    Character Lcd 2x16
                      http://www.mikroe.com/store/components/various/
     SW:              mikroC PRO for PIC
                      http://www.mikroe.com/mikroc/pic/
 * NOTES:
     - Turn on Lcd backlight switch SW4.6. (board specific)
*/

// Lcd module connections
sbit LCD_RS at LATB4_bit;
sbit LCD_EN at LATB5_bit;
sbit LCD_D4 at LATB0_bit;
sbit LCD_D5 at LATB1_bit;
sbit LCD_D6 at LATB2_bit;
sbit LCD_D7 at LATB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End Lcd module connections

char txt1[] = "mikroElektronika";
char txt2[] = "EasyPIC7";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;                              // Loop variable

void Move_Delay() {                  // Function used for text moving
  Delay_ms(500);                     // You can change the moving speed here
}

void led_init(){
TRISD=0x00;
   PORTD =0x01;
Delay_ms(1000);
PORTD =0x03;
Delay_ms(1000);
PORTD =0b00000111;
Delay_ms(1000);
PORTD =0x0F;
Delay_ms(1000);
PORTD=0x00;
Delay_ms(200);
PORTD=0x0F;
Delay_ms(200);
PORTD=0x00;
Delay_ms(200);
PORTD=0x0F;
Delay_ms(1500);
PORTD=0x00;
}

void E(unsigned short a){
 LATA0_bit =a;
}

void RS(unsigned short b){
LATA1_bit =b;
}

void lcd_write(char c){
Delay_ms(1);
RS(1);
E(1);
delay_ms(1);
PORTB = c;
E(0);
RS(0);
}

void lcd_clear(){
RS(0);
Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x01;          //clear display
E(0);
RS(0);
}

void lcd_setcursor(unsigned short){
RS(0);
Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x01;          //set line
E(0);
RS(0);
}

void curseur_debut(){
RS(0);
Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x02;          //curseur qui revient au debut;
E(0);
RS(1);
}

void main(){
 led_init();

TRISB=0x00; //gpio en sortie         --RS = A0        E=A1
TRISA=0x00;
RS(0);  //rs a 0 pour commande

E(1);
Delay_ms(30);
PORTB = 0x39;               //fonction set    00111001
E(0);

Delay_ms(10);
E(1);
Delay_ms(10);
PORTB = 0x1C;             //bias set
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x52;       //power control
E(0);

 Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x69;        //follower control
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x7F;        //contrast set
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x38;     //function set
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x0F;     //Display on, curson on, cursor blink;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x01;          //clear display
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x06;          //cursor auto-increment;
E(0);


lcd_write('c');
lcd_write('o');
lcd_write('u');
lcd_write('c');
lcd_write('o');
lcd_write('u');
lcd_write(' ');
lcd_write('t');
lcd_write('u');
lcd_write('c');

RS(0);
Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x1C;          //curseur qui revient au debut;
E(0);
RS(1);

lcd_write('o');
lcd_write('u');
lcd_write('c');
lcd_write('o');
lcd_write('u');
lcd_write(' ');
lcd_write('t');
lcd_write('u');




delay_ms(1000);
//lcd_clear();
/*lcd_write('b');
lcd_write('i');
lcd_write('e');
lcd_write('n');
lcd_write('v');
lcd_write('e');
lcd_write('n');
lcd_write('u');
lcd_write('e');

//lcd_setcursor(2);
lcd_write('c');
lcd_write('o');
lcd_write('u');*/


}