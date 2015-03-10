#line 1 "C:/Users/tiktik's laptop/Desktop/COURS/TERRA_MAGNETUM_2/developpement_PIC/sdcard_test/sdcard_test2.c"



sfr sbit Mmc_Chip_Select at RC0_bit;
sfr sbit Mmc_Chip_Select_Direction at TRISC0_bit;


unsigned short i=0;
short fhandle;
int aInt = 368;
char str[5];
char str2[5];

int cpt =0;

short makedirsuccess=-1;
short chgdirsuccess =-1;

char WriteBuffer[100]="24/02/2015 09:58 tmp= ";

void erreur(){

 PORTE=0x00;
 Delay_ms(100);
 PORTE=0x02;
 Delay_ms(100);
 PORTE=0x00;
 Delay_ms(100);
 PORTE=0x02;
 Delay_ms(100);
 PORTE=0x00;
 Delay_ms(100);
 PORTE=0x02;
 Delay_ms(100);
 PORTE=0x00;
 Delay_ms(100);
 PORTE=0x02;
 Delay_ms(100);
 PORTE=0x00;
 Delay_ms(100);
 PORTE=0x02;
 Delay_ms(100);
 PORTE=0x00;
 Delay_ms(100);
 PORTE=0x02;
 Delay_ms(100);
 PORTE=0x00;

}


void ecriture_fichier(){


SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE,_SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);



if( FAT32_Init()==0){
 PORTE = 0x04;
 Delay_ms(700);


 SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
 Delay_ms(500);
 PORTE =0x02;

 if (FAT32_ChangeDir("terramag")==-1){
 makedirsuccess=FAT32_MakeDir("terramag");
 chgdirsuccess=FAT32_ChangeDir("terramag");
 if( makedirsuccess ==-1 || chgdirsuccess ==-1){
 erreur();

 }
 }
 fhandle = FAT32_Open("log.TXT", 0x04);
 if (fHandle >= 0) {
 FAT32_Write(fhandle, Writebuffer,100);
 }
 else erreur();
 if(FAT32_Close(fhandle)==-1)erreur();

 PORTE=0x04;
 Delay_ms(150);
 PORTE=0x00;
 Delay_ms(150);
 PORTE=0x04;
 Delay_ms(150);
 PORTE=0x00;
 Delay_ms(150);
 PORTE=0x04;

 } else
 {
 erreur();
 }



}

void init(){
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

void main(){

TRISD= 0x00;
TRISE =0;
PORTE=0;
init();
Delay_ms(200);
PORTD =0x05;


sprintf(str,"%d",12345);
strcat(WriteBuffer,str);


 ecriture_fichier();

PORTD =0x0A;

}
