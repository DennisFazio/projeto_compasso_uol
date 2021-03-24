# frozen_string_literal: true

######  DADO  ######
Dado("que estou na home do site automationpractice") do
  home.load
end

######  QUANDO  ######
Quando("realizo a busca pelo produto {string}") do |nome_produto|
  home.busca_produto_home(nome_produto)
end

Quando("seleciono para visualizar mais detalhes do produto retornado") do
  search_result.clica_exibir_detalhe_produto_posicao(1)
end

Quando("adiciono o primeiro produto ao carrinho") do
  pending # Write code here that turns the phrase above into concrete actions
end

######  ENTÃO  ######

Então("devo visualizar o detalhe do produto selecionado") do
  product_details.print_detalhes_produto
end

Então("devo visualizar o produto no carrinho") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("finalizar o processo de compra do produto selecionado") do
  pending # Write code here that turns the phrase above into concrete actions
end
