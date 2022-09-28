# frozen_string_literal: true

# :nodoc:
class SelecionaProduto < SitePrism::Page
  element :produto, '#product_3'

  def clicar_produto
    produto.click
  end
end
