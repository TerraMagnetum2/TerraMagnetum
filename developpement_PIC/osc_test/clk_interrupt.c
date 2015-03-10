/*unsigned char cpt=0; //compteur d'interruption
unsigned char sec=0; //variable pour stocker les secondes


void interrupt() {
cpt++; // incrémentation du compteur de dépassement
INTCON.F2=0; //on remet à 0 le bit TMROIF
}

int main (void){
TMR1ON = 0; // arrêter Timer1
TMR1H = 0x00; //charger TMR1H/L à 0000 (1 INT / 2s)
TMR1L = 0x00; //charger TMR1H/L à 0000 (1 INT / 2s)

// prescaler 00, OSCEN=1, T1SYNC~=1, TM1CS = 1 (ext), TIM1=0 (OFF)
T1CON = 0x0E ;

TMR1IF = 0; // nettoyer flag interruption TMR1
TMR1IE = 1; // autoriser interruption TMR1
PEIE = 1; // autoriser Peripheral Interrupts
GIE = 1; // autoriser Global Interrupts

TMR1ON = 1; // lancer le timer1


 */

/*
#pragma config MCLRE=OFF
#pragma config WDT =ON
#pragma config LVP =OFF
#pragma config OSC =XT
 */


//OPTION_REG = 0x04; //tmr0 réglé en oscillation interne et prédiviseur=32
//INTCON = 0xA0; //GIE à 1, PEIE à 1, TMROIE à 1
  /*
  asm {
 bsf STATUS,RP0
 bcf STATUS,RP1
  bcf OSCCON,SCS
   bcf STATUS,RP0

   __config _CONFIG1, _XT_OSC & _WDT_OFF & _LVP_OFF
   
   */
 int i;
void main(){
TRISC=0x00;
SPI1_Init();

for(i=0;i<5;i++) {
Delay_ms(200);
PORTC=0xFF;
Delay_ms(200);
PORTC=0x00;
}
Delay_ms(1500);

while(1){
PORTC=0xFF;
Delay_ms(1000);
PORTC=0x00;
Delay_ms(1000);
}
/*
if(1){
       TRISC=0xFF;
       Delay_ms(100);
       TRISC=0;
       Delay_ms(100);
       TRISC=0xFF;
       Delay_ms(100);
       TRISC=0;
       Delay_ms(100);
       TRISC=0xFF;
       Delay_ms(100);
              TRISC=0x00;
       }
}
*/
}


  /*
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef _XTAL_FREQ
 // Unless specified elsewhere, 4MHz system frequency is assumed
 #define _XTAL_FREQ 4000000
#endif

char temps;
int impulse;
int k;
int sp ;
float  litre;

void interrupt timer_et_RB5(void)
{
        if (T0IF) // interruption timer, (65ms écoulées)
        {
                temps++;
                if (temps == 15) // si 1 seconde écoulée
                        {

                                sp++;
                                temps = 0;
                        }
                T0IF = 0;
        }
}

void
main(void)
{


ANSELH=0;
ANSEL=0;
TRISA=0;
TRISB = (0x01);
TMR0 = 0;
INTCON = 0b10110000; // autorisation des interruptions par le timer et RB4 à RB7
OPTION = 0b11000111; // prédiviseur à 256 entrée : clock/4
TRISC=0;
while(1)

}

*/