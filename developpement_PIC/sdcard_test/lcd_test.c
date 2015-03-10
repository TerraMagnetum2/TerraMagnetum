/*
 * Project name:
     Lcd_EA DOGM162x-A
 * Copyright:
    PAUL ETIENNEY EI-SE4 sisi
    
    */

bit oldstate;
    
    
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
 
TRISA2_bit = 1;
TRISA3_bit =1;
TRISA4_bit =1;         //entree bouton poussoir menu, + et -;
 

TRISB=0x00; //gpio en sortie         --les 8 bits du registre correspondent au data envoyé a l'ecran
TRISA0_bit=0;      //A0 et A1 en sortie correspondant a RS et E
TRISA1_bit=0;

init_lcd();
lcd_write("regler le       contraste ...");
Delay_ms(1000);
lcd_clear();
lcd_write("contraste       -#######       +");

do {
    if (Button(&PORTA, 4, 1, 1)) {               // Detect logical one
      oldstate = 1;                              // Update flag
    }
    if (oldstate && Button(&PORTA, 4, 1, 0)) {   // Detect one-to-zero transition
      E(1);                              // Invert PORTC
      oldstate = 0;                              // Update flag
    }
  } while(1);

}