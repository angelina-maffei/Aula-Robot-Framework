*** Settings ***
Test Setup    log to console    .

*** Test Cases ***
Cenario: Divisão
    Dividir numero 8 por 2

*** Keywords ***
Dividir numero ${valor1} por ${valor2}
    ${resultado}    Evaluate    ${valor1} / ${valor2}
    log to console     0 resultado da Divisão é: ${resultado}    



