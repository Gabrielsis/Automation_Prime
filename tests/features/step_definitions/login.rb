# frozen_string_literal: true

# :nodoc:
Dado('que o cliente queira logar com seu usuario') do
  @page.call(LogarUsuario).load
end

Quando('realizar o login') do
  @page.call(LogarUsuario).preenche_usuario
end

Entao('devera visualizar a mensagem de sucesso') do
  @page.call(LogaUsuarioSucesso).valida_mensagem
end
