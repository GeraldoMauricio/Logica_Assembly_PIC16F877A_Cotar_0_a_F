;*************************** CONTADOR DE 0 A F NO  ***************************
;*******                    DISPLAY DE 7 SEGMENTOS                     *******
;*****************************************************************************
;    RU: 1316541   GERALDO MAURÍCIO SOCORRO
;*********************  Definição do processador *****************************

	#include p16F877a.inc 
	__config _HS_OSC & _WDT_OFF & _LVP_OFF & _PWRTE_ON 

;************************** Memória de programa ******************************
	ORG     0 		    ;Posiciona o ponteiro para o endereço 0x0 de memória

RESET 				    ;Bloco de RESET do microcontrolador
	NOP             
	GOTO   SETUP 		;Pula para o marcador SETUP
;***************************** Interrupção **********************************
	ORG 4 
	
;*************************** Declaração de variáveis ******************************   
DELAY 	 EQU 0x20
VEZES 	 EQU 0x21
		
;*************************** Inicio do programa ***********************************

;*************************** Configurações ****************************************
SETUP			        ;Bloco de configuração do microcontrolador
	BSF     STATUS,RP0  ;Aciona o Bank1 de memória
 	MOVLW   b'00000000' ;Carrega '00000000' no registrador W
 	MOVWF   TRISE       ;Configura PORTE como saída

 	MOVLW   b'00000000' ;Carrega '00000000' no registrador W
 	MOVWF   TRISD	    ;Configura o PORTD como saída
       
 	BCF   	STATUS,RP0  ;Retorna para o Bank0 de memória
 	BSF  	PORTE,2	    ;Coloca +5V, nivél lógico 1 no Display 3 de 7 segmentos 
;*************************** Programa principal **********************************


LOOP 				        ;Bloco do principal do programa         
	    MOVLW b'00111111' 	;Mostra Número 0  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, e, f 
	CALL PERDE_TEMPO	    ;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'00000110' 	;Mostra Número 1  
        MOVWF PORTD         ;Habilita +5v nos segmentos b, c 
	CALL PERDE_TEMPO	    ;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01011011' 	;Mostra Número 2  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, d, e, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos
                            ;    RU: 1316541   GERALDO MAURÍCIO SOCORRO

        MOVLW b'01001111' 	;Mostra Número 3  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01100110' 	;Mostra Número 4  
        MOVWF PORTD         ;Habilita +5v nos segmentos b, c, f, g
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01101101' 	;Mostra Número 5  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, c, d, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos

        MOVLW b'01111101' 	;Mostra Número 6  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, c, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'00000111' 	;Mostra Número 7  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01111111' 	;Mostra Número 8  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01101111' 	;Mostra Número 9  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01110111' 	;Mostra Número A  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01111100' 	;Mostra Número B  
        MOVWF PORTD         ;Habilita +5v nos segmentos c, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'00111001' 	;Mostra Número C 
        MOVWF PORTD         ;Habilita +5v nos segmentos a, d, e, f,  
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos
       

        MOVLW b'01011110' 	;Mostra Número D  
        MOVWF PORTD         ;Habilita +5v nos segmentos b, c, d, e, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01111001' 	;Mostra Número E  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01110001' 	;Mostra Número F  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos



        GOTO LOOP		    ;Manda o programa pular para o inicio do bloco LOOP
				            ;mantendo o programa em execução eterna

    PERDE_TEMPO		        ;Procedimento que força o PIC a perder tempo(delay)
	MOVLW d'2' 		        ;Para gravar no PIC utilizar 80, no simulador SENAI use 2.
 	MOVWF VEZES
 	
    LOOP_VEZES
 	MOVLW d'2' 		        ;Para gravar no PIC utilizar 255,  no simulador SENAI use 2.
	MOVWF DELAY 
	CALL DELAY_US 
	DECFSZ VEZES,1 
	GOTO LOOP_VEZES 
	RETURN
 
    DELAY_US 
	NOP
	NOP 
	DECFSZ DELAY,1 
	GOTO DELAY_US 
	RETURN 
                        ;RU: 1316541   GERALDO MAURÍCIO SOCORRO
	END					;Marcador de última linha do programa
