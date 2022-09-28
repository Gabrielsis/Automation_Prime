# frozen_string_literal: true

# :nodoc:
class CriaUsuarioSucesso < SitePrism::Page
  include RSpec::Matchers
  element :mensagem_tela_sucesso, '#content > div.flash.notice'

  def validar_mensagem
    expect(mensagem_tela_sucesso.text == 'Welcome! You have signed up successfully.').to be true
  end
end
