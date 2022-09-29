*** Settings ***
Documentation    Suite Exemplo WebTesting
Resource        resource.robot

*** Test Cases ***
Caso de Teste 01: Pesquisar um produto no site 
    Acessar a paágina home do site da loja   
  #  Digitar o produto "blouse" no campo de pesquisa
  #  Clicar no botão pesquisar
  #  Conferir se o produto "blouse" é exibido corretamente