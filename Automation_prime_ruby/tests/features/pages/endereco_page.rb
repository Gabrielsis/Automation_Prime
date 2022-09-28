# frozen_string_literal: true

# :nodoc:
class DadosEndereco < SitePrism::Page
  element :nome_cliente, '#order_bill_address_attributes_firstname'
  element :sobrenome_cliente, '#order_bill_address_attributes_lastname'
  element :endereco_cliente, '#order_bill_address_attributes_address1'
  element :complemento_cliente, '#order_bill_address_attributes_address2'
  element :cidade_cliente, '#order_bill_address_attributes_city'
  element :pais_cliente, '#order_bill_address_attributes_country_id'
  element :estado_cliente, '#order_bill_address_attributes_state_id'
  element :codigopostal_cliente, '#order_bill_address_attributes_zipcode'
  element :telefone_cliente, '#order_bill_address_attributes_phone'
  element :botao_salvarcontinuar, '.continue.button.primary'

  def preencher_endereco
    nome_cliente.set 'Gabriel'
    sobrenome_cliente.set 'Souza'
    endereco_cliente.set 'Manoel de Abreu'
    complemento_cliente.set 'Casa'
    cidade_cliente.set 'Ferraz de Vaconcelos'
    pais_cliente.select 'Estados Unidos'
    estado_cliente.select 'California'
    codigopostal_cliente.set '9876655444'
    telefone_cliente.set '11988765555'
    botao_salvarcontinuar.click
  end
end
