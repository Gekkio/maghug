; Copyright 2016 Joonas Javanainen joonas.javanainen@gmail.com
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

#include "p10lf322.inc"

; CONFIG
;   __config 0x3FDE
    __CONFIG _FOSC_INTOSC & _BOREN_ON & _WDTE_ON & _PWRTE_ON & _MCLRE_ON & _CP_OFF & _LVP_ON & _LPBOR_ON & _BORV_LO & _WRT_OFF

    CONSTANT MAX_ALARM_COUNT = 1

    UDATA
alarm_count RES 1

res_vect CODE 0x0000
    GOTO start

main_program CODE
start:
    CLRF PORTA
    CLRF LATA
    CLRF ANSELA
    MOVLW B'00000100'
    MOVWF PORTA
    MOVLW B'11111100'
    MOVWF TRISA

    MOVLW B'00000000'
    MOVWF OSCCON
wait_osc:
    BTFSS OSCCON, 1
    GOTO wait_osc

begin_sleep_mode:
    BSF PORTA, 0
    BSF PORTA, 1

    MOVLW (MAX_ALARM_COUNT + 1)
    MOVWF alarm_count

loop_sleep:
    MOVLW B'00011010'
    MOVWF WDTCON
    SLEEP

    BTFSS PORTA, 2
    GOTO loop_sleep_blink

    DECFSZ alarm_count
    GOTO loop_sleep_blink
    GOTO begin_alarm_mode

loop_sleep_blink:
    MOVLW B'00001110'
    MOVWF WDTCON

    BCF PORTA, 1
    SLEEP
    BSF PORTA, 1
    GOTO loop_sleep

begin_alarm_mode:
    MOVLW B'00010100'
    MOVWF WDTCON
loop_alarm:
    SLEEP

    BTFSS PORTA, 2
    GOTO begin_sleep_mode

    MOVLW B'00000001'
    XORWF PORTA, 1
    GOTO loop_alarm

    END
