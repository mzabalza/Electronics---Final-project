#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

static void initADC(void)
{
    AD1PCFG = 0b1111101111111111;             // PORTB = Digital; RB9 = analog

    TRISBbits.TRISB10 = 1;           // Pin set as input
//    TRISBbits.TRISB1 = 1;

//    AD1CHSbits.CH0NA = 9;           // Channel 0 negative input is VR-
    AD1CHSbits.CH0SA =  0b1010;          // Channel 0 positive input is AN0

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


}

static int ReadADC(int ch)
{
    AD1CHSbits.CH0SA = ch;          // Select input channel
    AD1CON1bits.SAMP = 1;           // Start sampling
    while(!AD1CON1bits.DONE);       // Wait for conversion to complete
    return ADC1BUF0;                // Read conversion result
}

void	proximity_test(void)
{
	TRISFbits.TRISF6 = 0; //LED que muestra choque
	u16 prox = 0;
	while (prox < 400)
	{
				// GO_FORWARD
		initADC();              // Initialize ADC module
		prox = ReadADC(10);

		prox = ADC1BUF0;        // yes then get ADC value
		if (prox > 400)			//detecta obstaculo
		{
			LATFbits.LATF6 = 1;
			LATFbits.LATF2 = 0;
			LATFbits.LATF3 = 0;
			LATFbits.LATF4 = 0;
			LATFbits.LATF5 = 0;
			break;
		}
		else
		{
			motor_driver(1);
			LATFbits.LATF6 = 0;
		}
	}
//	motor_driver(0);			//STOP MOTORS
	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;

}
