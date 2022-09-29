*** Settings ***
Test Setup    log to console  


*** Test Cases ***
Cenario: Exibir nome no console
  Imprimir nome e sobrenome me linhas apartadas  sobrenome=Maffei

*** Keywords ***
Imprimir nome e sobrenome me linhas apartadas
    [Arguments]    ${sobrenome}=    ${nome}=Angelina
    log to console Seu nome é......: ${nome}
    log to console Seu sobrenome é: ${sobrenome}

