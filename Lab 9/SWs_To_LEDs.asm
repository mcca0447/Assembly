; SWs_To_LEDs.asm
#include C:\68HCS12\registers.inc


        org     $2000
        lds     #$2000
        clrb
        jsr     Config_SWs_and_LEDs
Get_SW  ldaa    PTH
        staa    PORTB
        bra Get_SW

#include C:\68HCS12\Lib\Config_SWs_and_LEDs.asm

        end
        