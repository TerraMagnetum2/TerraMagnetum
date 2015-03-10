#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/debugtest/debugtest.c"
#line 24 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/debugtest/debugtest.c"
unsigned short i;

void main() {

 TRISC = 0;




 do {
 PORTC=1;

 for(i=0;i<7;i++){
 PORTC =2*PORTC ;
 Delay_ms(100);
 }
 for(i=0;i<6;i++){
 PORTC /=2;
 Delay_ms(100);
 }
 } while(1);
 }
