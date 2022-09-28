# frozen_string_literal: true

# :nodoc:
Dado('que o cliente queira criar um usuario') do
  @page.call(CriaUsuario).load
end

Quando('realizar o cadastro') do
  @page.call(CriaUsuario).preencher_cadastro
end

Entao('devera visualizar a mensagem') do
  @page.call(CriaUsuarioSucesso).validar_mensagem
end
