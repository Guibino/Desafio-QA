#language: pt

@post
Funcionalidade: Criar atividade


Cenário: Nova Atividade
Dado que eu cadastre um novo post com os seguintes dados:
| ID        | 0                         |
| Title     | Enviar requisição de POST |
| DueDate   | 29/08/2018                |
| Completed | true                      |
Quando faço a requisição para o post
Então o código de resposta será "200"