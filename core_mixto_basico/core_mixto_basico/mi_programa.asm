;-------------------------------------------------------------------------------
;-- Descripción    : En la rutina de interrupciones se controla un contador
;--                  y en el programa principal se cambia el valor de un puerto
;--                  de 8 bits cada un cierto tiempo.
;-------------------------------------------------------------------------------
COE  "mi_programa.coe",16
VHDL "mi_template.vhd","mi_programa.vhd","ROM0"
;-- DEFINICIÓN DE CONSTANTES
patron_onda_10101010		EQU       $AA
interrupt_counter   		EQU       s3 ; Registro interno s3 para almacenar el
									  	 ;  valor del contador
;--
;-- PUERTOS DE SALIDA
;--
waveform_port       DSOUT     0
counter_port       	DSOUT     1
;-- INICIALIZACION
start:              LOAD      interrupt_counter, 0	  ; Inicializar contonador
                    LOAD      s2, patron_onda_10101010; Valor inicial de onda
                    EINT
;
drive_wave:         OUT       s2, waveform_port
                    LOAD      s0, $FF               ; Valor del retardo
loop:                             ; Lazo de retardo
					SUB       s0, 1
                    JUMP      NZ, loop
                    XOR       s2, $FF             ; Alternar el valor de salida
                    JUMP      drive_wave
;
                    ORG       $20
int_routine:        ADD       interrupt_counter, 1; Incrementar el contador
                    OUT       interrupt_counter, counter_port
                    RETI      ENABLE
;
                    ORG       $FF                 ; Definicion del vector de int.
                    JUMP      int_routine



