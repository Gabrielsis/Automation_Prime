# frozen_string_literal: true

# :nodoc:
class ComprarProduto < SitePrism::Page
  element :botao_comprar, '#add-to-cart-button'

  def adicionar
    botao_comprar.click
  end
end
