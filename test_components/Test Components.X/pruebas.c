//		if (flag && PORTDbits.RD8 == 0 && LATGbits.LATG9 == 1) //
//		{
//			LATGbits.LATG9 = 0; //set RG9 to low
//			LATGbits.LATG8 = 1; //set RG8 to high
//			flag = 0;
//			LATFbits.LATF1 = 0;
//		}
//		else if (flag && PORTDbits.RD8 == 0 && LATGbits.LATG9 == 0)
//		{
//			LATGbits.LATG9 = 1; //set RG9 to high
//			LATGbits.LATG8 = 0; //set RG8 to low
//			flag = 0;
//			LATFbits.LATF1 = 1;
//		}
//		if (PORTDbits.RD8)
//			flag = 1;
//	//To turn motor clockwise
//	PORTB.F0 = 1;
//	Delay_ms(2000);//2 seconds delay

//	//To Stop motor
//	PORTB = 0; // or PORTB = 3
//	Delay_ms(2000);//2 seconds delay
//
//	//To turn motor anticlockwise direction
//	PORTB.F1 = 1;
//	Delay_ms(2000);//2 seconds delay
//
//	//To Stop motor
//	PORTB = 0; // or PORTB = 3 (3 = 0b00000011)
//	Delay_ms(2000); // 2 seconds delay

