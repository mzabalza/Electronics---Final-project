#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

void	test_ledmatrix(void)
{

	IEC0CLR=0x03800000;    // disable all interrupts
//	SPI2CON = 0;           // Stops and resets the SPI2.

//	flag=SPI2BUF;         // clears the receive buffer
	IFS0CLR=0x03800000;    // clear any existing event
	IPC5CLR=0x1f000000;    // clear the priority
	IPC5SET=0x0d000000;    // Set IPL=3, Subpriority 1
	IEC0SET=0x03800000;    // Enable RX, TX and Error interrupts
//	SPI2BRG=0x1;           // use FPB/4 clock frequency
//	SPI2STATCLR=0x40;      // clear the Overflow
//	SPI2CON=0x8220;        // SPI ON, 8 bits transfer, SMP=1, Master mode
//	IEC0CLR=0x03800000;    // disable all interrupts
//
//
//	SPI1CON = 0;           // Stops and resets the SPI1.
//	flag=SPI1BUF;         // clears the receive buffer
//	SPI1BRG=0x1;           // use FPB/4 clock frequency
//	SPI1STATCLR=0x40;      // clear the Overflow
//	SPI1CON=0x8220;        // SPI ON, 8 bits transfer, SMP=1, Master mode
	// from now on, the device is ready to transmit and receive data
//	SPI1BUF='A';           // transmit an A character

	TRISFbits.TRISF6 = 0; // clock
	LATFbits.LATF6 = 0;
	
	TRISFbits.TRISF5 = 0; // MR
	LATFbits.LATF5 = 1;
	LATFbits.LATF5 = 0;
	LATFbits.LATF5 = 1;

	TRISBbits.TRISB9 = 0;// DATAB
	LATBbits.LATB9 = 1;

	TRISGbits.TRISG8 = 0; //DATAA1;
	LATGbits.LATG8 = 0;

	TRISGbits.TRISG7 = 0; //DATAA2;
	LATGbits.LATG7 = 0;

	u8 i;
	u8 value;
	u8 value2;
	value = 0b10000000;
	value2 = 0b10000000;
	i = 0;
	u8 flag = 1;
	u8 j = 0;
	u8 t = 0;

	while (1)
	{	
		if (!flag && PORTDbits.RD8)
		{
			if (j > 8)
				j = 0;
//		value = 0b00000001 << j++;
//			value2 = 0b00000001;
			value = 0b00000010;
			value2 = 0b11111111;
			flag = 1;
			i = 0;
			while (i < 8)
			{
				send_shiftA(value, i);
				send_shiftB(value2, i);
				LATFbits.LATF6 = 1;
				t = 0;
				while (t++ < 10);
				LATFbits.LATF6 = 0;
				i++;
			}
		}
	if (!PORTDbits.RD8)
		flag = 0;
	}
}
 void send_shiftA(u8 value, u8 i)
{
	 u8 t = 0;
	 u8 tmp;
		if (value & (0b1 << i))
			tmp = 0b1;
		else
			tmp = 0b0;
		LATGbits.LATG8 = tmp;
}
 void send_shiftB(u8 value, u8 i)
{
	 u8 t = 0;
	 u8 tmp;
	 if (value & (0b1 << i))
		 tmp = 0b1;
	 else
		 tmp = 0b0;
		LATGbits.LATG7 = tmp;
}