# frozen_string_literal: true

# :nodoc:
class DadosRegistro < SitePrism::Page
  element :email_cliente, '#order_email'
  element :botao_continuar, :xpath, "//*[@id='checkout_form_registration']/p[2]/input"

  def preencher_registro
    email_cliente.set 'gabriel176402@teste.com'
    botao_continuar.click
  end
end
