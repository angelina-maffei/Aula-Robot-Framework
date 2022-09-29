*** Settings ***
# Ações que evo fazer  de iniciar todos os teste desde o arquivo 
Suite Setup    log to console    Angelina 
# Ações que devo fazer  ao fim de todos os teste desse arquivo
Suite Teardown    log to console    fim do arquivo de testes
# Ações que devo fazer antes de iniciar cada teste que esta neste arquivo
Test Setup    log to console    Qalquer teste começando
# Ações que devo fazer ao fim de cada teste deste arquivo
Test Teardown    log to console    fim de qualquer teste

*** Variables ***


*** Test Cases ***
Teste 1    KW da Angelina    
    ${var}- Keywordsda Angelina    
    log to console ${var}




#Teste 2     kw da Angelina



#Teste 3    kw da Angelina



#Teste 4    kw da Angelina 



*** Keywords ***
kw da Angelina
#log to console    Teste 4 rodando 
#log to console    Teste 3 rodando 
#log to console    Teste 2 rodando 
log to console Teste1 rodando 