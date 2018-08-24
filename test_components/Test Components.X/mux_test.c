
#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

static void initMux(void)
{
	//pines para el mux configurados en OUTPUT
	TRISGbits.TRISG9 = 0; //S0
	TRISGbits.TRISG8 = 0; //S1
	TRISGbits.TRISG7 = 0; //S2
	TRISGbits.TRISG6 = 0; //S3

	//Seleccion del I7 : 1110
	LATGbits.LATG9 = 1;
	LATGbits.LATG8 = 1;
	LATGbits.LATG7 = 1;
	LATGbits.LATG6 = 0;
}

static void initADC(void)
{
    AD1PCFG = 0b1111110111111111;             // PORTB = Digital; RB9 = analog
	
    TRISBbits.TRISB9 = 1;           // Pin set as input
//    TRISBbits.TRISB1 = 1;

//    AD1CHSbits.CH0NA = 9;           // Channel 0 negative input is VR-
    AD1CHSbits.CH0SA =  0b1001;          // Channel 0 positive input is AN0

    AD1CON1bits.FORM = 0;           // Integer 16-bit output

    AD1CON1bits.SSRC = 0b111;       // Internal counter ends sampling and starts conversion

    AD1CSSL = 0;                    // No scanning required

    AD1CON2bits.VCFG = 0;           // Internal voltage references

    AD1CON2bits.CSCNA = 0;          // Do not scan inputs

    AD1CON2bits.BUFM = 0;           // Buffer configured as one 16-word buffer

    AD1CON2bits.ALTS = 0;           // Always use MUX A input multiplexer settings

    AD1CON3bits.ADRC = 0;           // Clock derived from PBclock
    AD1CON3bits.ADCS = 0b00111111;  // TAD = 2*TPB

    AD1CON3bits.SAMC = 0b11111;     // 31 TAD auto-sample time

    AD1CON1bits.ON = 1;             // A/D converter module is operating


	 //PREPARANDO SALIDAS LED
    TRISFbits.TRISF1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISDbits.TRISD3 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD4 = 0;
//
	LATFbits.LATF1 = 0;
    LATDbits.LATD2 = 1;
    LATDbits.LATD3 = 1;
    LATDbits.LATD1 = 1;
    LATDbits.LATD4 = 1;


}

static int ReadADC(int ch)
{
    AD1CHSbits.CH0SA = ch;          // Select input channel
    AD1CON1bits.SAMP = 1;           // Start sampling
    while(!AD1CON1bits.DONE);       // Wait for conversion to complete
    return ADC1BUF0;                // Read conversion result
}


void test_mux2(void)
{
		initADC();              // Initialize ADC module
		initMux();
		int value;

		while (1)
		{
			value = ReadADC(9);
			if (value == 0)
			{
				LATFbits.LATF1 = 0;
				LATDbits.LATD1 = 1;
				LATDbits.LATD3 = 1;
				LATDbits.LATD4 = 1;
			}
			else if (value > 300 && value < 380) //INPUT 2 verde //ADELANTE
				motor_driver(1);
			else if (value < 450) //inpt 3 rojo (amarillo?)  //ATRAS
				motor_driver(2);
			else if (value < 550) //inpt 4  // LEFT
				motor_driver(3);
			else if (value > 550 && value < 600) //inpt 5  //RIGHT
				motor_driver(4);
			else if (value > 700 && value < 750) //inpt 5  //RIGHT
				motor_driver(4);


			else					//azul //DERECHA
			{
				proximity_test();
			}
		}
}
//LUZ VERDE
//LATFbits.LATF1 = 1;
//LATDbits.LATD1 = 1;
//LATDbits.LATD3 = 1;