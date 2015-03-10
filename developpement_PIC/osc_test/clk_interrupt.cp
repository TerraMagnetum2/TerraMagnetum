#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/pic_terra_magnetum/osc_test/clk_interrupt.c"
#line 48 "C:/Users/TikTik's laptop/Desktop/COURS/pic_terra_magnetum/osc_test/clk_interrupt.c"
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
#line 83 "C:/Users/TikTik's laptop/Desktop/COURS/pic_terra_magnetum/osc_test/clk_interrupt.c"
}
