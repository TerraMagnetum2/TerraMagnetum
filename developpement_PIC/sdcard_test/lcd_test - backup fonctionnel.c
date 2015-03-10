/*
 * Project name:
     Lcd_EA DOGM162x-A
 * Copyright:
    PAUL ETIENNEY EI-SE4 sisi
    
    */
    
    
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
void RS(unsigned short a){
 LATA1_bit =a;
}

void init_lcd(){
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
PORTB = 0b00111000;     //function set      00111000
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x0F;     //Display on, curson on, cursor blink;    00001111
E(0);

Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0x01;          //clear display
E(0);


Delay_ms(10);
E(1);
delay_ms(10);
PORTB = 0b00000110;          //cursor auto-increment;     00000110      entry mode set
E(0);

 RS(1);




}


void set_cursor(short col, short ligne){
Delay_ms(1);
RS(0);
E(1);
delay_ms(1);
PORTB = 0x02;          //curseur qui revient au debut;
E(0);
Delay_ms(1);
E(1);
delay_ms(1);
if(ligne ==1)PORTB = 64*ligne + col+128;
E(0);
}




void lcd_write(char *c){
int i=0;
RS(1);
while( c[i]!='\0'){
E(1);
delay_ms(1);
PORTB = c[i];
E(0);
if(i==15){
         RS(0);
         E(1);
         delay_ms(1);
         PORTB = 192;
             E(0);
             RS(1);
             }
Delay_ms(1);
i++;
  }
RS(0);

}

void lcd_clear(){
RS(0);
E(1);
delay_ms(1);
PORTB = 0x01;          //clear display
Delay_ms(1);
E(0);
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

init_lcd();
lcd_write("regler le       contraste ...");
Delay_ms(1000);
lcd_clear();
lcd_write("contraste       -#######       +");

}