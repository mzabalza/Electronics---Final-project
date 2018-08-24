#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

void	proximity_sensor(void)
{
	// http://umassamherstm5.org/tech-tutorials/pic32-tutorials/pic32mx220-tutorials/adc
	// http://ww1.microchip.com/downloads/en/DeviceDoc/61104E.pdf
	//LATxbits.LATxx = 0 apagado = 1 encendido

	u16 prox = 0;
	AD1PCFG = 0b1111101111111111;             // PORTB = Digital; RB10 = analog
	 TRISBbits.TRISB10 = 1;

	AD1CON1 = 0x0000;             // SAMP bit = 0 ends sampling CHAUME
	AD1CON1bits.ASAM = 1;		// Sampling begins immediately; SAMP bity is automatically set
	AD1CON1bits.SSRC = 0b111;
// and starts converting
	AD1CHSbits.CH0SA = 0b1001;


	AD1CSSL = 0;
	AD1CON3 = 0x0002;             // Manual Sample, TAD = internal 6 TPB
	AD1CON2 = 0;				//AD1CON2 for using interrupts
	AD1CON1SET = 0x8000;          // turn on the ADC ????? PARA TODOS LOS PUERTOS?? Y CERRAR ADC???
//	TRISFbits.TRISF1 = 0;


	TRISFbits.TRISF6 = 0; //LED que muestra choque



//	while (1)                   // repeat continuously
//	{
//		AD1CON1SET = 0x0002;        // start sampling ...
//		while( AD1CON1bits.SAMP )
//		{
//			if (!PORTDbits.RD8)
//			{
//				AD1CON1bits.SAMP = 0;
//			}
//			LATFbits.LATF1 = 1;
//		}
//		LATFbits.LATF1 = 0;
		AD1CON1CLR = 0x0002;        // start Converting
		while (!AD1CON1bits.DONE)
	//	{
//			LATDbits.LATD3 = 0;
//		}
//		LATDbits.LATD3 = 1;
		while (!(AD1CON1 & 0x0001));// conversion done?
//		{
//			LATDbits.LATD3 = 1; //encender LED
//		}
//		LATDbits.LATD3 = 1;
		prox = ADC1BUF0;        // yes then get ADC value
		if (prox > 400)
		{
			LATFbits.LATF6 = 1;
		}
		else
		{
			LATFbits.LATF6 = 0;

		}
//	}                               // repeat
}