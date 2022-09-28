#language: pt

@compra_produto
Funcionalidade: Efetuar a compra do produto com sucesso

Cenário: Compra de produto
Dado que o cliente esteja na home page
Quando selecionar o produto
E efetuar o processo de compra
Entao deve visualizar a mensagem de sucesso