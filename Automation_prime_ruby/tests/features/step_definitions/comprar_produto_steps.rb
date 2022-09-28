# frozen_string_literal: true

# :nodoc:
Dado('que o cliente esteja na home page') do
  @page.call(PaginaPrincipal).load
end

Quando('selecionar o produto') do
  @page.call(SelecionaProduto).clicar_produto
end

Quando('efetuar o processo de compra') do
  @page.call(ComprarProduto).adicionar
  @page.call(FinalizaCompra).finalizar #juntar com o adicionar carrinho
  @page.call(DadosRegistro).preencher_registro
  @page.call(DadosEndereco).preencher_endereco
  @page.call(DadosEntrega).botao_continuar_entrega # Juntar com o enedereco (Excluir page)
  @page.call(DadosPagamento).preencher_pgto
  @page.call(ConfirmaCompra).confirmar
end

Entao('deve visualizar a mensagem de sucesso') do
  @page.call(FinalCompra).verificar_mensagem_ok?
end
