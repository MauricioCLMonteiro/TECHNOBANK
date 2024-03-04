*** Settings ***
Resource        basePage.robot

*** Test Cases ***
CT (Positivo) Validar criação de conta de usuário
    Dado que acesso a URL do site
    Quando clico em signup
    E informo username e password
    Quando clico no botão signup
    Então valido mensagem de cadastro com sucesso

CT (Negativo) Validar criação de conta para usuário já existente
    Dado que acesso a URL do site
    Quando clico em signup
    E informo username e password
    Quando clico no botão signup ja existente
    Então valido mensagem de usuário já existente

CT (Negativo) Validar autenticação sem dados de entrada
    Dado que acesso a URL do site
    Quando clico em signup
    Quando clico no botão signup
    Então valido autenticação sem dados de entrada

CT (Positivo) Validar Compra com 3 produtos no carrinho
    Dado que acesso a URL do site
    Quando clico em login
    E informo o login e o password
    Quando clico no botão login
    Quando adiciono produtos no carrinho
    Quando acesso o carrinho
    Quando clico em place order
    Quando informo os dados da encomenda
    Então valido a mensagem de compra realizada com sucesso

CT (Positivo) Validar Adição no carrinho de um celular, um monitor e um computador. Já dentro do carrinho, remova o monitor, atualize a página e confirme a remoção do item
    Dado que acesso a URL do site
    Quando clico em login
    E informo o login e o password
    Quando clico no botão login
    Quando adiciono produtos diferentes no carrinho
    Quando acesso o carrinho
    Quando removo o monitor do carrinho
    Quando atualizo a página
    Então valido a remoçao do item