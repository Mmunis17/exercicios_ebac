# language: pt

Funcionalidade: Cadastro no Checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que estou na tela de cadastro

Cenário: Cadastro com todos os dados obrigatórios
Quando eu preencher todos os campos obrigatórios
Então o sistema deve concluir o cadastro com sucesso

Cenário: E-mail com formato inválido
Quando eu preencher o campo e-mail com "teste.com"
Então o sistema deve exibir a mensagem "E-mail inválido"

Cenário: Campos obrigatórios vazios
Quando eu tentar enviar o formulário com campos obrigatórios vazios
Então o sistema deve exibir a mensagem de alerta

Esquema do Cenário: Validação de e-mail
Quando eu preencher o e-mail com <teste@email.com>
Então o sistema deve concluir o cadastro com sucesso

Exemplos:
  | email           | resultado                          |
  | teste@email.com | concluir o cadastro com sucesso    |
  | teste@          | exibir a mensagem "E-mail inválido"|
  | teste.com       | exibir a mensagem "E-mail inválido"|
