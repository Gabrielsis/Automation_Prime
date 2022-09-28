# frozen_string_literal: true

# :nodoc:
class DadosEntrega < SitePrism::Page
  element :botao_continuar, '.continue.button.primary'

  def botao_continuar_entrega
    botao_continuar.click
  end
end
