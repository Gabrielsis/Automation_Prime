# frozen_string_literal: true

# :nodoc:
class FinalCompra < SitePrism::Page
  include RSpec::Matchers
  element :mensagem_tela, '#content > div'

  def verificar_mensagem_ok?
    expect(mensagem_tela.text == 'Seu pedido foi processado com sucesso.').to be true
  end
end
