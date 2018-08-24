#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

static u8 read_char(void)
{
//	LATFbits.LATF1 = 1;
	while (!U2STAbits.URXDA); //wait while buffer is full
//	LATFbits.LATF1 = 0;
	return (U2RXREG);
}

static void send_char (u8 value)
{
	U1STAbits.UTXEN = 1;
	while (U1STAbits.UTXBF); //Wait while buffer is full
	U1TXREG = value;
}

void	test_bluetooth(void)
{
	U2MODE = 0;
	U2MODEbits.BRGH = 0;                // Baud Rate = 9600
	U2BRG = 51;
    U2MODEbits.SIDL = 0;                // Continue operation in SLEEP mode
    U2MODEbits.IREN = 0;                // IrDA is disabled
    U2MODEbits.RTSMD = 1;               // U1RTS pin isn't in Flow Control mode
    U2MODEbits.UEN = 0b00;              // U1TX, U1RX are enabled
    U2MODEbits.WAKE = 1;                // Wake-up enabled
    U2MODEbits.LPBACK = 0;              // Loopback mode is disabled
    U2MODEbits.RXINV = 0;               // U1RX IDLE state is '1'
    U2MODEbits.PDSEL = 0b00;            // 8-bit data, no parity
    U2MODEbits.STSEL = 0;               // 1 stop bit
    U2STAbits.UTXINV = 0;               // U1TX IDLE state is '1'
    U2MODEbits.ON = 1;                  // UART1 is enabled
    U2STAbits.URXEN = 1;                // UART1 receiver is enabled
    U2STAbits.UTXEN = 1;                // UART1 transmitter is enabled

	PORTFbits.RF4 = 0;
	PORTFbits.RF5 = 0;

	TRISDbits.TRISD8 = 1;
	TRISBbits.TRISB9 = 0;
	TRISBbits.TRISB10 = 0;
	LATBbits.LATB10 = 0;
	LATBbits.LATB9 = 1;

	TRISFbits.TRISF1 = 0;
	LATFbits.LATF1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISDbits.TRISD3 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD4 = 0;
    LATDbits.LATD2 = 1;
    LATDbits.LATD3 = 1;
    LATDbits.LATD1 = 1;
    LATDbits.LATD4 = 1;



	u8 flag = 0;
	u8 value = 0;
	while(1)
	{
		if (flag && PORTDbits.RD8)
		{
			LATBbits.LATB10 = LATBbits.LATB10 ? 0 : 1;
			flag = 0;
		}
		else if (!PORTDbits.RD8)
			flag = 1;
	//	LATFbits.LATF1 = 1;
		value = read_char();
	//		LATFbits.LATF1 = 0;
		if (value)
			LATFbits.LATF1 = 1;
		else
			LATFbits.LATF1 = 0;

		if (value == 89 || value == 121)
		{
			LATDbits.LATD3 = 0;
		}
		else if (value == 78 || value == 110)
		{
			LATDbits.LATD3 = 1;
		}
		//send_char(value);
	}
}
