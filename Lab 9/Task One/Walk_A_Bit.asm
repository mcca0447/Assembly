Flash_PB0.asm
#include C:\68HCS12\registers.inc

; Author:       Minh Duc Pham
; Course:       CST8216 Fall 2018
; S/N:          040905103
; Date:         30 Oct 2018
; Purpose       To Flash PB0 LED on Dragon 12+ Trainer

; Program Constants
STACK   equ     $2000
        org     $1000
onArray db      $88, $44, $22, $11, $00, $11, $22, $44, $88, $00
desArray

        org     $2000           ; program code
Start   lds     #STACK          ; stack location

; Configure the Ports
        jsr     Config_SWs_and_LEDs

; Continually Flash LED
Reverse ldx     #onArray
Loop    ldaa    1,x+
        staa    portb           ; PB0 ON
        ldaa    #180            ; 180 ms delay
        jsr     Delay_ms
        cpx     #desArray
        bne     Loop            ; endless loop
        bra     Reverse
; Library Files
#include C:\68HCS12\Lib\Delay_ms.asm
#include C:\68HCS12\Lib\Config_SWs_and_LEDs.asm
        end
