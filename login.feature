# language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que o cliente está na tela de login

Cenário: Login com dados válidos
Quando eu inserir e-mail e senha válidos
Então o sistema deve redirecionar para a tela de checkout

Cenário: Login com dados inválidos
Quando eu inserir e-mail ou senha inválidos
Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"
