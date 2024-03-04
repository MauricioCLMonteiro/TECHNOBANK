*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.demoblaze.com

#Buttons
${BTN_CONTINUAR}     //span[contains(.,'Continuar')]
${BTN_SIGNUP}    //a[contains(.,'Sign up')]
${BTN_SIGNUP_CAD}   //button[contains(.,'Sign up')]
${BTN_LOGIN}   //a[contains(.,'Log in')]
${BTN_LOG_IN}    //button[@onclick='logIn()']
${BTN_ADD_CARD}   //a[contains(.,'Add to cart')]
${BTN_ADD_PLACE_ORDER}   //button[contains(.,'Place Order')]
${BTN_ADD_PURCHASE}   //button[contains(.,'Purchase')]
${BTN_OK}   //button[contains(.,'OK')]
${BTN_DELETE}   (//a[@href='#'][contains(.,'Delete')])[2]

#label
${LBL_MSG_SUCESSO}     //label[@for='Sign up successful.']
${LBL_MSG_COMPRA_COM_SUCESSO}   //h2[contains(.,'Thank you for your purchase!')]
${LBL_MSG_USUARIO_EXISTENTE}     //label[@for='This user already exist.']
${LBL_PRODUTO_SAMSUNG}    //a[contains(.,'Samsung galaxy s6')]
${LBL_PRODUTO_NOKIA}    //a[contains(.,'Nokia lumia 1520')]
${LBL_PRODUTO_NEXUS}    //a[contains(.,'Nexus 6')]
${LBL_PRODUTO_MONITOR}    //a[contains(.,'Monitors')]
${LBL_HOME}    //a[contains(.,'Home (current)')]
${LBL_CART}    //a[contains(.,'Cart')]
${LBL_PRODUTO_APPLE_24}  //a[contains(.,'Apple monitor 24')]
${LBL_PRODUTO_LAPTOP}  //a[contains(.,'Laptops')]
${LBL_PRODUTO_LAPTOP_SONY_VAIO}  //a[contains(.,'Sony vaio i5')]
${LBL_PRODUTO_MONITOR}    //td[contains(.,'Apple monitor 24')]
${LBL_PRODUTO_APPLE_MONITOR_24}  (//a[contains(.,'Delete')])[1]
${LBL_PRODUTO_SANSUNG_GALAXY_S6}  (//a[contains(.,'Delete')])[2]
${LBL_PRODUTO_SONY_VAIO_i5}  (//a[contains(.,'Delete')])[3]   

#text
${IPT_USERNAME}     //input[@id='sign-username']
${IPT_LOGIN}     //input[@id='loginusername']
${IPT_SENHA}     //input[@id='sign-password']
${IPT_PASSWORD}    //input[@id='loginpassword']
${IPT_NAME}    //input[@id='name']
${IPT_Country}    //input[@id='country']
${IPT_City}    //input[@id='city']
${IPT_Credit card}    //input[@id='card']
${IPT_Month}    //input[@id='month']
${IPT_Year}    //input[@id='year']

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

Quando clico no botão signup ja existente
    Click Element   ${BTN_SIGNUP_CAD}
    Sleep   5s

Quando clico em login
    Click Element   ${BTN_LOGIN}
    Sleep   2s

Quando atualizo a página
    Press Keys  None  F5

Quando clico no botão login
    Sleep   2s
    Press Keys  None  TAB  TAB
    Sleep   2s
    Press Keys  None  ENTER
    Sleep   2s

Quando adiciono produtos no carrinho
    Click Element   ${LBL_PRODUTO_SAMSUNG}
    Sleep   2s
    Click Element   ${BTN_ADD_CARD}
    Sleep   4s
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Product added.
    Sleep   4s
    Click Element   ${LBL_HOME}
    Sleep   2s
    Click Element   ${LBL_PRODUTO_NOKIA}
    Sleep   2s
    Click Element   ${BTN_ADD_CARD}
    Sleep   4s
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Product added.
    Sleep   4s
    Click Element   ${LBL_HOME}
    Sleep   2s
    Click Element   ${LBL_PRODUTO_NEXUS}
    Sleep   2s
    Click Element   ${BTN_ADD_CARD}
    Sleep   4s
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Product added.
    Sleep   4s

Quando adiciono produtos diferentes no carrinho
    Click Element   ${LBL_PRODUTO_SAMSUNG}
    Sleep   2s
    Click Element   ${BTN_ADD_CARD}
    Sleep   4s
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Product added.
    Sleep   4s
    Click Element   ${LBL_HOME}
    Sleep   2s
    Click Element   ${LBL_PRODUTO_MONITOR}
    Sleep   2s
    Click Element   ${LBL_PRODUTO_APPLE_24}
    Sleep   2s
    Click Element   ${BTN_ADD_CARD}
    Sleep   4s
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Product added.
    Sleep   4s
    Click Element   ${LBL_HOME}
    Sleep   2s
    Click Element   ${LBL_PRODUTO_LAPTOP}
    Sleep   2s
    Click Element   ${LBL_PRODUTO_LAPTOP_SONY_VAIO}
    Sleep   2s
    Click Element   ${BTN_ADD_CARD}
    Sleep   4s
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Product added.
    Sleep   4s

Quando acesso o carrinho
    Click Element   ${LBL_CART}

Quando removo o monitor do carrinho
    Sleep   2s
    Click Element   ${LBL_PRODUTO_APPLE_MONITOR_24}

Quando clico em place order
    Click Element   ${BTN_ADD_PLACE_ORDER} 

Quando informo os dados da encomenda
    Sleep   4s
    Press Keys  None  ENTER
    Input Text  ${IPT_NAME}     Mauricio Monteiro
    Sleep   1s
    Input Text  ${IPT_Country}     Brasil
    Sleep   1s
    Input Text  ${IPT_City}     Rio de Janeiro
    Sleep   1s
    Input Text  ${IPT_Credit card}     123456789
    Sleep   1s
    Input Text  ${IPT_Month}     12
    Sleep   1s
    Input Text  ${IPT_Year}     2023
    Sleep   1s
    Click Element   ${BTN_ADD_PURCHASE}
    Sleep   5s

E informo username e password
    Press Keys  None  TAB
    Input Text  ${IPT_USERNAME}   mau-monteiro_1989
    Sleep   3s
    Input Text  ${IPT_SENHA}   Teste@1234
    Sleep   3s

E informo o login e o password
    Press Keys  None  TAB
    Input Text  ${IPT_LOGIN}   mau-monteiro_1989
    Sleep   3s
    Input Text  ${IPT_PASSWORD}   Teste@1234
    Sleep   3s

E informo novo username e password
    Press Keys  None  TAB
    Input Text  ${IPT_USERNAME}   mau-monteiro_1989
    Sleep   3s
    Input Text  ${IPT_SENHA}   Teste@1234
    Sleep   3s

E informo username e password invalidos
    Press Keys  None  TAB  TAB
    Sleep   3s
    Input Text  ${IPT_LOGIN}   uyhsdxfasydf
    Sleep   3s
    Input Text  ${IPT_PASSWORD}   342342sjkhdgjkshd
    Sleep   3s

Então valido mensagem de cadastro com sucesso
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Sign up successful.

Então valido mensagem de usuário já existente
    ${message}=  Handle Alert
    Should Be Equal  ${message}  This user already exist.

Então valido a mensagem de compra realizada com sucesso
    Element Should Be Visible   ${LBL_MSG_COMPRA_COM_SUCESSO}
    Sleep   3s
    Click Element   ${BTN_OK}

Então valido a remoçao do item
    Element Should Not Be Visible   ${LBL_PRODUTO_MONITOR}
    Sleep   1s 

Então removo todos os produto do carrinho
    Sleep   4s
    Click Element   ${LBL_PRODUTO_APPLE_MONITOR_24}
    Sleep   4s
    Click Element   ${LBL_PRODUTO_SANSUNG_GALAXY_S6}
    Sleep   4s
    Click Element   ${LBL_PRODUTO_LAPTOP_SONY_VAIO}
    Sleep   4s

Então valido autenticação sem dados de entrada
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Please fill out Username and Password.

Então valido autenticação com dados inválidos
    ${message}=  Handle Alert
    Should Be Equal  ${message}  Wrong password.