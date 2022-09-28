#language: pt

  @login
  Funcionalidade: Login com sucesso

  Cenario: logar com um usario com sucesso
    Dado que o cliente queira logar com seu usuario
    Quando realizar o login
    Entao devera visualizar a mensagem de sucesso