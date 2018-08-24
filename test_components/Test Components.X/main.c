#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

static void	test_pins(void)
{
	TRISEbits.TRISE2 = 0;
	TRISEbits.TRISE3 = 0;
	TRISEbits.TRISE4 = 0;
	TRISEbits.TRISE5 = 0;

	LATEbits.LATE2 = 1;
	LATEbits.LATE3 = 1;
	LATEbits.LATE4 = 1;
	LATEbits.LATE5 = 1;

}
int main(void)
{
	u16 start;
//	conf_file.c
//	test_proximity_sensor();
//    test_mux2();
//	motor_driver();
	mux_final();
//	while (1)
//	{
//		start = start_button(); //MANEJAR EL START_BUTTON COMO UNA INTERRUPCION
//		if (start_button)
//			test_mux2();
//	}
//    return (0);
}

//TODO
//
//1 CREAR ORDER PIECES
//2 SENSOR CON INTERRUPCIONS
//3 CREAR DIBUJOS EN LED PANEL --> | <-- | ... | :) | :( | X( |
//
//
