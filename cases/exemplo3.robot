*** Settings ***
Test Setup    log to console


*** Test Cases ***
Cenario: Divisão
    ${resultado_externo} Dividir numero  por 8 por 2
    log to console 0 resultado da divisao é: ${resultado_externo}    

*** Keywords ***
Dividir numero ${valor1} por ${valor2}
    ${resultado_interno}    Evaluate    ${valor1} / ${valor2}
    [Return]    ${resultado_interno}