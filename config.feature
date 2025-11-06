# language: pt

Funcionalidade: Configuração de Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de produto da EBAC-SHOP

Cenário: Campos obrigatórios para configuração
Quando eu selecionar a cor, tamanho e quantidade
Então o botão de adicionar ao carrinho deve ser habilitado

Cenário: Limite de quantidade de produto por venda
Quando eu selecionar uma quantidade maior que 10
Então o sistema deve exibir uma mensagem de erro "Limite máximo de 10 produtos por venda"

Cenário: Limpar configurações
Dado que já preenchi cor, tamanho e quantidade
Quando eu clicar no botão "limpar"
Então todos os campos devem voltar ao estado original

Esquema do Cenário: Validação de quantidade
Quando eu selecionar a quantidade <quantidade>
Então o sistema deve exibir a mensagem <mensagem>

Exemplos:
  | quantidade | mensagem                               |
  | 5          | permitir adicionar ao carrinho         |
  | 10         | permitir adicionar ao carrinho         |
  | 11         | exibir mensagem de erro sobre o limite |
