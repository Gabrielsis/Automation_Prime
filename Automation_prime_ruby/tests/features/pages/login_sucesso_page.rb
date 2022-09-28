# frozen_string_literal: true

# :nodoc:
class LogaUsuarioSucesso < SitePrism::Page
  include RSpec::Matchers
  element :mensagem_tela_sucesso, '.flash.success'

  def valida_mensagem
    expect(mensagem_tela_sucesso.text == 'Logged in successfully').to be true
  end
end
