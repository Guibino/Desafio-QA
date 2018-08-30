#language: pt

@get
Funcionalidade: Validação e exibir dados

Cenario: Exibição de id e title para completed=true
Quando faço uma requisicao GET para o serviço
Então o código de resposta GET deve ser "200"
E imprimo ID e TITTLE de todos os itens com status code completed = true
