*** Settings ***
Documentation    suite de exemplo de robot
Library        OperatingSystem

*** Variables ***
${MENSAGE}    HELO WORLD!!!

*** Test Cases ***
Cenario de Teste 01: olá Mundo! 
    Imprimir mensagem no console
    
Cenário de Teste 02: Teste da verdade
    verficar se 3+3 é 9 

*** Keywords ***

Imprimir mensagem no console

log to console    ${MENSAGEM}

verficar se 3+3 é 9
    Should Be True    6 == 9

