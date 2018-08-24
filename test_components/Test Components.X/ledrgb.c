#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

#define color1 LATDbits.LATD3 //azul
#define color2 LATDbits.LATD1 //rojo
#define color3 LATDbits.LATD4 //verde

void test_LEDRGB(void) {
    //PREPARANDO SALIDAS LED
    TRISFbits.TRISF1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISDbits.TRISD3 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD4 = 0;


    TRISBbits.TRISB8 = 1;


    LATFbits.LATF1 = 1;
    LATDbits.LATD2 = 1;
    LATDbits.LATD3 = 1;
    LATDbits.LATD1 = 1;
    LATDbits.LATD4 = 1;
    u8 color = 0b111;
    u8 flag = 0;
    u8 flag2 = 0;

    while (1) {
        if (flag && !PORTDbits.RD8)
        {
            color1 = color >> 2 & 1;
            color2 = color >> 1 & 1;
            color3 = color & 1;
            if (!color)
                color = 0b111;
            else
                color--;
            flag = 0;
        }
/*        if (flag2 && !PORTBbits.RB8 && 0)
        {
            if (!color1)
            {
                if (!color2)
                {
                    color2 = 1;
                    color3 = 0;
                }
                else if (!color3)
                {
                    color3 = 1;
                    color1 = 0;
                }
                else if (color2 && color3)
                {
                    color2 = 0;
                    color3 = 0;
                }
            }
            flag2 = 0;
        }*/
        if (PORTDbits.RD8)
            flag = 1;
        if (PORTBbits.RB8)
            flag2 = 1;
    }
}
 