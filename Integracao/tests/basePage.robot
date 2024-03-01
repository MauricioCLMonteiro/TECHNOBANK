*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.demoblaze.com

#Buttons
${BTN_CONTINUAR}     //span[contains(.,'Continuar')]
${BTN_SIGNUP}    //a[contains(.,'Sign up')]
${BTN_SIGNUP_CAD}   //button[contains(.,'Sign up')]

#label
${LBL_MSG_SUCESSO}     //label[@for='Sign up successful.']
${LBL_MSG_USUARIO_EXISTENTE}     //label[@for='This user already exist.']

#text
${IPT_USERNAME}     //input[@id='sign-username']
${IPT_SENHA}     //input[@id='sign-password']

*** Keywords ***
Dado que acesso a URL do site
    Open Browser    ${url}      chrome
    Maximize Browser Window
    Sleep   5s

Quando clico em signup
    Click Element   ${BTN_SIGNUP}
    Sleep   5s

Quando clico no botão signup
    Click Element   ${BTN_SIGNUP_CAD}
    Sleep   5s

E informo username e password
    Press Keys  None  TAB
    Input Text  ${IPT_USERNAME}   mau-monteiro27
    Sleep   3s
    Input Text  ${IPT_SENHA}   Teste@123
    Sleep   3s

E informo novo username e password
    Press Keys  None  TAB
    Input Text  ${IPT_USERNAME}   mau-monteiro27
    Sleep   3s
    Input Text  ${IPT_SENHA}   Teste@123
    Sleep   3s

Então valido mensagem de cadastro com sucesso
    Capture Page Screenshot     Evidencia_CT_Positivo_Validar_criação_de_conta_de_usuário.PNG
    Press Keys  None  ENTER
    #Should Contain        ${LBL_MSG_SUCESSO}

Então valido mensagem de usuário já existente
    Capture Page Screenshot     Evidencia_CT_Negativo_Validar_criação_de_conta_para_usuário_já_existente.PNG
    Press Keys  None  ENTER
    #Should Contain        ${LBL_MSG_USUARIO_EXISTENTE}