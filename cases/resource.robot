*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php

*** Keywords ***
Acessar a paágina home do site da loja
    Open Browser    url=${URL}    browser=${BROWSER}