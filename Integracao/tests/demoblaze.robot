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
    E informo novo username e password
    Quando clico no botão signup
    Então valido mensagem de usuário já existente

#CT (Positivo) Validar Compra com 3 produtos no carrinho
#    Dado que acesso a URL do site
#    Criar Limite de credito
#    Criar SubLimite com atributo
#    Executa Aprovar Imediatamente
#    Realiza Majoração de Valores
#    Validar Aprovar Alçada Comercial
#    Validar Mensagem de Majoração de Valores Alçada 2
#    Encerra sessão

#CT (Positivo) Validar Adição no carrinho de um celular, um monitor e um computador. Já dentro do carrinho, remova o monitor, atualize a página e confirme a remoção do item
#    Acessar URL NSL
#    Criar Limite de credito
#    Criar SubLimite com atributo Project Finance marcado
#    Valida se existe label atributo Project Finance na tela do sublimite
#    Validar Solicitacao
#    Validar Aprovacao Imediatamente
#    Encerra sessão