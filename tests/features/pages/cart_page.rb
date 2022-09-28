# frozen_string_literal: true

# :nodoc:
class FinalizaCompra < SitePrism::Page
  element :botao_finalizar, '#checkout-link'

  def finalizar
    botao_finalizar.click
  end
end
