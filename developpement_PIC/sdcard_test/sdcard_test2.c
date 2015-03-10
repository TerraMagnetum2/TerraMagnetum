
    
         // MMC module connections
sfr sbit Mmc_Chip_Select at RC0_bit;
sfr sbit Mmc_Chip_Select_Direction at TRISC0_bit;
// MMC module connections

unsigned short i=0;
short fhandle;
int aInt = 368;
char str[5];
char str2[5];

int cpt =0;

short makedirsuccess=-1;
short chgdirsuccess =-1;

char WriteBuffer[100]="24/02/2015 09:58 tmp= ";            //chaine de caractère  à écrire

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

// Initialize SPI1 module
SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV64, _SPI_DATA_SAMPLE_MIDDLE,_SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);



if( FAT32_Init()==0){ //success
    PORTE = 0x04;
    Delay_ms(700);    //alumage led verte pour montrer que la carte a été détecté

    // reinitialize SPI1 at higher speed
    SPI1_Init_Advanced(_SPI_MASTER_OSC_DIV4, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_LOW_2_HIGH);
    Delay_ms(500);
    PORTE =0x02;

    if (FAT32_ChangeDir("terramag")==-1){                                              //si dossier non trouvé renvoie -1, sinon se place dedans
            makedirsuccess=FAT32_MakeDir("terramag");             // on le crée
            chgdirsuccess=FAT32_ChangeDir("terramag");
            if( makedirsuccess ==-1 || chgdirsuccess ==-1){         //si erreur
                erreur();
                      //instrution erreur a rajouter pour affichage sur lcd
                      }
    }
    fhandle = FAT32_Open("log.TXT", 0x04);    //creation du fichier si inexistant et ouverture, append mode (pointeur a la fin)
    if (fHandle >= 0) {        // fichier bien ouvert
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

 }  else
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
//ANSEL = 0;                      // Configure AN pins as digital
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