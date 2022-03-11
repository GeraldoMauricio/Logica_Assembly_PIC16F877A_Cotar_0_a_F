;*************************** CONTADOR DE 0 A F NO  ***************************
;*******                    DISPLAY DE 7 SEGMENTOS                     *******
;*****************************************************************************
;    RU: 1316541   GERALDO MAUR�CIO SOCORRO
;*********************  Defini��o do processador *****************************

	#include p16F877a.inc 
	__config _HS_OSC & _WDT_OFF & _LVP_OFF & _PWRTE_ON 

;************************** Mem�ria de programa ******************************
	ORG     0 		    ;Posiciona o ponteiro para o endere�o 0x0 de mem�ria

RESET 				    ;Bloco de RESET do microcontrolador
	NOP             
	GOTO   SETUP 		;Pula para o marcador SETUP
;***************************** Interrup��o **********************************
	ORG 4 
	
;*************************** Declara��o de vari�veis ******************************   
DELAY 	 EQU 0x20
VEZES 	 EQU 0x21
		
;*************************** Inicio do programa ***********************************

;*************************** Configura��es ****************************************
SETUP			        ;Bloco de configura��o do microcontrolador
	BSF     STATUS,RP0  ;Aciona o Bank1 de mem�ria
 	MOVLW   b'00000000' ;Carrega '00000000' no registrador W
 	MOVWF   TRISE       ;Configura PORTE como sa�da

 	MOVLW   b'00000000' ;Carrega '00000000' no registrador W
 	MOVWF   TRISD	    ;Configura o PORTD como sa�da
       
 	BCF   	STATUS,RP0  ;Retorna para o Bank0 de mem�ria
 	BSF  	PORTE,2	    ;Coloca +5V, niv�l l�gico 1 no Display 3 de 7 segmentos 
;*************************** Programa principal **********************************


LOOP 				        ;Bloco do principal do programa         
	    MOVLW b'00111111' 	;Mostra N�mero 0  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, e, f 
	CALL PERDE_TEMPO	    ;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'00000110' 	;Mostra N�mero 1  
        MOVWF PORTD         ;Habilita +5v nos segmentos b, c 
	CALL PERDE_TEMPO	    ;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01011011' 	;Mostra N�mero 2  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, d, e, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos
                            ;    RU: 1316541   GERALDO MAUR�CIO SOCORRO

        MOVLW b'01001111' 	;Mostra N�mero 3  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01100110' 	;Mostra N�mero 4  
        MOVWF PORTD         ;Habilita +5v nos segmentos b, c, f, g
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01101101' 	;Mostra N�mero 5  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, c, d, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos

        MOVLW b'01111101' 	;Mostra N�mero 6  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, c, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'00000111' 	;Mostra N�mero 7  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01111111' 	;Mostra N�mero 8  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01101111' 	;Mostra N�mero 9  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, d, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01110111' 	;Mostra N�mero A  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, b, c, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01111100' 	;Mostra N�mero B  
        MOVWF PORTD         ;Habilita +5v nos segmentos c, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'00111001' 	;Mostra N�mero C 
        MOVWF PORTD         ;Habilita +5v nos segmentos a, d, e, f,  
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos
       

        MOVLW b'01011110' 	;Mostra N�mero D  
        MOVWF PORTD         ;Habilita +5v nos segmentos b, c, d, e, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01111001' 	;Mostra N�mero E  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, d, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos


        MOVLW b'01110001' 	;Mostra N�mero F  
        MOVWF PORTD         ;Habilita +5v nos segmentos a, e, f, g 
        CALL PERDE_TEMPO	;Chama o procedimento PERDE_TEMPO para poder visualizar os 
                            ;segmentos do display acesos



        GOTO LOOP		    ;Manda o programa pular para o inicio do bloco LOOP
				            ;mantendo o programa em execu��o eterna

    PERDE_TEMPO		        ;Procedimento que for�a o PIC a perder tempo(delay)
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
                        ;RU: 1316541   GERALDO MAUR�CIO SOCORRO
	END					;Marcador de �ltima linha do programa
