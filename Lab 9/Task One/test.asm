        org    $1000
Data1   db      $08, $35, $19, $55
Data2   db      $31, $8F, $9E, $E7,$01, $10, $ff, $00

        org 	$2000
        lds 	#$2000
        
        ldy     #Data1
        
        ldaa    0,y
        ldaa    2,y
        ldab    1, y+
        ldx     #Data2
        ldd     4,x+
        std     2,x+
        swi
        end