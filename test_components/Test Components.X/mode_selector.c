#include "Type.h"
#include "p32xxxx.h"
#include <sys/attribs.h>

void    test_modeselector(void)
{
    TRISFbits.TRISF3 = 1;
    TRISFbits.TRISF4 = 0;
    TRISFbits.TRISF5 = 0;

    LATFbits.LATF4 = 0;
    LATFbits.LATF5 = 0;
    u8 flag = 0;
    while(1)
    {
        if (!PORTDbits.RD8)
        {
            flag = flag ? 0 : 1;
            LATFbits.LATF4 = 0;
            LATFbits.LATF5 = 0;
        }
        if (PORTFbits.RF3 && !flag)
        {
            LATFbits.LATF4 = 1;
            LATFbits.LATF5 = 0;
        }
        else if (!flag)
        {
            LATFbits.LATF4 = 0;
            LATFbits.LATF5 = 1;
        }

    }
}