void main(){
TRISC =0x00; //en sortie


while(1){

delay_ms(800);
PORTC=0xFF;

delay_ms(800);
PORTC=0x00;
}
}