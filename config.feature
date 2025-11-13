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

Cenário: Validação de quantidade acima do limite 
Quando eu selecionar uma quantidade maior que 10
Então o sistema deve exibir uma mensagem de erro "Limite máximo de 10 produtos por venda"

Cenário: Limpar configurações
Dado que já preenchi cor, tamanho e quantidade
Quando eu clicar no botão "limpar"
Então todos os campos devem voltar ao estado original

Esquema do Cenário: Validação de quantidade dentro do limite
Quando eu selecionar a quantidade <7>
Então o sistema deve exibir a mensagem "Produto adicionado ao carrinho"

Exemplos:
  | quantidade | mensagem                               |
  | 5          | Produto adicionado ao carrinho         |
  | 10         | Produto adicionado ao carrinho         |
  | 11         | Limite máximo de 10 produtos por venda |
