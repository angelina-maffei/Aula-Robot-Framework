*** Settings ***

Resource    ../test.robot

*** Variables ***
${STR}=    um valor 

*** Test Cases ***

Objects
    [Tags]    cadastro core regressivo 381 
    ${hi}    Set Variable    Hello, World!
    log to console ${hi}
    ${STR2}    Set Variable    outro valor 
    ${VAR}    Set Variable    I said "${STR}"
    ${VAR2}    Set Variable You said "${STR2}"
    log to console    ${STR2}
    log to console    ${STR}
    log to console    ${VAR}
    log to console    ${VAR2}


Objects 2
    [Tags]    blacked     
    ${VAR}    Set Variable    I said "${STR}"
    ${VAR2}    Set Variable You said "${STR2}"
    log to console    ${STR2}
    log to console    ${STR}
    log to console    ${VAR}
    log to console    ${VAR2}

    