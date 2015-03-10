#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/quentin/quentin.c"
void main() {

sbit LCD_RS at RC4_bit;
sbit LCD_EN at RC5_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D3 at RB3_bit;
sbit LCD_D2 at RB2_bit;
sbit LCD_D1 at RB1_bit;
sbit LCD_D0 at RB0_bit;

sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_EN_Direction at TRISC5_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D3_Direction at TRISB3_bit;
sbit LCD_D2_Direction at TRISB2_bit;
sbit LCD_D1_Direction at TRISB1_bit;
sbit LCD_D0_Direction at TRISB0_bit;
Lcd_Init();
Lcd_Out(1, 3, "Hello!");
}
