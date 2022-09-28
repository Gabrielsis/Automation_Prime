# frozen_string_literal: true

# :nodoc:
class ConfirmaCompra < SitePrism::Page
  element :botao_confirmar, '.continue.button.primary'

  def confirmar
    botao_confirmar.click
  end
end
