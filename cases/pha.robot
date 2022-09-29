*** Settings ***
Documentation       Exemplo using the space separaled format.

Library             OperatingSystem


*** Variables ***
${MESSAGE}      HELLO WORD!


*** Test Cases ***
My Test
    [Documentation]    Example Test.
    log    ${MESSAGE}
    My Keyword ${CURDIR} 

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!


*** Keywords ***
My Keywords
    {Arguments} ${path}
    Directory Should Exist ${path}
