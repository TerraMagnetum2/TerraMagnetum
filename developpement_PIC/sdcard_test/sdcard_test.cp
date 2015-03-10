#line 1 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/sdcard_test.c"
#line 205 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/sdcard_test.c"
 sbit Mmc_Chip_Select at LATC7_bit;
sbit Mmc_Chip_Select_Direction at TRISC7_bit;


void main() {

 ANSEL0 = 0;



PORTC =0x0A;

 Delay_ms(100);

PORTC =0x05;




 SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);


 if (Mmc_Fat_Init() == 0) {

 SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
#line 245 "C:/Users/TikTik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/sdcard_test.c"
 }
 else {


 }
}
