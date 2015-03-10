#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/lcd_test.c"
#line 27 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/lcd_test.c"
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


char txt1[] = "mikroElektronika";
char txt2[] = "EasyPIC7";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;

void Move_Delay() {
 Delay_ms(500);
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
PORTB = 0x01;
E(0);
RS(0);
}

void lcd_setcursor(unsigned short){
RS(0);
Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x01;
E(0);
RS(0);
}

void curseur_debut(){
RS(0);
Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x02;
E(0);
RS(1);
}

void main(){
 led_init();

TRISB=0x00;
TRISA=0x00;
RS(0);

E(1);
Delay_ms(30);
PORTB = 0x39;
E(0);

Delay_ms(10);
E(1);
Delay_ms(10);
PORTB = 0x1C;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x52;
E(0);

 Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x69;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x7F;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x38;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x0F;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x01;
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x06;
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
PORTB = 0x1C;
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
#line 232 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/lcd_test.c"
}
