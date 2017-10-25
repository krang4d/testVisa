#include <stdio.h>
//#include "C:\Program Files\IVI Foundation\VISA\Win64\Include\visa.h"
#include <visa.h>

int main(void)
{
    ViSession defaultRM, vi;
    wchar_t buf[256] = { 0 };
    ViRsrc dev = "USB0::0x164E::0x0DAD::TW00003822::INSTR";

    //Open session to GPIB device at address 22
    viOpenDefaultRM(&defaultRM);
    viOpen(defaultRM, dev , VI_NULL, VI_NULL,	&vi);

    //Initialize device
    viPrintf(vi, "*RST\n");

    //Send an *IDN? string to the device
    viPrintf(vi, "*IDN?\n");

    //Read results
    viScanf(vi, "%t", buf);

    //Print results
    printf("Instrument identification string: %s\n", buf);

    //Close session
    viClose(vi);
    viClose(defaultRM);

    printf("Hello World!\n");
    return 0;
}

