*** Settings ***


*** Variables ***
${five}=  cinco
${last}=  ultimo


*** Test Cases ***
Example
    FOR    ${animal}    IN    cat    dog  sapo  coelho  leão  macaco
        Log    ${animal}
        Log    2nd keyword
    END
    Log    Outside loop

Second Example
    FOR    ${var}    IN    one    two    ${3}    four    ${five}
    ...    kuusi    7    eight    nine    ${last}
        Log    ${var}
    END

Tabuada
    [tags]  teste
    FOR  ${MULTIPLICADOR}  IN  1  2  3  4  5  6  7  8  9  10
        ${resultado}=  evaluate  ${MULTIPLICADOR}*5
        log  ${resultado}
    END

Frutas Lista
    [tags]  lista
    @{ELEMENTS}  set variable  maça  laranja  banana  melão  caju
    FOR    ${element}    IN    @{ELEMENTS}
        log  ${element}
    END

Loop in range
    [tags]  range
    FOR  ${item}  IN RANGE  0  11
        ${resultado}  multiplicacao  ${item}  2
        log to console  ${resultado}
    END

While loop
    [tags]  While
    ${rc} =   Set Variable    1
    ${cont}=  Set Variable  0
    WHILE    ${rc} != 0
        ${cont}=  evaluate  ${cont}+1
        ${rc} =    Keyword that returns zero on success  ${cont}
    END



*** Keywords ***

Keyword that returns zero on success
    [Arguments]  ${cont}
    ${retorno}  set variable  1
    IF  ${cont} == 100
        ${retorno}  set variable  0
    END
    [Return]  ${retorno}

multiplicacao
    [Arguments]  ${num1}  ${num2}
    ${resultado}  evaluate  ${num1}*${num2}
    [Return]  ${resultado}