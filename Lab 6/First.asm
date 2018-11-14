
; First.asm

;Author:                J.McCabe
;Student Number:         040-636-196
;Date:                  Oct. 10 2018
;
;Purpose:               Add the following values: $25 + $37 - $1
;

                org     $1000           ;Set current location to start of RAM
p:              db      $25             ;First addend is at location p
q:              db      $37             ;Second addend is at location q
r:              ds      1               ;Sum will be stored at location r

                org     $2000           ;Set current location to start in RAM
                ldaa    p               ;load value at p into accumulator a
                adda    q               ;add value at q into accumulator a
                deca                    ;subtract one from the value in a
                staa    r               ;store accumulator a at location r
                end