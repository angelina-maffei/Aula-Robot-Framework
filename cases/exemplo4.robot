*** Settings ***
Test Setup    log to console    .
Library    Appi


*** Test Cases ***
Cenario: Testes Condicionais 
    verificar se 1 > 2

*** Keywords ***
verificar se ${valor1} > ${valor2}
    IF     ${valor1} > ${valor2}
       log to console ${valor1} é maior do que ${valor2}
    ELSE 
        log to console ${valor1} é nenor do que ${valor2}
        
    END