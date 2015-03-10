#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/pic_terra_magnetum/osc_test/oscillateur_test.c"
void main(){
TRISC =0x00;


while(1){

delay_ms(800);
PORTC=0xFF;

delay_ms(800);
PORTC=0x00;
}
}
