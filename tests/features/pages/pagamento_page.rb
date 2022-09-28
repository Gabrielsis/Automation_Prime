# frozen_string_literal: true

# :nodoc:
class DadosPagamento < SitePrism::Page
  element :radio_button, '#order_payments_attributes__payment_method_id_2'
  element :input_cartao, '#card_number'
  element :input_validade, '#card_expiry'
  element :input_codcartao, '#card_code'
  element :botao_continuar, '.continue.button.primary'

  def preencher_pgto
    radio_button.click
    input_cartao.send_keys '4111111111111111'
    input_validade.send_keys '02/22'
    input_codcartao.send_keys '189'
    botao_continuar.click
  end
end
