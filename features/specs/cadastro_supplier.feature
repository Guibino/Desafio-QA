#language: pt

@novo_supplier
Funcionalidade: Fazer o cadastro de um novo supplier
Eu como administrador
Quero fazer o login com sucesso
Para cadastrar um novo supplier

Cenário: Cadastro de supplier com sucesso.
Dado que eu estou na pagina inicial de login administrativo
Quando eu realizo o login utilizando "admin@phptravels.com" e "demoadmin"
E crio um novo supplier
Então verifico se foi cadastrado com sucesso