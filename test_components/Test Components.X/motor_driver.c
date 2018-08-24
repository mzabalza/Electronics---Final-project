
#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

//https://www.rakeshmondal.info/dc-motor-control-introhttps://www.rakeshmondal.info/dc-motor-control-intro

static void	set_motors(void)
{
	//MOTOR 1 output
	TRISFbits.TRISF2 = 0;
	TRISFbits.TRISF3 = 0;
	//MOTOR 2 output
	TRISFbits.TRISF4 = 0;
	TRISFbits.TRISF5 = 0;

	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;
}
static void stop_motor(void)
{
	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;
}
static void	go_forward(void)
{
	//INTERRUPTIONS{ meterlo en una funcion
	 //TIMER va desde TMR2 a PR2
    PR2 = 62500;
    TMR2 = 0;
    T2CONbits.ON = 1;       //Encender clock
    T2CONbits.TCKPS = 0b100;    //TCKPS<2:0> 011 = 1:8 prescale value
    T2CONbits.TGATE = 0;
    IFS0bits.T2IF = 0;       //T2IF = watchdog, cuando TMR2 = PR2 -> T2IF = 1; [IMPORTANTE DEVOLVER A CERO]
    IEC0bits.T2IE = 1;
    IPC2bits.T2IP = 5;
	//}INTERRUPTIONS//

	LATFbits.LATF1 = 1; //Encender lucecilla
	int i = 1000;
	while(i)
	{
		//MOTOR 1
		LATFbits.LATF2 = 1;
		LATFbits.LATF3 = 0;
		//MOTOR 2
		LATFbits.LATF4 = 1;
		LATFbits.LATF5 = 0;
		i--;
	}
	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;
}

static void	go_backwards(void)
{
	LATFbits.LATF1 = 1; //Encender lucecilla
	int i = 1000;
	while(i)
	{
		//MOTOR 1
		LATFbits.LATF2 = 0;
		LATFbits.LATF3 = 1;
		//MOTOR 2
		LATFbits.LATF4 = 0;
		LATFbits.LATF5 = 1;
		i--;
	}
	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;
}

static void	turn_right(void)
{
	LATFbits.LATF1 = 1; //Encender lucecilla
	int i = 1000;
	while(i)
	{
		//MOTOR 1
		LATFbits.LATF2 = 0;
		LATFbits.LATF3 = 1;
		//MOTOR 2
		LATFbits.LATF4 = 1;
		LATFbits.LATF5 = 0;
		i--;
	}
	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;
}
static void	turn_left(void)
{
	LATFbits.LATF1 = 1; //Encender lucecilla
	int i = 1000;
	while(i)
	{
		//MOTOR 1
		LATFbits.LATF2 = 1;
		LATFbits.LATF3 = 0;
		//MOTOR 2
		LATFbits.LATF4 = 0;
		LATFbits.LATF5 = 1;
		i--;
	}
	LATFbits.LATF2 = 0;
	LATFbits.LATF3 = 0;
	LATFbits.LATF4 = 0;
	LATFbits.LATF5 = 0;
}

void	motor_driver(int direction)
{


	
	TRISFbits.TRISF1 = 0; //Lucecilla output
	set_motors();
	if (direction == 0)
		stop_motor();
	else if (direction == 1)
		go_forward();
	else if (direction == 2)
		go_backwards();
	else if (direction == 3)
		turn_right();
	else if (direction == 4)
		turn_left();
	LATFbits.LATF1 = 0; //Encender lucecilla
}

void __ISR(_TIMER_2_VECTOR, IPL5SRS)TP4InterruptT2(void)
{
	// Reset interrupt flag
    IFS0bits.T2IF = 0;
}